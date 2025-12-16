Return-Path: <devicetree+bounces-247169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58621CC522A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6DA43040A45
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 20:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9D5328B66;
	Tue, 16 Dec 2025 20:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="vNATYHFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E9E321442
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 20:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765918655; cv=none; b=VbCYAqkfhFA3rNKv031d2GdrpfzkqYgQgcRHVYfWkhY5xoUajZAS+GVxVgmKCH0i7AzaVeG1mJoRF5lamajFJqZzauPiKOxYQZarcMFnegzm0TSN6UWMmb35LKL+ummzebccUQeF9hdKM4UCkKtdD70ooQTcCS93iNQ7ocWSgbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765918655; c=relaxed/simple;
	bh=wSxcZpjZ9Jt15hRjtiUa3UBOvlUrj6TIwKLRLQVdxiM=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PhQvLKihgjPm0li6Cy3gtheEi8MzjqA9E6vh1xUkKTPrcOBeH7utJaCq3n2rn/4l9UDSemjhAYu74yrshgw+G6wUut9oSujiKJN7vdU2mJ7e4HAnYtJ4S/6ZkJ5PnG8DtsApHquKCwJbRXUKVa3Dqfv+BYIN3XeSmNu/0TaTepU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=vNATYHFh; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88a37cb5afdso35043236d6.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765918650; x=1766523450; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NI+fFEGZEuQSR+8e8anlQQzkl/ir4KKuZpATc87A3Nc=;
        b=vNATYHFhn/llFUpd3TAbw/2avgwtNNreunba5e4FyQ0Ep1RZNChDwgae1+YQS9zZSI
         obtbJ4mhl5KDTKDLRKO8VDpAJE9fs8brEBDVWptvDbdr+R269+9zmN5FJlqIGMCmWJZJ
         iQ2zrMGfhsHrMTLlBcy2p3g/3IoFsTkQ5GfHId7XQk2u1AHV+AbU3PbQcO11KDeeS+RF
         DiPpTHx2RoyIKvyiq1dYBAG9yfZK3Jae+iDKxtZesPB2Xx1Ucmp+EOdbMa2HDlzi7STw
         YcBEcX2pghfUjJ0gmxLv83ntXCRxzKQksAJlIBOUMt44ALkV3urOfsCruXU/1tSJLQu6
         rWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765918650; x=1766523450;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NI+fFEGZEuQSR+8e8anlQQzkl/ir4KKuZpATc87A3Nc=;
        b=i+BTpkm8egG2Jqv9nRnGkPdy+09K8AEYL245HXAmGcE4KPwtlyOtPxSN5kx7O9zcPA
         I7adXl2l/TVRxm4lPFmkPJVbd2E6X8Fjb+Vy563AcgMXndGM5g6l/NowmFkrfzHQ1Vk4
         hwlUKiANiW9rYaGPInNyg+kiZAq3Ov2EJDyP33Lr7VLlW++HNqD0sX6sVzxq1GttlIAn
         86Fnvb7hfQwQnEbF+Q9vxM68D3BJIa5anQca8LQS1pokW7fkrDiSumjQdQxGux9D8LVh
         1QDAcucUQ2tjHE9U75EWscEHB/qderH7cgwOdB4AGLG5QdPtie1547W9sNI7/9sfQB1B
         XPMw==
X-Forwarded-Encrypted: i=1; AJvYcCUpQHH8mPBPjIMkA9EYOGdOXwlxD++/uFJt27Fj2p/U3NEGYO5DvIMRfBAdyZ1hXQUEq+YCRtQar13p@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1peOoiReh18Fjx3XJDmAhXuEdFgQG1AwVLNamYjFVlZ9h3LMU
	5anzmCnmxL7zIJXQb2T4u/qAULD9hSILfahoGESMRfzsTAdUyBtAlrUhVgHucGWFMfA=
