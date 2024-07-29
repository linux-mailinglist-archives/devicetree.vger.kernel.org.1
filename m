Return-Path: <devicetree+bounces-89076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BCD93FEA2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 21:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 649D928235E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 19:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2CF188CB8;
	Mon, 29 Jul 2024 19:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q28e5zvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE03187355
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 19:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722282997; cv=none; b=fNwbHXTgh/9WjqQZAbDn5Lhjhr+V0H9vUJiHDiL56KKfK7r7cbtv3l2elGyFf5gtLA8AqVthIXC/80Is9xlhMF+lZBhSlXr4MAbIKY37ijly1yk7DHMx4yG+R0HS+DcUWdUMz69/Z6QjMTaVtVlTBQyv1us2UcAfMnmrjZ+KJEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722282997; c=relaxed/simple;
	bh=YqgXBWqgawrQ2GCIT/CPZ0b/lhDSwL0sHCnAeJKg/xc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jOICyem/gHU3yqa6XiIzwyhg3MzXoxQDl6fFBe0T77Af8L0dLCMOCI/DXLdnQS6fK6KaZVjC9zSFoXl0BFGKB0jaNJujfpDa8Uayzyngd+Amcv19TXATJJ+ZwWVRQAUaaECjADJFd38QlEztrhiKLr7hnqjmJbZ1xe+k9nzi2VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q28e5zvh; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52efa16aad9so5732759e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 12:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722282993; x=1722887793; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=020JGgTMWcZIx2NYCO8r+LbUIGlcmT7lsGFDdPjejo8=;
        b=q28e5zvha6HTepJ/RDPuYRuSr+wm8dPdD9Y41rFyCyKQDoarYjywlDjMfvS2rpAezm
         y0LSHE17wkfTPa122tpjd0nj6jHDP7hm10MHuVCLLRvem1QRxYr2GXjcAxlkMnyuEn3A
         /9bOcPk6x5fR9lY5a164CE085uhkl6RnoG/xEslfazZswaRntRfrycnV10b3J22rtexy
         wOYMbY48HkqF6SFvz7iKObIMb3rmi/ZFnO8ghhU4nyT4aJjbRDeZ4jWoQYPqHUGFVAE7
         8s+w+y0cLSHkDEVu6/bpaZ1VOnJulezPBhgexo2ttthAjhan37YegymppQXhFqgjUVHq
         b+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722282993; x=1722887793;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=020JGgTMWcZIx2NYCO8r+LbUIGlcmT7lsGFDdPjejo8=;
        b=fzGoMGraWqhO+6/mXDzMwkxxySi7017bxZa1c6g2mHzV7Qt/gFLaNeavP59CJ7I2uN
         AjCyggSHDw/fkreiZK4zvi+Gd3A87y/MlOfynY71jaJhzkq6JHK7LSb+KTqY6nk2VDrz
         3hGa+GK4QbqTvoijEnYVKf2ey8eHktf+2CS6rReOvsmfjNHloV8DJIz9PlfLgfELjth5
         HCZ4BURYYGX0CqM0Z7qPyHLrhx94bZdCwi9Wvl7hOlxgRXDaksPw93lmOEX38+9QH+QL
         M/C8UrLTdnEsO2KIDOu/lIio/4t77IcLk2yKl25h8bGUG7fxoh/Pcfqq2I7GUdUZFhn3
         nFAw==
X-Forwarded-Encrypted: i=1; AJvYcCU8Efu1L+Xu4Uzbs5/YB6PM7yEeXvNp6+okdzC8CXPn0be3JVmBnXZyjeA0hjGX0yhoqS4lsAtlF5OD5LUTyDx1TbzxZkVodHjqXw==
X-Gm-Message-State: AOJu0Yz2ISou5clv6EFWDaLYmbue4tPAqyWmp6C05sAQrFQByrJaRRdk
	azD0kdbzGaQGtihRYy59G98Fad/zv6ZNgeDSfqyBs95UVeRDmIisvzQ7c1EmddM=
