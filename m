Return-Path: <devicetree+bounces-321813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fxEoGTe2TGo6ogEAu9opvQ
	(envelope-from <devicetree+bounces-321813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:17:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5D718FEB
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:17:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W0b4tSaI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321813-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321813-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9641A304C0B5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 08:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52311305687;
	Tue,  7 Jul 2026 08:13:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4482F8EA5;
	Tue,  7 Jul 2026 08:13:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783412031; cv=none; b=TEgyGOltP8tUel/LCTrL5kysGfBFjZddwwgC68VDcFjqpQWHlx86bWPOMiCXEM1M+cLSW8TGFpMqcIF7k6y9LehomiqmXTkuqsODMXof5GrSwn4jXzXl/AA1liND47wBpJ0A//TGGqrvUZRQvu0plDccmbh6fvWHFubpnHYLTuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783412031; c=relaxed/simple;
	bh=/cSjh5Mmt2Ddn6Je1fhdPk/i14wbF/BipllmwdUhVDM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YGDGoWRnv2C7klbAmHEg4s+U4J335eZY1SgsD4fACLWNOncqWgA9De1bpRbSpNWsuc/vvVZYoijb/3h8y/UUnkTIyc3Dad53VR0ywxXhupbgDb5Kss0/ZZYqMfbvxh2o79Ydf1iclMbvZI03ueYvxc839Gt+XETU3uP6PzGb1V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0b4tSaI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 271001F000E9;
	Tue,  7 Jul 2026 08:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783412029;
	bh=iWBt/efHATlisAipluecYDFPYluBPbkyRhiI3vgP0LE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W0b4tSaI217Fgm1Sx9qjlx8BqmSLitdLPyK0pJh+JCTV2UNw76EmxbaEe98xChtlW
	 ZatEASkyh5o0rvJdo3CziG8SEVT/J84LaZOdw77E6U3tEVBRqB0ke33/XlYLdr6AgH
	 8lesTBriWecqRTehpMKiUFohLrKqx7ZZehgcY1EVWduqV6CstyrIZommu15lFRmOuO
	 gyMzpAUj56RrpAjT/m4V0wIiq8AWnlbmqXSGXwYaSI2I+qbT2bYMMSMu7GmX0euMUC
	 npwXpe+Nx2K5RmDIj0iTi1JV5Yx7O3R9/MkLSs5PADlgyx6LK1TBNrT9RQO0Kuznhp
	 aEnlHq+AlBrkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/5] mfd: aaeon: Add SRG-IMX8P MCU driver
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?VGhvbWFzIFBlcnJvdCAoU2NobmVpZGVyIEVsZWN0cmljKQ==?= <thomas.perrot@bootlin.com>
Cc: Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260707-dev-b4-aaeon-mcu-driver-v7-3-ca6c59abd672@bootlin.com>
References: <20260707-dev-b4-aaeon-mcu-driver-v7-0-ca6c59abd672@bootlin.com>
 <20260707-dev-b4-aaeon-mcu-driver-v7-3-ca6c59abd672@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 08:13:48 +0000
Message-Id: <20260707081349.271001F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321813-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:thomas.perrot@bootlin.com,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DC5D718FEB

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The driver improperly applies the `I2C_M_DMA_SAFE` flag to the cal=
ler-provided `val_buf`, bypassing I2C bounce buffering and risking direct D=
MA into the stack or unaligned memory.
- [High] The I2C bus lock is temporarily released between the command write=
 and response read, allowing other clients to interleave traffic and break =
the MCU's transaction atomicity.
- [Medium] Missing `.use_single_read =3D true` in the regmap configuration =
allows unsupported multi-byte reads, violating the MCU's communication prot=
ocol.
- [Low] Driver-specific header file is incorrectly placed in the global `in=
clude/linux/mfd/` directory, violating subsystem guidelines.
--

--- Patch [3]: [PATCH v7 3/5] mfd: aaeon: Add SRG-IMX8P MCU driver ---
commit ce41fd5bdffca68e9033f19059ca7fbc7576a6fe
Author: Thomas Perrot (Schneider Electric) <thomas.perrot@bootlin.com>
Date:   Tue Jul 7 08:01:29 2026 +0000

    mfd: aaeon: Add SRG-IMX8P MCU driver

This commit adds an MFD driver for the Aaeon SRG-IMX8P embedded controller.
It provides the core I2C interface to communicate with the MCU and registers
child devices for GPIO and watchdog functionality. The driver implements a
custom regmap bus over I2C to match the MCU's fixed 3-byte command format.

> diff --git a/drivers/mfd/aaeon-mcu.c b/drivers/mfd/aaeon-mcu.c
> new file mode 100644
> index 0000000000000..54ac30fd5bed5
> --- /dev/null
> +++ b/drivers/mfd/aaeon-mcu.c
[ ... ]
> @@ -46,36 +46,36 @@ static int aaeon_mcu_regmap_write(void *context, cons=
t void *data, size_t count)
> 	struct aaeon_mcu *mcu =3D context;
> 	struct i2c_client *client =3D mcu->client;
> 	struct i2c_msg write_msg;
> 	/* The MCU always sends a response byte after each command; discard it. =
*/
> 	struct i2c_msg response_msg;
> 	int ret;
>=20
> 	memcpy(mcu->cmd, data, count);
>=20
> 	write_msg.addr  =3D client->addr;
> 	write_msg.flags =3D I2C_M_DMA_SAFE;
> 	write_msg.buf   =3D mcu->cmd;
> 	write_msg.len   =3D count;
>=20
> 	response_msg.addr  =3D client->addr;
> 	response_msg.flags =3D I2C_M_RD | I2C_M_DMA_SAFE;
> 	response_msg.buf   =3D mcu->response;
> 	response_msg.len   =3D 1;
>=20
> 	ret =3D i2c_transfer(client->adapter, &write_msg, 1);
> 	if (ret < 0)
> 		return ret;
> 	if (ret !=3D 1)
> 		return -EIO;
>=20
> 	ret =3D i2c_transfer(client->adapter, &response_msg, 1);

