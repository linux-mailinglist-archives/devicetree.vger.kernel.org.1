Return-Path: <devicetree+bounces-315473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RmVKMR28PGqHrAgAu9opvQ
	(envelope-from <devicetree+bounces-315473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:26:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E95D6C2C97
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:26:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HTetMVaa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315473-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 873D23008699
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 05:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDFFF2DCF57;
	Thu, 25 Jun 2026 05:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16DB191F94;
	Thu, 25 Jun 2026 05:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782365206; cv=none; b=LbRLXOlnFw51edpGthzinPVE4vydcDaA8tjZs6cu5Qiqj1z7HyBAeXfJiEH4T2HRmlOvnoZPODSAnOW9Fq+/jfQjRHyYkUY2j7S9Sg+jx80TC9TWFWZBHNIOTt9uO6Fw79mW9bQNauWxx+jmMGhpsQx3QtA2A2LakyA+WuulFSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782365206; c=relaxed/simple;
	bh=+EF8TXLPkTMaJvaeXigw75SEH7hYsO1Ag5PRYd+lfic=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j0b31oQpqxjQ6Z0ZsefRwqzLIFDiUffKS9/f9RAUSLnIWaXVzYpZCsuzuzn9Je8Oc4zr3pR63voIAAl1B8E55i+9VWOKaE6SqvpqVwrbu2/epLX/zgIIUr8gUfGBaProiCMd8jBntfy+wrbXVWRL1fEfMxJAx7m3xDSEfdUmTwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTetMVaa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 100221F000E9;
	Thu, 25 Jun 2026 05:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782365205;
	bh=vWbFoRGI5HdCA91YpMFbxyn1on5yMua0IwZRHIci0t8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HTetMVaahOhe6wxggBPaDlOmVSB/rcR7L4YqPr2FhcliqxOGcFeu81sNJTsj3Lvez
	 UbiXVGpC+pVMZEcZUlkDURl05kFpRvFCmCYFWdTKHuF7uCLj0xmDGevXshw+bi11Ny
	 Qk/ubbZJAIrCT4saag1IIqciFC/sKwqIprmG/753/peYp0v0ULZ9vY1K6SghHTqKhm
	 Gok1BlgGX1DBGQo/JMo4YHHZynkuY7YjMDpq6acZ/9KJ7tvSpPaOxN+dyTIaih48l5
	 OC7em33eyuC8HMSazGUoovKMl1h5W1CfbDtB+a1HWSRdydB7JQDxZ1RHBs9r1ICNAk
	 0GjcbJpwk/BMw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/4] arm64: dts: freescale: add LVDS overlays for
 TQMa8MPxS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Stein" <alexander.stein@ew.tq-group.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260625051449.2560197-3-alexander.stein@ew.tq-group.com>
References: <20260625051449.2560197-1-alexander.stein@ew.tq-group.com>
 <20260625051449.2560197-3-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 05:26:44 +0000
Message-Id: <20260625052645.100221F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315473-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E95D6C2C97

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The standalone `.dtbo` files are not added to `dtb-$(CONFIG_ARCH=
_MXC)`, preventing them from being installed by `make dtbs_install`.
--

commit 11ad35117d23241efb0a2ebb767e914a535c2a98
Author: Paul Gerber <paul.gerber@tq-group.com>

arm64: dts: freescale: add LVDS overlays for TQMa8MPxS

This commit adds device tree overlays for the Tianma tm070jvhg33 display
supported by the TQMa8MPxS on both LVDS channels. The display timings and
pixel clock are explicitly specified to achieve the correct LDB clock
frequency.

> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index 7a1d8586ce7c8..f0779a5d3b737 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -379,6 +379,11 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-tqma8mpql-mba8mp-=
ras314-imx219.dtbo
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-tqma8mpql-mba8mp-ras314-lvds-tm070jvh=
g33.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-tqma8mpql-mba8mp-ras314-lvds-tm070jvh=
g33-imx219.dtb
> =20
> +imx8mp-tqma8mpqs-mb-smarc-2-lvds0-tm070jvhg33-dtbs +=3D imx8mp-tqma8mpqs=
-mb-smarc-2.dtb imx8mp-tqma8mpqs-mb-smarc-2-lvds0-tm070jvhg33.dtbo
> +imx8mp-tqma8mpqs-mb-smarc-2-lvds1-tm070jvhg33-dtbs +=3D imx8mp-tqma8mpqs=
-mb-smarc-2.dtb imx8mp-tqma8mpqs-mb-smarc-2-lvds1-tm070jvhg33.dtbo
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-tqma8mpqs-mb-smarc-2-lvds0-tm070jvhg3=
3.dtb
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-tqma8mpqs-mb-smarc-2-lvds1-tm070jvhg3=
3.dtb

[Severity: Medium]
Will this omit the standalone .dtbo files from being installed by
make dtbs_install?

The dtb-$(CONFIG_ARCH_MXC) target adds the statically merged composite .dtb
files, but it looks like the standalone .dtbo files are missing. Without
these, users wouldn't be able to apply the overlays dynamically via the
bootloader.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625051449.2560=
197-1-alexander.stein@ew.tq-group.com?part=3D3

