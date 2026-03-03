Return-Path: <devicetree+bounces-270676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHs8AcIcp2kUeAAAu9opvQ
	(envelope-from <devicetree+bounces-270676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:39:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC771F4BD2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7FC46301281D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8355947CC62;
	Tue,  3 Mar 2026 17:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="qBB8aiz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CFE43E51E6
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 17:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772559548; cv=none; b=MEXD3RqefqBjptrBFYpgxeJZ31PVX7Z1mDwMmBnv3oaeYVZyFzSjDqgSj7P7gzUJQPD7NmutuBnyxxoAYdUcwsB8eohSr5NHZNyI0qHv+C1Mx4k2M0ME6822SEJcIYiXRC0owRmzUKKwy0gpHeafNMs/5yC/6k3qlNv2nYHMBL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772559548; c=relaxed/simple;
	bh=4KgcNIHW/CuYKG8e9VY87ryNTXwRA4clMpYl1FFhTtA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IADjgXBuEwBKOcwGB3xgmHtaSwxbpnqkLOZm5LSH7jUNgcQxIbDimzMQoeoH8pKtCNomijbW2WDJh8mXmk/j5v2rXq0Z5/SylE1UJae9gJlUeOltpZZA19PjNLSRi/2FjmB++B0dkllz4ONag76DMcCGCNUr00pgQokT2BmgKac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=qBB8aiz6; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id E9706240029
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 18:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772559538; bh=ufIzwaNjj0ilI3qaPmP9e1Hi0EpUA2HQbbQRITslibI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=qBB8aiz6fQ55AP5cEmGfMsRyy2vIHjS+Y82w3BaFq9qBwavwM0LM1ZkQafVM1+xKd
	 dBq/J5grL2cVW1KSTi32TFKUccTcgplJYj/49r/7KR2CGv7QA8dvL/K824fkgCRNK7
	 oz7thCoBslQuntO5ReDNcUqyAjwHV+PdPPskexsGEKRFQ07eW4TvsuvmtCirIhqV+V
	 hJaqJgL5v5ZDC6iRNsoUxA/4ZgLaocXgZbjWQDeNsj63Rk00o+I46+IYjYdC6CZSbG
	 YPsH6mTvZjgtGp2GO5YgVMO5HHeMtaZozwmxB+64S1uG4/cFKRqM469g0QI7cQBC47
	 OrUu3cqpc0Abg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fQNMN5rPmz9rxL;
	Tue,  3 Mar 2026 18:38:56 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: david@ixit.cz
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Heiko Stuebner
 <heiko@sntech.de>,  Martin Filla <freebsd@sysctl.cz>,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Use reference PCIe clock
 generator for BPI-R2-Pro
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-2-04665e55d5a8@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
	<20260303-rk3568-bri-r2-pro-fix-pcie-v2-2-04665e55d5a8@ixit.cz>
Date: Tue, 03 Mar 2026 17:38:58 +0000
Message-ID: <87fr6gn780.fsf@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 0BC771F4BD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[posteo.net:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270676-lists,devicetree=lfdr.de];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charmitro@posteo.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sntech.de:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org> writes:

> From: David Heidelberg <david@ixit.cz>
>
> Describe properly PCIe clock, which allows us correct the
> toplogy (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as
> supply) and adding the clock dependency in the PCIe nodes.
>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Martin Filla <freebsd@sysctl.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 45 +++++++++++++++-------
>  1 file changed, 31 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index d02b82c5f979a..a071cb67579c4 100644
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
> @@ -586,12 +580,23 @@ rgmii_phy1: ethernet-phy@0 {
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
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "ref";

Hi,

The DT binding in rockchip-dw-pcie-common.yaml defines clock-names as a
positional array:

    items:
      - const: aclk_mst
      - const: aclk_slv
      - const: aclk_dbi
      - const: pclk
      - const: aux
      - const: pipe   <-- position 5
      - const: ref    <-- position 6

With "ref" at position 5, this would fail dtbs_check because the schema
expects "pipe" there.

Other boards that include the ref clock (rk3588-rock-5-itx,
rk3588-jaguar) include "pipe" at position 5 and "ref" at position 6. The
rk3568 has CLK_PCIE30X1_PIPE_DFT available in the CRU header.

Should the pipe clock be included before ref to match the binding
schema?

>  	num-lanes = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&ngffpcie_reset_h>;
> @@ -602,6 +607,18 @@ &pcie3x1 {
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
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk", "aux",
> +		      "ref";
> +

Same clock-names ordering issue I believe here for pci3c2, with
CLK_PCIE30X2_PIPE_DFT available.


>  	num-lanes = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&minipcie_reset_h>;

