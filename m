Return-Path: <devicetree+bounces-322982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x6iFGV1uTmpmMgIAu9opvQ
	(envelope-from <devicetree+bounces-322982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:35:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B8372819F
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:35:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=epirE2Kg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322982-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322982-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 54BF3314D76F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67094C8FE4;
	Wed,  8 Jul 2026 15:01:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFE8480974
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:01:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522866; cv=none; b=fZLz9NycAC1q29hsoXSkkIxLYnG8YlFs/og6zxXvOKJUvMMIv8iyJnJD68RLYttNLXdJDejIVKoXFkaMMY+4eYAEiPz/nvrXAmRxvSADvRLt2bxVDfWjStMqJKbpTzgSmAR84QXuCKOKmOd6sNKXC27feGbrErRg+ZDkT6gYHuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522866; c=relaxed/simple;
	bh=6pPID5AnqBALfPzH9QQzHGTWJyhEQt5aH04rkd0kJhQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g5OALk7dOewGSv04P6ibZaE/7b5ZvqbOXZsAWdSPQ5U8x8sp586/5SEJnxscuQwswAr+aEjsh/mQ+5CsGNLVTQt8yRbU6efr9ZmVdDz1ZleBE+/Qt4zxkBuOmYLsF8+ZdbiwTOmX1QD4mKMhRdEIYX/keceEbTrkTwzRTy7WwqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epirE2Kg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D626B1F000E9;
	Wed,  8 Jul 2026 15:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783522865;
	bh=QgofbTx4JFx7jIrAIeDkQGcOni6/kZHe7xXZRmErWQk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=epirE2KgyBTrwg2C46e7ym+orm40hlWRN3gs8uhI3WDHrD3JYLZ2ZZd2R/oMdHVoF
	 TbM6RcrcVQxFzwE+/cZmhVbFqvM4YprLQ92SkHIH5YAor1hibhuD1MijekubNWTANM
	 f/GeafJOS9H9i4Bqmy75hriDvn+aVb2sFE8NxCkZd3/NWfjNulqJ8v2XAqcVEpGDBT
	 gNUZyt/PbcALSunGjjHF7ydvvhnPAiOupByecAObtN+StjCDGeeMLUBi+mMV8XL124
	 RYIaihX4jWHSdlkF5SmeWzyZAXSnrWX3/TPQsgDCHXBdSzxPGfbmRUlVwz5pkHJEuM
	 OO/PGmmRrJFsQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 14/20] media: imx355: Set the colorspace in the
 format
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-media-imx355-v3-14-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-14-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:01:03 +0000
Message-Id: <20260708150104.D626B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322982-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,raspberrypi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52B8372819F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Accessing a non-existent `format` field on a `struct v4l2_mbus_fram=
efmt` pointer leads to a build failure.
--

--- Patch [14]: [PATCH v3 14/20] media: imx355: Set the colorspace in the f=
ormat ---
commit 7db2a6f63330856f1837e4b7a0ae932c8ac63b94
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Set the colorspace in the format

This commit sets the colorspace fields appropriately for a raw image
sensor in the imx355 driver.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index b27329143e481..2bf8da7469fe5 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
> @@ -612,6 +612,10 @@ static int imx355_open(struct v4l2_subdev *sd, struc=
t v4l2_subdev_fh *fh)
>  	try_fmt->height =3D imx355->cur_mode->height;
>  	try_fmt->code =3D imx355_get_format_code(imx355);
>  	try_fmt->field =3D V4L2_FIELD_NONE;
> +	try_fmt->format.colorspace =3D V4L2_COLORSPACE_RAW;
> +	try_fmt->format.ycbcr_enc =3D V4L2_YCBCR_ENC_601;
> +	try_fmt->format.quantization =3D V4L2_QUANTIZATION_FULL_RANGE;
> +	try_fmt->format.xfer_func =3D V4L2_XFER_FUNC_NONE;

[Severity: Low]
Does this cause a build failure? try_fmt is a pointer to struct
v4l2_mbus_framefmt, which doesn't contain a format member.

Should this access the fields directly via try_fmt->colorspace and so on,
similar to how try_fmt->height is accessed just above this change?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D14

