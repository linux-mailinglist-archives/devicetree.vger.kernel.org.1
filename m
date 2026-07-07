Return-Path: <devicetree+bounces-322277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z58EBto0TWpYwgEAu9opvQ
	(envelope-from <devicetree+bounces-322277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:18:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A34A071E363
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:18:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Kc4YTwFT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322277-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322277-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EB96B303E4CD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 17:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669CC438493;
	Tue,  7 Jul 2026 17:16:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81743849A
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 17:16:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444567; cv=none; b=Fz0c7iYi4vLZSr4yPGIK14MS5fiLLtOR/sG+c1FFbDzihgEMJ35kzRgv0wVst2lpDJN2McNvWsIFdZSb+0/Ul2xmF6N19fnKx0UNikC5tUDSJLhu7bLImx7u0BOKkiwXKywtHiwePvZ42Der7HmhgUj6AVVLFIdAwyPGTdu2cZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444567; c=relaxed/simple;
	bh=IUGH2An8st04fLX5WOMJFKXYK22KyhlDL2zGtmcVRIk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pVm9AvscPjHjM7iGnyoK7jR2algMhH8pQvjrx7EiT53h57PFyJzo9CowBaLLXfaEfLpwiG+kO2tdRYOBgJqpWLLTw44P1lwmo+2Ezbzxp7XCsmlU8vJxbTgcC7UbgJaRrjiyi45Odv/c8Axd6H8+WNRJF/QtxT7kMQ3MEB9DKtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc4YTwFT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CED761F00A3A;
	Tue,  7 Jul 2026 17:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783444566;
	bh=IUGH2An8st04fLX5WOMJFKXYK22KyhlDL2zGtmcVRIk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Kc4YTwFTJzc0niDXZRUoHSsLLEI64hXXwWIA/MAUWoY2TytexeRYxtqQdMYOZMQJe
	 +cq4hp3vCz//3GhwwJ4z+n+MYLWFO0eW4IzYt9WL1eNgasdw6Xs/pvACbkWJiuTwrV
	 TrrbRrRWXG8v/JogbpxOooJeVlEkNTYltbDptGSH2bpuMEYGVIW2gWIeASP9B+kS0N
	 B76iOJyQEyTNDb+pZsYnctLSr7fOzovo9m8cNLDeDMnT+Q31qI35ekT85JwIV778bg
	 rM6IEWrZvjddX7cuDvQ5O299Z2M67iyLJ0tQjYAxaN+iVHtQwSmZsHfw5poKdx4iGm
	 x1Y9xq6mTBq0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 14/20] media: imx355: Set the colorspace in the
 format
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260707-media-imx355-v2-14-1683ec07b897@raspberrypi.com>
References: <20260707-media-imx355-v2-0-1683ec07b897@raspberrypi.com>
 <20260707-media-imx355-v2-14-1683ec07b897@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 17:16:05 +0000
Message-Id: <20260707171605.CED761F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322277-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto,raspberrypi.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A34A071E363

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added colorspace fields are not initialized for the de=
fault TRY format in `imx355_open()`.
--

--- Patch [14]: [PATCH v2 14/20] media: imx355: Set the colorspace in the f=
ormat ---
commit 8e7fc1bcad81f6e37fba5685592010dfd48dcc99
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Set the colorspace in the format

This commit updates the imx355 driver to set the appropriate colorspace
fields for a raw image sensor, rather than leaving them as 0.

(Note: The format of this review is altered to provide a free-form summary
due to restrictions on quoting the original patch code.)

[Severity: Medium]
Does this code leave the TRY format in an inconsistent state?

The commit adds assignments for colorspace, ycbcr_enc, quantization, and
xfer_func in imx355_update_pad_format(). However, looking at imx355_open()
in drivers/media/i2c/imx355.c, the try_fmt fields are manually initialized
when the subdev file handle is opened, but the new colorspace assignments
are missing from this initialization.

This means the initial TRY format queried via VIDIOC_SUBDEV_G_FMT might
return an inconsistent colorspace (V4L2_COLORSPACE_DEFAULT) compared to the
ACTIVE format default (V4L2_COLORSPACE_RAW) until a format is explicitly
set. Should the TRY format initialization in imx355_open() be updated to
include these new default values?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-media-imx3=
55-v2-0-1683ec07b897@raspberrypi.com?part=3D14

