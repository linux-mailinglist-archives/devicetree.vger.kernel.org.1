Return-Path: <devicetree+bounces-224271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC67BC25C2
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 20:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 50C354E961C
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 18:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0219B2E6CAF;
	Tue,  7 Oct 2025 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="w0yohibw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE427221F12
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 18:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759861161; cv=none; b=uWDtVJOTLksP54hw/5gAv25tNwaXTmzSV7djrheki3MUTyi/cg3SW+AvFsfozyfmLGYrO/yIsZZio4ezLzaaRMJ9vpbDIqqvyuhsDfKL2cZO8jAxzGmy2QFvCiLL/f44GcuOegaeYFxosAn+2Y+MbpacW8lABL8B531rnCEBDeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759861161; c=relaxed/simple;
	bh=Mp4PZJ9KZs8IkrXP6UCO+Lm2pD0Jfn7WwtijGiWN0FI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QQy70QjgiUvvdGACnj7ClApEBgISMhUd/p6g7GdH0HdottuSHwB4Gq1wCCjFmLCPFlXRZ4wV+NF5iQMhHgybnKBKOL/2af39kGDUz1jyBi3eKEkOAxcPkqnviSCPyEKKFjEIqcCC3k/k4dE29NWe2EfvoAhKyBWu7uz/CgSqEqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=w0yohibw; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-856cbf74c4aso814370285a.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759861158; x=1760465958; darn=vger.kernel.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ScToGLgY21W9pR03qXloVq8Erpuen1ih1N7DUB0PhsI=;
        b=w0yohibwuGvRSkRLd+uACE8LGewnYWz5iL1AHTAW3q/37vhSeaMKZBMjD83hnoEt1B
         dq8aLG0Xs+yvbtkOuY+gnJHtZVQJj2OWomSTgyd3B16uCVnaP5PEeVYD4cbqeP56kIot
         2f0VIjT1z/p4Ne64YkbAUMFYwrPvNA/JMeDFKstD+hdJNeVdmc+7nad31JNduv8Kx180
         oRSBGo/l3r97cna+MPpGp6gmQrC0upk+jQCzfSl7sYNsDSKA7HvM16wqSS3EmuKt/nNd
         H27Ue46ekaC18E9xtFsN17IUp7PHO8hOTFdAWdtcXF8wt63MmNSYr3qyLzkH3x5yAWFL
         F3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759861158; x=1760465958;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScToGLgY21W9pR03qXloVq8Erpuen1ih1N7DUB0PhsI=;
        b=lqF7Hh3agQbZqCDNAPHr/3b6f+Cnz+bR0EkHrLcNMzMbUadwxhdfdgOh+FL3jQuakj
         izX8sz1oUOY9GSkgok7D9xIYjZAan2tN23cap9YRa4oXf67A+KsP6DqobiIZpN2qP/qL
         38x+hWAeG6V4zomPJMFNmj8vuArnZcPseHpDR6Ug+Ap59lnoesG+loSdBeaqK7cz6l7Q
         jT7JTENnb8TB0L8PJ/hwsJCeqkZAuoL1xMgD5Fc99PhOGVWUkWd3+k+lSvckq2UVxDIN
         fCv8r12IxXzwG+BjlbPvN6tubtVh1b3+qGQ17+a07PnLfhK2g8RdMBKnHJwkh/vcPuUa
         Q/Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXZMP+wtqQHBxPNj7Q23z19rKp9qFT+YA5bBqkbvU2sEIfs15CYJtfAtU53zkqqzMgGTFlMWzIXMis+@vger.kernel.org
X-Gm-Message-State: AOJu0YyXfdgw1o89uzBTfTJfn7aMOqH0B4eJCbuu1M6T/M3LmnWBVrDr
	mW7JleIzTTr+fQ+XkhnJiZRfoJJj3ZtG2hSFxh6Q8VIrj0pa1AjmbTw8/HvWsTKD6Vo=
X-Gm-Gg: ASbGnctoBH8vMxPuCX41gDfOyKEd3j7rBhQWp/JW48jxoC7FIJrsloYwUuIli1XWMW2
	RDCdNITiT/qn9sUPM0Bv6mPQpJNkYLjZa92FuK6CFWgDEeHuo7ttwVPoK1zFDUkYwqKyPt3ufNe
	1CrBcSP2q6EuDRBEScpGwWsAt9NzIDdl58PepbaYEid3XPcWhui+NJjwMmTPlgtXnpxQmXDJxEH
	duwwWJwWfS/RCLpc+BIg7iji5sY8mX76pfxoXnW0XrdhaZTJIAjzT0FhNPd3l4YMfnlQN8tiJ2B
	iaYKXQK0kZdsfVb2stiMLUiUnoI8k7CYpWiJI41e9xfgrJRpZTohstt4OgCBeItaTC+/MG079C0
	WzO7kxW/19I4HvYEpOKwkPbApusDjyca54AyIV6GX1QOACUfFLwBa
