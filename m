Return-Path: <devicetree+bounces-253605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E61D0F26A
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 042B0300B896
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31A4349AF4;
	Sun, 11 Jan 2026 14:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="l107AcbN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3626133D6C7
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142565; cv=none; b=rEiS6J+5xb5TqfwvumkYmPLgvkIo+V5qWIxfUjn97S4vsf0Gfs+13Mqcua/vV8UiGdVivAylJAbcSH8RIMgc9ydt9vENhhGMwsYODgm2/aFkQjg8GN2DdITCQP+SVSrUMeLt18SDFukPOrr63l+EXopc8fs5SVVv0b5ZXju3CBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142565; c=relaxed/simple;
	bh=r3/sjCZcn12IuIXnTNYHXq/ljVnoUjX3EA+fjUfOI3Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LEE/IDZFuX69D7yTrmcY7mRpbnvQ4CNpwctwshEGaptjTecjKJS3mOaBXmwZAiPLVEfehjhFwpQ+hMGhz12kqx48Xut1rC7AZmUKhoBunEMNWMVnnwF8I9GNm6NRjikX0mZimlx71uN/445p/9VFwjc/vbTs2UBX3sp/dJGLiYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=l107AcbN; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b5ed53d0aso8278626a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142562; x=1768747362; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G/KcOMY2Aiby4Ym2c9/9bLw/G2mVDeqsJ5KVEAaYuIM=;
        b=l107AcbNznzRzuNtn2TbxkYQlhR6Da9D0PeoZ7sVNzp9wAV5yVHDFfgDXtNcse8JtP
         1DmmAfeZqqOcYFTSenS6cILajX5b6RgXX6HIhmIY3UZg5aJbo1JdFeC80Cv5hvn3bc/j
         KKvki4OvEDKaJ9Fj86eywK4bKJI3rT+mJc+W0fyaHWSjZlsmYrrYq/9nELRLzTNYMz8o
         6P1n1ZpvhhJDtfSLkMqCU6tFwKyfICSvVpovW3EKjYdzLfS1yWeDeZCGMKox7umDzxa/
         PmGX3iy4E8hkGBE0MJQGizSmXp2IAvi9VaWoFC5Y6NGSSlZKyu7zWYQjhjJS6J8/dfWu
         Ev4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142562; x=1768747362;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/KcOMY2Aiby4Ym2c9/9bLw/G2mVDeqsJ5KVEAaYuIM=;
        b=rpW82Fee/Ql/J4fkyuHpBkfZHs79HsLT2azBHrgAd6CcMLk5aodvXn0eGAtRb5QaSy
         EfPzlcF9INK65olHxd35XJ6kcfatDb0FpaMFhAHPpbuNZBWIsd7ccazVAJLqFSCzdYBx
         meRUiQAAqboRuisdP1WQIVibMK9t12O7cEsL8pzV/0N3q1LT1Iy/1wIiPbFSeRvTIoIR
         81c2QaYjIz7C5MdZlFtBLH+THDWgzw6ePxV3VEna4QHJJ+VcRoGAvz8uGCHhe8TgERVB
         VWEAZCL/0URWJOICZcYKx3fssY1Vt1LWbt1hfgKhJav6gruIUlGB+CvaN4TZLY6IT8Pe
         7jCg==
X-Forwarded-Encrypted: i=1; AJvYcCVilt8rdLloD3bVmP5E37IRyRAsuT3r1FPj0xPE1DUeXXcpdjqygsHo0PHC84714K5eGYp+XOqG/loW@vger.kernel.org
X-Gm-Message-State: AOJu0YxWBMYrKXuIqJFWCIUrWealHbpfGTeOJp0m4K7EiV55Q0vfil5+
	mP2Fz/ysnqMSkOQHp5B5SWghs5aC2D4W8pbXd7uVP6sB3paPu0M45jNqqdYwsRJSohQ=
X-Gm-Gg: AY/fxX7z0SOvBLoG0+FLmbmry6GBBRXdRTYqUYDDhl/kD3l8GyGLfZuCqQO2Uky1z20
	y7MxHfFqiBQaUq7LiFuNRz2wIH2cpATSJd9JKEkm8jnXA+mr+ZoXsKrslaziqEHzK3G5v9E4v9H
	2kgRgx8mZFeZ59uWvyf6E5BDPqNHRUB+DDvhPuTEhVUZ5F1xzyg4sVLyHTt7JAqAur5fGj59w2E
	REzw5+MkGQ05GHa2qsFKLxKdPgUUzSRKSSvcGDvOx42YuH+FqYi7a7iI5fvU/8VoOkILIXZE2E6
	grroh44jYvh4xMe1HGNA2/ib2vhz7orj566Bcqo7h66kzcB/NGsOfiD+QnPg+EX+S4LMpPyjTmx
	gp2xMcYsFvm6Sz6A66Su0WDLa3VKUlPxknWsfUS6Fqzp2tzXLztN8KyE8SyayiW2zrVKCywCp4P
	ctFUgjyFvTxoKckuLn0gazXcU=
X-Google-Smtp-Source: AGHT+IE39UCsqaKXvD3F+fxNGt3UWpgz3o9+Q+iDczrztF9S6FJS6cHaS0zXDwLhDt1npYxNq43EAw==
X-Received: by 2002:a05:6402:26d1:b0:64b:5f4e:9e6d with SMTP id 4fb4d7f45d1cf-65097e50c56mr13973823a12.18.1768142561550;
        Sun, 11 Jan 2026 06:42:41 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be642f5sm14853659a12.20.2026.01.11.06.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:42:41 -0800 (PST)
