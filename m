Return-Path: <devicetree+bounces-270213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFABBD7rpWlLHwAAu9opvQ
	(envelope-from <devicetree+bounces-270213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 20:55:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD951DF018
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 20:55:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB6C330B39F4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 19:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A11C3859CD;
	Mon,  2 Mar 2026 19:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="fgjwneqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8FA337689;
	Mon,  2 Mar 2026 19:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772481195; cv=none; b=RGqk1PNPW7vd8t6EA9m3S7Dtf45aWSLgpfMZFyZxjMyCoDFz+v4X2FdPMHognv97ngDe3ORyHWI4MgILwHfUm/iRMaYu/33lvkLYDW3ClysLBzzcZ5guuql52glR8hTcilsy+EwrZY+7uPPopci2+lOQ8UIMQsvTA/nG2HGgCMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772481195; c=relaxed/simple;
	bh=JbA6ZdAMxxT/+BR1ZeasXN/bm0VqhCHZ8vKcRnpk2JI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U1OTgOGFYq+NLSJje/3iEF5AnN85NdYJ1EwpBWw08BO4DO0CZbjZSLilaAnU9aWJrJP38F3D5lX6SoGGLECvRmmqXApa2FGRRVzYoNaL7eo7uzNqHGhvuRglIiDFJnUOjBAgFbVxk+uDNjdCoTLqnV3OZdNaqpnUn+6kTjBOJno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=fgjwneqS; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=7zjPjCKQJoi6jurmXp6AwDyOS1X/gpBHDLrt2aPQjbI=; b=fgjwneqSWDTw3bZTiE3SmFLXqB
	mMMv4iti+59YdBzAA2GN/OcHm58KcPUFlYc6VTCOX5E9YZDPtkGanZr9FtN6//xTx4/xEn8s2zapE
	QpiN5IHUNeHX8kCYj+CCB+qELwkKwwAFAfRvHjFSv0uGtx42Eqv+OjS9oA5wEHRVfpf7T0byGz3hn
	Uagexl4u+aSwHZLEFNLzQd55UixnznvP8Kgsf8J0APRWaPDFwOViWq56YYUbVw9Lbo8RXSYYxyKxn
	mjpvaxkdwdIv2jOvhR3jydvoeePONF3oVP9lo6BxmnN/LTXRTbhoOU7DKOlsL2U/LFNpO11vKE/9B
	PT5XLWiQ==;
Date: Mon, 2 Mar 2026 20:52:44 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mithil Bavishi <bavishimithil@gmail.com>
Cc: aaro.koskinen@iki.fi, airlied@gmail.com, conor+dt@kernel.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, khilman@baylibre.com,
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 jesszhan0024@gmail.com, rfoss@kernel.org, robh@kernel.org,
 rogerq@kernel.org, simona@ffwll.ch, thierry.reding@gmail.com,
 tony@atomide.com, tzimmermann@suse.de, andrzej.hajda@intel.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v8 8/8] ARM: dts: ti: omap: samsung-espresso10: Add
 initial support for Galaxy Tab 2 10.1
Message-ID: <20260302205244.111fa4d5@kemnade.info>
In-Reply-To: <20260223134941.427-9-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
	<20260223134941.427-9-bavishimithil@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6BD951DF018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270213-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,kemnade.info:dkim,kemnade.info:mid,0.0.0.11:email,0.0.0.20:email]
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 08:49:40 -0500
Mithil Bavishi <bavishimithil@gmail.com> wrote:

> Create a device tree for the 10 inch variants (P5100, P5110, P5113)
> 
> Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
> ---
>  arch/arm/boot/dts/ti/omap/Makefile            |   1 +
>  .../dts/ti/omap/omap4-samsung-espresso10.dts  | 104 ++++++++++++++++++
>  2 files changed, 105 insertions(+)
>  create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
> 
> diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
> index d24f13efd..140ac39b3 100644
> --- a/arch/arm/boot/dts/ti/omap/Makefile
> +++ b/arch/arm/boot/dts/ti/omap/Makefile
> @@ -81,6 +81,7 @@ dtb-$(CONFIG_ARCH_OMAP4) += \
>  	omap4-var-dvk-om44.dtb \
>  	omap4-var-stk-om44.dtb \
>  	omap4-samsung-espresso7.dtb \
> +	omap4-samsung-espresso10.dtb \
>  	omap4-xyboard-mz609.dtb \
>  	omap4-xyboard-mz617.dtb
>  dtb-$(CONFIG_SOC_AM33XX) += \
> diff --git a/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
> new file mode 100644
> index 000000000..5c00d67ac
> --- /dev/null
> +++ b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
> @@ -0,0 +1,104 @@
[...]

> +&i2c3 {
> +	touchscreen@20 {
> +		compatible = "syna,rmi4-i2c";
> +		reg = <0x20>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&touch_pins>;
> +
> +		//avdd-supply = <&reg_touch_ldo_en>;
> +		vdd-supply = <&ldo6>;
> +
> +		syna,reset-delay-ms = <200>;
> +		syna,startup-delay-ms = <200>;
> +
> +		touchscreen-size-x = <1280>;
> +		touchscreen-size-y = <800>;
> +
duplicated,

> +		rmi4-f01@1 {
> +			reg = <0x01>;
> +			syna,nosleep-mode = <1>;
> +		};
> +
> +		rmi4-f11@11 {
> +			reg = <0x11>;
> +			touchscreen-size-x = <1280>;
> +			touchscreen-size-y = <800>;
it is needed and accepted only here.


Regards,
Andreas

