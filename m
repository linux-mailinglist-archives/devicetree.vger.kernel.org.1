Return-Path: <devicetree+bounces-311326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0e/RDWZZLWrUfAQAu9opvQ
	(envelope-from <devicetree+bounces-311326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:21:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F2167EA91
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:21:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=My3AdjwC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311326-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311326-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E1293007E31
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C91F36AB54;
	Sat, 13 Jun 2026 13:21:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1322F3C3D
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 13:21:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781356899; cv=none; b=dAbofyElWQ7AVAinShORn3t2IbD4Uc0pKYQPwKg76BKwzpFSeaT7rqoujh2F7RA69jfJJRjBtCu6Fy9ZCtoi6sZ2CwqpkdYEz/oRb3yT/8Ywsno+b9M6x65F/G4qHskzXfpFqCDB2F9wlWpj8+orsZGtCSXOJR9rW2SpfGbnl3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781356899; c=relaxed/simple;
	bh=Q+WebYzhlR4BljYpUGVIDRgTrd5ZM43i6NMU2SgQois=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ht0oUOMnyk2Ew61aRntPpsgPmEPppmOQBVn8U5hX3QxMXUPUs2+GxxPOo5dWqGwhBPT7vxkQz6VdhKsSLe2OWm3zl6Zt8HeC/+tJl4JZEYMVNBNa+L5322m2ujZQrhdKhUrb/XoYTRq0hb64D/617LgkF2Wdk7oMAB8/oadb01E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My3AdjwC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D65B51F000E9;
	Sat, 13 Jun 2026 13:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781356898;
	bh=6nvQC37/o94GWchnR5XMVH66imYIM7KWjiFY7kVyQ4w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=My3AdjwCxiT7trJ2juq5kHslY0RX29hsDzYC+35zROmaxGaNzh9NqUm62UztG8Hn7
	 jYXMzcj5KhEiMOpN06kQTGYws02mMWsgmHvY8uH4Jx1I2bBK4XTVGNFHo+UKN2C9Ox
	 HeNEE5BUI72RIq1NtC3clw3eLy7CtmRFP7iME2GoNzw/vEaKOh3/x3eOkou+n3N+jY
	 48F1OStyfpTYnW/ryr55qvFFA9UvuhBCuOpScYVaIXXHR739UupZLI0sV6j3R4UjZ9
	 pD97SkpDrehcTmMwK7cSL486shAVmqhF/V8nNAIXBoCgr4Gn+1B97wlcP8oeE6obkz
	 lHLG++pw5rYvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/9] block: implement NVMEM provider
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612-block-as-nvmem-v5-5-95e0b30fff90@oss.qualcomm.com>
References: <20260612-block-as-nvmem-v5-5-95e0b30fff90@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 13:21:37 +0000
Message-Id: <20260613132137.D65B51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311326-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78F2167EA91

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] NVMEM provider opens the block device with exclusive write restric=
tion, causing conflicts on mounted systems.
- [High] Hardcoded 4GB size limit incorrectly rejects modern eMMC devices.
- [High] Integer overflow in size assignment exposes massive out-of-bounds =
size.
- [High] Stale `dev_t` reference can cause data leaks across block device h=
otplugs (ABA problem).
- [High] Using `__free(fput)` defers block device claim release, creating r=
ace conditions.
--

commit 459b659c960efdc8a9e2177c5bc4f832e7ee5730
Author: Daniel Golle <daniel@makrotopia.org>

block: implement NVMEM provider

On embedded devices using an eMMC it is common that one or more partitions
on the eMMC are used to store MAC addresses and Wi-Fi calibration EEPROM
data. Allow referencing the partition in device tree for the kernel and
Wi-Fi drivers accessing it via the NVMEM layer.

> diff --git a/block/blk-nvmem.c b/block/blk-nvmem.c
> new file mode 100644
> index 0000000000000..c005f059d9fe5
> --- /dev/null
> +++ b/block/blk-nvmem.c
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
[ ... ]
> +static int blk_nvmem_reg_read(void *priv, unsigned int from, void *val, =
size_t bytes)
> +{
> +	blk_mode_t mode =3D BLK_OPEN_READ | BLK_OPEN_RESTRICT_WRITES;

[Severity: High]
Since the NVMEM provider claims the whole disk (disk->part0), will opening =
it
with BLK_OPEN_RESTRICT_WRITES and an exclusive holder (priv) return -EBUSY =
if
any partition on the disk is already mounted or opened for writing?

> +	dev_t devt =3D (dev_t)(uintptr_t)priv;
> +	size_t bytes_left =3D bytes;
> +	loff_t pos =3D from;
> +	int ret =3D 0;
> +
> +	struct file *bdev_file __free(fput) =3D bdev_file_open_by_dev(devt, mod=
e, priv, NULL);

[Severity: High]
Does using __free(fput) defer the release of the block device claim? Because
fput() schedules the file release asynchronously, could another subsystem
trying to mount or claim the device immediately after an NVMEM read
sporadically fail with -EBUSY?

Should this use bdev_fput() instead to synchronously yield the claim before
the rest of the file release?

> +	if (IS_ERR(bdev_file))
> +		return PTR_ERR(bdev_file);
[ ... ]
> +void blk_nvmem_add(struct block_device *bdev)
> +{
[ ... ]
> +	/*
> +	 * skip block device too large to be represented as NVMEM devices,
> +	 * the NVMEM reg_read callback uses an unsigned int offset
> +	 */
> +	if (bdev_nr_bytes(bdev) > UINT_MAX) {

[Severity: High]
Since the NVMEM provider is registered against the whole disk rather than t=
he
individual NVMEM partition, does this 4GB limit incorrectly reject most mod=
ern
eMMC devices?

> +		dev_warn(dev, "block device too large to be an NVMEM provider\n");
> +		return;
> +	}
> +
> +	config.id =3D NVMEM_DEVID_NONE;
> +	config.dev =3D dev;
> +	config.name =3D dev_name(dev);
> +	config.owner =3D THIS_MODULE;
> +	config.priv =3D (void *)(uintptr_t)dev->devt;

[Severity: High]
Can storing the ephemeral dev_t identifier without holding a pinned block
device reference cause an ABA problem?

If the block device is removed, blk_nvmem_del() calls nvmem_unregister()
which drops a reference but does not synchronously wait for consumers to
close. If a new device is plugged in and reuses the same dev_t, could a
consumer reading from the still-alive NVMEM device inadvertently access the
unrelated new block device?

> +	config.reg_read =3D blk_nvmem_reg_read;
> +	config.size =3D bdev_nr_bytes(bdev);

[Severity: High]
Can this assignment cause an integer overflow?

The config.size field in struct nvmem_config is a signed 32-bit int, so disk
sizes between 2GB and 4GB will overflow to a negative value. When
nvmem_register() sign-extends this into its 64-bit size_t field, won't it
result in a massive out-of-bounds size being exposed via sysfs?

> +	config.word_size =3D 1;
> +	config.stride =3D 1;
> +	config.read_only =3D true;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-block-as-n=
vmem-v5-0-95e0b30fff90@oss.qualcomm.com?part=3D5

