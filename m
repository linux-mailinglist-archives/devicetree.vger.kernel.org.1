Return-Path: <devicetree+bounces-324415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UjxsMmHZUGr06AIAu9opvQ
	(envelope-from <devicetree+bounces-324415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 13:37:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6022073A4DF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 13:37:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IrsIlGkW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324415-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324415-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B57543003986
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7247441A76A;
	Fri, 10 Jul 2026 11:37:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9297416CE3
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 11:36:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783683415; cv=none; b=u7G0eXDVA4Vh4sPTRDrXmNVenPVBzEIFINW+RKP6q0DjWDicoX/rChviVOBMT4KU3jEM2BN7s21PB9T67b4KjXn8osdt6ZfTO1SnYwwAgqMEAHdFvQa6LNpJGrK6WJFznRTaFO/eu9mIqYpZVNFmyHgr5FHxRpS323LClkSEorU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783683415; c=relaxed/simple;
	bh=2MJor19UruydCPG4eC/O6GXHteEhn8IerN1++wZNn3s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Q0NoDQ23T5S7chxDJt+9VsK8vHeB1fVh54riAmC/iMGDFt1jBBAi9jVozDPh62qUXBoYDBdrYvbm558LH4Y4rR5O5WDAh9zoeHr/Wj06GneNiVpHA7WMhCV0OYJve81y4M+ha68q6b4rkeIo54A1xdg0DVzXu6qbhso8GzD2PFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrsIlGkW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A08931F00A3A;
	Fri, 10 Jul 2026 11:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783683396;
	bh=81tXuwbLTzXkcK8mSp5QQTU1hxB69dL+TlJcxup+jXQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IrsIlGkWr9Oq5a5lixO/T+EIBNiYOBxM8XAmhy3BxrLVCaWadro0KsDzYeQADa/jU
	 qnmTTIeXQR0xRRXctQQWE5CMHW38pH4JlE4YcVm02wEIbAy18G4cKDPk0kBTd69HaB
	 BfvqrQncaaEkaERcIhxMkhUCdvPl/hhClVrcQuxQIovlh+/5V5BmxLlO4npV1WjlFa
	 HaST5B4QjtS5MMR2Q7DWVyjgcb3w4gv2ta79B8XLjmLJRnxHK6f+eSHd1C8+DVrqjz
	 t1h3FMAbZcMrUdnwBizK/dRjSe5EpmjKwid/1YTA9U5FoP86IBHFlX31mNXdBHMV3u
	 8BVDGGrBltL8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/7] iio: dac: ad5686: refactor command/data macros
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260710-ad5686-new-features-v7-2-1bcc8c280e4d@analog.com>
References: <20260710-ad5686-new-features-v7-0-1bcc8c280e4d@analog.com>
 <20260710-ad5686-new-features-v7-2-1bcc8c280e4d@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 11:36:35 +0000
Message-Id: <20260710113635.A08931F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324415-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,analog.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6022073A4DF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] DMA API Cacheline Sharing Violation in SPI Read
--

--- Patch [2]: [PATCH v7 2/7] iio: dac: ad5686: refactor command/data macro=
s ---
commit 7ffa72bdbbf5952d81c8c2ac98d1aa1023cddf2f
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>
iio: dac: ad5686: refactor command/data macros

This commit refactors bit shifting macros in the AD5686 driver to use
FIELD_PREP(). It hardens the code to prepare for upcoming triggered buffer
support by ensuring bit masking is applied correctly.

Link: https://lore.kernel.org/all/20260628143026.EC6CA1F000E9@smtp.kernel.o=
rg/#t

> diff --git a/drivers/iio/dac/ad5686-spi.c b/drivers/iio/dac/ad5686-spi.c
> index 6b6ef1d7071fe..d3b64b4361d51 100644
> --- a/drivers/iio/dac/ad5686-spi.c
> +++ b/drivers/iio/dac/ad5686-spi.c
[ ... ]
> @@ -81,9 +82,9 @@ static int ad5686_spi_read(struct ad5686_state *st, u8 =
addr)
>  		return -EINVAL;
>  	}
> =20
> -	st->data[0].d32 =3D cpu_to_be32(AD5686_CMD(cmd) |
> -				      AD5686_ADDR(addr));
> -	st->data[1].d32 =3D cpu_to_be32(AD5686_CMD(AD5686_CMD_NOOP));
> +	st->data[0].d32 =3D cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, cmd) |
> +				      FIELD_PREP(AD5686_ADDR_MSK, addr));
> +	st->data[1].d32 =3D cpu_to_be32(FIELD_PREP(AD5686_CMD_MSK, AD5686_CMD_N=
OOP));
> =20
>  	ret =3D spi_sync_transfer(spi, t, ARRAY_SIZE(t));
>  	if (ret < 0)

[Severity: High]
This isn't a bug introduced by this patch, but is it possible this setup
causes a DMA API cacheline sharing violation during SPI reads?

In ad5686_spi_read(), the SPI transfers use adjacent elements from the
st->data array:

    struct spi_transfer t[] =3D {
        {
            .tx_buf =3D &st->data[0].d8[1],
            .len =3D 3,
            .cs_change =3D 1,
        }, {
            .tx_buf =3D &st->data[1].d8[1],
            .rx_buf =3D &st->data[2].d8[1],
            .len =3D 3,
        },
    };

Since st->data elements are 4-byte unions, they reside within the same
CPU cacheline. When spi_sync_transfer() maps st->data[0] and st->data[1]
as DMA_TO_DEVICE and st->data[2] as DMA_FROM_DEVICE simultaneously, does
this create overlapping mappings that violate the DMA API?

This could trigger CONFIG_DMA_API_DEBUG warnings for overlapping
mappings, and on non-coherent architectures, could there be a risk of
memory corruption when DMA_FROM_DEVICE cache invalidations interact
with active transfers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-ad5686-new=
-features-v7-0-1bcc8c280e4d@analog.com?part=3D2

