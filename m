Return-Path: <devicetree+bounces-181028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18615AC606E
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 05:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E57B616822B
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 03:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848C121D3E2;
	Wed, 28 May 2025 03:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lg/48r9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EEC21CC74
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 03:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748404220; cv=none; b=mTNk4z5M2J2Co5F47XAQGJVt7IuEycgw9Iubps/5W6xRceskE/lOpP7SB7N873Hki71/zRCIJqFWRF4pU8Q1Z7kzLZASTaLbvFw2dlT+RbaFPmUyKhC676zL22Lqq0hcVAblyBriqP+cTTmk5NaC3XbMcQsR2H8zvQctlmpGAOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748404220; c=relaxed/simple;
	bh=pHNGUEdpJg3k1wGE10XXKSk7rmW/2Neb5FhAgaRcAsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zu31GWrGY+VWgjLbbH2TabdnG5NaES5/2Jp3HV+/gzo/s3IYRjtjYAIszhARDoCIPQCtPzTtlHPZ84rsdtH7g1Jf72CaIdX+8sqW8dlKJLN/OV6KqAlReDn0lu7UlM1ivDNOn0/k/sH/PJHPTVX+9CmUhcouWux0aallSYVB/QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lg/48r9k; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-73c17c770a7so4068923b3a.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748404217; x=1749009017; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cGgy5iGp9aoxhG6XSqRIfdUfb9DnMNCDo6A3zqvZ/yY=;
        b=Lg/48r9kFAomPLZSN2xMJ0CTOhxI+uVI53iv6H3I0Z6EZ9jnggyKeJcLJXjbPLPzOg
         MvtevMqeaJ0QzMnTpMngphSbXAkdtjczK8Jg/CGvAybGTbe+sQxwGm1i07q1JzY855Fd
         C4QZliM404FU7kD+MxCDOv4TeuJXpX5E25KnjrnP1dOEN0qZ+n401xxp/TMssE6VxpG+
         b8WTLp12iaJO/nAnXSQXRLp26dFv+n9RFByUfG8/N7KRxMwgjgzSj6dLHT3R9HGLbzZN
         a6wV77vvUzmTA3s7UGdj4Z96NpafVjDFhwxklUHTxWyyyF+VmuSJ/5Fs+VJrT2fHWwfQ
         sa/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748404217; x=1749009017;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGgy5iGp9aoxhG6XSqRIfdUfb9DnMNCDo6A3zqvZ/yY=;
        b=pVHTiyMyhbb0Q61dOm5xmiiCiLNVg9EvjBAdxDUpIKShztrimIJbNlVbN22SNNebHR
         CHvvWzduZSn9EPsFyTQ+l8LnPJDyCdlfjErEK9pbQBVTAAnjqh8Wdpy2JUWiJq1LecTK
         QHi+S4uFyhzOPmG9R/O+U+jjIxMAiZSExbipyjqzTYRUoWSp3nt3spDrq7xgf7DZW0UI
         f+qo6WkAq9IdmySF8/vubKPPX3Gqoa+yyh6NEE47y1L//qzx/TVKL1Xa/hw/F5qDTMna
         ZHx10XLDmY9nuUB0DKmT3n19tbvvJE3NY95EQ6PgwNbq2eqlr/3UDOfXnBAsGtWRRsk8
         efhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjhMBim5yMAFmS9h6V0Binusxlw2RzYozH/QuUrW0YLE8y4uyT6BGIf7I1mUSgCxDmOdKZD677VOc/@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfupzZBfLwJ/qA2NFoQTBnLhu9eMHhfpceXUOfZwBPJ5bzv9z
	+MlswtOidttd8JVAZK5k2/SivTi57KaPZkVg0espkuWGm7XQofFuACKe24URjZ11IQ==
X-Gm-Gg: ASbGncs57CHxWQ+wBAetS7IT58Wjv2jxcPTS+Z8FZ5oYMqku/g2tMhIdRxwjhzHOJFl
	+n7PIZnE3YiRNpxnFK82B3NDhmaqNOfYoFT6j0UYg8iwIo26NSUSGvQ5XPlObzOkPEDnlnLRy0r
	irrDOFpv7gWcgF8nAZRckeI1T6Go6sc2KW5OOO3+F1Tik3HpvjWO6rF2CiIvn3NAoeOXu5G7KEW
	8W7xGAMVwDTBRkYu91jszkWG/nhA1Zi3wIgj9Yne1lRb+aAv/erSl24/uPBED+JoAyf/ylnKgeC
	mMtZi0pV7+3lZTcgYgT+it323/uM7jAahYbTm8nP5ZfBmqEhA9e67wElPylriI5IJd+1BFGIYg=
	=
