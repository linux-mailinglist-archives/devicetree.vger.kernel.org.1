Return-Path: <devicetree+bounces-303881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EICMrxOGGpMiwgAu9opvQ
	(envelope-from <devicetree+bounces-303881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:18:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 458045F3900
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:18:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F31DA309EDCC
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F4A348C62;
	Thu, 28 May 2026 14:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUd0wK7r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B622E2852
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 14:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779977403; cv=none; b=kDewC203gTVero30dlFv+JRllN2UosoEBkS5z57fF2lFQrWP3cHx/UAXC41gelBxuRZqJZ1RLscaEGQuG1vvq4xjFeTP0l+9AxA3uAMC9+qssCb7dLr5bb4Eiwmc+0HgqcKdkafnSIb64BVwCuJgt6JxBLLMIhUX4eLehqVNmLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779977403; c=relaxed/simple;
	bh=cb0Alao0wAK5p6LLUs61tjGHocPnOv+RtVo2xgCeFJs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mz99b5f6O1LSZUoUxSuSYCN7VIO+FRjIbsEeSc3iA6wbKxKHwDZu+1yc6FTm+fGGrIkQu2EG8Wu/r20vUNxCfsg+BeyCrUJDIz6zIjCWN5ylB3l2pzsD8VidfCYKDBxnLDGM2ttXgzecVR4g97iPRLx+PwrjHXxWkLSoLU5/RNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUd0wK7r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7FCA1F000E9;
	Thu, 28 May 2026 14:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779977401;
	bh=zH1drErvPJ4USPncQUIgcblMweYzwjL5oQOj4wvJb44=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BUd0wK7rDGpxollzLfFcNEds9LxJTFIKbEW/9qMuYED+uNMG+vWJaUUp0efNL2m5j
	 q5JhurxAQAG4MTWqiWIDCAOrmQiFFzo1Lr9oTDmXQfe6/CNd9hPiVIU7Q2OalrZzkg
	 oDqh52KHRGW/FCWTsVOxK14mvzIlHFfYwQKXhe0K94aysckB1P4hMP2Aab9Ug0NC1s
	 CLYnk3rq5Pa9uFGMQAjT5M9nxZGnEsL0A5AiZ8tZUzyT6UfsrgbImAnoeGR+y+Po/G
	 7O1/5Ns17wEtaz4NtzA7yIXEak/ogys0/Gj6a6PEU4ObHJl1H1GCTK4r8hZdqxyQR1
	 Ua9R2LCqMUpNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: renesas: rzt2h-n2h-evk: Configure ETH
 pins
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260528134752.79813-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260528134752.79813-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 14:10:01 +0000
Message-Id: <20260528141001.A7FCA1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303881-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,renesas.com:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 458045F3900
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Output electrical properties are incorrectly applied to IRQ inpu=
t pins.
--

commit d84bccabc10cd7f1872ff319101c5c8c4a5f39c8
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

arm64: dts: renesas: rzt2h-n2h-evk: Configure ETH pins

This commit updates the gmac1 and gmac2 pin configurations for the RZ/T2H
and RZ/N2H EVK boards to match electrical specifications. It restructures
the nodes into pin groups and fixes a comment typo.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts b/arc=
h/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> index dd0556b0a4f59..060f65a23b78b 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> @@ -258,23 +258,54 @@ can0_pins: can0-pins {

[ ... ]

> +		md-pins {
> +			pinmux =3D <RZT2H_PORT_PINMUX(26, 1, 0x10)>, /* GMAC1_MDC */
> +				 <RZT2H_PORT_PINMUX(26, 2, 0x10)>; /* GMAC1_MDIO */
> +			drive-strength-microamp =3D <5000>;
> +			slew-rate =3D <0>;
> +			input-schmitt-disable;
> +		};

[ ... ]

> +		irq-pins {
> +			pinmux =3D <RZT2H_PORT_PINMUX(27, 2, 0x0)>; /* IRQ3 */
> +			drive-strength-microamp =3D <5000>;
> +			slew-rate =3D <0>;
> +			input-schmitt-disable;
> +		};

[Severity: Medium]
Are these output properties (drive-strength-microamp and slew-rate)
appropriate for an interrupt input pin? It looks like this might be a
copy-paste from the md-pins group.

Also, does disabling the Schmitt trigger on this asynchronous external
interrupt line make it susceptible to noise and slow-rising edges? I am
curious if this could potentially lead to spurious interrupt triggers. This
same pattern appears to apply to the other irq-pins groups in this patch
for IRQ13, IRQ14, and IRQ15.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528134752.7981=
3-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

