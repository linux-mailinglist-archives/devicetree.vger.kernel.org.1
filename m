Return-Path: <devicetree+bounces-312431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G7ZIA94fMWoGcAUAu9opvQ
	(envelope-from <devicetree+bounces-312431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:05:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9AA68DDB4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:05:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312431-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312431-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10C753004D33
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309893B9600;
	Tue, 16 Jun 2026 10:05:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A419A36214C
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 10:05:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781604316; cv=none; b=vD6UY7ffbUkDwyWXZZ5oZkcyF8bltNAHuDtJ6OXbmjqszqPoURV6UbGKe7S1l/J78PP6AO4d+QfkkswLHkBLM628SVh6yEfPSkm2jYFtckTkVKn/IAWcnaEA+/g/R5dDG4R5XWfnjzcN8foTg/NFe2Ji1E3p/Skb8tLyQM2bk1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781604316; c=relaxed/simple;
	bh=UVhRp34cnTDIAcyWSUUBEj4IIyCy1kD5bHYSH2h/iiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yok/YyoyyPxDqTDWpjwwNLZXL+mifUKRgflvLbP0TvtzBm13ol+6E+Q5peaV+0Pi88g/62MPbAUPj9Ad55ep1BVN0ZezmazC/zK56z+OQc/RSwiROImR4vw02s54dWR6VzZb9VmBPjIyx5lgbBua+FsrLYMsHk/EbaR2fPXeSaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZQfH-0003jK-3A; Tue, 16 Jun 2026 12:05:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZQfG-0030uu-2j;
	Tue, 16 Jun 2026 12:05:02 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZQfG-00000008itz-32QJ;
	Tue, 16 Jun 2026 12:05:02 +0200
Date: Tue, 16 Jun 2026 12:05:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Liu Ying <victor.liu@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: imx93-11x11-evk: Add DY1212W-4856
 LVDS panel
Message-ID: <nj7yarck53nfnmsa3fafw7iqh6cqwfsm4qmfeig3w5pr3pvof6@cblp4m4aqu2l>
References: <20260610-imx93-ldb-v3-0-c9b65d742753@nxp.com>
 <20260610-imx93-ldb-v3-3-c9b65d742753@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610-imx93-ldb-v3-3-c9b65d742753@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312431-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:victor.liu@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:peng.fan@nxp.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pengutronix.de:url,pengutronix.de:from_mime,nxp.com:url,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A9AA68DDB4

On 26-06-10, Liu Ying wrote:
> DY1212W-4856 [1] is a 12.1" (WXGA) TFT LCD panel with LVDS interface.
> The panel's 40-pin connector allows it to be directly connected to
> i.MX93 11x11 EVK board.
> 
> Link: https://www.nxp.com/design/design-center/development-boards-and-designs/dy1212w-4856-tft-lcd-panel-with-lvds-interface:DY1212W-4856 [1]
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |  4 ++
>  .../freescale/imx93-11x11-evk-dy1212w-4856.dtso    | 81 ++++++++++++++++++++++
>  2 files changed, 85 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 8ddaab127ab9..dbe27d757c86 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -588,6 +588,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb-ontat-kd50g21-40nt-a1.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb-tianma-tm050rdh03.dtb
>  
>  dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
> +
> +imx93-11x11-evk-dy1212w-4856-dtbs += imx93-11x11-evk.dtb imx93-11x11-evk-dy1212w-4856.dtbo
> +dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk-dy1212w-4856.dtb
> +
>  dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm.dtb
>  
>  imx93-11x11-frdm-pixpaper-dtbs += imx93-11x11-frdm.dtb imx93-11x11-frdm-pixpaper.dtbo
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk-dy1212w-4856.dtso b/arch/arm64/boot/dts/freescale/imx93-11x11-evk-dy1212w-4856.dtso
> new file mode 100644
> index 000000000000..35f7c5699e3a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk-dy1212w-4856.dtso
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2026 NXP
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/imx93-clock.h>
> +
> +&{/} {
> +	panel-lvds {
> +		compatible = "boe,ev121wxm-n10-1850";
> +		backlight = <&backlight_lvds>;
> +		power-supply = <&buck4>;
> +
> +		panel-timing {
> +			/*
> +			 * Set clock frequency to 71142858Hz to accommodate
> +			 * IMX93_CLK_VIDEO_PLL rate at 498000000Hz in a rate
> +			 * table.
> +			 */
> +			clock-frequency = <71142858>;
> +			hactive = <1280>;
> +			vactive = <800>;
> +			hfront-porch = <48>;
> +			hback-porch = <80>;
> +			hsync-len = <32>;
> +			vfront-porch = <3>;
> +			vback-porch = <14>;
> +			vsync-len = <6>;
> +		};
> +
> +		port {
> +			panel_lvds_in: endpoint {
> +				remote-endpoint = <&ldb_lvds_ch0>;
> +			};
> +		};
> +	};
> +};
> +
> +&backlight_lvds {
> +	status = "okay";
> +};
> +
> +&lcdif {
> +	status = "okay";
> +};
> +
> +&lvds_bridge {
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			ldb_lvds_ch0: endpoint {
> +				remote-endpoint = <&panel_lvds_in>;
> +			};
> +		};
> +	};

You could just make use of the ldb_lvds_ch0 phandle you added previously
and drop the complete override.

Regards,
  Marco

> +};
> +
> +&media_blk_ctrl {
> +	assigned-clocks = <&clk IMX93_CLK_MEDIA_AXI>,
> +			  <&clk IMX93_CLK_MEDIA_APB>,
> +			  <&clk IMX93_CLK_MEDIA_DISP_PIX>,
> +			  <&clk IMX93_CLK_VIDEO_PLL>;
> +	assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>,
> +				 <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>,
> +				 <&clk IMX93_CLK_VIDEO_PLL>;
> +	/*
> +	 * Set IMX93_CLK_MEDIA_DISP_PIX rate to 71142858Hz to accommodate
> +	 * IMX93_CLK_VIDEO_PLL rate at 498000000Hz in a rate table.
> +	 */
> +	assigned-clock-rates = <400000000>, <133333333>, <71142858>, <498000000>;
> +	status = "okay";
> +};
> 
> -- 
> 2.43.0
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

