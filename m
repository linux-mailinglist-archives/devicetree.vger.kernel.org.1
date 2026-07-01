Return-Path: <devicetree+bounces-318188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CRvZAOa/RGry0AoAu9opvQ
	(envelope-from <devicetree+bounces-318188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:21:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D686EA941
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:21:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JR8m1NWG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318188-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318188-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77C033010BB2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BD43A3830;
	Wed,  1 Jul 2026 07:21:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAF53AEB39
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:21:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890463; cv=none; b=mD2ZJvpUexY6AHNRd5c1d6hFGR57hf/dWn9lgihRrWytCL8f3+g5zc5IEAb3N53GOITsWw83UJIAD104+NLaZfIGOI8K9Hgg4Gyq6/tZVpgivcSoH26q0AHdK9hN7DkgY5BOGUVUNmkcriDiTGiAqFgrjbZpBlaSG65+W8qUtrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890463; c=relaxed/simple;
	bh=s0EkBbA6OLlDQRL42MhXXCS4P7TXPXgscBUslUIA6sg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iaY34JhPK7iJVbLyDzMbCNIdCkRihiNzlkHUjARADxQ7hkFuQoVU9+MYW1EMyKhq2bviPI1QvJX7e/uE3O7TcGxx1k6hqH8caD1j24vBMEuiqXZHy75fG/+PfX4cWrFWatvgnODIqAYi67oH5LuNdIeNrcMmNmSqk1xtYVxj69k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR8m1NWG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17E8F1F000E9;
	Wed,  1 Jul 2026 07:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782890461;
	bh=vrL8eLRIrADDfs/+GySvUFanexKcJxih8mWF+/iKggg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JR8m1NWG2Re/aUmY+RwfGKnzHE7TGusC43ePw7zJiHCD/1dW5i8Q7EJUaJoSp6qUw
	 nIYxGZNCUT1T5gWm0S9SJ1reBRff8VK0zNFhycGvCACH+Dovxg5c1rMA6cgShiFerP
	 prQW20gia7Kh4zp2tggPeMjVb+CtRDguBH0hFcf/bztPYRh2769YkSyhIqrLZYmOFt
	 JEc3r5q/nQ+LNU+QKR7m2Oavij013N3wte2hXhGglCeACjbu15Bkg4xF8pjPdMYz/d
	 qDqZjNullDBMGQYJ2Rpu5iMQ14In/N3G6BY2RsBlUm+A4m+pavPsyEbm7ZgNFLDMc2
	 /xuFImDL/60YA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 7/7] i3c: hub: p3h2x4x: Add SMBus slave mode support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, "Alexandre
 Belloni" <alexandre.belloni@bootlin.com>, linux-i3c@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260701065755.2067793-8-lakshay.piplani@nxp.com>
References: <20260701065755.2067793-1-lakshay.piplani@nxp.com>
 <20260701065755.2067793-8-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 07:21:00 +0000
Message-Id: <20260701072101.17E8F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318188-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-i3c@lists.infradead.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61D686EA941

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Early error paths in `p3h2x4x_read_smbus_agent_rx_buf` fail to cle=
ar the hardware buffer receive flag, resulting in an infinite In-Band Inter=
rupt (IBI) storm.
- [High] Hardware IBI configuration is unconditionally overwritten after ex=
posing I2C adapters, potentially silently disabling slave interrupts.
- [Medium] The `P3H2X4X_TARGET_BUF_CA_TF` case in the IBI handler is unreac=
hable because its value is masked out by the switch expression.
--

commit f1791953bf7e067a7ec560f25d66e9566565ed9b
Author: Lakshay Piplani <lakshay.piplani@nxp.com>

i3c: hub: p3h2x4x: Add SMBus slave mode support
   =20
This commit adds SMBus slave mode support for the P3H2x4x hub target ports.
It allows the hub SMBus slave agent to receive downstream payloads and
report receive events through In-Band Interrupts (IBI). The payloads are
then forwarded to the registered I2C slave client.

