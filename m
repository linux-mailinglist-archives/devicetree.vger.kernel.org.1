Return-Path: <devicetree+bounces-295830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFVOEbVRAmpfrQEAu9opvQ
	(envelope-from <devicetree+bounces-295830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:01:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA095168F4
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6252B3001B7D
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A643D4D8D8D;
	Mon, 11 May 2026 21:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvGLqHS8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332054D990D
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778536749; cv=none; b=X4eYn6oGHu3TTDlHofldAKJ0A+zD28kaD3eAnyfe58N4uoWNvaPSlKbOetz2rMDLWDVtJgcIqYwJazB7q6/FB2Th6T80sCVgtRUdw00Nd7vD0GM0nUX355MaJuCZG0aNCBElaUElME9FJ34dZkltLrBZCmgbKPfTmcrbxkULjdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778536749; c=relaxed/simple;
	bh=5HJ2lBDxn7p9NPgaRwmV9UwgCOtIs2QJ/vTDkbPBPTg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G08Ei170cOJ8SOu9OKTH2OXxPslYFltAs9ZkPS0dnoc30qJ7zX/r9HpD6jQLVUJZdNJCEGIorDSbkEWhO8+9wRuPQiiLtcIno41hT4mKiiOdOEf7Rq19mIIT5R77p/q6bPyM428OVWgc6s1Yp2k0eqVzH6CtsZYrqr8hJi3RXfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvGLqHS8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55567C2BCB0;
	Mon, 11 May 2026 21:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778536748;
	bh=5HJ2lBDxn7p9NPgaRwmV9UwgCOtIs2QJ/vTDkbPBPTg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=EvGLqHS8IZH6GD15Iz0JhcC6NnM0q2OKOaI6mKLep84jMbSGy/i7bNmRIG28Lb3vF
	 4biHSO6Ym8KqRrFPSrmOAXnf34GlsVM6YBtduc+pFPd9HHuHQVlGMnT/yvxn17U3EU
	 0F6TlJL/4uTYrZKzxOPUt6Pb7Drb2kAMQSCEBdaqyaA37PZajYSJqbvOuSBDW+K34d
	 EGKH8ei/UP3Ece+6GC2kcPd3n4A1QRxzwa84OX2mr//uydbn+vjlaIA5rc1Wqsc9Iq
	 iR3zirTjI5Km/IA/qE4+mFl13Iz11Uyd+6nj+syNm56C7QWEcknK1+911sAM11uKTO
	 rJMvauIEIvx6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 05/11] iio: core: add decimal value formatting into
 64-bit value
Reply-To: sashiko@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510-adf41513-iio-driver-v12-5-34af2ed2779f@analog.com>
References: <20260510-adf41513-iio-driver-v12-5-34af2ed2779f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:59:07 +0000
Message-Id: <20260511215908.55567C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EAA095168F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Format specifier `*` in `sysfs_emit_at` expects an `int` argument, =
but an `unsigned int` is provided.
--

commit b6e4aabfddeab683c1c7680ea9a056d0b185ccd2
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: core: add decimal value formatting into 64-bit value

This commit introduces new IIO format types to represent fixed decimal point
values as single 64-bit numbers. It also adds helpers for composing and
decomposing these values and updates the parsing logic to use kstrtodec64().

> diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-c=
ore.c
> --- a/drivers/iio/industrialio-core.c
> +++ b/drivers/iio/industrialio-core.c

[ ... ]

> @@ -707,8 +707,25 @@ static ssize_t __iio_format_value(char *buf, size_t =
offset, unsigned int type,
>  	case IIO_VAL_CHAR:
>  		return sysfs_emit_at(buf, offset, "%c", (char)vals[0]);
>  	case IIO_VAL_INT_64:
> -		tmp2 =3D (s64)((((u64)vals[1]) << 32) | (u32)vals[0]);
> +		tmp2 =3D iio_val_s64_from_array(vals);
>  		return sysfs_emit_at(buf, offset, "%lld", tmp2);
> +	case IIO_VAL_DECIMAL64_MILLI:
> +	case IIO_VAL_DECIMAL64_MICRO:
> +	case IIO_VAL_DECIMAL64_NANO:
> +	case IIO_VAL_DECIMAL64_PICO:
> +	{
> +		s64 frac;
> +		unsigned int scale =3D type - IIO_VAL_DECIMAL64_BASE;
> +
> +		tmp2 =3D div64_s64_rem(iio_val_s64_from_array(vals),
> +				     int_pow(10, scale), &frac);
> +		if (tmp2 =3D=3D 0 && frac < 0)
> +			return sysfs_emit_at(buf, offset, "-0.%0*lld", scale,
> +					     abs(frac));
> +		else
> +			return sysfs_emit_at(buf, offset, "%lld.%0*lld", tmp2,
> +					     scale, abs(frac));

Does passing the unsigned int scale to the * format specifier cause a
compiler warning?

The * width specifier expects an argument of type int.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-adf41513-i=
io-driver-v12-0-34af2ed2779f@analog.com?part=3D5

