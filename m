Return-Path: <devicetree+bounces-323223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kR57KJLQTmqOUgIAu9opvQ
	(envelope-from <devicetree+bounces-323223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:34:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB3E72AE6A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:34:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RgoMNEPP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323223-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323223-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0AC48302DF40
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293193FAE0A;
	Wed,  8 Jul 2026 22:34:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1C32F3C19
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:34:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550095; cv=none; b=Y7yeiBWVSBMEl/qfarnZLEqkKcjlKliXovQiQvGRBmH2m/sB8I/TjgfIiedIWvqAL3PsjuIrv4DyPWjqFIJp2Ttn1v9IXKkmR64FxiLbuFCL+Yj0XeT+GTobC+Xt1ECfMeWL2vujRzkifm2GY9tI48Sp6yf05ZmKff9GPjBEbdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550095; c=relaxed/simple;
	bh=/Zxj1lYSo60NzbVRm4vnmTE84WJW2vUAWuMY7POQ8v8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TB4DNzSQIZ4JjBykg8STiI2yd7aKu11JAdkOVe41dxpDFxiwWJdj5grqOsmF6SZ4+VpqXCWKrI7rICQY6/ljQUIFfUdkoWSOyFn1NzldtxvZO4LNdsKIGcMc6Rx3BlFRauaKe2ieSR9R1c7vas7Z9cdj7kjTNN1qCuZir0DSZ4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgoMNEPP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375611F000E9;
	Wed,  8 Jul 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550093;
	bh=gQ0ECWCAzesek7PVXIpqGNs58P98N92r1Ddn96KCVvQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RgoMNEPPnmI7E306Mi+z8WBalbETJOSj+TRQa6Poc9vQa+9kyJbaagoZmJCpilVlo
	 Htd30FEmFLm8eOxquguJWvo2d3e+sN+eT8ZHLZpTQQXWTqW0YRkCns6EIs4Lay56Oo
	 IIXYhRy28dQE353be6n5sc8lVKcQ14mCm4PYcLMUSUEX0aNJEYFCsH4cZtNnHG6KVK
	 /SYhEj5rdqfzzkzWtOypCCctwlYGNk7mimRzom+aKmi1piw4KjnpjESjlzU9Ol+Kci
	 96UYK/kT6LOSFq7Lh/BLaTkQYSWIedCZCttudZQfkrdPDyjFnoCHkMIUYISMddh8mv
	 lVUNlEOCWyCDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 02/13] net: ethernet: oa_tc6: Handle the OA
 TC6 SPI protected mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus" <ciprian.regus@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-adin1140-driver-v5-2-4aca7b51a58b@analog.com>
References: <20260708-adin1140-driver-v5-0-4aca7b51a58b@analog.com>
 <20260708-adin1140-driver-v5-2-4aca7b51a58b@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:34:52 +0000
Message-Id: <20260708223453.375611F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323223-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ciprian.regus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BB3E72AE6A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Integer truncation in `oa_tc6_check_ctrl_write_reply()` causes out=
-of-bounds read and kernel panic
--

--- Patch [2]: [PATCH net-next v5 02/13] net: ethernet: oa_tc6: Handle the =
OA TC6 SPI protected mode ---
commit f765aab54c97488541b3e9e738aa5de9bff2269a
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Handle the OA TC6 SPI protected mode
   =20
This patch implements the OA TC6 standard defined protected mode for control
(register access) transactions. In addition to the current register access
formats the oa_tc6 driver handles, 1's complement values of the data field
are included in the SPI transfer frames as an integrity check.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 0727d53345a33..8b96558834960 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
[ ... ]
> @@ -284,10 +321,10 @@ static int oa_tc6_perform_ctrl(struct oa_tc6 *tc6, =
u32 address, u32 value[],
>  	u16 size;
>  	int ret;
> =20
> -	/* Prepare control command and copy to SPI control buffer */
> -	oa_tc6_prepare_ctrl_spi_buf(tc6, address, value, length, reg_op);
> +	size =3D oa_tc6_calculate_ctrl_buf_size(length, tc6->prot_ctrl);
> =20
> -	size =3D oa_tc6_calculate_ctrl_buf_size(length);
> +	/* Prepare control command and copy to SPI control buffer */
> +	oa_tc6_prepare_ctrl_spi_buf(tc6, address, value, length, reg_op, size);
> =20
>  	/* Perform SPI transfer */
>  	ret =3D oa_tc6_spi_transfer(tc6, OA_TC6_CTRL_HEADER, size);

[ ... ]

> @@ -302,7 +339,7 @@ static int oa_tc6_perform_ctrl(struct oa_tc6 *tc6, u3=
2 address, u32 value[],
>  		return oa_tc6_check_ctrl_write_reply(tc6, size);
> =20
>  	/* Check echoed/received control read command reply for errors */
> -	ret =3D oa_tc6_check_ctrl_read_reply(tc6, size);
> +	ret =3D oa_tc6_check_ctrl_read_reply(tc6, length);

[Severity: High]
This is a pre-existing issue, but does oa_tc6_check_ctrl_write_reply() safe=
ly
handle the u16 size being passed to it?

The size variable is declared as a u16 in oa_tc6_perform_ctrl(), but
oa_tc6_check_ctrl_write_reply() takes size as a u8:

static int oa_tc6_check_ctrl_write_reply(struct oa_tc6 *tc6, u8 size)
{
	...
	if (memcmp(tx_buf, rx_buf, size - OA_TC6_CTRL_IGNORED_SIZE))
		return -EPROTO;
	...
}

If size is exactly 256 bytes (which can happen when writing 62 registers in
unprotected mode, or 31 in protected mode), the size parameter truncates to=
 0.

The subtraction size - OA_TC6_CTRL_IGNORED_SIZE then becomes 0 - 4 =3D -4.
When cast to size_t for memcmp(), this becomes a massive out-of-bounds read
that can cause a page fault and kernel panic.

Additionally, if the truncated size is greater than 0 but less than the act=
ual
size, memcmp() will only compare a few bytes, silently bypassing the full
integrity check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-adin1140-d=
river-v5-0-4aca7b51a58b@analog.com?part=3D2

