Return-Path: <devicetree+bounces-13872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7360F7E1022
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 16:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E7B0281A2C
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 15:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A371CAAB;
	Sat,  4 Nov 2023 15:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758141BDD9
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 15:46:57 +0000 (UTC)
Received: from connect.vanmierlo.com (fieber.vanmierlo.com [84.243.197.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F644DB;
	Sat,  4 Nov 2023 08:46:53 -0700 (PDT)
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
	(authenticated user m.brock@vanmierlo.com)
	by connect.vanmierlo.com (Kerio Connect 10.0.2 patch 1) with ESMTPA;
	Sat, 4 Nov 2023 16:46:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sat, 04 Nov 2023 16:46:45 +0100
From: m.brock@vanmierlo.com
To: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
Cc: git@amd.com, michal.simek@amd.com, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jirislaby@kernel.org,
 linux-arm-kernel@lists.infradead.org, radhey.shyam.pandey@amd.com,
 srinivas.goud@amd.com, shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V3 2/2] tty: serial: uartps: Add rs485 support to uartps
 driver
In-Reply-To: <20231024144847.2316941-3-manikanta.guntupalli@amd.com>
References: <20231024144847.2316941-1-manikanta.guntupalli@amd.com>
 <20231024144847.2316941-3-manikanta.guntupalli@amd.com>
Message-ID: <22a8b01cf7a1df0dffd78eb80bfab819@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Manikanta Guntupalli wrote on 2023-10-24 16:48:
> @@ -193,6 +196,7 @@ MODULE_PARM_DESC(rx_timeout, "Rx timeout, 1-255");
>   * @clk_rate_change_nb:	Notifier block for clock changes
>   * @quirks:		Flags for RXBS support.
>   * @cts_override:	Modem control state override
> + * @gpiod:		Pointer to the gpio descriptor

Change gpiod to gpiod_rts maybe?
Later someone might want to use a gpio for cts/dtr/dsr/dcd/ri as well.

>   */
>  struct cdns_uart {
>  	struct uart_port	*port;
> @@ -203,10 +207,19 @@ struct cdns_uart {
>  	struct notifier_block	clk_rate_change_nb;
>  	u32			quirks;
>  	bool cts_override;
> +	struct gpio_desc	*gpiod;
>  };
>  struct cdns_platform_data {
>  	u32 quirks;
>  };
> +
> +struct serial_rs485 cdns_rs485_supported = {
> +	.flags = SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND |
> +		 SER_RS485_RTS_AFTER_SEND,
> +	.delay_rts_before_send = 1,
> +	.delay_rts_after_send = 1,
> +};
> +
>  #define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
>  		clk_rate_change_nb)
> 
> @@ -305,6 +318,79 @@ static void cdns_uart_handle_rx(void *dev_id,
> unsigned int isrstatus)
>  	tty_flip_buffer_push(&port->state->port);
>  }
> 
> +/**
> + * cdns_rs485_config_gpio_rts_high - Configure GPIO/RTS to high
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_config_gpio_rts_high(struct cdns_uart 
> *cdns_uart)
> +{
> +	u32 val;
> +
> +	if (cdns_uart->gpiod) {
> +		gpiod_set_value(cdns_uart->gpiod, 1);
> +	} else {
> +		val = readl(cdns_uart->port->membase + CDNS_UART_MODEMCR);
> +		val &= ~CDNS_UART_MODEMCR_RTS;
> +		writel(val, cdns_uart->port->membase + CDNS_UART_MODEMCR);
> +	}
> +}
> +
> +/**
> + * cdns_rs485_config_gpio_rts_low - Configure GPIO/RTS to low
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_config_gpio_rts_low(struct cdns_uart 
> *cdns_uart)
> +{
> +	u32 val;
> +
> +	if (cdns_uart->gpiod) {
> +		gpiod_set_value(cdns_uart->gpiod, 0);
> +	} else {
> +		val = readl(cdns_uart->port->membase + CDNS_UART_MODEMCR);
> +		val |= CDNS_UART_MODEMCR_RTS;
> +		writel(val, cdns_uart->port->membase + CDNS_UART_MODEMCR);
> +	}
> +}
> +
> +/**
> + * cdns_rs485_tx_setup - Tx setup specific to rs485
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_tx_setup(struct cdns_uart *cdns_uart)
> +{
> +	if (cdns_uart->port->rs485.flags & SER_RS485_RTS_ON_SEND)
> +		cdns_rs485_config_gpio_rts_high(cdns_uart);
> +	else
> +		cdns_rs485_config_gpio_rts_low(cdns_uart);
> +}
> +
> +/**
> + * cdns_rs485_rx_setup - Rx setup specific to rs485
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_rx_setup(struct cdns_uart *cdns_uart)
> +{
> +	if (cdns_uart->port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
> +		cdns_rs485_config_gpio_rts_high(cdns_uart);
> +	else
> +		cdns_rs485_config_gpio_rts_low(cdns_uart);
> +}

Why not simply create:
void cdns_rs485_driver_enable(struct cdns_uart *cdns_uart, bool enable)

And let it handle the rs485.flags itself?

> +
> +/**
> + * cdns_uart_tx_empty -  Check whether TX is empty
> + * @port: Handle to the uart port structure
> + *
> + * Return: TIOCSER_TEMT on success, 0 otherwise
> + */
> +static unsigned int cdns_uart_tx_empty(struct uart_port *port)
> +{
> +	unsigned int status;
> +
> +	status = readl(port->membase + CDNS_UART_SR) &
> +		       (CDNS_UART_SR_TXEMPTY | CDNS_UART_SR_TACTIVE);
> +	return (status == CDNS_UART_SR_TXEMPTY) ? TIOCSER_TEMT : 0;
> +}
> +
>  /**
>   * cdns_uart_handle_tx - Handle the bytes to be Txed.
>   * @dev_id: Id of the UART port
> @@ -571,6 +657,8 @@ static int cdns_uart_clk_notifier_cb(struct
> notifier_block *nb,
>  static void cdns_uart_start_tx(struct uart_port *port)
>  {
>  	unsigned int status;
> +	unsigned long time_out;
> +	struct cdns_uart *cdns_uart = port->private_data;
> 
>  	if (uart_tx_stopped(port))
>  		return;
> @@ -589,8 +677,31 @@ static void cdns_uart_start_tx(struct uart_port 
> *port)
> 
>  	writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_ISR);
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED) {
> +		cdns_rs485_tx_setup(cdns_uart);
> +		if (cdns_uart->port->rs485.delay_rts_before_send)
> +			mdelay(cdns_uart->port->rs485.delay_rts_before_send);

Would it not be better to start a timer here with a callback that 
enables
the TXEMPTY interrupt? That would automatically call 
cdns_uart_handle_tx().

> +	}
> +
>  	cdns_uart_handle_tx(port);
> 
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED) {
> +		time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
> +		/* Wait for tx completion */
> +		while ((cdns_uart_tx_empty(cdns_uart->port) != TIOCSER_TEMT) &&
> +		       time_before(jiffies, time_out))
> +			cpu_relax();
> +
> +		if (cdns_uart->port->rs485.delay_rts_after_send)
> +			mdelay(cdns_uart->port->rs485.delay_rts_after_send);
> +
> +		/*
> +		 * Default Rx should be setup, because RX signaling path
> +		 * need to enable to receive data.
> +		 */
> +		cdns_rs485_rx_setup(cdns_uart);
> +	}