X-Google-Smtp-Source: AGHT+IHAN4pZjNRmmjniVTQYekbD8pM0Q+9DHCv4rh7qOTooNtWbQmwGL4IxpavnXlznH/zxFYUPUA==
X-Received: by 2002:a05:620a:3909:b0:813:ccb9:509f with SMTP id af79cd13be357-88351de79cbmr108285785a.5.1759861157718;
        Tue, 07 Oct 2025 11:19:17 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129491sm1649508085a.2.2025.10.07.11.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:19:16 -0700 (PDT)
Message-ID: <db7030790063d0ebe6d254c7053e758184b9d7cc.camel@ndufresne.ca>
Subject: Re: [PATCH 03/16] media: rockchip: rga: align stride to 16 bytes
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Tue, 07 Oct 2025 14:19:15 -0400
In-Reply-To: <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-xTXqAg4scDgbBruSU9ja"
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-xTXqAg4scDgbBruSU9ja
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


Le mardi 07 octobre 2025 =C3=A0 10:31 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Align the stride to a multiple of 16 according to the RGA3 requirements
> mentioned in the datasheet. This also ensures that the stride of the RGA2
> is aligned to 4 bytes, as it needs to divide the value by 4 (one word)
> before storing it in the register.
>=20
> Increasing the stride for the alignment also requires to increase the
> sizeimage value. This is usually handled by v4l2_fill_pixfmt_mp, but
> it doesn't allow to set a stride alignment. Therefore use the generated
> values to calculate the total number of lines to properly update the
> sizeimage value after the bytesperline has been aligned.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 21 ++++++++++++++++++++=
+
> =C2=A01 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index
> 6438119a6c7aeff1e89e7aa95dcd5d2921fefa08..3cb7ce470c47e39d694e8176875a75f=
ad271
> 7f96 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -459,6 +459,25 @@ static int vidioc_enum_fmt(struct file *file, void *=
priv,
> struct v4l2_fmtdesc *f
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static void align_pixfmt(struct v4l2_pix_format_mplane *pix_fmt)
> +{
> +	int lines;
> +	struct v4l2_plane_pix_format *fmt;
> +
> +	/*
> +	 * Align stride to 16 for the RGA3 (based on the datasheet)
> +	 * To not dismiss the v4l2_fill_pixfmt_mp helper
> +	 * (and manually write it again), we're approximating the new
> sizeimage
> +	 */
> +	for (fmt =3D pix_fmt->plane_fmt;
> +	=C2=A0=C2=A0=C2=A0=C2=A0 fmt < pix_fmt->plane_fmt + pix_fmt->num_planes=
;
> +	=C2=A0=C2=A0=C2=A0=C2=A0 fmt++) {
> +		lines =3D DIV_ROUND_UP(fmt->sizeimage, fmt->bytesperline);
> +		fmt->bytesperline =3D (fmt->bytesperline + 0xf) & ~0xf;
> +		fmt->sizeimage =3D fmt->bytesperline * lines;

Instead of open coding this, describe this with struct v4l2_frmsize_stepwis=
e and
then use v4l2_apply_frmsize_constraints().

Nicolas

> +	}
> +}
> +
> =C2=A0static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_=
format *f)
> =C2=A0{
> =C2=A0	struct v4l2_pix_format_mplane *pix_fmt =3D &f->fmt.pix_mp;
> @@ -474,6 +493,7 @@ static int vidioc_g_fmt(struct file *file, void *priv=
,
> struct v4l2_format *f)
> =C2=A0		return PTR_ERR(frm);
> =C2=A0
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, frm->fmt->fourcc, frm->width, frm-
> >height);
> +	align_pixfmt(pix_fmt);
> =C2=A0
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0	pix_fmt->colorspace =3D frm->colorspace;
> @@ -496,6 +516,7 @@ static int vidioc_try_fmt(struct file *file, void *pr=
iv,
> struct v4l2_format *f)
> =C2=A0				(u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
> =C2=A0
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt-
> >height);
> +	align_pixfmt(pix_fmt);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0
> =C2=A0	return 0;

--=-xTXqAg4scDgbBruSU9ja
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVZowAKCRDZQZRRKWBy
9MJZAQCpWWpCOI+8uxUCGwR39EX9OFe0+a9YuMmqqvplJUrUewEA0RMUMOwAoFpB
7n2OM0ustpDmfHr+P0+lF6Jtxzgqcwo=
=MSnu
-----END PGP SIGNATURE-----

--=-xTXqAg4scDgbBruSU9ja--

