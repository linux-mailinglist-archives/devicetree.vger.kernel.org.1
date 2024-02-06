Return-Path: <devicetree+bounces-38915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 230DC84AE92
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6260CB21985
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D3383CC8;
	Tue,  6 Feb 2024 07:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KifxuWXd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DD4128802
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707202971; cv=none; b=ECFXuEs5tLHtUFkyMI1A4T+Ft6awGtArSH9d+haMBTZRpszmXHMBH3HmB+T+RKjTB8Adg7MTly5e1ub5WfSskcCDD7EoAsIKwky+rL/s45quMVEsd4nMPI16wMp3YIs5SmXJpGCf6qOHTwclM3exUJWmzf6CakRHGwM41a3KKw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707202971; c=relaxed/simple;
	bh=DCc8b8q/WzBjCnHKQKca5APfY8M3M1aLXBF0WtGEBwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CmTSo0LcxA7SlsB61aE2klogDY40MzUphFkkkNIrSw6fgK0ovWgmxL3yl7GmoRyl5rRdBHqUwUsx8TnLvZI99WHHMxq9AsqyQ2VGd9+3f4tUF9Zllxe6rBfISEMnYcRPoidtziRA1U3+ThdTiooEPrNyQ0C2KBufEWp5KO9L24U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KifxuWXd; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1d8ef977f1eso39961485ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707202969; x=1707807769; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vayU1hILRcb1eUwFrsJvE8/gSAPnkBJkvUMLq6o6GsA=;
        b=KifxuWXdZxS9WVtpv46JjEpIoRxaORIvjafILC1w4GXxvNDCF1/jovDP0jxNech5E6
         CQlRaObANHwfMcgo2QDVn6XarqjCeUPkYaIYFUrJbs2jm9wOJb7CEc8j9HHyDE9MDK71
         rLKn09mLCusdo+OKyNk4RxGc+q8yApLzJMZrk9hsVdBZyBj8yZluKnYPJNDRS62QNQh0
         2X89i83FBBNCEF3NdVkd7J8zsYGgFxtxqZqGO14Adr8WItDDgYF+xlacFOU0kETuRZkC
         evTfadNmeDx1Ii9Wx4TV1+jM3yF/uEi6IIw2N3rvZDcMW1lOnbbINnWGPfxiNookg6CB
         qNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707202969; x=1707807769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vayU1hILRcb1eUwFrsJvE8/gSAPnkBJkvUMLq6o6GsA=;
        b=axPw98VzO6SDIOg3GUWYWOfJiVvsile1GWBKw3KORG+sf7xMiPHI2PdEiSGQSV93Yh
         84RJN0D54z6s/M5pwimq9U1XtCok5qL3O1S3YFbtaLPPSlQHgh6wQM+2WEeoVUxsB6zm
         kgIisIS+LbF6EF8Z5+dXxGT/om7o46UEYp5Fe+1rewwJH1qv3WNLkn20JVhvcHLxddgN
         SLJy5j1qcBX4qIg+6MeuofYYQd+9ITu0zcgk0a97OL8B/3XLb3JzJlIBjt/XxNyflx/C
         SijI/mZ7UGF2KW3EiwP8L4n3Su09/DqR2+4/6W1FdDOfH1XVjL13XX9GNBccFZuCt8eR
         1RVw==
X-Gm-Message-State: AOJu0YxRn6eq53a2gt7W6v5gb5ngI4jRc4198w2zkJSfljh8z38SxOil
	IcQpnF85JtYN+ynrY5eUiuCtCdSQhruNYALrObdm0Nt/zn7pdKPU
X-Google-Smtp-Source: AGHT+IFP+BKEsAtEU3i+y0ZkUB0ljFuu1/6DiPNVLIGiyFqSHrD7JGOLSpeWPHxbrOgfieEfRTanXQ==
X-Received: by 2002:a17:902:cec8:b0:1d7:88de:cff1 with SMTP id d8-20020a170902cec800b001d788decff1mr868787plg.53.1707202968694;
        Mon, 05 Feb 2024 23:02:48 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVpp0M5Kwn9Z+OpZBU3HxxP9oV6zweJs6WhUvseH5GhObCAfTOC4tA67KdrljTW9k2RHOWnfH/l8c5QZkArrwEHhT1TMCkbHTKivHI4UniHZlSCwr4J4vz9lelgdxLQc7CjlmE+liK4ugbfhPYu6dI3kWx89tF4HMK2Os/igwEc50EGjhswStS8vmUUj7mN36cjRkQKsPigaBXiJPtyWQA8csZhtl6dQMnaaVCKNMJtZs1xy1FbCyDSePBp36+19aIgX7VxjyWJCmWFdlPQcZXTOkn+M81/sO7XVedPvja5X3Q1Ay+sUqao8BEX50PVWJGZRCxmGXRg3cqvGNganyFZmQ==
