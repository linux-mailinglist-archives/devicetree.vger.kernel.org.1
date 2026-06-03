Return-Path: <devicetree+bounces-306351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OPbNFHhPIGon0wAAu9opvQ
	(envelope-from <devicetree+bounces-306351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:59:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7D96397EB
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:59:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kemnade.info header.s=20220719 header.b=HsUs0m04;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306351-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306351-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=kemnade.info;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 345D7302179B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74600392C50;
	Wed,  3 Jun 2026 15:10:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE05F384CFA;
	Wed,  3 Jun 2026 15:10:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780499445; cv=none; b=tviRHBw7zko+Yv2GGuGLjZgocNs9bso/gLP6hVFwG3Qblw8F+eN5wgI19Pbqc38/acKW2m2t/YTOVA0PtnmWAD6Oqg3Aqc70Lz5SmDFy/BBNq/LnaJX89dJJJel1Onud9To+O1veNcXGNGslXMfCv1Q2I/T0RKJV//2yzyEEzE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780499445; c=relaxed/simple;
	bh=eKCixHxP4OHrmNzvG/H9bFpkf8RLwspWU1OQSLtQBAU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SuNiOpres/DCyTmdbR4fOqOMTvG2B3lYCLIo7WUhVIsJrs+V3OyhACYKP15C0esWV8jOC9bo5WTsafmu6RVlS3zmne3DuSUXH3UUQGwnkC7GpUPRfJfcusZlvsr8xAaZU0b7slemmeoad5vOcghcPgIwQ5cyPEk2qAXCTdDY5E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=HsUs0m04; arc=none smtp.client-ip=178.238.236.174
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=AnWsPGZ65Ks2vM3FyVUF91sTsc3pQ1fxnLM5pPobsls=; b=HsUs0m04ndeqh0aEXv2DDHnWWb
	a3nrtFHnwDOGYtwlD217gOZsV4kC57ujooka2UHd9Fe6RONHagXJMzWJKMv1YCqRlEWSOQEaGMQOF
	KlgedXE7Hg3nUmOW/oaAS8sE3hqwh6cQNpG9et2bBuVl2O8ZoNvL+7ljBSqQTgdhVfQOaTQIm8KYs
	wEcWHHcBjkpXU9U4H2MqFhlL9BgnDqmC2h2cyOD6ooC4bCKTDYH9oiCqkoITv5eBPszUDqHXeC2KV
	xSkqCWyBPkc1YzhwlT2rcHfK3D2g/5MzYrzANcBaMwz5fBxjwzG40qVEPBiIJUoQDpnM5TJUYjAFF
	XDRmpa3Q==;
Date: Wed, 3 Jun 2026 17:10:38 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: ti: Add specific compatibles for SCM conf
 nodes
Message-ID: <20260603171038.137cd2e8@kemnade.info>
In-Reply-To: <20260531110404.12768-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260531110404.12768-3-krzysztof.kozlowski@oss.qualcomm.com>
	<20260531110404.12768-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306351-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,kemnade.info:mid,kemnade.info:dkim,kemnade.info:from_mime,kemnade.info:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A7D96397EB

On Sun, 31 May 2026 13:04:06 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com> wrote:

> writing-bindings.rst rules dictate that "syscon" must come with a
> specific compatible identifying the register layout.  Add specific
> compatibles for these devices.
> 
> This also allows to solve a different problem: "syscon" is contradictory
> to "simple-bus".  A system controller with registers having their own
> functions is not really a trivial MMIO simple bus.  These two cannot be
> used together, unless listed as an exception.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-By: Andreas Kemnade <andreas@kemnade.info>
> ---
>  arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi | 2 +-
>  arch/arm/boot/dts/ti/omap/am437x-l4.dtsi | 2 +-
>  arch/arm/boot/dts/ti/omap/dm814x.dtsi    | 2 +-
>  arch/arm/boot/dts/ti/omap/dm816x.dtsi    | 2 +-
>  arch/arm/boot/dts/ti/omap/dra7-l4.dtsi   | 2 +-
>  arch/arm/boot/dts/ti/omap/omap2430.dtsi  | 2 +-
>  arch/arm/boot/dts/ti/omap/omap3.dtsi     | 2 +-
>  arch/arm/boot/dts/ti/omap/omap4-l4.dtsi  | 2 +-
>  arch/arm/boot/dts/ti/omap/omap5-l4.dtsi  | 6 +++---
>  9 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi b/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
> index 89d16fcc773e..1e09d2b48925 100644
> --- a/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/am33xx-l4.dtsi
> @@ -308,7 +308,7 @@ am33xx_pinmux: pinmux@800 {
>  				};
>  
>  				scm_conf: scm_conf@0 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,am3352-scm-conf", "syscon", "simple-bus";
>  					reg = <0x0 0x800>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi b/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
> index e08f356e71cb..30fcce33f4b7 100644
> --- a/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/am437x-l4.dtsi
> @@ -301,7 +301,7 @@ am43xx_pinmux: pinmux@800 {
>  				};
>  
>  				scm_conf: scm_conf@0 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,am4372-scm-conf", "syscon", "simple-bus";
>  					reg = <0x0 0x800>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/dm814x.dtsi b/arch/arm/boot/dts/ti/omap/dm814x.dtsi
> index 27d1f35a31fd..9e02bfa5c3a2 100644
> --- a/arch/arm/boot/dts/ti/omap/dm814x.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dm814x.dtsi
> @@ -432,7 +432,7 @@ control: control@140000 {
>  				ranges = <0 0x140000 0x20000>;
>  
>  				scm_conf: scm_conf@0 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,dm814-scm-conf", "syscon", "simple-bus";
>  					reg = <0x0 0x800>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/dm816x.dtsi b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> index a1e0e904e0f0..ee0090f7aa64 100644
> --- a/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
> @@ -100,7 +100,7 @@ dm816x_pinmux: pinmux@800 {
>  
>  			/* Device Configuration Registers */
>  			scm_conf: syscon@600 {
> -				compatible = "syscon", "simple-bus";
> +				compatible = "ti,dm8168-scm-conf", "syscon", "simple-bus";
>  				reg = <0x600 0x110>;
>  				#address-cells = <1>;
>  				#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> index c8d325b0f57b..9df7648c4b79 100644
> --- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
> @@ -64,7 +64,7 @@ scm: scm@0 {
>  				ranges = <0 0 0x2000>;
>  
>  				scm_conf: scm_conf@0 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,dra7-scm-conf", "syscon", "simple-bus";
>  					reg = <0x0 0x1400>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/omap2430.dtsi b/arch/arm/boot/dts/ti/omap/omap2430.dtsi
> index 222613d2a4d1..01bd471f9223 100644
> --- a/arch/arm/boot/dts/ti/omap/omap2430.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap2430.dtsi
> @@ -50,7 +50,7 @@ omap2430_pmx: pinmux@30 {
>  				};
>  
>  				scm_conf: scm_conf@270 {
> -					compatible = "syscon",
> +					compatible = "ti,omap2-scm-conf", "syscon",
>  						     "simple-bus";
>  					reg = <0x270 0x240>;
>  					#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/omap3.dtsi b/arch/arm/boot/dts/ti/omap/omap3.dtsi
> index 959069e24730..447736d2e53c 100644
> --- a/arch/arm/boot/dts/ti/omap/omap3.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap3.dtsi
> @@ -116,7 +116,7 @@ omap3_pmx_core: pinmux@30 {
>  				};
>  
>  				scm_conf: scm_conf@270 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,omap3-scm-conf", "syscon", "simple-bus";
>  					reg = <0x270 0x330>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> index 4c78a0b28fab..c1afc49f456c 100644
> --- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
> @@ -681,7 +681,7 @@ omap4_pmx_core: pinmux@40 {
>  			};
>  
>  			omap4_padconf_global: omap4_padconf_global@5a0 {
> -				compatible = "syscon",
> +				compatible = "ti,omap4-sysc-padconf-global", "syscon",
>  					     "simple-bus";
>  				reg = <0x5a0 0x170>;
>  				#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> index 915870eb5c99..3350128db22d 100644
> --- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
> @@ -96,8 +96,7 @@ omap5_pmx_core: pinmux@40 {
>  				};
>  
>  				omap5_padconf_global: omap5_padconf_global@5a0 {
> -					compatible = "syscon",
> -						     "simple-bus";
> +					compatible = "ti,omap5-scm-conf", "syscon", "simple-bus";
>  					reg = <0x5a0 0xec>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;
> @@ -2311,7 +2310,8 @@ omap5_scm_wkup_pad_conf: omap5_scm_wkup_pad_conf@da0 {
>  				ranges = <0 0 0x60>;
>  
>  				scm_wkup_pad_conf: scm_conf@0 {
> -					compatible = "syscon", "simple-bus";
> +					compatible = "ti,omap5-scm-wkup-conf",
> +						     "syscon", "simple-bus";
>  					reg = <0x0 0x60>;
>  					#address-cells = <1>;
>  					#size-cells = <1>;


