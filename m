Return-Path: <devicetree+bounces-175618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 355EBAB14C6
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:20:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07557A2382E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48A822920BF;
	Fri,  9 May 2025 13:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="uHLP1FXR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC32920AA
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796450; cv=none; b=LwUbtFtpdtYcXs+2LW6ZhilAnLkop5fSytq1takn667IlNv27de+66ttI77uVyYGZIxKIUSRdm1UpljgjqXYFguh4aQ9xWG4PLCwtOgX9Ea6XD0Nzu7xQ12V82wNX2sQNPAe1o+3Je+Pda7+RI7eeugUPwiXpp568v5Ji1yWi48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796450; c=relaxed/simple;
	bh=BsK2bsbbN1CB8iXzuveoEP/csD0vUk7ACthz7UePN5A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ss4DL3NhUG4r53+5C/YxNsgA39AfgnF/IF2m7fDI0DvwKx4mUupaEJQbudJMzakUe0GdBK9BxVM1zTiW68lzGXFUcHN0T1qqBZ8djDVSajo67X16LkhVjD39D5GIcZ6DxNiJYsckH8JTjAS54FlHx62sHDUYvfy4WOmOTtFEsyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=uHLP1FXR; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Fri, 9 May 2025 09:13:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1746796435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=joJW+D0CZd0k3aVe20JA5YgO5s4LttQGX9HFQMhhsJc=;
	b=uHLP1FXRDuVoH6y7Cbl0iajt9qTPi8FeHcFm++zSbsY/lrniwAEekeRiFzsgic0yf0djaF
	2FqUDyy/UU2ZH2fku0JEgms0JdoCYJiETboXysp9hJAYhwlWE7jkISob7TxpKbSzFxyk+5
	/jpyTj+3LsAtkMxE+JSB7706YFqXRSfMS9ATvnqtoHRLHyw2vLRfsi4tWR+jrMbrrbFAmU
	u36wZadzCxbYvTcVoJEhjfJFWOD5mWKi9b3K0/gK/BNy40fAPJ0BH6T1bbKuOOje1zBcZS
	gAhXsf1/K6s9+69R/MA4Pi/4eMhrc3uAer6xuyDmze5VmJl1zxd3myfKsiBxFw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: sven@svenpeter.dev
Cc: Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Hector Martin <marcan@marcan.st>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 9/9] arm64: dts: apple: t600x: Add SMC node
Message-ID: <aB3_jnRXu4wKdD4o@blossom>
References: <20250503-smc-6-15-v4-0-500b9b6546fc@svenpeter.dev>
 <20250503-smc-6-15-v4-9-500b9b6546fc@svenpeter.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250503-smc-6-15-v4-9-500b9b6546fc@svenpeter.dev>
X-Migadu-Flow: FLOW_OUT

Reviewed-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>

Le Sat , May 03, 2025 at 10:06:56AM +0000, Sven Peter via B4 Relay a �crit :
> From: Hector Martin <marcan@marcan.st>
> 
> Signed-off-by: Hector Martin <marcan@marcan.st>
> Signed-off-by: Sven Peter <sven@svenpeter.dev>
> ---
>  arch/arm64/boot/dts/apple/t600x-die0.dtsi | 35 +++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/apple/t600x-die0.dtsi b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
> index 110bc6719512e334e04b496fb157cb4368679957..4993a8ace87b2fc7e645b08c19fcd9b0c21896aa 100644
> --- a/arch/arm64/boot/dts/apple/t600x-die0.dtsi
> +++ b/arch/arm64/boot/dts/apple/t600x-die0.dtsi
> @@ -24,6 +24,41 @@ aic: interrupt-controller@28e100000 {
>  		power-domains = <&ps_aic>;
>  	};
>  
> +	smc: smc@290400000 {
> +		compatible = "apple,t6000-smc", "apple,smc";
> +		reg = <0x2 0x90400000 0x0 0x4000>,
> +			<0x2 0x91e00000 0x0 0x100000>;
> +		reg-names = "smc", "sram";
> +		mboxes = <&smc_mbox>;
> +
> +		smc_gpio: gpio {
> +			compatible = "apple,smc-gpio";
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +		};
> +
> +		smc_reboot: reboot {
> +			compatible = "apple,smc-reboot";
> +			nvmem-cells = <&shutdown_flag>, <&boot_stage>,
> +				<&boot_error_count>, <&panic_count>, <&pm_setting>;
> +			nvmem-cell-names = "shutdown_flag", "boot_stage",
> +				"boot_error_count", "panic_count", "pm_setting";
> +		};
> +	};
> +
> +	smc_mbox: mbox@290408000 {
> +		compatible = "apple,t6000-asc-mailbox", "apple,asc-mailbox-v4";
> +		reg = <0x2 0x90408000 0x0 0x4000>;
> +		interrupt-parent = <&aic>;
> +		interrupts = <AIC_IRQ 0 754 IRQ_TYPE_LEVEL_HIGH>,
> +			<AIC_IRQ 0 755 IRQ_TYPE_LEVEL_HIGH>,
> +			<AIC_IRQ 0 756 IRQ_TYPE_LEVEL_HIGH>,
> +			<AIC_IRQ 0 757 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "send-empty", "send-not-empty",
> +			"recv-empty", "recv-not-empty";
> +		#mbox-cells = <0>;
> +	};
> +
>  	pinctrl_smc: pinctrl@290820000 {
>  		compatible = "apple,t6000-pinctrl", "apple,pinctrl";
>  		reg = <0x2 0x90820000 0x0 0x4000>;
> 
> -- 
> 2.34.1
> 
> 