Received: from dragon (144.34.186.27.16clouds.com. [144.34.186.27])
        by smtp.gmail.com with ESMTPSA id iy15-20020a170903130f00b001d92db44c9bsm1082394plb.17.2024.02.05.23.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 23:02:47 -0800 (PST)
Date: Tue, 6 Feb 2024 15:02:35 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Enable SAI audio on Data Modul
 i.MX8M Plus eDM SBC
Message-ID: <ZcHZizwC3KdNUytg@dragon>
References: <20240122144359.169899-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122144359.169899-1-marex@denx.de>

On Mon, Jan 22, 2024 at 03:43:51PM +0100, Marek Vasut wrote:
> Add SAI I2S and audio bindings to Data Modul i.MX8M Plus eDM SBC.
> 
> The SGTL5000 is attached to SAI3, however the SGTL5000 codec MCLK
> must be supplied even if the SAI3 is not in use and is controlled
> separately by the codec. The MCLK is also used to drive the codec
> I2C block, so without MCLK, I2C access to the codec would not be
> possible.
> 
> To provide such flexible MCLK control, use PWM4 with period 1 and
> duty cycle 50% as 12 MHz clock source, as there is no direct way
> to route MX8MP CCM clock to the MCLK pin. Use codec as bitclock
> and frame clock master, so that the SGTL5000 PLL can be used to
> generate derived clock.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../freescale/imx8mp-data-modul-edm-sbc.dts   | 64 ++++++++++++++++++-
>  1 file changed, 63 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> index 5828c9d7821de..433b2c9468f89 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> @@ -45,6 +45,19 @@ clk_xtal25: clock-xtal25 {
>  		clock-frequency = <25000000>;
>  	};
>  
> +	clk_pwm4: clock-pwm4 {
> +		compatible = "pwm-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <12000000>;
> +		clock-output-names = "codec-pwm4";
> +		/*
> +		 * 1 / 83 ns ~= 12 MHz , but since the PWM input clock is 24 MHz
> +		 * and the calculated PWM period is 1 and duty cycle is 50%, the
> +		 * result is exactly 12 MHz, which is fine for SGTL5000 MCLK.
> +		 */
> +		pwms = <&pwm4 0 83 0>;
> +	};
> +
>  	panel: panel {
>  		/* Compatible string is filled in by panel board DT Overlay. */
>  		backlight = <&backlight>;
> @@ -82,6 +95,24 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
>  		vin-supply = <&buck4>;
>  	};
>  
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SGTL5000-Card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&codec_dai>;
> +		simple-audio-card,frame-master = <&codec_dai>;
> +		simple-audio-card,widgets = "Headphone", "Headphone Jack";
> +		simple-audio-card,routing = "Headphone Jack", "HP_OUT";
> +
> +		cpu_dai: simple-audio-card,cpu {
> +			sound-dai = <&sai3>;
> +		};
> +
> +		codec_dai: simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +		};
> +	};
> +
>  	watchdog { /* TPS3813 */
>  		compatible = "linux,wdt-gpio";
>  		pinctrl-names = "default";
> @@ -288,6 +319,15 @@ &i2c1 {
>  	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
> +	sgtl5000: codec@a {

audio-codec

> +		#sound-dai-cells = <0>;
> +		clocks = <&clk_pwm4>;
> +		compatible = "fsl,sgtl5000";
> +		reg = <0x0a>;

Could you follow the "Order of Properties in Device Node" recommendation
from Documentation/devicetree/bindings/dts-coding-style.rst?

Shawn

> +		VDDA-supply = <&buck4>;
> +		VDDIO-supply = <&buck4>;
> +	};
> +
>  	usb-hub@2c {
>  		compatible = "microchip,usb2514bi";
>  		reg = <0x2c>;
> @@ -436,6 +476,23 @@ &pwm1 {
>  	status = "disabled";
>  };
>  
> +&pwm4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm4>;
> +	status = "okay";
> +};
> +
> +&sai3 {
> +	#clock-cells = <0>;
> +	#sound-dai-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
> +	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <12288000>;
> +	status = "okay";
> +};
> +
>  /* SD slot */
>  &usdhc2 {
>  	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> @@ -785,6 +842,12 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x40000090
>  		>;
>  	};
>  
> +	pinctrl_pwm4: pwm4-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_MCLK__PWM4_OUT		0xd6
> +		>;
> +	};
> +
>  	pinctrl_rtc: rtc-grp {
>  		fsl,pins = <
>  			/* RTC_IRQ# */
> @@ -816,7 +879,6 @@ pinctrl_sai3: sai3-grp {
>  			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0xd6
>  			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
>  			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0xd6
> -			MX8MP_IOMUXC_SAI3_MCLK__AUDIOMIX_SAI3_MCLK	0xd6
>  			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0xd6
>  		>;
>  	};
> -- 
> 2.43.0
> 

