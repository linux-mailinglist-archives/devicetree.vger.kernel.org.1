Return-Path: <devicetree+bounces-249543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A512CCDCC92
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41EBB30094AA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E4932693A;
	Wed, 24 Dec 2025 16:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="bX82JNCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8270522AE5D
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766592042; cv=none; b=vGR9sVv81F/MeTU7nnwKCct9fhIU6MEb3B3f2pBmxm2266zjtTPGqBUqvLzbUPsCobKQ14TlN04+OoBI2HivkTOZnsWH4vgYWfydkU5QOPQR8lRjjaWHBSIrtS3ahJWkxSp0kTHDnje+UQ++7KH076+H8d6FqrKM/J7cXBJn86w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766592042; c=relaxed/simple;
	bh=d+6F9uVSbKemtD8VxhaHQoGcfJHj9u770sLjCeMYWUQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RNWzfJil+gJX9iHG+S9NUfTQQlgAR+QgEfkWLpnIxrwb7SBYqKcgWpQ8D4U+CQ46JedYC8JK8NgPxDZOftRNeAhCuhIVoMUFP4PcGnzk8iz3L32zBDdJj7BcGr74IU6zg06cSdp1XK1x+zYHxCRdOQl1lPa2xW3617GdifvLek0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=bX82JNCr; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4ee14ba3d9cso62979231cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766592039; x=1767196839; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=B8GfNqjtHl5a4gr/qUWpYa+PaGpekfTXC3faii3jufs=;
        b=bX82JNCrSbzoIcw3T99VQe5Mz865DRffOixPkdkP6vAKiYVfzclNoTZALUAP2VL0lv
         AkHxsfxEyxXoqGeVu0lwGgl4C+CErn9ZWBw78sZ+61TNgdDBqTVA+EKdsHnzJqxlNIrW
         0a8tKAflV8Uzx4SVvGYSyD6JHwbUkoX+5q2ZfppS3xfdTP3xWEPWyouhc0BHFTie3oaJ
         c0yO/dT3pa0HMakjGavnFB1ZHiadtLOMvf7PahoFqiSX4/rEyAA2pJa9LmKtw7BIKJ/F
         DB/dUj5J1LgFcpzwLJ2Sdh1mkfxKxx3rsAOOjIbVrD6QGxH+Q79eNDuNh4ylsoWh2YYc
         5SAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766592039; x=1767196839;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8GfNqjtHl5a4gr/qUWpYa+PaGpekfTXC3faii3jufs=;
        b=igGXbo/xZq/HUi4IRtFrcc/Y0qqvNiVOpnTYxMGl+ZFNuajtbJvKCsnNuEHAUi9Hby
         Db1wAVInlI9fnlaCbJehA1kJXIaqXb9XmnIS6ccVNfjlGDSXGSPUcmMzHlvGf9zdQwVL
         5lYJ+PlA729kHACi1LYi/Kc+t+ETQpy1xU5Q6F4XOgH25LBwuK6kjVn6/7usUwvslCMR
         wH4Ggzyq/8rq0tScy8DvD1FMiv8EkgByQYsmGbrJXVmlwlIqFRyIU5W/9TMkPymNwLSL
         4IaTjZPAL1+1eTpO21TSpVikxpT07vAfR9y4pQZKKnLdksS8zfixfa8YTd11ON4LQwpB
         589Q==
X-Forwarded-Encrypted: i=1; AJvYcCXlLP+JLJBXLpIWcIxZ+6CWb16Mruz2zThnO9ZTjHTxZ8uoD+ApLZWZy9ajIwfU+fv6sfVTeJZNNrDz@vger.kernel.org
X-Gm-Message-State: AOJu0YzVTttzdo9hjM4r1yWQSDMEswxshtszd4hG7CPMJj79hhVDxh9+
	s7zbe2uSiLwuagf6UHxcm8fu39ziwh+pA7OlpUT7ACwu0542zwPh62V3C1p26O2MSs8=
X-Gm-Gg: AY/fxX5ttcJ2Lt1CJZXgx8jWxXOkzCB8AC8q2tgWITAmPqfUdt2bx/AXpXFqvFcdHt4
	lZ925D/3vSTnqs9zNvpOcYkuhUP/agE4ctRa+FdsFcwbMcw3fAdMXhuof30W66JSFLvdN/bXJ5a
	/5is58TdfF/JqMyGAB8fHG5/ey9dvYKoGFTsNbbqoPoqV2NT/lAHE1OzpYGIpPAGW/QfwHs5upD
	9RZbyAX3FdDfA/sRPI2ci0k0j6TL/uIOZeYYF5VP/qn6E5r5gBxkO7DFRVT4ZWg98ExckfelhbI
	S4Ke3e+RqvVXQv+87CEMefBxc3KvsaqmDEcszTBM9XtfiSEJF8Rmplak5PsoN54Xp1uIDEqHpGI
	lAWeSIUpUCyCmec/Nd6YFKN2TnYZ9VuNIsZa7BN6yVtpMCjI6cx4Yv4Z9LjjK1NnEyw8C4s5jfi
	a9boVtmr0yiwxC4bsi
X-Google-Smtp-Source: AGHT+IFIZF2H0HnNmQiOGLnklkzBl2kWriBVm1AimimcWBGx+3cCd1NWu6NStzB4+jVjvScDMa6lZg==
X-Received: by 2002:a05:622a:4813:b0:4f3:5652:6743 with SMTP id d75a77b69052e-4f4abd79a87mr277964811cf.39.1766592039264;
        Wed, 24 Dec 2025 08:00:39 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a544ba9sm128813236d6.50.2025.12.24.08.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:00:38 -0800 (PST)
