Return-Path: <devicetree+bounces-275677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Gb5GPI9tWlEyAAAu9opvQ
	(envelope-from <devicetree+bounces-275677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:52:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8C728CCBB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A3EB3027D82
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B6C353EF9;
	Sat, 14 Mar 2026 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EF+j8wso"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347A62FE075
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 10:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773485543; cv=none; b=ijnXoC+0AArX58EQ0bsDNOy3gxZvZlFNJCblNJlk5cxTQOAAdKCSUoL557/jqqdqFKU/o15d6rv6m3wQyGemjcgcNTabHQyiYK49jhh/bkiO0LBF+AWd4ev1ZfSRVJ3aDAcNcWpihDpejKOO7fR2VgV+SKmitC53yAbmiDnhGbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773485543; c=relaxed/simple;
	bh=sW48G7WREIPgOi419kvooa49/ZlnypsboLknbzYxG5U=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QjSZXugFVHZeJGCEzieZeefIfVaxqTkEbs35c/vgBqMg/vdj8qG0yFtsHue2szvw9xcz9b1OyB2o8+pWRExLxikmqBGrByYUjcjHYiz2NKLXCEZPYpy9/XTKVW96WyEXCpnAdRWSCetrugmoi5xEY4Jju3JY4DOBhc7T5AO1Its=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EF+j8wso; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so3415265f8f.1
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 03:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773485539; x=1774090339; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ErKx3equV1FxAke8zHO6Glgi2rG62nsHrQe2I4bcMho=;
        b=EF+j8wso5Fo7AzGSUUeRULPIEEgtoo1Y9FmdOfMXgZxQLy0TFovxiFFDm6egCpHiQi
         xhaUtzxvr2w4V3Whv6eF+eA7HoX51GKoJ01eN5C18GxQS5SkHAVZM0oihOsLinTFJC3R
         Z4wGCEz6x8YH221pnOAum2bWp2YeYA8pZkQDlwoaMaVgwFHR7hDfDCRDKUsQGNCUZmnu
         2h10F8GzbSco7wLA6gS9PMLNsJDYWg32pDlK0R3RnUkd/zwqzW6CfTLUwwqvfumL/puL
         AkVE9Sg85sOsJUNixLq7xrv3D70DP2iFBvhnjuyzTrR+kW5oAOgXeaDaEiZx+aduG/Tr
         Z2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773485539; x=1774090339;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ErKx3equV1FxAke8zHO6Glgi2rG62nsHrQe2I4bcMho=;
        b=HGwyJNYWIaNdJ03Hv0HitevxFRp6azhN1yEStVOEZj2pkxXWM6a0JPnJTLJQdow7nQ
         4noB2wSRdErE6QVyudScFXwnli3ZSIE5ClPJl1Kju9pnbm7bhgin90Y0vsR2yUw8GSxZ
         D9b4/mL72A627N8eM82iLsoJuii4gBKeNMWp5UhvkmtTGgb3xzTsqhs+P9hsL2harnuB
         euUF7GIQAwbMa9sTnxBXd9kjwDXcMQntRIGx4WwnLcIdnXEb6w3y0gKUdFHtJHa2bOGx
         OJ+1UuLZCNjdPCY/1VligUNPh5Ak4UoPg7KX7nyR7fIff5Vfh0DlBb8m6fvz38jGr7e8
         cuLg==
X-Forwarded-Encrypted: i=1; AJvYcCXBOJxbxPtlCY+T+HRe6h1cCqY0PtqUspNojJVJYTvZwEwCYCkLGtHIMWyDph/+i7Gpk11T0a/jhwW9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy19evAZYArT4sou65K+PQa8cH0GKb8U9XSBmbKCoR8A5PXUirm
	kJmPCvkWdYksICyALTOI3mpwXMWPFhFmTHMWLxTWTJu0x3fo4jmL2UvB
X-Gm-Gg: ATEYQzz0us4H8AsZCMMs9IahK/BQs32k9z+rIcGENPHOW2+7bNCPrAdpP+pBeiOuj9y
	l7zV3z8fQuqKlJHrk/axlu1LCdUQFMwRNEod+odo1BTO/4nJ/gw3qscn6dFqp/5uNiZaBTBfngT
	QhfqPrDug4vo8O5GomyLkzKaXRMFbMeOUVUnnQc8H3OgascTW8EFRsbeHd0QjGWT8xUvNl8PO1m
	7N/0vT+v5nlqhCnpLK1xflamnAHkeqYJm3V/GZ4k5ZGrXc5e1EbSy2B2TsgnJbE75DzMbbLaIAb
	MFSVAMNSQzKhb8y8QNTbNBibjfrG7e0Q+qiEJoeD4CD7ZMlPKhqV6E50SFGhuY8c2tg1jf59KhO
	PIkTyyu3CeYcwM6q4C6BbaOhVnWz6prMU6ykR9ZrRM+l0Wg9KyG8utnh5r+9QmajHie99S3J/oI
	PwLp61dLLARouCRR0mdS+Ue96GBizvKJGiU5tOjrPM9tFQ2ghXMQm7MY+VVMspPJkVpnZKgzQ=
X-Received: by 2002:a05:6000:609:b0:439:c9d0:5fd4 with SMTP id ffacd0b85a97d-43a04d8c258mr12342846f8f.16.1773485539285;
        Sat, 14 Mar 2026 03:52:19 -0700 (PDT)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe23afc5sm28305833f8f.39.2026.03.14.03.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 03:52:18 -0700 (PDT)
Message-ID: <13defdd2f744f8b94e47235035f7d8f29893dab7.camel@gmail.com>
Subject: Re: [PATCH v6 1/4] iio: backend: use __free(fwnode_handle) for
 automatic cleanup
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen
	 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron
	 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, Nuno
 =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Sat, 14 Mar 2026 10:53:24 +0000
In-Reply-To: <20260313115856.87763-2-antoniu.miclaus@analog.com>
References: <20260313115856.87763-1-antoniu.miclaus@analog.com>
	 <20260313115856.87763-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275677-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 1B8C728CCBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-13 at 13:58 +0200, Antoniu Miclaus wrote:
> Convert __devm_iio_backend_fwnode_get() to use the __free(fwnode_handle)
> cleanup attribute for the fwnode_back variable, removing the need for
> manual fwnode_handle_put() calls. Move the declaration closer to its
> first use, narrowing its scope.
>=20
> No functional change.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> Changes in v6:
> =C2=A0 - No changes
>=20
> =C2=A0drivers/iio/industrialio-backend.c | 6 ++----
> =C2=A01 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industriali=
o-
> backend.c
> index 447b694d6d5f..58f7e1426095 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -952,7 +952,6 @@ EXPORT_SYMBOL_NS_GPL(iio_backend_data_transfer_addr,
> "IIO_BACKEND");
> =C2=A0static struct iio_backend *__devm_iio_backend_fwnode_get(struct dev=
ice *dev, const
> char *name,
> =C2=A0							 struct fwnode_handle
> *fwnode)
> =C2=A0{
> -	struct fwnode_handle *fwnode_back;
> =C2=A0	struct iio_backend *back;
> =C2=A0	unsigned int index;
> =C2=A0	int ret;
> @@ -967,7 +966,8 @@ static struct iio_backend *__devm_iio_backend_fwnode_=
get(struct
> device *dev, con
> =C2=A0		index =3D 0;
> =C2=A0	}
> =C2=A0
> -	fwnode_back =3D fwnode_find_reference(fwnode, "io-backends", index);
> +	struct fwnode_handle *fwnode_back __free(fwnode_handle) =3D
> +		fwnode_find_reference(fwnode, "io-backends", index);
> =C2=A0	if (IS_ERR(fwnode_back))
> =C2=A0		return dev_err_cast_probe(dev, fwnode_back,
> =C2=A0					=C2=A0 "Cannot get Firmware reference\n");
> @@ -977,7 +977,6 @@ static struct iio_backend *__devm_iio_backend_fwnode_=
get(struct
> device *dev, con
> =C2=A0		if (!device_match_fwnode(back->dev, fwnode_back))
> =C2=A0			continue;
> =C2=A0
> -		fwnode_handle_put(fwnode_back);
> =C2=A0		ret =3D __devm_iio_backend_get(dev, back);
> =C2=A0		if (ret)
> =C2=A0			return ERR_PTR(ret);
> @@ -988,7 +987,6 @@ static struct iio_backend *__devm_iio_backend_fwnode_=
get(struct
> device *dev, con
> =C2=A0		return back;
> =C2=A0	}
> =C2=A0
> -	fwnode_handle_put(fwnode_back);
> =C2=A0	return ERR_PTR(-EPROBE_DEFER);
> =C2=A0}
> =C2=A0

