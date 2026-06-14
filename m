Return-Path: <devicetree+bounces-311427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aFWqBeRuLmp+vwQAu9opvQ
	(envelope-from <devicetree+bounces-311427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 11:05:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73195680B82
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 11:05:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=O90dDmPE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311427-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311427-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FCBA3001A5D
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 09:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731EE2BE639;
	Sun, 14 Jun 2026 09:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0412026CE2D;
	Sun, 14 Jun 2026 09:05:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781427934; cv=none; b=Fr3aKqesVhG52aiYO/yPnrV2lUuiEO3q6q/5Zo9eEq+bVSDGxsgHIwMbuuK34bW2HO/JG5fBLJSIzUyBV4TE3N9d4gLHpJZGFJAsFvL/9TXuyoIvCaGaSmyixabhwpX3xMfsI5h4Y2Dp6aCdQJfKjx4odjahua1ge8lePlgh5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781427934; c=relaxed/simple;
	bh=UvZypzYjdF8HPZjxrmnf1ce5MwC1JzPuB4b+WHL/xzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jtbadbgUCcF9wuhfEnfieRBgNZETE9dDzCCaThamMSiGqEwiuXosjWMYALDVvCWG1w5XuSCdUUB2ep52dwHlLvTsUBIds59HEcwBFuchEtF3EMdm/qTQlrvtuedWZ68haDts2xaE3U/d+iBfupBuPASYsLIhjGk2nYs1AkiCHFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=O90dDmPE; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 4B9D81F901;
	Sun, 14 Jun 2026 11:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1781427922;
	bh=/v5VF80W0q06Q/X7DAzHHFRKLij4fTOsjbSF2jdZOmY=; h=From:To:Subject;
	b=O90dDmPEi2f7Ysil7pJvKzoSYuwM9WtJ0QXHbgsiJvJl2kBmi5JgqiES9m812Z4ft
	 OC9ROQcUFCApMfQa9AJ/nQRa6WA+95QkmTEfvS+GIbePB9nzOjoiML/pvhpM64Z5Iu
	 8QVmED0xyQyP+9XO2lAtVVVMsCxq98E7wAjvJJVPpli8TbWE7cJwkJ5daJbuGih52h
	 xpNyeZ0l8j1/qpomjOTmSgBwnHBpXpijdqfK79U3CSzYuP2xFUH1STFeD7IUCjzRGv
	 7uAOJ+eIvn85VzawUSdXUo0bsgCeES7gY4jsdUPL1tZz3hubyVotiJ/xCHNLGIp6im
	 y2rS7shGw7U8Q==
Date: Sun, 14 Jun 2026 11:05:17 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Antoine Bouyer <antoine.bouyer@nxp.com>
Cc: julien.vuillaumier@nxp.com, alexi.birlinger@nxp.com,
	daniel.baluta@nxp.com, peng.fan@nxp.com, frank.li@nxp.com,
	jacopo.mondi@ideasonboard.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, michael.riesch@collabora.com,
	anthony.mcgivern@arm.com, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, ai.luthra@ideasonboard.com,
	paul.elder@ideasonboard.com, geert@linux-m68k.org,
	sakari.ailus@linux.intel.com, hverkuil+cisco@kernel.org
Subject: Re: [PATCH v3 8/8] arm64: dts: freescale: imx95: Add NXP neoisp
 device tree node
Message-ID: <20260614090517.GA7434@francesco-nb>
References: <20260612132039.2089051-1-antoine.bouyer@nxp.com>
 <20260612132039.2089051-9-antoine.bouyer@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612132039.2089051-9-antoine.bouyer@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311427-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:antoine.bouyer@nxp.com,m:julien.vuillaumier@nxp.com,m:alexi.birlinger@nxp.com,m:daniel.baluta@nxp.com,m:peng.fan@nxp.com,m:frank.li@nxp.com,m:jacopo.mondi@ideasonboard.com,m:laurent.pinchart@ideasonboard.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:michael.riesch@collabora.com,m:anthony.mcgivern@arm.com,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:ai.luthra@ideasonboard.com,m:paul.elder@ideasonboard.com,m:geert@linux-m68k.org,m:sakari.ailus@linux.intel.com,m:hverkuil+cisco@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:hverkuil@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,nxp.com:email,francesco-nb:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73195680B82

Hello Antoine,
thanks for your patch.

On Fri, Jun 12, 2026 at 03:20:39PM +0200, Antoine Bouyer wrote:
> Add neoisp device tree node to imx95.dtsi and enable it by default in
> 19x19 evk board.
> 
> Signed-off-by: Antoine Bouyer <antoine.bouyer@nxp.com>

...

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> index d6c549c16047..5543a6cb1250 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1867,6 +1867,17 @@ pmu@49252000 {
>  			};
>  		};
>  
> +		neoisp0: isp@4ae00000 {
> +			compatible = "nxp,imx95-neoisp";
> +			reg = <0x0 0x4ae00000 0x0 0x8000>,
> +			      <0x0 0x4afe0000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&scmi_clk IMX95_CLK_CAMCM0>;
> +			clock-names = "camcm0";
> +			power-domains = <&scmi_devpd IMX95_PD_CAMERA>;
> +			status = "disabled";
> +		};

Why the node is disabled?  If the node is wholly described in
imx95.dtsi, it should be enabled.

Francesco


