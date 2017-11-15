package org.testeditor.web.index

import com.google.inject.Guice
import com.google.inject.util.Modules
import org.testeditor.aml.dsl.AmlStandaloneSetup
import org.testeditor.tcl.dsl.TclStandaloneSetup
import org.testeditor.tsl.dsl.TslRuntimeModule
import org.testeditor.tsl.dsl.web.TslWebSetup
import org.testeditor.web.xtext.index.XtextIndexApplication
import org.testeditor.web.xtext.index.XtextIndexModule

public class TesteditorIndexApplication extends XtextIndexApplication {
	val injector = Guice.createInjector(Modules.override(new TslRuntimeModule).with(new XtextIndexModule))

	override getLanguageSetups() {
		return #[new TslWebSetup, new TclStandaloneSetup, new AmlStandaloneSetup]
	}

	override public getGuiceInjector() {
		return injector
	}

	public static def void main(String[] args) throws Exception {
		new TesteditorIndexApplication().run(args);
	}

}
