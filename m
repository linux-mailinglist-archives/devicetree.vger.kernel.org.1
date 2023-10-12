Return-Path: <devicetree+bounces-8264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAEA7C763B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 21:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01CEA1C20996
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFBC374CD;
	Thu, 12 Oct 2023 19:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD2C63B4
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 19:05:11 +0000 (UTC)
Received: from connect.vanmierlo.com (fieber.vanmierlo.com [84.243.197.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DFEABE;
	Thu, 12 Oct 2023 12:05:09 -0700 (PDT)
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
	(authenticated user m.brock@vanmierlo.com)
	by connect.vanmierlo.com (Kerio Connect 9.4.2) with ESMTPA;
	Thu, 12 Oct 2023 21:05:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 12 Oct 2023 21:05:02 +0200
From: m.brock@vanmierlo.com
To: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
Cc: git@amd.com, michal.simek@amd.com, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jirislaby@kernel.org,
 linux-arm-kernel@lists.infradead.org, radhey.shyam.pandey@amd.com,
 srinivas.goud@amd.com, shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V2 2/2] tty: serial: uartps: Add rs485 support to uartps
 driver
In-Reply-To: <20231011145602.3619616-3-manikanta.guntupalli@amd.com>
References: <20231011145602.3619616-1-manikanta.guntupalli@amd.com>
 <20231011145602.3619616-3-manikanta.guntupalli@amd.com>
Message-ID: <47fcf873a011291d06740ee9af3a45e4@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Manikanta Guntupalli wrote on 2023-10-11 16:56:
> In RS485 half duplex configuration, DriverEnable and ReceiverEnable
> shorted to each other, and at a time, any node acts as either a driver
> or a receiver. Use either xlnx,phy-ctrl-gpios or RTS to control
> RS485 phy as driver or a receiver.
> 
> Signed-off-by: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
> ---
> Changes for V2:
> Modify optional gpio name to xlnx,phy-ctrl-gpios.
> Update commit description.
> Add support for RTS, delay_rts_before_send and delay_rts_after_send in
> RS485 mode.
> ---
>  drivers/tty/serial/xilinx_uartps.c | 116 ++++++++++++++++++++++++++++-
>  1 file changed, 115 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/tty/serial/xilinx_uartps.c
> b/drivers/tty/serial/xilinx_uartps.c
> index 8e521c69a959..abddcf1a8bf4 100644
> --- a/drivers/tty/serial/xilinx_uartps.c
> +++ b/drivers/tty/serial/xilinx_uartps.c
> @@ -23,6 +23,7 @@
>  #include <linux/module.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/iopoll.h>
> +#include <linux/gpio.h>
> 
>  #define CDNS_UART_TTY_NAME	"ttyPS"
>  #define CDNS_UART_NAME		"xuartps"
> @@ -193,6 +194,7 @@ MODULE_PARM_DESC(rx_timeout, "Rx timeout, 1-255");
>   * @clk_rate_change_nb:	Notifier block for clock changes
>   * @quirks:		Flags for RXBS support.
>   * @cts_override:	Modem control state override
> + * @gpiod:		Pointer to the gpio descriptor
>   */
>  struct cdns_uart {
>  	struct uart_port	*port;
> @@ -203,10 +205,19 @@ struct cdns_uart {
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

You promise here to support both RTS-on-send and RTS-after-send, but...

> +	.delay_rts_before_send = 1,
> +	.delay_rts_after_send = 1,
> +};
> +
>  #define to_cdns_uart(_nb) container_of(_nb, struct cdns_uart, \
>  		clk_rate_change_nb)
> 
> @@ -305,6 +316,42 @@ static void cdns_uart_handle_rx(void *dev_id,
> unsigned int isrstatus)
>  	tty_flip_buffer_push(&port->state->port);
>  }
> 
> +/**
> + * cdns_rs485_tx_setup - Tx setup specific to rs485
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_tx_setup(struct cdns_uart *cdns_uart)
> +{
> +	u32 val;
> +
> +	if (cdns_uart->gpiod) {
> +		gpiod_set_value(cdns_uart->gpiod, 1);
> +	} else {
> +		val = readl(cdns_uart->port->membase + CDNS_UART_MODEMCR);
> +		val &= ~CDNS_UART_MODEMCR_RTS;
> +		writel(val, cdns_uart->port->membase + CDNS_UART_MODEMCR);

Here you don't care about RTS-on-send or RTS-after-send anymore.
And neither do you btw. in the if clause.

> +	}
> +}
> +
> +/**
> + * cdns_rs485_rx_setup - Rx setup specific to rs485
> + * @cdns_uart: Handle to the cdns_uart
> + */
> +static void cdns_rs485_rx_setup(struct cdns_uart *cdns_uart)
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

