Return-Path: <devicetree+bounces-299019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE5FJUgPCmoOwgQAu9opvQ
	(envelope-from <devicetree+bounces-299019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:56:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B80056366C
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FEC43001A75
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 18:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0761E3D0936;
	Sun, 17 May 2026 18:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow7zDtII"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A723644A0
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 18:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779044162; cv=none; b=aj6WdOUYhth9VN/gZsA/67b7VxNPxCX0mLabRnhhwWX254ffBwJdnXia0zghq2VMxoOR7Zs7XZZEP1jM+UPQ119RX1ztO4YNrRG+cLg6GzweimReRLHLLYzS8j4LOO88Q7hRPv5K7JIzvYuA22ghbc7shIOQ5w27sxBGv/hHo5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779044162; c=relaxed/simple;
	bh=UIkJwPLXUcsKrGAPH+NKGr1zxfxUruyCStCfMVqc3q4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SCyv9/K9nxOpwg1ViwLJ1s2XRLtVUmNwOZZBMbSq9rAkphFHlSjphopOCRrEwM2L2lwkt71IRdvO7xxG63SQZelMoYl+Q/EIhbaG9qIPYaxD5jF59EUHo3sa/Fk5O3JksH+2XofdlYssaImng8Y5AyJdaftJhV7rgYVNw75BfRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow7zDtII; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7B0C2BCB0;
	Sun, 17 May 2026 18:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779044162;
	bh=UIkJwPLXUcsKrGAPH+NKGr1zxfxUruyCStCfMVqc3q4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ow7zDtIILTwKOlOod8DwCbCjtpRw+/xcE7b64bqef6RmdgjWUb/g7vblhlvpN/lSZ
	 Pt8/4PkxEKMWTYrksuKUBwzqfhOPtfebKZdiDLemOYDP1fq8VWepz2tz3vCP8eT/rh
	 QhCEOUo0dpjMYlmsCmdA5gBVBjQIUstpwqkhnC8SkdzzAIYlHY2HKrlDtyhKNX9e7z
	 w0btHKXZ6yoJBvCme+iBS55VDzaG0AmEkjuztvSXT+Z6jaHlUjXEx/1JPLxQbK/I/T
	 2XHHr/TWLNOztvQE9k/BEZJCM/lnU0kk4iq/cqD3HmZXZW2BfJbcyHbnoxj+54/9uw
	 ibO2eXwe3qZjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 02/13] iio: core: support 64-bit register through
 debugfs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260517-ad9910-iio-driver-v5-2-31599c88314a@analog.com>
References: <20260517-ad9910-iio-driver-v5-2-31599c88314a@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 18:56:01 +0000
Message-Id: <20260517185602.4E7B0C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9B80056366C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299019-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,analog.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Silent truncation of 64-bit values when written to a 32-bit regi=
ster access function.
--

commit 64785a0c1416e2cf718b558aa7a2cc9ac39b2d81
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: core: support 64-bit register through debugfs

This commit introduces a debugfs_reg64_access function pointer to iio_info
to allow 64-bit register reads and writes through debugfs. The file operati=
on
callbacks are modified to prefer the 64-bit variant when available.

> diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-c=
ore.c
> index e587aca79b8e7..5c8404efd0a56 100644
> --- a/drivers/iio/industrialio-core.c
> +++ b/drivers/iio/industrialio-core.c

[ ... ]

> @@ -429,7 +439,7 @@ static ssize_t iio_debugfs_write_reg(struct file *fil=
e,
> =20
>  	buf[ret] =3D '\0';
> =20
> -	ret =3D sscanf(buf, "%i %i", &reg, &val);
> +	ret =3D sscanf(buf, "%i %lli", &reg, &val64);
> =20
>  	switch (ret) {
>  	case 1:
> @@ -437,8 +447,12 @@ static ssize_t iio_debugfs_write_reg(struct file *fi=
le,
>  		break;
>  	case 2:
>  		iio_dev_opaque->cached_reg_addr =3D reg;
> -		ret =3D indio_dev->info->debugfs_reg_access(indio_dev, reg,
> -							  val, NULL);
> +		if (indio_dev->info->debugfs_reg64_access)
> +			ret =3D indio_dev->info->debugfs_reg64_access(indio_dev, reg,
> +								    val64, NULL);
> +		else
> +			ret =3D indio_dev->info->debugfs_reg_access(indio_dev, reg,
> +								  val64, NULL);

Could this introduce a regression where values are silently truncated if the
provided input exceeds 32 bits?

Since the input is now unconditionally parsed as a 64-bit integer, falling
back to debugfs_reg_access (which takes an unsigned int for writeval) will
implicitly cast val64. If a user provides a value larger than UINT_MAX to a
driver that only provides the 32-bit callback, it appears the value will be
truncated rather than rejected with an error like -EINVAL.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517-ad9910-iio=
-driver-v5-0-31599c88314a@analog.com?part=3D2