[Severity: High]
Because two separate i2c_transfer() calls are used to generate the required
STOP condition, the I2C bus lock is temporarily released in between them.

Can another driver on the same I2C bus interleave a transaction between the
command write and the response read, disrupting the MCU state machine?

Should this code use i2c_lock_bus() around both transfers to ensure
atomicity?

> 	if (ret < 0)
> 		return ret;
> 	if (ret !=3D 1)
> 		return -EIO;
>=20
> 	return 0;
> }
>=20
> static int aaeon_mcu_regmap_read(void *context, const void *reg_buf,
> 				 size_t reg_size, void *val_buf, size_t val_size)
> {
> 	struct aaeon_mcu *mcu =3D context;
> 	struct i2c_client *client =3D mcu->client;
> 	struct i2c_msg write_msg;
> 	struct i2c_msg read_msg;
> 	int ret;
>=20
> 	/*
> 	 * reg_buf holds the 2-byte big-endian register address [opcode, arg].
> 	 * Append a trailing 0x00 to form the full 3-byte MCU command.
> 	 */
> 	mcu->cmd[0] =3D ((u8 *)reg_buf)[0];
> 	mcu->cmd[1] =3D ((u8 *)reg_buf)[1];
> 	mcu->cmd[2] =3D 0x00;
>=20
> 	write_msg.addr  =3D client->addr;
> 	write_msg.flags =3D I2C_M_DMA_SAFE;
> 	write_msg.buf   =3D mcu->cmd;
> 	write_msg.len   =3D AAEON_MCU_CMD_LEN;
>=20
> 	read_msg.addr  =3D client->addr;
> 	read_msg.flags =3D I2C_M_RD | I2C_M_DMA_SAFE;
> 	read_msg.buf   =3D val_buf;
> 	read_msg.len   =3D val_size;

[Severity: High]
Does applying the I2C_M_DMA_SAFE flag to the caller-provided val_buf risk
direct DMA into unaligned memory or the stack?

If a child driver or the regmap core calls regmap_bulk_read() with a
stack-allocated buffer on a vmapped stack, bypassing the I2C bounce
buffers could lead to a kernel panic or memory corruption.

Would it be better to copy the read data through the DMA-safe mcu->response
buffer instead of passing val_buf directly?

>=20
> 	ret =3D i2c_transfer(client->adapter, &write_msg, 1);
> 	if (ret < 0)
> 		return ret;
> 	if (ret !=3D 1)
> 		return -EIO;
>=20
> 	ret =3D i2c_transfer(client->adapter, &read_msg, 1);

[Severity: High]
Similar to aaeon_mcu_regmap_write(), using two separate i2c_transfer() calls
here temporarily releases the I2C bus lock.=20

Can this lead to the same interleaving and state machine disruption issues
described above?

> 	if (ret < 0)
> 		return ret;
> 	if (ret !=3D 1)
> 		return -EIO;
>=20
> 	return 0;
> }
[ ... ]
> static const struct regmap_config aaeon_mcu_regmap_config =3D {
> 	.reg_bits          =3D 16,
> 	.val_bits          =3D 8,
> 	.reg_format_endian =3D REGMAP_ENDIAN_BIG,
> 	.max_register      =3D AAEON_MCU_MAX_REGISTER,
> 	.volatile_reg      =3D aaeon_mcu_volatile_reg,
> 	.cache_type        =3D REGCACHE_MAPLE,
> 	.use_single_write  =3D true,
> };

[Severity: Medium]
Is .use_single_read =3D true missing from this configuration?

Without it, if a child driver attempts a bulk read, regmap will pass a
multi-byte val_size to the read callback.

Since the MCU protocol expects exactly one response byte per 3-byte command,
could a multi-byte read request lead to I2C transfer errors or invalid data?

[ ... ]
> diff --git a/include/linux/mfd/aaeon-mcu.h b/include/linux/mfd/aaeon-mcu.h
> new file mode 100644
> index 0000000000000..3a1aeec85d60b
> --- /dev/null
> +++ b/include/linux/mfd/aaeon-mcu.h
> @@ -0,0 +1,40 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Aaeon MCU driver definitions
> + *
> + * Copyright (C) 2026 Bootlin

[Severity: Low]
Should this driver-specific header be kept local to drivers/mfd/ instead of
being placed in the global include/linux/mfd/ directory?

The MFD subsystem guidelines state that headers used only by the parent and
its immediate children should not be placed in the global include path.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-dev-b4-aae=
on-mcu-driver-v7-0-ca6c59abd672@bootlin.com?part=3D3

