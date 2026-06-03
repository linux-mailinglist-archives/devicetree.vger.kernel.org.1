Return-Path: <devicetree+bounces-306519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 81lgH9exIGov6wAAu9opvQ
	(envelope-from <devicetree+bounces-306519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 00:59:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C3463BB40
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 00:59:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NMfsjcTH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306519-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FD213009CE7
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 22:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9060E4D8D81;
	Wed,  3 Jun 2026 22:59:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C0749551D;
	Wed,  3 Jun 2026 22:59:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780527571; cv=none; b=LvlhDLA0ZLFVFZ0hHwapgiodCJl3hNCVq8ErLBbkP8H90O+lkI78eWSAHXgmK7Qm4y1Ql3YVnSasXLQFfNTFW/etRdN7w37DY+LYKSccjd2SI9ijq+7M2pViop9M7lZfUwVsV9s3kmgPIkVZEmJ7FYYu2ers1sCPCkFNm3HjrkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780527571; c=relaxed/simple;
	bh=PUzeVCGIovSTubV2xsMC10WBdsLwA6ubPXyZy14h05c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Q2x4FgoXYSgRUPnL6UJFAdH+5/AqjDj+vL4trMS62gWnqxGSVyEa9J2IZglGkl7nFvDkATssY/W/hOj9XmaIpL5v+HZy+j3tTbbaVWBQwGF12cdVuV2f9YwyKlXLyp/2+7lu2klfXFVcymtJzwFEtIWDBCi74XXiA4kEc+sjNRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMfsjcTH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD9A81F00893;
	Wed,  3 Jun 2026 22:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780527570;
	bh=XEjXzx1T9DyukGXxZ58RDZW/qKEh1PThKFf+0NOoJ3A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NMfsjcTHAuCoZbkgvIaD3ujxGjsa6dE5VXaA4SPYAMFuxwajcW2b4fAhsCgTrfuMp
	 6lXYYJ7MnwnS3bjq2b0K+xyO9TuApRCQqAbukAOsg2m3zNMbNz0qoMBp/ettjCdBd3
	 EvDxKMpioFLNnz85I7GNNCQUA8N6OHtmJXntmehssuxAYAOCmIB+yCJh4T0fnCrHlu
	 UWP5qAMBLeNPaHhtLWaXti+1ZAZzhXs2dNKjHEGtnyY9C6aWrHf6kKW80qkoOuEB54
	 AQ9XeVyhQbZDGDtgoWNb6t6MugUzwrJ5NtHSJKFPp3JBxQmAEduC0QYOqeLBWkzX6q
	 pQ0pMJnQ/qEOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/2] arm64: dts: imx8mm-var-som-symphony: keep
 RGB_SEL low
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <55fb7ba8f5249a0be5296a0b3523ce20a668a89e.1780527068.git.stefano.r@variscite.com>
References: <55fb7ba8f5249a0be5296a0b3523ce20a668a89e.1780527068.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 22:59:29 +0000
Message-Id: <20260603225929.DD9A81F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306519-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,variscite.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15C3463BB40

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added gpio-hog node is named `lvds-brg-enable-hog`, but i=
t is documented to control the `RGB_SEL` line and its `line-name` property =
is set to `rgb_sel`. This is likely a copy-paste error.
--

commit 9c97f65e1888df2bd494aacf3412a0fd8cf0a5db
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mm-var-som-symphony: keep RGB_SEL low

This commit drives the RGB_SEL line low on the Symphony carrier board.
It does this by adding a gpio-hog subnode to the pca6408 GPIO controller
to ensure the board remains in the expected display configuration.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> --- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> @@ -168,6 +168,14 @@ pca6408: gpio@21 {
>  		reg =3D <0x21>;
>  		gpio-controller;
>  		#gpio-cells =3D <2>;
> +
> +		/* RGB_SEL */
> +		lvds-brg-enable-hog {

[Severity: Low]
This isn't a bug, but is this node name a copy-paste error? It is documented
to control RGB_SEL and sets the line-name to "rgb_sel", so a name like
rgb-sel-hog might be more appropriate to avoid confusion.

> +			gpio-hog;
> +			gpios =3D <7 GPIO_ACTIVE_HIGH>;
> +			output-low;
> +			line-name =3D "rgb_sel";
> +		};
>  	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780527068.gi=
t.stefano.r@variscite.com?part=3D2