Message-ID: <858ca139-61c5-45e3-a2c9-d0af414e3592@tuxon.dev>
Date: Sun, 11 Jan 2026 16:42:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Subject: Re: [PATCH v4 15/15] arm64: dts: microchip: add EV23X71A board
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, vkoul@kernel.org, andi.shyti@kernel.org,
 lee@kernel.org, andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linusw@kernel.org, Steen.Hegelund@microchip.com,
 daniel.machon@microchip.com, UNGLinuxDriver@microchip.com,
 olivia@selenic.com, radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.org,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-i2c@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-16-robert.marko@sartura.hr>
Content-Language: en-US
In-Reply-To: <20251229184004.571837-16-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Robert,

On 12/29/25 20:37, Robert Marko wrote:
> Microchip EV23X71A is an LAN9696 based evaluation board.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v2:
> * Split from SoC DTSI commit
> * Apply DTS coding style
> * Enclose array in i2c-mux
> * Alphanumericaly sort nodes
> * Change management port mode to RGMII-ID
> 
>   arch/arm64/boot/dts/microchip/Makefile        |   1 +
>   .../boot/dts/microchip/lan9696-ev23x71a.dts   | 757 ++++++++++++++++++
>   2 files changed, 758 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/microchip/lan9696-ev23x71a.dts
> 
> diff --git a/arch/arm64/boot/dts/microchip/Makefile b/arch/arm64/boot/dts/microchip/Makefile
> index c6e0313eea0f..09d16fc1ce9a 100644
> --- a/arch/arm64/boot/dts/microchip/Makefile
> +++ b/arch/arm64/boot/dts/microchip/Makefile
> @@ -1,4 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_ARCH_LAN969X) += lan9696-ev23x71a.dtb
>   dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb125.dtb
>   dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb134.dtb sparx5_pcb134_emmc.dtb
>   dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb135.dtb sparx5_pcb135_emmc.dtb
> diff --git a/arch/arm64/boot/dts/microchip/lan9696-ev23x71a.dts b/arch/arm64/boot/dts/microchip/lan9696-ev23x71a.dts
> new file mode 100644
> index 000000000000..435df455b078
> --- /dev/null
> +++ b/arch/arm64/boot/dts/microchip/lan9696-ev23x71a.dts

[ ...]

> +&gpio {
> +	emmc_sd_pins: emmc-sd-pins {
> +		/* eMMC_SD - CMD, CLK, D0, D1, D2, D3, D4, D5, D6, D7, RSTN */
> +		pins = "GPIO_14", "GPIO_15", "GPIO_16", "GPIO_17",
> +		       "GPIO_18", "GPIO_19", "GPIO_20", "GPIO_21",
> +		       "GPIO_22", "GPIO_23", "GPIO_24";
> +		function = "emmc_sd";
> +	};
> +
> +	fan_pins: fan-pins {
> +		pins = "GPIO_25", "GPIO_26";
> +		function = "fan";
> +	};
> +
> +	fc0_pins: fc0-pins {
> +		pins = "GPIO_3", "GPIO_4";
> +		function = "fc";
> +	};
> +
> +	fc2_pins: fc2-pins {
> +		pins = "GPIO_64", "GPIO_65", "GPIO_66";
> +		function = "fc";
> +	};
> +
> +	fc3_pins: fc3-pins {
> +		pins = "GPIO_55", "GPIO_56";
> +		function = "fc";
> +	};
> +
> +	mdio_pins: mdio-pins {
> +		pins = "GPIO_9", "GPIO_10";
> +		function = "miim";
> +	};
> +
> +	mdio_irq_pins: mdio-irq-pins {
> +		pins = "GPIO_11";
> +		function = "miim_irq";
> +	};
> +
> +	sgpio_pins: sgpio-pins {
> +		/* SCK, D0, D1, LD */
> +		pins = "GPIO_5", "GPIO_6", "GPIO_7", "GPIO_8";
> +		function = "sgpio_a";
> +	};
> +
> +	usb_ulpi_pins: usb-ulpi-pins {
> +		pins = "GPIO_30", "GPIO_31", "GPIO_32", "GPIO_33",
> +		       "GPIO_34", "GPIO_35", "GPIO_36", "GPIO_37",
> +		       "GPIO_38", "GPIO_39", "GPIO_40", "GPIO_41";
> +		function = "usb_ulpi";
> +	};
> +
> +	usb_rst_pins: usb-rst-pins {
> +		pins = "GPIO_12";
> +		function = "usb2phy_rst";
> +	};
> +
> +	usb_over_pins: usb-over-pins {
> +		pins = "GPIO_13";
> +		function = "usb_over_detect";
> +	};
> +
> +	usb_power_pins: usb-power-pins {
> +		pins = "GPIO_1";
> +		function = "usb_power";
> +	};
> +
> +	ptp_out_pins: ptp-out-pins {
> +		pins = "GPIO_58";
> +		function = "ptpsync_4";
> +	};

Could you please move this one upper to have all the entries in the gpio 
container alphanumerically sorted?

> +
> +	ptp_ext_pins: ptp-ext-pins {
> +		pins = "GPIO_59";
> +		function = "ptpsync_5";
> +	};

Same here.

[ ...]

> +		port29: port@29 {
> +			reg = <29>;
> +			phys = <&serdes 11>;
> +			phy-handle = <&phy3>;
> +			phy-mode = "rgmii-id";
> +			microchip,bandwidth = <1000>;

There are some questions around this node from Andrew in v1 of this series, 
which I don't see an answer for in any of the following versions. Could you 
please clarify?

The rest looks good to me.

Thank you,
Claudiu


