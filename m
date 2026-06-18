Return-Path: <devicetree+bounces-313520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DvleD8n1M2pLJwYAu9opvQ
	(envelope-from <devicetree+bounces-313520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:42:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DE36A0A94
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:42:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="O/2kOZPS";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313520-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313520-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4A38E3005304
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829783BB670;
	Thu, 18 Jun 2026 13:42:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751EE2C11D6
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 13:42:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781790146; cv=none; b=EpuI/kjD6buOGpB80VS06vdC+cnA9yHJVaW1FY+kAkyLSQJ7akEAP5lRqRWbWHSmHmtCzh9NgdRSDO54FLSBQVPqijzKZmgLtrmkRu1yXiEJiVM9QT0OUQRw6jHRE0eV4pR0wWksvfcAYCL+26oSqNqXeTdb5HmeNCGufv6wDss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781790146; c=relaxed/simple;
	bh=6wMXg6cHw90u7L3R7voMvsTiGk7FYAvxROVU7ayB/mM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aejppWB0HZ+UyKNw9xtv2qB5+FQjy1HSP6q6SOZ2s12oXdzOPE957YN/qtp9McQO/oh4Wc6MW3vOt0Injn39cRdj0xP3jl+L/oliJJg/Y47PxFjxv2vHgH1yCY34192y3Xew0AeJRkWUAArfBvIlcEj+DBdFhI+PAXRY5gb262k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/2kOZPS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2140E1F000E9;
	Thu, 18 Jun 2026 13:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781790145;
	bh=IaEzptdp2hhhnU6LO6c12OKkN4zdcTfNSB/m7+Fpru0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O/2kOZPSj/PP9SBMA7azgYsm5zVTVaL/1WckccwOqWDiFRuBLtOxGbdyzQeXpM5rb
	 4FWbo4VpnS1C8K4Qo3ycatzP1CcDAlY6IKYf2QJqUw12BzihluY8tW2CQ3r3Xuphsu
	 vPf5/HFqvHAtYS1xv8vq7CQZI0aGD4M8NWqgFq5P2gEcvBbQu5ulTd3ldkH2KiGRai
	 LG1frEdM1dV/p0xOuPAxXrlLlQzo5XwW7sGYUxys6E6G2pso3UeOrv1BCZfoPzIzsA
	 xY37GXojRZH/pXzO1GA18wtydCfJlav5jGgJ/sdWYv3Rjlil2GBsyrtGEGNaQRzEVw
	 SF2Xkc0hUqodQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 11/16] iio: frequency: ad9910: add digital ramp
 generator support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618-ad9910-iio-driver-v6-11-79125ffbe430@analog.com>
References: <20260618-ad9910-iio-driver-v6-0-79125ffbe430@analog.com>
 <20260618-ad9910-iio-driver-v6-11-79125ffbe430@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 13:42:24 +0000
Message-Id: <20260618134225.2140E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313520-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,analog.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35DE36A0A94

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Negative values written to DRG_RAMP_UP or DRG_RAMP_DOWN raw attr=
ibutes are silently converted and clamped to U32_MAX instead of returning a=
n error.
--

commit add95ac7476587b7d5eda18e659f33df4cc8cb31
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: frequency: ad9910: add digital ramp generator support

This patch adds support for Digital Ramp Generator channels to the AD9910
driver. It includes configuration for destination selection, dwell mode,
limits, step sizes, and step rates.

> diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad991=
0.c
> index 262702b62738d..3fe97aa887c3a 100644
> --- a/drivers/iio/frequency/ad9910.c
> +++ b/drivers/iio/frequency/ad9910.c

[ ... ]

> @@ -831,22 +1108,62 @@ static int ad9910_write_raw(struct iio_dev *indio_=
dev,
>  			return -EINVAL;
>  		}
>  	case IIO_CHAN_INFO_RAW:
> -		if (val < 0)
> -			return -EINVAL;
> -
>  		switch (chan->channel) {
>  		case AD9910_CHANNEL_PROFILE_0 ... AD9910_CHANNEL_PROFILE_7:
> +			if (val < 0)
> +				return -EINVAL;
> +
>  			tmp32 =3D chan->channel - AD9910_CHANNEL_PROFILE_0;
>  			tmp64 =3D FIELD_PREP(AD9910_PROFILE_ST_ASF_MSK,
>  					   min_t(u64, val, AD9910_ASF_MAX));
>  			return ad9910_reg64_update(st, AD9910_REG_PROFILE(tmp32),
>  						   AD9910_PROFILE_ST_ASF_MSK,
>  						   tmp64, true);
> +		case AD9910_CHANNEL_DRG_RAMP_UP:
> +			tmp64 =3D iio_val_s64_compose(val, val2);
> +			tmp64 =3D min_t(u64, tmp64, U32_MAX);

[Severity: Medium]
When a negative value is written to the DRG_RAMP_UP or DRG_RAMP_DOWN raw
attributes, does this bypass error checking?

Since iio_val_s64_compose() returns an s64, a negative input will be
implicitly cast to u64 when assigned to tmp64. This causes it to wrap to a
large positive number, which min_t() will then clamp to U32_MAX rather than
rejecting the invalid negative input.

Should we check for negative values before calling iio_val_s64_compose(),
similar to what is done for the profile channels?

> +			tmp64 =3D FIELD_PREP(AD9910_DRG_LIMIT_UPPER_MSK, tmp64);
> +			return ad9910_reg64_update(st, AD9910_REG_DRG_LIMIT,
> +						   AD9910_DRG_LIMIT_UPPER_MSK,
> +						   tmp64, true);
> +		case AD9910_CHANNEL_DRG_RAMP_DOWN:
> +			tmp64 =3D iio_val_s64_compose(val, val2);
> +			tmp64 =3D min_t(u64, tmp64, U32_MAX);
> +			tmp64 =3D FIELD_PREP(AD9910_DRG_LIMIT_LOWER_MSK, tmp64);
> +			return ad9910_reg64_update(st, AD9910_REG_DRG_LIMIT,
> +						   AD9910_DRG_LIMIT_LOWER_MSK,
> +						   tmp64, true);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-ad9910-iio=
-driver-v6-0-79125ffbe430@analog.com?part=3D11

