Return-Path: <devicetree+bounces-320614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pZ0uFmdESmryAQEAu9opvQ
	(envelope-from <devicetree+bounces-320614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 13:47:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D36BC709DCA
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 13:47:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ATSddZYO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320614-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320614-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BE163007F62
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 11:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34C637D10E;
	Sun,  5 Jul 2026 11:47:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B409735BDA8
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 11:47:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783252067; cv=none; b=OK0780tk4aaTux5QLGHj/x+005VxPesfmyXjh8mtvU0sAlYFlfQeo8+1wv362P2CZ+tHKxJRMMDh4AWbmt5SvNaGVp7g2cYNZpJlxF73PB4f+eTodyArErXu9fkeQIlmkTxEmEmauW16Cui/yOJL7tU5+jlokqw1l65k/RKqnFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783252067; c=relaxed/simple;
	bh=FuANQhiKXotqpv4Cn4HFeYOqxDi2wJrbWGGQHHZvmM8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d3K5W8DJzDByysv0BN63ZePySpGY0oCQ0pu8jHvlh5PF7taK83Imvc1jafociUs+dCWYKn5HTJr+RZ/D+qqK1VytZG0ws27I8O2+Tte4HylKxDnCpmYbHJPCTaiq/R0iztcikR24dsDeKosR2DG+z0SKkX3vx3zxMRdL/O3sb3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATSddZYO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1485F1F000E9;
	Sun,  5 Jul 2026 11:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783252066;
	bh=qbCPJPr4K+iur8QXBcNxHQQR5wDUdLu7fXIehTV0OM8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ATSddZYOGVKprk02HN2OvBI8Qt4o20jrFQ4NEyjvCGTU5/T17FU6NL8VZhww0Oyrn
	 vfDnkaaKRqZ5GcdLa5M/t7HeVQk0UMfwawPjLRiYKj2/66qSAm8GSPwWQ8LuoeqHGt
	 dE9i3vA06aIYTpbgaCgyuqjbtIXzs6xcUMPT4Aq1DABJirpE0DaZLAwmQctnERzNfQ
	 9FkNerZKYS8TU6cyDaRvPqxBFUB7hQqtl6Jh0iRPgSYW7wqllB1M9+jp867ct70oPh
	 rvbQVcK+NUHsMSDU4xZbcoeBLYJ9B4xGfb9YjACGD0sxdjnCHGMo1qxHg8pQGiJwyQ
	 lmH4Jqier6Y/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/6] iio: dac: ad5686: read_raw/write_raw: use
 guard(mutex)()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260705-ad5686-new-features-v6-4-269594c7aae5@analog.com>
References: <20260705-ad5686-new-features-v6-0-269594c7aae5@analog.com>
 <20260705-ad5686-new-features-v6-4-269594c7aae5@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 11:47:45 +0000
Message-Id: <20260705114746.1485F1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320614-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D36BC709DCA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect return value check for i2c_transfer() causes silent fail=
ures and bogus data returns.
--

commit 93acc0420c1accec74aba11d13ed25dc18d01455
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: dac: ad5686: read_raw/write_raw: use guard(mutex)()

This commit transitions the read_raw and write_raw functions in the AD5686=
=20
driver to use guard(mutex) for locking. This simplifies the error paths by=
=20
allowing early returns without explicit unlock calls.

> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index 75dd7921c67b8..db175e77b0b7c 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
[ ... ]
> @@ -177,11 +178,11 @@ static int ad5686_read_raw(struct iio_dev *indio_de=
v,
>  	struct ad5686_state *st =3D iio_priv(indio_dev);
>  	int ret;
> =20
> +	guard(mutex)(&st->lock);
> +
>  	switch (m) {
>  	case IIO_CHAN_INFO_RAW:
> -		mutex_lock(&st->lock);
>  		ret =3D ad5686_read(st, chan->address);

[Severity: High]
This isn't a bug introduced by this patch, but looking at ad5686_read()
which calls into ad5686_i2c_read() for I2C devices, is there an issue with
the return value check for i2c_transfer()?

drivers/iio/dac/ad5696-i2c.c:ad5686_i2c_read() {
    ...
    ret =3D i2c_transfer(i2c->adapter, msg, 2);
    if (ret < 0)
        return ret;

    return be16_to_cpu(st->data[0].d16);
}

If the first message (write) succeeds but the second (read) fails,
i2c_transfer() returns 1 (the number of successfully transferred messages).

Since 1 is not less than 0, the check passes and the function erroneously
returns the contents of st->data[0].d16, which holds the command bytes that
were written to the buffer just before the transfer.

Should this check verify that all 2 expected messages were transferred
instead, such as checking if (ret !=3D 2)?

> -		mutex_unlock(&st->lock);
>  		if (ret < 0)
>  			return ret;
>  		*val =3D (ret >> chan->scan_type.shift) &

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-ad5686-new=
-features-v6-0-269594c7aae5@analog.com?part=3D4

