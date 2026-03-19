Return-Path: <devicetree+bounces-277994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACxvDwtEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:44:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BFE2D1355
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60F433008684
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C0B37FF78;
	Thu, 19 Mar 2026 18:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="Y66ctBLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB9A34EF01
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945852; cv=none; b=EayhgS0CkMzRKOIsL7WUTPBzyFxY5KMBtMY5TnwMV4M4MmGN8grCdTrSP0v7F/j3MsNNutfFWO/+xtIDCCt2I8fCKEGJoKSRhm3ZI5CBljqyWBb5Sp9zJqW8+vvUDc+AXSYeHgUriJrx1pZmZQ+CI7D4ASuR5GYBYXMLXz+WztI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945852; c=relaxed/simple;
	bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qzY4Bp5VqeWcMuZEXxYild9tDfb4Zua4dpNqyts4OYSJqurlrKPwSepF/WrZRGojLilLb6ed8uA+dgqgcrnmifAr/dBYH6mJJ95ta4y6sGjgXj6ukR9KdunEkStD8/eeu2NVkm7wBlzQj41Uak5YjB3YHMh7mIYu37glh7t7vak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=Y66ctBLv; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8cb3bae8d3eso95200985a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773945849; x=1774550649; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=;
        b=Y66ctBLvg0J5Q8lynTIm57ugS7uF8DfmTrdzDU5IRZ78uo7SSOQMcCWdLmm/h2cJon
         CyrMkEjyezhuVoLarwKMHvIzac7gsMBxfWQkZ3FAyEwO9gris6Wf159izmiEopGYMS6t
         UoloXAi+YZR3I/EWMx7QGnAyhFu4Zi9dymvRCpZArFNZ0ZCNlCRGTxiiXI4T2RMU6IM+
         ym8sXbJA0cpuKkybnigjGjLDz14PlEpB/9PcrWdIn539fSeJFM+Q2nvhfYGSa3QEUaF+
         o4ZLYMkKfZ3ShhzlDKRGyi2HIwa1ZRKTKyqM103Zw4zr9eJrGSaXXS0WDEdG90FmjcYG
         P2vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945849; x=1774550649;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=;
        b=NMQFP0Pf11LL4+xDNxpfODQ3ufgjxEjBouhU8x/XQB8o+XtSR3hP6TAp5QOOkAz+Ib
         ilXorQ+qiqyrRp4W+NQNg1XFyggYCUd2JNC3HqlB54iR5n50pf+cNauJ9ELbPF2kcLoR
         Px5E1Tdjqmzpz8Ha8xO2Iam8qNIPfb5f4cQjFFogl0aXZTTei4YR9SxNzDmc6dNA1Nx5
         ULXhdbCFzqYU0dwsP69DY6e1IrlPoN1Oo+QPsu0shgyaHejfC6mv4WiCcFTyP9buWTpr
         OzPiGj8B2nla2rFQzO7JXawmS03ob3beiN0nvqyy9Lr0TcXbmRKO5HTFOB53/0C63Lpr
         nQ6A==
X-Forwarded-Encrypted: i=1; AJvYcCXCHg9rq5NLkyQn8vvtGx/UrsIaa4bS542kJatYLe+omt6yDgE3RARUUeR+TaJpJZF1H/g6buxjU8rG@vger.kernel.org
X-Gm-Message-State: AOJu0YwavPHoVcVz2QzW/jYEwCDvTcz6lAXvxpqFOBoDcUDPWbuePOpU
	GK2F8PE3VPYToa0g+jaLQhv97MHslzIhYfTeNnDq79p79I5wYPGg4I0F7IsHiC0JCBE=
X-Gm-Gg: ATEYQzwNPFOo9Y1eox+YuLDedxre/mBHInpe11wWmZTBLL6LafYXBGvYwV0Rljp4G14
	2420VafrZDnL6TcIruUCrQkHVPvmDk5Sz+qzunDNgPLFc2962DvzntG6MV57EabXY9VLRUqXKua
	Jyu7m+cyqZXD84URGg0vNYGXNpT257DxK6Q1S9GiH4s6MobGkgZf+UeSVlyiBmGPoOSm18qwCbA
	yR98a07NkQR+TNOxgA/bGH0GW31QM6zqHKgzbvqmLsS7oXx+kqcFVc5mE/o+BdsYsQm3q2jn7+F
	zqRoVKAEu7SnvzH/CyEu5+zuLIvXPFRoYLKvYuAwwRp1B+O2fM3pt9bzMuwbis//0T4++UR7tH0
	FQuwUT8NL+LMb7ficjuUgzQvdrN9bU+v0TfvWdXOSHGPkaId/GUcCT0Cj685pCXRgC2rUcKCIna
	bgou+jnrkhOHkt5MZK5Q31Nf195U9U