Same here.

> +}
> +
> +static unsigned int cdns_uart_tx_empty(struct uart_port *port);
> +

I think it's better to move up the implementation than to use a forward
declaration.

>  /**
>   * cdns_uart_handle_tx - Handle the bytes to be Txed.
>   * @dev_id: Id of the UART port
> @@ -313,12 +360,20 @@ static void cdns_uart_handle_rx(void *dev_id,
> unsigned int isrstatus)
>  static void cdns_uart_handle_tx(void *dev_id)
>  {
>  	struct uart_port *port = (struct uart_port *)dev_id;
> +	struct cdns_uart *cdns_uart = port->private_data;
>  	struct circ_buf *xmit = &port->state->xmit;
> +	unsigned long time_out;
>  	unsigned int numbytes;
> 
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED) {
> +		cdns_rs485_tx_setup(cdns_uart);
> +		if (cdns_uart->port->rs485.delay_rts_before_send)
> +			mdelay(cdns_uart->port->rs485.delay_rts_before_send);

mdelay?
https://www.kernel.org/doc/html/latest/timers/timers-howto.html
"In general, use of mdelay is discouraged and code should be refactored 
to
allow for the use of msleep."

Furthermore, you're delaying before every burst of bytes here!
Every TXEMPTY interrupt!

> +	}
> +
>  	if (uart_circ_empty(xmit)) {
>  		writel(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_IDR);
> -		return;
> +		goto rs485_rx_setup;

And when there was nothing more to send you waited for nothing.

>  	}
> 
>  	numbytes = port->fifosize;
> @@ -332,6 +387,23 @@ static void cdns_uart_handle_tx(void *dev_id)
> 
>  	if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
>  		uart_write_wakeup(port);
> +
> +rs485_rx_setup:
> +	if (cdns_uart->port->rs485.flags & SER_RS485_ENABLED) {
> +		time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
> +		/* Wait for tx completion */
> +		while ((cdns_uart_tx_empty(cdns_uart->port) != TIOCSER_TEMT) &&
> +		       time_before(jiffies, time_out))
> +			cpu_relax();
> +
> +		/*
> +		 * Default Rx should be setup, because RX signaling path
> +		 * need to enable to receive data.
> +		 */
> +		cdns_rs485_rx_setup(cdns_uart);
> +		if (cdns_uart->port->rs485.delay_rts_after_send)
> +			mdelay(cdns_uart->port->rs485.delay_rts_after_send);

This is not delaying rts after send. You must keep RTS aka DE active for 
a little
longer so even the last stop bit(s) are transmitted correctly. So this 
delay must
happen before cdns_rs485_rx_setup().

> +	}
>  }
> 
>  /**
> @@ -829,6 +901,9 @@ static int cdns_uart_startup(struct uart_port 
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
> @@ -1455,6 +1530,25 @@ MODULE_DEVICE_TABLE(of, cdns_uart_of_match);
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
> +	port->rs485 = *rs485;
> +
> +	if (rs485->flags & SER_RS485_ENABLED)
> +		dev_dbg(port->dev, "Setting UART to RS485\n");
> +
> +	return 0;
> +}
> +
>  /**
>   * cdns_uart_probe - Platform driver probe
>   * @pdev: Pointer to the platform device structure
> @@ -1597,9 +1691,28 @@ static int cdns_uart_probe(struct 
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
> +	cdns_uart_data->gpiod = devm_gpiod_get_optional(&pdev->dev, 
> "xlnx,phy-ctrl",
> +							GPIOD_OUT_LOW);
> +	if (IS_ERR(cdns_uart_data->gpiod)) {
> +		rc = PTR_ERR(cdns_uart_data->gpiod);
> +		dev_err(port->dev, "xuartps: devm_gpiod_get_optional failed\n");
> +		goto err_out_clk_notifier;
> +	}
> +
> +	if (cdns_uart_data->gpiod) {
> +		gpiod_direction_output(cdns_uart_data->gpiod, GPIOD_OUT_LOW);
> +		gpiod_set_value(cdns_uart_data->gpiod, 0);
> +	}
> +
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 
> UART_AUTOSUSPEND_TIMEOUT);
>  	pm_runtime_set_active(&pdev->dev);
> @@ -1646,6 +1759,7 @@ static int cdns_uart_probe(struct platform_device 
> *pdev)
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_set_suspended(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> +err_out_clk_notifier:
>  #ifdef CONFIG_COMMON_CLK
>  	clk_notifier_unregister(cdns_uart_data->uartclk,
>  			&cdns_uart_data->clk_rate_change_nb);

Maarten


