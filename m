Return-Path: <devicetree+bounces-284050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK3PCCZfzmnvnAYAu9opvQ
	(envelope-from <devicetree+bounces-284050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 14:20:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74664388FB8
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 14:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BC39302FAA2
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 12:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCA33CB2EA;
	Thu,  2 Apr 2026 12:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhxzViMS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4E430C371;
	Thu,  2 Apr 2026 12:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775132449; cv=none; b=YEmP2lOlFIUJpvV6eV5SX2YszFhTuLpH7R0Dbi/IFJ6r8JfFs5n/nWTEnvxTHk9zwcMZnIT0unHnTsDr8rCo6G1jYbnJDHybh0uJJAapuuxOQWni3MfC1dgUTgs2zo0z1GxL9xR7AX4yfm8WKaGnEIyCMx/6IWBUIzEUIV6+D3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775132449; c=relaxed/simple;
	bh=Oh1AVW120dvv/mRAOesK1dOxVK8tD3RCPIJ1/D57Za8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fvmN7Cy0hyUwdeSSjsccAMzKIyqVtSdG4e652zyJuSTfCeo1f4xVDJA7X5YuYtNN/GL13WMZNTQgTR72sbx+UqSxoq6d/pUEzgd8LUgavusMBVUFLXsQfS4YRFafdMnonmawobP/OLg3EJFvnJfYMp4mFNjedrRdDJdnz8jRf+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhxzViMS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68727C19423;
	Thu,  2 Apr 2026 12:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775132448;
	bh=Oh1AVW120dvv/mRAOesK1dOxVK8tD3RCPIJ1/D57Za8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WhxzViMSwXjtwwYYhrFmM8kZBO6+E5idYMSjGyOsI+tRS02KxxifluBX5pPFG/CfO
	 b6ZVRTWUD2Gm44BnkqbzDUa0r7wPWDqRxoTteAxacIn0uIJ6VQbvs+iqNqsAGPypxa
	 5e6HPOjz/876/q/j0xgmIh/iFzVlS2SBoB1Kzvsb9dLmT9JvVOVWcQyOUVZMydj16x
	 wA56KI941t/SHEc3+iSlC5ki32xrNHtXexIVuevW1XHOV7ou57Eg4i4pbrZy87FRe4
	 WlPwyZ4QV8VlGBhmMPTl0uY7yqZfzoNriPTkn1XePuNqZC1RBJZixw9OXZTwoAHiET
	 Ez3LXl4s2qrYg==
Date: Thu, 2 Apr 2026 20:20:45 +0800
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>, Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH v2 3/3] riscv: dts: spacemit: enable USB3 on OrangePi RV2
Message-ID: <20260402122045-GKA1016296@kernel.org>
References: <20260402100007.110201-1-amadeus@jmu.edu.cn>
 <20260402100007.110201-4-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260402100007.110201-4-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-284050-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jmu.edu.cn:email]
X-Rspamd-Queue-Id: 74664388FB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Chukun,

On 18:00 Thu 02 Apr     , Chukun Pan wrote:
> Enable the DWC3 USB3.0 controller and its associated PHY on
> the OrangePi RV2. The onboard GENESYS GL3523 Hub provides 3
> USB3 Type-A ports. Enable the corresponding VBUS regulator.

Can you work with Han for adding USB support[1]? this will simply
distribute our effort, and make the review process even harder

https://lore.kernel.org/all/0ec229e2fb138092672773f134d0739e70740ce0.1774974017.git.gaohan@iscas.ac.cn/ [1]
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> index 929b70d384b5..ab835c30dd86 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> @@ -52,6 +52,20 @@ vcc4v0: regulator-vcc4v0 {
>  		regulator-max-microvolt = <4000000>;
>  		vin-supply = <&vcc_5v0>;
>  	};
> +
> +	vcc5v0_usb30: regulator-vcc5v0-usb30 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb30";
> +		enable-active-high;
> +		gpios = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc_5v0>;
> +	};
> +};
> +
> +&combo_phy {
> +	status = "okay";
>  };
>  
>  &eth0 {
> @@ -111,3 +125,13 @@ &uart0 {
>  	pinctrl-0 = <&uart0_2_cfg>;
>  	status = "okay";
>  };
> +
> +&usbphy2 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3 {
> +	dr_mode = "host";
> +	vbus-supply = <&vcc5v0_usb30>;
IMO, the vbus doesn't directly tie to dwc3 host, but to HUB's port
so I think this is still wrong, although it may work on the board..

> +	status = "okay";
> +};
> -- 
> 2.34.1
> 
> 

-- 
Yixun Lan (dlan)