X-Received: by 2002:a05:620a:458d:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cfc7b65a1cmr52317385a.8.1773945849126;
        Thu, 19 Mar 2026 11:44:09 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfacdaeb88sm611790085a.5.2026.03.19.11.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:44:08 -0700 (PDT)
Message-ID: <fc7b74095548d9c13a92d2944c1f5ca9f5c7dba5.camel@ndufresne.ca>
Subject: Re: [PATCH v3 01/27] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
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
Date: Thu, 19 Mar 2026 14:44:06 -0400
In-Reply-To: <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-cKylSNn6LcAUhVrxOu1V"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277994-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,iotwrt.com:email]
X-Rspamd-Queue-Id: 47BFE2D1355
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--=-cKylSNn6LcAUhVrxOu1V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add a new compatible for the RGA3 (Raster Graphic Acceleration 3)
> peripheral found on the RK3588 SoC. Also specify an iommu property,
> as the RGA3 contains the generic rockchip iommu. The RGA2 also has
> an iommu, but it's specific to the RGA2.
>=20
> The existing binding refers to the RGA2 peripheral. The RK3588
> contains one RGA2 core and two RGA3 cores. Both feature a similar
> functionality of scaling, cropping and rotating of up to two input
> images into one output image. Key differences of the RGA3 are:
>=20
> - supports 10bit YUV output formats
> - supports 8x8 tiles and FBCD as inputs and outputs
> - supports BT2020 color space conversion
> - max output resolution of (8192-64)x(8192-64)
> - MMU can map up to 32G DDR RAM
> - fully planar formats (3 planes) are not supported
> - max scale up/down factor of 8 (RGA2 allows up to 16)

Nothing import, but some more details on the differences can be found here.

https://github.com/sravansenthiln1/rga-demos/tree/main

They also removed from RGA3 the neural network quantization support
(CLIP((source + offset) * scale). I suppose that integer tensors are fading
away, and the accelerator does not do floats.

One things that isn't clear, even in the upstream RGA2 implementation is if=
 the
accelerator is cache coherent. When I study the BSP usage of RGA2, they
integrate the RGA2 directly into GStreamer software video converter. They d=
on't
do anything to flush the cache, indicating that RGA2 is most probably cache
coherent.

Do you know if RGA3 has the same feature or if this is one of the differenc=
e ?
Typically, RKIOMMU users are not, in RGA2, a completely custom mmu was used=
 (and
implemented inside the driver, as standalone).

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0.../devicetree/bindings/media/rockchip-rga.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 19 ++++++++++++++++++-
> =C2=A01 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/=
Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index ac17cda65191b..7735d8794c719 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -9,7 +9,9 @@ title: Rockchip 2D raster graphic acceleration controller=
 (RGA)
> =C2=A0description:
> =C2=A0=C2=A0 RGA is a standalone 2D raster graphic acceleration unit. It =
accelerates 2D
> =C2=A0=C2=A0 graphics operations, such as point/line drawing, image scali=
ng, rotation,
> -=C2=A0 BitBLT, alpha blending and image blur/sharpness.
> +=C2=A0 BitBLT, alpha blending and image blur/sharpness. There exist two =
variants
> +=C2=A0 named RGA2 and RGA3 that differ in the supported inputs/output fo=
rmats,
> +=C2=A0 the attached IOMMU and the supported operations on the input.
> =C2=A0
> =C2=A0maintainers:
> =C2=A0=C2=A0 - Jacob Chen <jacob-chen@iotwrt.com>
> @@ -20,6 +22,7 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3288-rga
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3399-rga
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3588-rga3
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - items:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - rockchip,rk3228-rga
> @@ -45,6 +48,9 @@ properties:
> =C2=A0=C2=A0 power-domains:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1
> =C2=A0
> +=C2=A0 iommus:
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> =C2=A0=C2=A0 resets:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 3
> =C2=A0
> @@ -54,6 +60,17 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: axi
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: ahb
> =C2=A0
> +allOf:
> +- if:
> +=C2=A0=C2=A0=C2=A0 properties:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - roc=
kchip,rk3588-rga3
> +=C2=A0 then:
> +=C2=A0=C2=A0=C2=A0 required:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - iommus
> +

You really can't use this chip with CMA ?

Nicolas

> =C2=A0required:
> =C2=A0=C2=A0 - compatible
> =C2=A0=C2=A0 - reg

--=-cKylSNn6LcAUhVrxOu1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxD9gAKCRDZQZRRKWBy
9MTmAP9/UjJig3fQpTvjDlz3tiARS93/hVZoNEUjD3yE0V+9qAEAti3yCIjKjcaI
z1e1wbvEi3mfHC8yVbOrjPYReUxynQQ=
=46hR
-----END PGP SIGNATURE-----

--=-cKylSNn6LcAUhVrxOu1V--