X-Google-Smtp-Source: AGHT+IFUg0ybCkxV9cVD6ImAvsCkPwN2GU+1Gin3HrLAz48XZrqKVx6Y7BYUJ82hEBOb61Pon9+3CA==
X-Received: by 2002:a05:6a00:3997:b0:740:b5f9:287b with SMTP id d2e1a72fcca58-745fde794a8mr21016644b3a.1.1748404217601;
        Tue, 27 May 2025 20:50:17 -0700 (PDT)
Received: from thinkpad ([120.56.198.159])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2d9872c835sm256519a12.14.2025.05.27.20.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 20:50:17 -0700 (PDT)
Date: Wed, 28 May 2025 09:20:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r8a779g3: Describe split PCIe
 clock on V4H Sparrow Hawk
Message-ID: <b7vnm66igh3b3ahyjqhegnbteij3bj2ypxcq6ccwi4i77k3af6@g62yhfervtvt>
References: <20250525160513.83029-1-marek.vasut+renesas@mailbox.org>
 <20250525160513.83029-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250525160513.83029-2-marek.vasut+renesas@mailbox.org>

On Sun, May 25, 2025 at 06:04:04PM +0200, Marek Vasut wrote:
> The V4H Sparrow Hawk board supplies PCIe controller input clock and PCIe
> bus clock from separate outputs of Renesas 9FGV0441 clock generator chip.
> Describe this split bus configuration in the board DT. The topology looks
> as follows:
> 
>  ____________                    _____________
> | R-Car PCIe |                  | PCIe device |
> |            |                  |             |
> |    PCIe RX<|==================|>PCIe TX     |
> |    PCIe TX<|==================|>PCIe RX     |
> |            |                  |             |
> |   PCIe CLK<|======..  ..======|>PCIe CLK    |
> '------------'      ||  ||      '-------------'
>                     ||  ||
>  ____________       ||  ||
> |  9FGV0441  |      ||  ||
> |            |      ||  ||
> |   CLK DIF0<|======''  ||
> |   CLK DIF1<|==========''
> |   CLK DIF2<|
> |   CLK DIF3<|
> '------------'
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Magnus Damm <magnus.damm@gmail.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>  .../dts/renesas/r8a779g3-sparrow-hawk.dts     | 45 ++++++++++++++++++-
>  1 file changed, 43 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
> index b8698e07add56..7c050a56290fd 100644
> --- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
> @@ -130,6 +130,13 @@ mini_dp_con_in: endpoint {
>  		};
>  	};
>  
> +	/* Page 26 / PCIe.0/1 CLK */
> +	pcie_refclk: clk-x8 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
>  	reg_1p2v: regulator-1p2v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "fixed-1.2V";
> @@ -404,6 +411,14 @@ i2c0_mux2: i2c@2 {
>  			reg = <2>;
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			/* Page 26 / PCIe.0/1 CLK */
> +			pcie_clk: clk@68 {
> +				compatible = "renesas,9fgv0441";
> +				reg = <0x68>;
> +				clocks = <&pcie_refclk>;
> +				#clock-cells = <1>;
> +			};
>  		};
>  
>  		i2c0_mux3: i2c@3 {
> @@ -487,24 +502,50 @@ msiof1_snd_endpoint: endpoint {
>  
>  /* Page 26 / 2230 Key M M.2 */
>  &pcie0_clkref {
> -	clock-frequency = <100000000>;
> +	status = "disabled";
>  };
>  
>  &pciec0 {
> +	clocks = <&cpg CPG_MOD 624>, <&pcie_clk 0>;
>  	reset-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> +
> +	/* PCIe bridge, Root Port */
> +	pci@0,0 {

PCIe bridge mostly is integrated into the SoC itself. So it should be defined
in the SoC dtsi. Only the vpcie3v3-supply is board specific, so it should live
in board dts.

- Mani

> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		reg = <0x0 0x0 0x0 0x0 0x0>;
> +		compatible = "pciclass,0604";
> +		device_type = "pci";
> +		clocks = <&pcie_clk 1>;
> +		vpcie3v3-supply = <&reg_3p3v>;
> +		ranges;
> +	};
>  };
>  
>  /* Page 25 / PCIe to USB */
>  &pcie1_clkref {
> -	clock-frequency = <100000000>;
> +	status = "disabled";
>  };
>  
>  &pciec1 {
> +	clocks = <&cpg CPG_MOD 625>, <&pcie_clk 2>;
>  	/* uPD720201 is PCIe Gen2 x1 device */
>  	num-lanes = <1>;
>  	reset-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> +
> +	/* PCIe bridge, Root Port */
> +	pci@0,0 {
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		reg = <0x0 0x0 0x0 0x0 0x0>;
> +		compatible = "pciclass,0604";
> +		device_type = "pci";
> +		clocks = <&pcie_clk 3>;
> +		vpcie3v3-supply = <&reg_3p3v>;
> +		ranges;
> +	};
>  };
>  
>  &pfc {
> -- 
> 2.47.2
> 

-- 
மணிவண்ணன் சதாசிவம்

