Return-Path: <devicetree+bounces-307603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NrHvKBGwI2qkxAEAu9opvQ
	(envelope-from <devicetree+bounces-307603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:28:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 045DF64C938
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:28:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gNbVjP9r;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307603-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307603-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3025430247DB
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 05:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D00CC2F8EB9;
	Sat,  6 Jun 2026 05:27:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C261E2264D6
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 05:27:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780723679; cv=none; b=a7Ok2MTDlpLIX69bZQO1lOvuYOZnrk3wK7eJCE+zzYMmwvXk5E0KEC2gsN2VhC0NUptFdA9n61PvVRqAGQjIeZ3MXmRBcA/dufZXx61Usb4+OEkJHSm0y3eiKuWY81IXdrnOUDcNHMUzxiSgiALF+cq9nTPQ2j5N7qaDbqLYL+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780723679; c=relaxed/simple;
	bh=tvc+BLs8BwGkHveG3R60VWhmxDB+fxGkHmjI5OhLpno=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XXmkFtSMabzfGgPnn2vy1ta9jwDdeZ/f4w/iraT33UGrXyBCSZFZgeNliKSYKZosBvzq+cTh1sOLsSj0Vk9FoQJ2QRfkoDUuzeSefxx278Ij4tzzTdHN/IvBEYVC5+SyOXD4TTZ/sYokQyAHQUNjgXCmwo54ID7QMYXvu2mqtZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNbVjP9r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C081F00893;
	Sat,  6 Jun 2026 05:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780723678;
	bh=BX8yxDLYhEAzNwfo2ljnH4GyyO5YoOAqjt4nWQmcHWs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gNbVjP9rdLp0QWwCTYy4Gj9dg0JNAPkfnS2xp+4ubrtKOpzjGbwEw2NJSFWf/n3WB
	 6IgH0Nyham5zl930VYqWOpy7OHwHoBnlXIE3D4y2XdEqb8TZ8mLgQ97tF/f9SLkZ6r
	 7bedu6nO3lmiHOwWJzexePxAZpYYMAvWd+IHCG3jrwqVH73XqvBB4NijY6v2q4bbky
	 5E1VsFi0mfVkH8hVjocz4ZZcKM7eBdWprEQ3lxf3e1vuaA8/un25wmBk0AnE2A8mKN
	 FyvjG700EZ5MoUU8gLi/ouKsCku+ORbH0CAXMgyVCkjs09/AcfuDkV3IOFAqLGCZ9l
	 bOCeoKZFf5gYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] iio: adc: versal-sysmon: add I2C driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260606051707.535281-4-salih.erim@amd.com>
References: <20260606051707.535281-4-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 05:27:58 +0000
Message-Id: <20260606052758.71C081F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307603-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 045DF64C938

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Non-atomic I2C read transaction using separate send and receive =
operations.
--

commit 24169bf5c1143403f8ebc17ab9ebfd5e2fafa0c0
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add I2C driver

Adds an I2C transport driver for the Versal SysMon block, allowing external
masters to read voltage and temperature measurements using the MMIO register
map. It implements read and write operations via an 8-byte command frame.

> diff --git a/drivers/iio/adc/versal-sysmon-i2c.c b/drivers/iio/adc/versal=
-sysmon-i2c.c
> new file mode 100644
> index 0000000000000..27a5ff4a35f68
> --- /dev/null
> +++ b/drivers/iio/adc/versal-sysmon-i2c.c

[ ... ]

> +static int sysmon_i2c_reg_read(void *context, unsigned int reg,
> +			       unsigned int *val)
> +{
> +	struct i2c_client *client =3D context;
> +	u8 write_buf[8] =3D { };
> +	u8 read_buf[4];
> +	int ret;
> +
> +	put_unaligned_le16(reg >> 2, &write_buf[SYSMON_I2C_REG_OFS]);
> +	write_buf[SYSMON_I2C_INSTR_OFS] =3D SYSMON_I2C_INSTR_READ;
> +
> +	ret =3D i2c_master_send(client, write_buf, sizeof(write_buf));
> +	if (ret < 0)
> +		return ret;
> +	if (ret !=3D sizeof(write_buf))
> +		return -EIO;
> +
> +	ret =3D i2c_master_recv(client, read_buf, sizeof(read_buf));

[Severity: Medium]
Is it safe to split this read sequence into two distinct I2C transactions?

Using i2c_master_send() followed by i2c_master_recv() releases the adapter
lock and issues a stop condition between the two calls. While concurrent
accesses from this driver are serialized by the regmap lock, interleaving
transactions from other drivers on the same I2C bus could occur.

Should this use i2c_transfer() with an array of two i2c_msg structures to
perform an atomic transfer with a repeated start, or use i2c_lock_bus() if
the hardware requires a stop condition between the write and read phases?

> +	if (ret < 0)
> +		return ret;
> +	if (ret !=3D sizeof(read_buf))
> +		return -EIO;
> +
> +	*val =3D get_unaligned_le32(read_buf);
> +
> +	return 0;
> +}

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606051707.5352=
81-1-salih.erim@amd.com?part=3D3