X-Google-Smtp-Source: AGHT+IGozCHqd0w6iFDoVxOAUJStLvOsB8sp3H77TGFuL7QnXA67z0Bf66cowsXNkbziywq0zm6dpA==
X-Received: by 2002:a05:6512:2c8c:b0:52e:9fe0:bee8 with SMTP id 2adb3069b0e04-5309b269b9dmr6109379e87.8.1722282993288;
        Mon, 29 Jul 2024 12:56:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c2bce4sm1614081e87.251.2024.07.29.12.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 12:56:32 -0700 (PDT)
Date: Mon, 29 Jul 2024 22:56:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, andersson@kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH 3/3] arm64: dts: imx8mq-evk: add typec node
Message-ID: <2qifmfgul7ks6kozm455jci4rdbfnh5wft3nyt6pdnov6tcbst@vjosluwibkg7>
References: <20240729081039.3904797-1-xu.yang_2@nxp.com>
 <20240729081039.3904797-3-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240729081039.3904797-3-xu.yang_2@nxp.com>

On Mon, Jul 29, 2024 at 04:10:39PM GMT, Xu Yang wrote:
> The first port of USB with type-C connector, which has dual data
> role and dual power role.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 93 ++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index 7507548cdb16..008e8c37c76b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -6,6 +6,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/usb/pd.h>
>  #include "imx8mq.dtsi"
>  
>  / {
> @@ -27,6 +28,20 @@ pcie0_refclk: pcie0-refclk {
>  		clock-frequency = <100000000>;
>  	};
>  
> +	ptn36043: typec-mux {
> +		compatible = "nxp,ptn36043", "gpio-sbu-mux";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_typec_mux>;
> +		select-gpios =<&gpio3 15 GPIO_ACTIVE_LOW>;
> +		orientation-switch;
> +
> +		port {
> +			usb3_data_ss: endpoint {
> +				remote-endpoint = <&typec_con_ss>;
> +			};
> +		};

If this the "SBU" mux, then why is it connected to the SS lines?
Where are the SS lines further going?

> +	};
> +
>  	reg_pcie1: regulator-pcie {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> @@ -315,6 +330,50 @@ vgen6_reg: vgen6 {
>  			};
>  		};
>  	};
> +
> +	ptn5110: tcpc@50 {
> +		compatible = "nxp,ptn5110", "tcpci";
> +		reg = <0x50>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_typec>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			power-role = "dual";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt = <15000000>;
> +			self-powered;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					typec_dr_sw: endpoint {

the DR (dual role) isn't a physical signal. These ports descrbie HS
(high speed) lanes, please consider naming them correspondingly.

> +						remote-endpoint = <&usb3_drd_sw>;
> +					};
> +				};
> +
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					typec_con_ss: endpoint {
> +						remote-endpoint = <&usb3_data_ss>;
> +					};
> +				};

No SBU port?

> +			};
> +		};
> +	};
>  };
>  
>  &lcdif {
> @@ -445,6 +504,28 @@ &uart1 {
>  	status = "okay";
>  };
>  
> +&usb3_phy0 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 {
> +	dr_mode = "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	role-switch-default-mode = "none";
> +	snps,dis-u1-entry-quirk;
> +	snps,dis-u2-entry-quirk;
> +	status = "okay";
> +
> +	port {
> +		usb3_drd_sw: endpoint {
> +			remote-endpoint = <&typec_dr_sw>;
> +		};
> +	};
> +};
> +
>  &usb3_phy1 {
>  	status = "okay";
>  };
> @@ -597,6 +678,18 @@ MX8MQ_IOMUXC_SPDIF_RX_SPDIF1_IN		0xd6
>  		>;
>  	};
>  
> +	pinctrl_typec: typecgrp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_NAND_CE2_B_GPIO3_IO3		0x17059
> +		>;
> +	};
> +
> +	pinctrl_typec_mux: typecmuxgrp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_NAND_RE_B_GPIO3_IO15		0x16
> +		>;
> +	};
> +
>  	pinctrl_uart1: uart1grp {
>  		fsl,pins = <
>  			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