X-Gm-Gg: AY/fxX5CmB3FW9Kw6WmFjFNGyiTUvTY4JEnZuRb3L/HonFYRhTxx0Aw4AHlHoqr9Cpv
	H/z0TPD7Yk2ZJncJ5WiVWsvQY3lbqzEB0nIh2tOzS/hwFDSPpcjyv8Ewn/JRq3RbwsQ0baT2p95
	keUTW+Az6FPlVlbJMCDLMQXHqrwWWSkCV8p4+d6n1tTqA28wG42zO6YZs3sBYtwZYLpW9u0xmrg
	eUlchZQsGJk31gBxG4KsYtyNwoWRRFpoarPlMUMibMYh6eqRE9wpjHS0eZu+exIL+KkN82sLcSA
	R1xmpqXlDr8VrRyt2xEMKYbWbdB5+Un5S/kygujNx7PmeY8d5oJhrz5N4t3ZVuBnEpxZPuegzvs
	j1JtOh2VfAFbGpRBc8pkKPrsNgwH5aolDzWlhmnmWWu12x/XMbMWhgnnOYTBMZL99U7h6P6xUNL
	+nUzJZLbuJN2SbxuQoQh8tw3B2nZc=
X-Google-Smtp-Source: AGHT+IFebuDiAx1fQCJ1bJ+HCUvcn2MaYOSV8hypD23tenWABYQbV3BpMm8itf3ay4PR1vwFnMW/dA==
X-Received: by 2002:a05:6214:328c:b0:882:36d6:e5c1 with SMTP id 6a1803df08f44-8887f30ac93mr209640086d6.29.1765918650452;
        Tue, 16 Dec 2025 12:57:30 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88993b4204asm81707196d6.7.2025.12.16.12.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 12:57:29 -0800 (PST)
Message-ID: <cd4c9c6f89d2ad506113745f4273ff6e6b65c75a.camel@ndufresne.ca>
Subject: Re: [PATCH v11 01/12] media: mediatek: jpeg: fix jpeg hw count
 setting
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Kyrie Wu <kyrie.wu@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>,  Mauro Carvalho Chehab	 <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Date: Tue, 16 Dec 2025 15:57:27 -0500
In-Reply-To: <20251202094800.6140-2-kyrie.wu@mediatek.com>
References: <20251202094800.6140-1-kyrie.wu@mediatek.com>
	 <20251202094800.6140-2-kyrie.wu@mediatek.com>
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
	protocol="application/pgp-signature"; boundary="=-aSUcQgXs1+0RJXU1/VOk"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-aSUcQgXs1+0RJXU1/VOk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 02 d=C3=A9cembre 2025 =C3=A0 17:47 +0800, Kyrie Wu a =C3=A9crit=C2=
=A0:
> Different ICs have different amounts of hardware,
> use a variable to set the amount of hardware.

Did you mean different amount of cores ? The use of "hardware" is strange i=
n
this description.

>=20
> Fixes: 934e8bccac95 ("mtk-jpegenc: support jpegenc multi-hardware")
> Fixes: 0fa49df4222f ("media: mtk-jpegdec: support jpegdec multi-hardware"=
)

Its not clear from your description if this is in preparation of MT8196 or =
an
actual fix. If its in preparation of, drop this, if it fixes some existing =
SoC,
please tell use which one. And tell us how it breaks without this fix.

regards,
Nicolas

