Return-Path: <devicetree+bounces-312887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AgXUCIVxMmo00AUAu9opvQ
	(envelope-from <devicetree+bounces-312887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:05:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 804986983F8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:05:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=llQHu2Db;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312887-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312887-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DEFDA30082BD
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25678391837;
	Wed, 17 Jun 2026 10:02:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A43390CBA
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 10:02:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781690573; cv=none; b=G5n5utq3gYxK92dysuVDhmIW/4qyjl66NBpBqHPXG6cRciIRCDmKkM2saBT+BrlYcQhRrtYXn2J1M6F+l1GlfZtS9M3VYFodVAl0YWYwjOH0HDaDGnxa9zc2F+OO68Yc5vxibqD7p5r+HZy7FJLNpZGvgUAjOtdUwwo3MLEJ+uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781690573; c=relaxed/simple;
	bh=EEejXnNhX1t0385QYLTqhcY1NPi55OdYY00dz976Y4Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bhm3AQ1miT+gBRQIgtSGaz+Ttxzh8joYwkOGSIXri0SABbpeEIQW2Hazk2LaEJFJTjVUopTXc8rONZnk3glrZ9oPvcFv/8JJhvKECzs+rZ6J+51LNXHGPhPjor+rEceLjkfsmyfqlFJQbHJtGA/idUMIYumF08WtJcG1yIZiK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llQHu2Db; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9CEE1F000E9;
	Wed, 17 Jun 2026 10:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781690571;
	bh=kjWMf6E5c9VuppHmtdjI5HmwnO4zG0reBXuGrJToVKg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=llQHu2DbhXjZ7VRO6/ZQrKybctiUngolyXJlUZvVyXRPzhg90qa+FK30DSuknOGV/
	 72bV8aOFYdmqKTEpNUI6iIO4FGnQAak+Ewma7Q71XNYut3de26msyiSpQ83qmoagTb
	 VosXL4JfwDem3yeRz4A8ipOBURQB8ofDbhpXKmw9Lod8t17Mryhx/EdnDPJoS0RnE4
	 e/DwHd2qm9+4zpQoVTJKJJfwW78Q5qhIJSfr5JM/NVLwvyGWhkjsbviEmrTAsOs74L
	 3gJpZUk9UntpMb9ghBXmEM8C9aKTmo9+i2/Q6AMfmfOrPkSIoqz+YbAQTB+9aQnMPz
	 SkGXMtQWYbJTw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] ARM: dts: mediatek: mt6323: add EFUSE support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-mt6323-nvmem-v2-4-4f30e36aa0f4@protonmail.com>
References: <20260617-mt6323-nvmem-v2-0-4f30e36aa0f4@protonmail.com>
 <20260617-mt6323-nvmem-v2-4-4f30e36aa0f4@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 10:02:50 +0000
Message-Id: <20260617100250.C9CEE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312887-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rva333.protonmail.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,protonmail.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 804986983F8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unchecked dereference of dev->parent when getting regmap.
--

commit f140540f16666ffd0b4a44edcb3b4ac15d83d749
Author: Roman Vivchar <rva333@protonmail.com>
ARM: dts: mediatek: mt6323: add EFUSE support

This commit adds the devicetree node for the mt6323 efuse to the mt6323
PMIC definition. It introduces the mediatek,mt6323-efuse compatible string
to instantiate the driver.

> diff --git a/arch/arm/boot/dts/mediatek/mt6323.dtsi b/arch/arm/boot/dts/m=
ediatek/mt6323.dtsi
> index c230c865116d0..807e000a7ff64 100644
> --- a/arch/arm/boot/dts/mediatek/mt6323.dtsi
> +++ b/arch/arm/boot/dts/mediatek/mt6323.dtsi
> @@ -14,6 +14,10 @@ pmic: mt6323 {
>  		interrupt-controller;
>  		#interrupt-cells =3D <2>;
> =20
> +		efuse {
> +			compatible =3D "mediatek,mt6323-efuse";

[Severity: High]
Does binding to this compatible string introduce a regression under certain
devicetree configurations?

Looking at drivers/nvmem/mt6323-efuse.c:mt6323_efuse_probe(), the driver
blindly traverses the parent hierarchy:

	/* efuse -> mfd -> pwrap */
	regmap =3D dev_get_regmap(dev->parent->parent, NULL);

If the device is instantiated directly at the root of a Device Tree
or via a malformed overlay, it lacks a grandparent. In this case,
dev->parent is initialized to &platform_bus, and evaluating
dev->parent->parent results in a null pointer.

Passing a null pointer as the device to dev_get_regmap() triggers an
immediate kernel panic during probe(), because the underlying
devres_find() unconditionally dereferences the dev pointer.

Could the driver verify that the parent hierarchy exists before
attempting to traverse it and retrieve the regmap?

> +		};
> +

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-mt6323-nvm=
em-v2-0-4f30e36aa0f4@protonmail.com?part=3D4

