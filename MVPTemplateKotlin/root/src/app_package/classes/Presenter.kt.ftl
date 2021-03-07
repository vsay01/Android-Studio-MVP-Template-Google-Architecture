package ${packageName}

class ${className}Presenter(private val view: ${className}Contract.View) : BasePresenter(), ${className}Contract.Presenter {

    init {
        this.view.setPresenter(this)
    }

    override fun start() {

    }

    override fun stop() {

    }
}