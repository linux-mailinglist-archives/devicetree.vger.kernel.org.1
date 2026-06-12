Return-Path: <devicetree+bounces-310675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c1yaJc5mK2qh8wMAu9opvQ
	(envelope-from <devicetree+bounces-310675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 03:54:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F0A67634C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 03:54:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OfguwlhD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310675-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310675-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5F2A3028DFF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 01:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B440E3128CF;
	Fri, 12 Jun 2026 01:54:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFAB2C21D8
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 01:54:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781229260; cv=none; b=Prnhkt3q0M+suvBn/7erEyKiHNwst4o5QTWYNtfHvPl+ReGPCyDMfBjKOObiWAoGE0chYL8N7HOWorRZgdO5sR4psH+zCPxx/j0M5AYI0PFk1XralwRcZUta2HQa199FiMtqlfU2xbDeIVYdnHtVZ1dcnLlhtZFVYpyRt3wzAzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781229260; c=relaxed/simple;
	bh=5TqNOGDv5XwP7B8F6krg1aswb4kncNALpK7YUKOb27A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mFaccgb0aFBTO/28D2NYgBKS8M3IuCEjlv0p8K3odzMdLArIU+gm9bjYWRNcCDLvuwgQak5G3iAqxVPzOXjT1dHqrvUHrFIGp/njmTO5Vrss+ljMrZHefS9eyBNI87ltxnzs+yCCqP6nn9iaVJijNs89w0Sapb49prIJxeuc4uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfguwlhD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A1A01F000E9;
	Fri, 12 Jun 2026 01:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781229259;
	bh=WT4a2DVCyQNwW7j02YyAT/rozpIv6P3UrRZJBEeNxYk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OfguwlhDioPRRAyKPnPQUc6qmS0wOcKxqEncj8zy6fQVClULFO5d28b/9tM24timB
	 yeeA8C9PMpPFnmxpYwxRfOY9vytuEAyCT9fwpM6Jjjkj59HnZK6WYBnnIunNmvsI9e
	 dZyqPAHkEdU7LvyC2WcTeEIEy5TLC3heglOtJs/sk02ZmojQhLloxLAab0rD0AIlSv
	 EN0D4Qd2uCEDrrfJwRTvrXv+tvyGI6dXfVtTv0YTiF8NwwvSDkTOWMBHd98M9jHrQx
	 PElc+cJMZOIQrm4+M0GPCdpn1ch9vlMpDjuW597ijy6xl5Mq+Do+NVtkD+KYPijw0E
	 i1uG3dsJz/yOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v2 2/2] i2c: cadence: Add support for Axiado
 AX3000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Swark Yang" <syang@axiado.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-axiado-ax3000-cadence-i2c-support-v2-2-cfdad0534afa@axiado.com>
References: <20260611-axiado-ax3000-cadence-i2c-support-v2-2-cfdad0534afa@axiado.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 01:54:18 +0000
Message-Id: <20260612015419.0A1A01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310675-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:syang@axiado.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,axiado.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36F0A67634C

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Enabling I2C_FUNC_SMBUS_QUICK advertises 0-length reads, which the=
 Cadence IP does not natively support, leading to bus hangs.

Pre-existing issues:
- [Critical] A state confusion vulnerability in `cdns_i2c_master_isr` leads=
 to a Use-After-Free read when a 0-length read follows a failed transmit tr=
ansfer.
- [High] Atomic transfers completely ignore hardware errors (such as NACKs)=
, leading to false success reports or unacceptable polling timeouts.
--

commit ff52e0b03cba3111fdadd1c1d340a29ac8a5b77f
Author: Swark Yang <syang@axiado.com>

i2c: cadence: Add support for Axiado AX3000

The Axiado AX3000 SoC integrates a Cadence I2C controller that supports SMB=
us
Quick commands. This patch introduces the "axiado,ax3000-i2c" compatible
string and a new quirk to enable this functionality.

> diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-ca=
dence.c
> index 0fb728ade92e4..8079c045f9365 100644
> --- a/drivers/i2c/busses/i2c-cadence.c
> +++ b/drivers/i2c/busses/i2c-cadence.c
[ ... ]
> @@ -1175,10 +1176,14 @@ static int cdns_i2c_master_xfer_atomic(struct i2c=
_adapter *adap, struct i2c_msg
>   */
>  static u32 cdns_i2c_func(struct i2c_adapter *adap)
>  {
> +	struct cdns_i2c *id =3D adap->algo_data;
>  	u32 func =3D I2C_FUNC_I2C | I2C_FUNC_10BIT_ADDR |
>  			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK) |
>  			I2C_FUNC_SMBUS_BLOCK_DATA;
> =20
> +	if (id->quirks & CDNS_I2C_QUIRKS_ENABLE_SMBUS_QUICK_CFG)
> +		func |=3D I2C_FUNC_SMBUS_QUICK;
> +

[Severity: High]
Does adding I2C_FUNC_SMBUS_QUICK allow the I2C core to send unsupported
0-length reads to the adapter?

The Cadence controller does not natively support 0-length reads. If a 0-len=
gth
read is processed, cdns_i2c_mrecv() writes 0 to the Transfer Size Register
(CDNS_I2C_XFER_SIZE_OFFSET). This unsupported hardware state can cause the =
I2C
bus to hang or trigger rogue transfers.

Should the adapter's quirks be populated with I2C_AQ_NO_ZERO_LEN_READ to sa=
fely
support Quick commands?

[Severity: High]
This isn't a bug introduced by this patch, but do atomic transfers complete=
ly
ignore hardware errors like NACKs?

In atomic mode, cdns_i2c_process_msg() polls for completion by waiting
specifically for the CDNS_I2C_IXR_COMP bit. It entirely ignores error bits =
such
as CDNS_I2C_IXR_NACK. If a NACK occurs without COMP being set, the polling =
macro
blocks for the full timeout instead of failing fast.

Additionally, cdns_i2c_master_common_xfer() checks id->err_status_atomic to
report atomic errors, but this variable is never assigned anywhere in the d=
river.

Could this lead to system stalls during operations like SMBus Quick scannin=
g?

[Severity: Critical]
This is a pre-existing issue, but does exposing 0-length reads via SMBUS_QU=
ICK
trigger a state confusion vulnerability in cdns_i2c_master_isr()?

When a master transmit transfer fails (e.g., due to a NACK), the cleanup ro=
utine
does not reset id->send_count or id->p_send_buf.

If a subsequent 0-length read is issued (where msg->buf is NULL),
cdns_i2c_mrecv() sets id->p_recv_buf =3D NULL but leaves id->send_count and
id->p_send_buf containing stale values.

Upon interrupt completion, the ISR cdns_i2c_master_isr() evaluates
!id->p_recv_buf as true, erroneously enters the transmit completion block, =
loops
over id->send_count, and dereferences the previously freed id->p_send_buf.

Can this write unmapped or freed kernel memory to the hardware FIFO?

>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
>  	func |=3D I2C_FUNC_SLAVE;
>  #endif

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-axiado-ax3=
000-cadence-i2c-support-v2-0-cfdad0534afa@axiado.com?part=3D2

