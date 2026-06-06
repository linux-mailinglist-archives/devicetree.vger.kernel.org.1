Return-Path: <devicetree+bounces-307704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xR39NYQ6JGpQ4QEAu9opvQ
	(envelope-from <devicetree+bounces-307704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:19:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA5F64DD2C
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:19:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oh8G9WFU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307704-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307704-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1304300B078
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 15:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679D2279334;
	Sat,  6 Jun 2026 15:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6024A21771B;
	Sat,  6 Jun 2026 15:18:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780759121; cv=none; b=fLV6PWP9BiBe6vhww1r/hs998DAfwtXLNeSoSV22D9xDYSg/lNJTlpz2EZNJOV67mzm+8rqtb0L3SSteV8/s6ZrCse09uLZhKD0dA4yK7VTTMYVXNG7qUOsltm6FslqgbDCzXVt1ZC5Mm8X41uHbCdYMHlXmscB2WeifzhwLF18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780759121; c=relaxed/simple;
	bh=BR/xYD6Mxi9Rnr1LPZKgQmmKm6jer8bZTOXBlAA3xUk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eNL2RWGt5FC25gqXIdHJ0XY+fi6UBL0GEWBMcWDcoCia/l0Z0/1bFeUZ3Et+0WBcoFvFuBFLC8RqKGdzHaeZJiypAJiGej40EwMr/+L0v/v3Ip3fikKLcOf6QqEdwa92Id1rBYclDnOh/yx4tIZeQ3+gvMxyvt5ldietHGHQQig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh8G9WFU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CD0D1F00893;
	Sat,  6 Jun 2026 15:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780759119;
	bh=BQnpeUOH/PksNRv3lbZC4/WlT4O3tEKfqARDxVFsGig=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oh8G9WFUQQcsHuk5lMT87cetbbyZsRtPZSb837RhnTrfbE/96VeFrhn7+yB4+cKI/
	 Ecp/VKVzmL3+SUtwN3oxELBBW+cgP98J/W/1DKOv4IFn30tS3HopT5K915AqBEqmhe
	 v1QC6Vmwj6sd6uWdHmcZgmCqrVGIn7GffV0mLj093IOa7Y+D3hMOsmGIuD9iSfEjn+
	 XMRjqyhAy5fheVErnFvxliZPfQDuN2xNWLqnxgEs5s9+elaEVBavy+gbWfcw1Cocly
	 Jek9cCypi9LjiPtNcke9jKA2D1budFhpcKBMKVZ9bEi8kgHjjmyzYOQZuwfpUev7QZ
	 zyxlMKzcEjDng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] dt-bindings: input: microchip,cap11xx: Add
 reset-gpios property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, linux-input@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260606150458.250606-5-jerrysteve1101@gmail.com>
References: <20260606150458.250606-5-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 15:18:39 +0000
Message-Id: <20260606151839.7CD0D1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307704-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CA5F64DD2C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver fails to probe when a Device Tree fallback compatible s=
tring is used because it rigidly requires an exact I2C device ID match.
--

commit 804bdcc3e4e43cb8aa1a476f171c69be30e83854
Author: Jun Yan <jerrysteve1101@gmail.com>

dt-bindings: input: microchip,cap11xx: Add reset-gpios property

Add support for the optional reset-gpios property to describe
the active-high reset pin for CAP1126/CAP1188 devices.
Driving the GPIO high asserts reset and deep sleep, while driving
it low releases reset for normal operation.

Restrict this property to be available only on CAP1126 and CAP1188
chips, as other CAP11xx variants do not have a hardware reset pin.

> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index 99d00f572a2d9..e307628350c24 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but since we are updating
bindings for this hardware, is the I2C ID matching in the driver too
strict for standard Device Tree fallback compatibles?

Looking at cap11xx_i2c_probe() in drivers/input/keyboard/cap11xx.c:

	id =3D i2c_client_get_device_id(i2c_client);
	cap =3D i2c_get_match_data(i2c_client);
	if (!id || !cap || !cap->num_channels) {
		dev_err(dev, "Invalid device configuration\n");
		return -EINVAL;
	}

When a device is instantiated from a Device Tree using a fallback compatible
string (e.g., compatible =3D "vendor,custom-board", "microchip,cap1188"), t=
he
I2C core sets client->name to the local string without the vendor prefix.

Because this local name is not present in the cap11xx_i2c_ids table,
i2c_client_get_device_id() evaluates to NULL and completely aborts the prob=
e.

Could this early exit be updated so that valid I2C clients instantiated via
fallback compatibles are not erroneously rejected?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606150458.2506=
06-1-jerrysteve1101@gmail.com?part=3D4

