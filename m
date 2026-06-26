Return-Path: <devicetree+bounces-316087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9hKcJYpxPmrXGAkAu9opvQ
	(envelope-from <devicetree+bounces-316087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 14:33:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B01F6CD063
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 14:33:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=Y9bufFXA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316087-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316087-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBF573002D04
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A063B71B0;
	Fri, 26 Jun 2026 12:33:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9F23EB119
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 12:33:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782477189; cv=none; b=PirbN1w5gkFu3NiKW9zq4TdUkuuxdFp+4vlN6F0L6FIwFoQLpoze+6mwE+qY1ey5GdDomQWbaOydJ3rECGUbcnEDrruyUngWoEH9fr45pwpSQhDmmymrAR+c+yY0jI+0Mh55OThcAlTc2bkURiNp/2T8lQdROFjxzzKDIXF9s+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782477189; c=relaxed/simple;
	bh=AD/rgS2yrWJfwfl9/AeTa0uM/dDOan4Hs9d7ZKdjbjA=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=ornU5KvGZVv/Xnass3NhlZVKh/ioAuOBiA0w/nKiIr93e5c8ilEcUZs+7Z878TBqEyNqpuSwN/7I85jzibwth1fz7v0+JJgRWwH1i0ExfJtiOBS1CEGdzuRQCki72c691JrXUmtPH7R2B1QbHfPXcjCeQjBARW4/XBGNH8OjBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Y9bufFXA; arc=none smtp.client-ip=213.167.242.64
Received: from monstersaurus.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D7DFF174;
	Fri, 26 Jun 2026 14:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782477145;
	bh=AD/rgS2yrWJfwfl9/AeTa0uM/dDOan4Hs9d7ZKdjbjA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Y9bufFXANqvkz3zqsR4De5M/U2SwIEdDJTuNDQIIIPzu76cjy8lmVCUHdi+4YM7pY
	 Ru7JmT8Bc2PXjx5Xirb2rcDeN4lTLxXtXrC5NNWy+buy9GAbyAKcy3YJn19vEknbuB
	 a7FiiB6RCy+A05grpyybGkvGwvgQpDse84JXEVwM=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260626121557.92C6D1F000E9@smtp.kernel.org>
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com> <20260626-kbingham-orientation-v2-4-47178be927b4@ideasonboard.com> <20260626121557.92C6D1F000E9@smtp.kernel.org>
Subject: Re: [PATCH v2 4/8] ARM: tegra: Convert to new media orientation definitions
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
To: sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev
Date: Fri, 26 Jun 2026 13:33:04 +0100
Message-ID: <178247718423.372005.12851091564301822991@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316087-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kieran.bingham@ideasonboard.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kieran.bingham@ideasonboard.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,ideasonboard.com:dkim,ideasonboard.com:email,ideasonboard.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B01F6CD063

Hi Sashiko,

Quoting sashiko-bot@kernel.org (2026-06-26 13:15:57)
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Low] The commit introduces an undefined macro `MEDIA_ORIENTATION_REAR`=
, causing a Device Tree Compiler (dtc) build failure.
> --
>=20
> commit 26c9ba57e237b4ebfdbb6dbf2af353106c11c695
> Author: Kieran Bingham <kieran.bingham@ideasonboard.com>
>=20
> ARM: tegra: Convert to new media orientation definitions
>=20
> The commit updates the NVIDIA device trees to use new media orientation
> definitions instead of hardcoded integer values for video interface devic=
es.
>=20
> > diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boo=
t/dts/nvidia/tegra30-lg-x3.dtsi
> > index 60e8a19aa70ec..c58e3026a115e 100644
> > --- a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> > +++ b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> [ ... ]
> > @@ -1216,7 +1217,7 @@ rear-camera@10 {
> >                       dvdd-supply =3D <&vdd_1v2_rear>;
> >                       avdd-supply =3D <&vdd_2v7_rear>;
> > =20
> > -                     orientation =3D <1>; /* Rear camera */
> > +                     orientation =3D <MEDIA_ORIENTATION_REAR>;
>=20
> [Severity: Low]
> Will this cause a Device Tree Compiler build failure?
>=20
> Looking at the dt-bindings/media/video-interface-devices.h header, it
> defines MEDIA_ORIENTATION_FRONT, MEDIA_ORIENTATION_BACK, and
> MEDIA_ORIENTATION_EXTERNAL.
>=20
> Since MEDIA_ORIENTATION_REAR is undefined, the C preprocessor will leave =
it
> as an unexpanded token, which will cause a syntax error when dtc parses i=
t.
> Could this be updated to use MEDIA_ORIENTATION_BACK instead?

Ah man - the heat must have been getting to me. That's definitely
supposed to be MEDIA_ORIENTATION_BACK. I shouldn't have read the comment
I replaced.

--
Kieran


>=20
> >                       rotation =3D <90>;
> > =20
> >                       nvmem =3D <&m24c08>;
>=20
> --=20
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-kbingham=
-orientation-v2-0-47178be927b4@ideasonboard.com?part=3D4

