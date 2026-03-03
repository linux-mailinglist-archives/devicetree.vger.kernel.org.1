Return-Path: <devicetree+bounces-270746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG2LDCFBp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:14:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D891F6AF0
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A188D3074A19
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42332396581;
	Tue,  3 Mar 2026 20:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="OIy/Pgdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFD8382388
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772568792; cv=none; b=CY2oYhEqf4Vt87hi4vYt3W9SqxKgcbk7fZObVMnuUlU3pwD9XN+ukNTPtPM32EuU4d0LbTdufV3X8Kq/Y3Uo/M/alP++p5gtv3PaN5olWdosQ/TwsH/QElkMkDvtt2/jEJBcbtWiphFipSYXn/uWfwQUr0S9KhkmdX7HPW+/35o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772568792; c=relaxed/simple;
	bh=dLnPAzaK9NA06VYMA27NwX5htJE1jUEyOx6WLUMV4/g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=aJXVTBkNFmiI2Jlj4Rf0xOUHNGcK77ZEb5qQlMrfDectR103f/gwWrTEEm6MU5JPkEWRwc5EZhaXJXsKJkMuUqM66VsXvskZwcKk8kETxaypngugnUZFPGSpNbTtJwMGBg168AsWyom216T5YFNu/EyI69CcpgYamUZKP9WI8oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=OIy/Pgdu; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 97F2A240105
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 21:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772568782; bh=ykS3/lznPJiRskJY6N2rHy/zaG2snZkqc0focCUoyGs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=OIy/Pgdu4iRr3G4EdH7TK12YLd7ftCscPmkbspJmrioSOMNtwnYodM0p3Rlu0oJ9d
	 0P1mnfH5dEolVKEit5Or1b4ys3OjVzEc1//K2JWsp3nxb2QfTGqG31nW4mCUcUIew8
	 aVXDFfBhOII4UZVoZ74h13ya75hVJhGI7bnuDaG8XR3OgqnkHgWQ1UMqTcgPw58elv
	 TbU2WFd0V0WL0oTqzJTWWZIfxGTssKklwpGOP1C7Mc/+1KcuAW5wpcpO5pY/tVU0g4
	 du50Xzc3yGgx/OQzbsml4euqcTVUgaonOrLQXkMF69sjIUtEdMmYyCBlEbdKaEWg4B
	 Ygf8iii4o/eTA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fQRn30ZMsz6txc;
	Tue,  3 Mar 2026 21:12:54 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Heiko Stuebner
 <heiko@sntech.de>,  Frank Wunderlich <frank-w@public-files.de>,
  david@ixit.cz,  Martin Filla <freebsd@sysctl.cz>,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: Use reference PCIe clock
 generator for BPI-R2-Pro
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-3-af5a5207b0a1@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
	<20260303-rk3568-bri-r2-pro-fix-pcie-v3-3-af5a5207b0a1@ixit.cz>
Date: Tue, 03 Mar 2026 20:13:01 +0000
Message-ID: <m24imwd649.fsf@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: A6D891F6AF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,public-files.de,ixit.cz,sysctl.cz,vger.kernel.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[posteo.net:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270746-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charmitro@posteo.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,david.ixit.cz,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sntech.de:email,ixit.cz:email,sysctl.cz:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,posteo.net:dkim,posteo.net:mid]
X-Rspamd-Action: no action

David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org> writes:

> From: David Heidelberg <david@ixit.cz>
>
> Describe properly PCIe clock, which allows us correct the

                                      ^^^^^^ ^^
Typo/missing words?

> toplogy (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as

  ^^^^^^
Typo?

> supply) and adding the clock dependency in the PCIe nodes.
>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Martin Filla <freebsd@sysctl.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 47 +++++++++++++++-------
>  1 file changed, 33 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index d02b82c5f979a..3cdea9456a28c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -120,18 +120,13 @@ pcie_refclk_gen: pcie-refclk-gen-clock {
>  		clock-frequency = <100000000>;
>  	};
>  
> -	vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc3v3_pcie";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		enable-active-high;
> -		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> -		startup-delay-us = <200000>;
> -		vin-supply = <&vcc5v0_sys>;
> +	pcie_refclk: pcie-refclk-clock {
> +		compatible = "gpio-gate-clock";
> +		clocks = <&pcie_refclk_gen>;
> +		#clock-cells = <0>;
> +		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>  	};
>  
> -	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
>  	vcc3v3_minipcie: regulator-vcc3v3-minipcie {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_minipcie";
> @@ -142,10 +137,9 @@ vcc3v3_minipcie: regulator-vcc3v3-minipcie {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&minipcie_enable_h>;
>  		startup-delay-us = <50000>;
> -		vin-supply = <&vcc3v3_pi6c_05>;
> +		vin-supply = <&vcc3v3_sys>;
>  	};
>  
> -	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
>  	vcc3v3_ngff: regulator-vcc3v3-ngff {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_ngff";
> @@ -156,7 +150,7 @@ vcc3v3_ngff: regulator-vcc3v3-ngff {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&ngffpcie_enable_h>;
>  		startup-delay-us = <50000>;
> -		vin-supply = <&vcc3v3_pi6c_05>;
> +		vin-supply = <&vcc3v3_sys>;
>  	};
>  
>  	vcc5v0_usb: regulator-vcc5v0-usb {
> @@ -586,12 +580,24 @@ rgmii_phy1: ethernet-phy@0 {
>  
>  &pcie30phy {
>  	data-lanes = <1 2>;
> -	phy-supply = <&vcc3v3_pi6c_05>;
> +
>  	status = "okay";
>  };
>  
>  &pcie3x1 {
>  	/* M.2 slot */
> +	/*
> +	 * The board has a gpio-controlled "pcie_refclk" generator,
> +	 * so add it to the list of clocks.
> +	 */
> +	clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
> +		 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
> +		 <&cru CLK_PCIE30X1_AUX_NDFT>,
> +		 <&cru CLK_PCIE30X1_PIPE_DFT>,
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "pipe", "ref";
>  	num-lanes = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&ngffpcie_reset_h>;
> @@ -602,6 +608,19 @@ &pcie3x1 {
>  
>  &pcie3x2 {
>  	/* mPCIe slot */
> +	/*
> +	 * The board has a gpio-controlled "pcie_refclk" generator,
> +	 * so add it to the list of clocks.
> +	 */
> +	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
> +		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
> +		 <&cru CLK_PCIE30X2_AUX_NDFT>,
> +		 <&cru CLK_PCIE30X2_PIPE_DFT>,
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "pipe", "ref";
> +
>  	num-lanes = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&minipcie_reset_h>;