Message-ID: <a5abd83b62220e86fd5ce627aa67c7236efb57e3.camel@ndufresne.ca>
Subject: Re: [PATCH v2 19/22] media: rockchip: rga: add feature flags
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
Date: Wed, 24 Dec 2025 11:00:37 -0500
In-Reply-To: <20251203-spu-rga3-v2-19-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-19-989a67947f71@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ZZ4kMHEmgfVAsTpDFN2e"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-ZZ4kMHEmgfVAsTpDFN2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> In preparation to the RGA3 addition add feature flags, which can limit
> the exposed feature set of the video device, like rotating or selection
> support. This is necessary as the RGA3 doesn't initially implement the
> full feature set currently exposed by the driver.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c |=C2=A0 4 ++++
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 23 ++=
+++++++++++++--------
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 7 +++++++
> =C2=A03 files changed, 26 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c
> b/drivers/media/platform/rockchip/rga/rga-hw.c
> index a868a34a1452e..0d1cf911af0d5 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -658,6 +658,10 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_height =3D MAX_HEIGHT,
> =C2=A0	.max_scaling_factor =3D MAX_SCALING_FACTOR,
> =C2=A0	.stride_alignment =3D 4,
> +	.features =3D RGA_FEATURE_FLIP
> +		=C2=A0 | RGA_FEATURE_ROTATE
> +		=C2=A0 | RGA_FEATURE_BG_COLOR
> +		=C2=A0 | RGA_FEATURE_SELECTION,
> =C2=A0
> =C2=A0	.setup_cmdbuf =3D rga_hw_setup_cmdbuf,
> =C2=A0	.start =3D rga_hw_start,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index c991cc64b4b7f..3958e71b8987d 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -162,17 +162,21 @@ static int rga_setup_ctrls(struct rga_ctx *ctx)
> =C2=A0
> =C2=A0	v4l2_ctrl_handler_init(&ctx->ctrl_handler, 4);
> =C2=A0
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			=C2=A0 V4L2_CID_HFLIP, 0, 1, 1, 0);
> +	if (rga->hw->features & RGA_FEATURE_FLIP) {
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				=C2=A0 V4L2_CID_HFLIP, 0, 1, 1, 0);
> =C2=A0
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			=C2=A0 V4L2_CID_VFLIP, 0, 1, 1, 0);
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				=C2=A0 V4L2_CID_VFLIP, 0, 1, 1, 0);
> +	}
> =C2=A0
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			=C2=A0 V4L2_CID_ROTATE, 0, 270, 90, 0);
> +	if (rga->hw->features & RGA_FEATURE_ROTATE)
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				=C2=A0 V4L2_CID_ROTATE, 0, 270, 90, 0);
> =C2=A0
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			=C2=A0 V4L2_CID_BG_COLOR, 0, 0xffffffff, 1, 0);
> +	if (rga->hw->features & RGA_FEATURE_BG_COLOR)
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				=C2=A0 V4L2_CID_BG_COLOR, 0, 0xffffffff, 1, 0);
> =C2=A0
> =C2=A0	if (ctx->ctrl_handler.error) {
> =C2=A0		int err =3D ctx->ctrl_handler.error;
> @@ -489,6 +493,9 @@ static int vidioc_s_selection(struct file *file, void
> *priv,
> =C2=A0	struct rga_frame *f;
> =C2=A0	int ret =3D 0;
> =C2=A0
> +	if (!(rga->hw->features & RGA_FEATURE_SELECTION))
> +		return -EINVAL;
> +
> =C2=A0	f =3D rga_get_frame(ctx, s->type);
> =C2=A0	if (IS_ERR(f))
> =C2=A0		return PTR_ERR(f);
> diff --git a/drivers/media/platform/rockchip/rga/rga.h
> b/drivers/media/platform/rockchip/rga/rga.h
> index 980f70f842317..b9c75b5fda4dc 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -6,6 +6,7 @@
> =C2=A0#ifndef __RGA_H__
> =C2=A0#define __RGA_H__
> =C2=A0
> +#include <linux/bits.h>
> =C2=A0#include <linux/clk.h>
> =C2=A0#include <linux/platform_device.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> @@ -132,6 +133,11 @@ static inline void rga_mod(struct rockchip_rga *rga,=
 u32
> reg, u32 val, u32 mask)
> =C2=A0	rga_write(rga, reg, temp);
> =C2=A0};
> =C2=A0
> +#define RGA_FEATURE_FLIP	BIT(0)
> +#define RGA_FEATURE_ROTATE	BIT(1)
> +#define RGA_FEATURE_BG_COLOR	BIT(2)
> +#define RGA_FEATURE_SELECTION	BIT(3)
> +
> =C2=A0struct rga_hw {
> =C2=A0	const char *card_type;
> =C2=A0	bool has_internal_iommu;
> @@ -140,6 +146,7 @@ struct rga_hw {
> =C2=A0	u32 max_width, max_height;
> =C2=A0	u8 max_scaling_factor;
> =C2=A0	u8 stride_alignment;
> +	u8 features;
> =C2=A0
> =C2=A0	void (*setup_cmdbuf)(struct rga_ctx *ctx);
> =C2=A0	void (*start)(struct rockchip_rga *rga,

--=-ZZ4kMHEmgfVAsTpDFN2e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwOJQAKCRDZQZRRKWBy
9BMlAP9wheqN0kV9AGOEcLeIGF3jdIvsKyUQd/a18l7/P2R5GgEA2QE1kyL14SMl
UIwibdNY/yvhzXGSYKqEEEF8yKlUfwo=
=K5xI
-----END PGP SIGNATURE-----

--=-ZZ4kMHEmgfVAsTpDFN2e--