>=20
> Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> ---
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c=C2=A0=C2=A0 | =
8 ++++----
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h=C2=A0=C2=A0 | =
2 ++
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c | 1 +
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c | 1 +
> =C2=A04 files changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 6268d651bdcf..6a7e01130f1c 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1467,7 +1467,7 @@ static int mtk_jpegenc_get_hw(struct mtk_jpeg_ctx *=
ctx)
> =C2=A0	int i;
> =C2=A0
> =C2=A0	spin_lock_irqsave(&jpeg->hw_lock, flags);
> -	for (i =3D 0; i < MTK_JPEGENC_HW_MAX; i++) {
> +	for (i =3D 0; i < jpeg->max_hw_count; i++) {
> =C2=A0		comp_jpeg =3D jpeg->enc_hw_dev[i];
> =C2=A0		if (comp_jpeg->hw_state =3D=3D MTK_JPEG_HW_IDLE) {
> =C2=A0			hw_id =3D i;
> @@ -1514,7 +1514,7 @@ static int mtk_jpegdec_get_hw(struct mtk_jpeg_ctx *=
ctx)
> =C2=A0	int i;
> =C2=A0
> =C2=A0	spin_lock_irqsave(&jpeg->hw_lock, flags);
> -	for (i =3D 0; i < MTK_JPEGDEC_HW_MAX; i++) {
> +	for (i =3D 0; i < jpeg->max_hw_count; i++) {
> =C2=A0		comp_jpeg =3D jpeg->dec_hw_dev[i];
> =C2=A0		if (comp_jpeg->hw_state =3D=3D MTK_JPEG_HW_IDLE) {
> =C2=A0			hw_id =3D i;
> @@ -1597,7 +1597,7 @@ static void mtk_jpegenc_worker(struct work_struct *=
work)
> =C2=A0		jpeg_work);
> =C2=A0	struct mtk_jpeg_dev *jpeg =3D ctx->jpeg;
> =C2=A0
> -	for (i =3D 0; i < MTK_JPEGENC_HW_MAX; i++)
> +	for (i =3D 0; i < jpeg->max_hw_count; i++)
> =C2=A0		comp_jpeg[i] =3D jpeg->enc_hw_dev[i];
> =C2=A0	i =3D 0;
> =C2=A0
> @@ -1692,7 +1692,7 @@ static void mtk_jpegdec_worker(struct work_struct *=
work)
> =C2=A0	struct mtk_jpeg_fb fb;
> =C2=A0	unsigned long flags;
> =C2=A0
> -	for (i =3D 0; i < MTK_JPEGDEC_HW_MAX; i++)
> +	for (i =3D 0; i < jpeg->max_hw_count; i++)
> =C2=A0		comp_jpeg[i] =3D jpeg->dec_hw_dev[i];
> =C2=A0	i =3D 0;
> =C2=A0
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> index 02ed0ed5b736..6be5cf30dea1 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> @@ -212,6 +212,7 @@ struct mtk_jpegdec_comp_dev {
> =C2=A0 * @reg_decbase:	jpg decode register base addr
> =C2=A0 * @dec_hw_dev:	jpg decode hardware device
> =C2=A0 * @hw_index:		jpg hw index
> + * @max_hw_count:	jpeg hw-core count
> =C2=A0 */
> =C2=A0struct mtk_jpeg_dev {
> =C2=A0	struct mutex		lock;
> @@ -234,6 +235,7 @@ struct mtk_jpeg_dev {
> =C2=A0	void __iomem *reg_decbase[MTK_JPEGDEC_HW_MAX];
> =C2=A0	struct mtk_jpegdec_comp_dev *dec_hw_dev[MTK_JPEGDEC_HW_MAX];
> =C2=A0	atomic_t hw_index;
> +	u32 max_hw_count;
> =C2=A0};
> =C2=A0
> =C2=A0/**
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c b/dri=
vers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> index e78e1d11093c..a1e54715cb7e 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> @@ -664,6 +664,7 @@ static int mtk_jpegdec_hw_probe(struct platform_devic=
e *pdev)
> =C2=A0	master_dev->dec_hw_dev[i] =3D dev;
> =C2=A0	master_dev->reg_decbase[i] =3D dev->reg_base;
> =C2=A0	dev->master_dev =3D master_dev;
> +	master_dev->max_hw_count++;
> =C2=A0
> =C2=A0	platform_set_drvdata(pdev, dev);
> =C2=A0	pm_runtime_enable(&pdev->dev);
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c b/dri=
vers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> index 9ab27aee302a..28d05909c96f 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> @@ -386,6 +386,7 @@ static int mtk_jpegenc_hw_probe(struct platform_devic=
e *pdev)
> =C2=A0	master_dev->enc_hw_dev[i] =3D dev;
> =C2=A0	master_dev->reg_encbase[i] =3D dev->reg_base;
> =C2=A0	dev->master_dev =3D master_dev;
> +	master_dev->max_hw_count++;
> =C2=A0
> =C2=A0	platform_set_drvdata(pdev, dev);
> =C2=A0	pm_runtime_enable(&pdev->dev);

--=-aSUcQgXs1+0RJXU1/VOk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUHHtwAKCRDZQZRRKWBy
9NdGAP4tOcZwNQQTymlNx94MWUKA4PjZ+mQqLOMHCXr7idoEXAD4zKTg2quujgCl
TfD03rQO+Y+ho+zj5A3QHmGFpNjmCg==
=sWoq
-----END PGP SIGNATURE-----

--=-aSUcQgXs1+0RJXU1/VOk--

