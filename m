Return-Path: <devicetree+bounces-307489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qkpqAk38ImpqgAEAu9opvQ
	(envelope-from <devicetree+bounces-307489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:41:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E03D649DCB
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:41:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZITWUrPj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307489-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307489-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6D8D30AA4A7
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 16:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C3B5349CDD;
	Fri,  5 Jun 2026 16:33:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525F3342CB1
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 16:33:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780677197; cv=none; b=eWHMTWRDaPWpe8441Vqchpr5YZAXiVn2BWdSU4AKGmZOlwfYKGsfgV0oFAoAJerbY3xKWzN+swm2dz5vEmO2vUyL3Pf7dlBe88w9dz+SZ7qwQqdLRUIG4H+k8VwuGesMoCcL6czZkieLetjXoQvWyMwaR79+qQeChIzXRCuqKKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780677197; c=relaxed/simple;
	bh=DHDmaXa4Nkify3KK396PaXtpKcCD34GSHApE6f2CrAo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D5+2n1J11zNIEF7Svjw8p/8qHwq1S8UtVAiPRBUpqV5xURJ3ksQu9ra4lVx1Jjp8GbHTBTLPCcNCIvwAskOGZaWeafbTKSaP2+SKP6d48VsVi15PiL18YrvhRbw5Ts4FpbGdSO+dBlgqlM76hrn8ioD1WBpYPKjmBRsu/uOMw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZITWUrPj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 890081F00893;
	Fri,  5 Jun 2026 16:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780677191;
	bh=Ib30e9pkVemNcAyXtDX9VsNwhcET0Xi40aVgfUP5do4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZITWUrPjx/rHaVGgcq5lyuZQsHzWnvefMBbOZMe+oKQOQ/PnWRqcsGNol4KpUDtMP
	 oCkSqzyx7hdFkTQTHDpFfInQiFCUC9DtCbilhc7jiQBpGvTd9QjesKEjIK+47mhQoz
	 g016qs1vJOIMCg0FY+xESHMroqS6NrS7QStH8Wd98UnvQCrjSm9vocgBUQomiYlNU9
	 adiwf5mp9X1DZlvAnKd8GyN4RDI3N0rE6PrRM6hTRoryWoXo9Ei0YOnSKL9MGbckuA
	 trFkV35m7EmKHgQzK6vE5k2t8SneIxpeKOQ2+VJj6Fy5mWPBhtATP8MyErd3jeFPDb
	 9kxro4JLXbJeQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 02/13] net: ethernet: oa_tc6: Handle the OA
 TC6 SPI protected mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260604-adin1140-driver-v3-2-5debdb3173c4@analog.com>
References: <20260604-adin1140-driver-v3-2-5debdb3173c4@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 16:33:10 +0000
Message-Id: <20260605163311.890081F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307489-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+ciprian.regus.analog.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E03D649DCB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `size` parameter in `oa_tc6_check_ctrl_write_reply()` is typed=
 as `u8`, causing integer truncation for SPI transfer sizes of 256 bytes or=
 more. This leads to an underflow in the `memcmp` length calculation, resul=
ting in a massive out-of-bounds memory read and kernel panic.
--

commit afec089ed8ebeec6d0ad251fec33bc20cdb36a86
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Handle the OA TC6 SPI protected mode

This commit implements the OA TC6 standard defined protected mode for
control transactions. It handles 1's complement values of the data field
in SPI transfer frames for integrity checking.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 91a906a7918a2..baba5aad84dfa 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c

[ ... ]

> @@ -283,10 +320,10 @@ static int oa_tc6_perform_ctrl(struct oa_tc6 *tc6, =
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

> @@ -301,7 +338,7 @@ static int oa_tc6_perform_ctrl(struct oa_tc6 *tc6, u3=
2 address, u32 value[],
>  		return oa_tc6_check_ctrl_write_reply(tc6, size);

[Severity: High]
This is a pre-existing issue, but does passing the u16 size to
oa_tc6_check_ctrl_write_reply() lead to an integer truncation here?

Looking at the function signature, oa_tc6_check_ctrl_write_reply() takes
size as a u8:

static int oa_tc6_check_ctrl_write_reply(struct oa_tc6 *tc6, u8 size)

Since oa_tc6_calculate_ctrl_buf_size() computes a size up to 1032 bytes in
protected mode, any value of 256 or more will be truncated when implicitly
cast to a u8.

If a write sequence results in a buffer size that truncates to a value
less than OA_TC6_CTRL_IGNORED_SIZE (4 bytes), could the subtraction in
the integrity check underflow?

static int oa_tc6_check_ctrl_write_reply(struct oa_tc6 *tc6, u8 size)
{
        ...
        if (memcmp(tx_buf, rx_buf, size - OA_TC6_CTRL_IGNORED_SIZE))
                return -EPROTO;
}

For example, if the calculated size is exactly 256 bytes (which can
happen when writing 31 registers in protected mode), the truncated
size becomes 0.

The subtraction 0 - 4 results in -4, which becomes SIZE_MAX - 3 when
passed as the size_t parameter to memcmp(), resulting in an
out-of-bounds read and likely a kernel panic.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-adin1140-d=
river-v3-0-5debdb3173c4@analog.com?part=3D2