I think this should be done from the TXEMPTY interrupt. And again 
schedule a
timer to drop the DE line. You really can do this without using 
mdelay().

> +
>  	/* Enable the TX Empty interrupt */
>  	writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_IER);
>  }
> @@ -602,6 +713,14 @@ static void cdns_uart_start_tx(struct uart_port 
> *port)
>  static void cdns_uart_stop_tx(struct uart_port *port)
>  {
>  	unsigned int regval;
> +	struct cdns_uart *cdns_uart = port->private_data;
> +
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED) {
> +		if (cdns_uart->port->rs485.delay_rts_after_send)
> +			mdelay(cdns_uart->port->rs485.delay_rts_after_send);
> +
> +		cdns_rs485_rx_setup(cdns_uart);
> +	}

Again, start a timer and wait for completion?

>  	regval = readl(port->membase + CDNS_UART_CR);
>  	regval |= CDNS_UART_CR_TX_DIS;
> @@ -626,21 +745,6 @@ static void cdns_uart_stop_rx(struct uart_port 
> *port)
>  	writel(regval, port->membase + CDNS_UART_CR);
>  }
> 
> -/**
> - * cdns_uart_tx_empty -  Check whether TX is empty
> - * @port: Handle to the uart port structure
> - *
> - * Return: TIOCSER_TEMT on success, 0 otherwise
> - */
> -static unsigned int cdns_uart_tx_empty(struct uart_port *port)
> -{
> -	unsigned int status;
> -
> -	status = readl(port->membase + CDNS_UART_SR) &
> -		       (CDNS_UART_SR_TXEMPTY | CDNS_UART_SR_TACTIVE);
> -	return (status == CDNS_UART_SR_TXEMPTY) ? TIOCSER_TEMT : 0;
> -}
> -
>  /**
>   * cdns_uart_break_ctl - Based on the input ctl we have to start or 
> stop
>   *			transmitting char breaks
> @@ -829,6 +933,9 @@ static int cdns_uart_startup(struct uart_port 
> *port)
>  		(CDNS_UART_CR_TXRST | CDNS_UART_CR_RXRST))
>  		cpu_relax();
> 
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED)
> +		cdns_rs485_rx_setup(cdns_uart);
> +
>  	/*
>  	 * Clear the RX disable bit and then set the RX enable bit to enable
>  	 * the receiver.
> @@ -1455,6 +1562,23 @@ MODULE_DEVICE_TABLE(of, cdns_uart_of_match);
>  /* Temporary variable for storing number of instances */
>  static int instances;
> 
> +/**
> + * cdns_rs485_config - Called when an application calls TIOCSRS485 
> ioctl.
> + * @port: Pointer to the uart_port structure
> + * @termios: Pointer to the ktermios structure
> + * @rs485: Pointer to the serial_rs485 structure
> + *
> + * Return: 0
> + */
> +static int cdns_rs485_config(struct uart_port *port, struct ktermios 
> *termios,
> +			     struct serial_rs485 *rs485)
> +{
> +	if (rs485->flags & SER_RS485_ENABLED)
> +		dev_dbg(port->dev, "Setting UART to RS485\n");
> +

Shouldn't you force automatic RTS control off here?
And also call cdns_rs485_rx_setup()

> +	return 0;
> +}
> +
>  /**
>   * cdns_uart_probe - Platform driver probe
>   * @pdev: Pointer to the platform device structure
> @@ -1463,6 +1587,7 @@ static int instances;
>   */
>  static int cdns_uart_probe(struct platform_device *pdev)
>  {
> +	u32 val;
>  	int rc, id, irq;
>  	struct uart_port *port;
>  	struct resource *res;
> @@ -1597,9 +1722,23 @@ static int cdns_uart_probe(struct 
> platform_device *pdev)
>  	port->private_data = cdns_uart_data;
>  	port->read_status_mask = CDNS_UART_IXR_TXEMPTY | CDNS_UART_IXR_RXTRIG 
> |
>  			CDNS_UART_IXR_OVERRUN | CDNS_UART_IXR_TOUT;
> +	port->rs485_config = cdns_rs485_config;
> +	port->rs485_supported = cdns_rs485_supported;
>  	cdns_uart_data->port = port;
>  	platform_set_drvdata(pdev, port);
> 
> +	rc = uart_get_rs485_mode(port);
> +	if (rc)
> +		goto err_out_clk_notifier;
> +
> +	cdns_uart_data->gpiod = devm_gpiod_get_optional(&pdev->dev, "rts",
> +							GPIOD_OUT_LOW);
> +	if (IS_ERR(cdns_uart_data->gpiod)) {
> +		rc = PTR_ERR(cdns_uart_data->gpiod);
> +		dev_err(port->dev, "xuartps: devm_gpiod_get_optional failed\n");
> +		goto err_out_clk_notifier;
> +	}
> +
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 
> UART_AUTOSUSPEND_TIMEOUT);
>  	pm_runtime_set_active(&pdev->dev);
> @@ -1638,6 +1777,16 @@ static int cdns_uart_probe(struct 
> platform_device *pdev)
>  	cdns_uart_data->cts_override = 
> of_property_read_bool(pdev->dev.of_node,
>  							     "cts-override");
> 
> +	if (cdns_uart_data->port->rs485.flags & SER_RS485_ENABLED) {
> +		if (!cdns_uart_data->gpiod) {
> +			val = readl(cdns_uart_data->port->membase
> +				    + CDNS_UART_MODEMCR);
> +			val |= CDNS_UART_MODEMCR_RTS;
> +			writel(val, cdns_uart_data->port->membase
> +			       + CDNS_UART_MODEMCR);
> +		}
> +	}

Simply call cdns_rs485_rx_setup() ?

> +
>  	instances++;
> 
>  	return 0;
> @@ -1646,6 +1795,7 @@ static int cdns_uart_probe(struct platform_device 
> *pdev)
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_set_suspended(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> +err_out_clk_notifier:
>  #ifdef CONFIG_COMMON_CLK
>  	clk_notifier_unregister(cdns_uart_data->uartclk,
>  			&cdns_uart_data->clk_rate_change_nb);

Please also modify cdns_uart_[s|g]et_mctrl() so they support rts-gpios.

Maarten