> diff --git a/drivers/i3c/hub/p3h2840_i3c_hub_smbus.c b/drivers/i3c/hub/p3=
h2840_i3c_hub_smbus.c
> index fd000ff635077..f752cbe35c482 100644
> --- a/drivers/i3c/hub/p3h2840_i3c_hub_smbus.c
> +++ b/drivers/i3c/hub/p3h2840_i3c_hub_smbus.c
> @@ -15,6 +15,157 @@ enum p3h2x4x_smbus_desc_idx {
[ ... ]
> +static void p3h2x4x_read_smbus_agent_rx_buf(struct i3c_device *i3cdev, e=
num p3h2x4x_rcv_buf rfbuf,
> +					    enum p3h2x4x_tp tp, bool is_of)
> +{
> +	struct p3h2x4x_i3c_hub_dev *p3h2x4x_i3c_hub =3D i3cdev_get_drvdata(i3cd=
ev);
> +	u8 slave_rx_buffer[P3H2X4X_SMBUS_TARGET_PAYLOAD_SIZE] =3D { 0 };
> +	u8 target_buffer_page, flag_clear =3D 0, temp =3D 0, i, addr;
> +	u32 packet_len, slave_address, ret;
> +	struct i2c_client *client;
[ ... ]
> +	/* read buffer length */
> +	ret =3D regmap_read(p3h2x4x_i3c_hub->regmap, P3H2X4X_TARGET_BUFF_LENGTH=
, &packet_len);
> +	if (ret)
> +		goto ibi_err;
> +
> +	if (packet_len)
> +		packet_len =3D packet_len - 1;
> +
> +	if (packet_len > P3H2X4X_SMBUS_TARGET_PAYLOAD_SIZE) {
> +		dev_err(&i3cdev->dev, "Received message too big for p3h2x4x buffer\n");
> +		goto ibi_err;

[Severity: High]
Since flag_clear is initialized to 0, if an error path like this one jumps
to the ibi_err label early, will it skip setting flag_clear entirely?

If flag_clear remains 0, the cleanup code below won't write to the
P3H2X4X_TP0_SMBUS_AGNT_STS register to clear the hardware interrupt buffer
receive flag. Could this cause the unserviced buffer status to remain active
in the hardware and result in an continuous IBI interrupt storm?

> +	}
[ ... ]
> +ibi_err:
> +	regmap_write(p3h2x4x_i3c_hub->regmap, P3H2X4X_PAGE_PTR, 0x00);
> +
> +	if (flag_clear)
> +		regmap_write(p3h2x4x_i3c_hub->regmap, P3H2X4X_TP0_SMBUS_AGNT_STS + tp,=
 flag_clear);
> +}
[ ... ]
> +void p3h2x4x_ibi_handler(struct i3c_device *i3cdev,
> +			 const struct i3c_ibi_payload *payload)
> +{
[ ... ]
> +		ret =3D regmap_read(p3h2x4x_i3c_hub->regmap, P3H2X4X_TP0_SMBUS_AGNT_ST=
S + i,
> +				  &target_port_status);
> +		if (ret) {
> +			dev_err(&i3cdev->dev, "target port read status failed %d\n", ret);
> +			continue;
> +		}
> +
> +		/* process data receive buffer */
> +		switch (target_port_status & BUF_RECEIVED_FLAG_MASK) {
> +		case P3H2X4X_TARGET_BUF_CA_TF:

[Severity: Medium]
Is this case reachable?

If BUF_RECEIVED_FLAG_MASK is defined as 0xE (GENMASK(3, 1)) and
P3H2X4X_TARGET_BUF_CA_TF is defined as 0x1 (BIT(0)), a bitwise AND with 0xE
will always clear bit 0.

Will the switch expression ever evaluate to 0x1, or does this unintentional=
ly
fall through to the default case which clears all bits by writing
BUF_RECEIVED_FLAG_TF_MASK?

> +			break;
> +		case P3H2X4X_TARGET_BUF_0_RECEIVE:
[ ... ]
> +static int p3h2x4x_tp_i2c_reg_slave(struct i2c_client *slave)
> +{
> +	struct tp_bus *bus =3D i2c_get_adapdata(slave->adapter);
> +	struct p3h2x4x_i3c_hub_dev *hub =3D bus->p3h2x4x_i3c_hub;
> +	int ret;
> +
> +	guard(mutex)(&hub->etx_mutex);
> +
> +	if (!hub->i3cdev || !hub->ibi_ready)
> +		return -EOPNOTSUPP;
> +
> +	if (bus->tp_smbus_client)
> +		return -EBUSY;
> +
> +	ret =3D regmap_set_bits(hub->regmap,
> +			      P3H2X4X_TP_SMBUS_AGNT_IBI_CONFIG,
> +			      bus->tp_mask);
> +	if (ret)
> +		return ret;
> +
> +	bus->tp_smbus_client =3D slave;
> +	hub->hub_config.tp_config[bus->tp_port].ibi_en =3D true;
> +
> +	return 0;
> +}

[Severity: High]
When p3h2x4x_tp_smbus_algo() loops over target ports and exposes I2C adapte=
rs
via i2c_add_adapter(), this can trigger synchronous driver binding. A slave
driver probing could call i2c_slave_register(), which calls this function to
enable its IBI by setting a bit in P3H2X4X_TP_SMBUS_AGNT_IBI_CONFIG.

However, if p3h2x4x_tp_smbus_algo() unconditionally writes
P3H2X4X_IBI_DISABLED (0) to P3H2X4X_TP_SMBUS_AGNT_IBI_CONFIG after the adap=
ter
registration loop finishes, will this silently overwrite and clear the
interrupt configurations just set by any concurrently probing slave drivers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701065755.2067=
793-1-lakshay.piplani@nxp.com?part=3D7

