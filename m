Return-Path: <devicetree+bounces-247174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBFCC537F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A60C3019BC8
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402B533AD93;
	Tue, 16 Dec 2025 21:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="Fxtkc6Dr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A5633A6FA
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765920847; cv=none; b=d9UJONBXha1FbKYPQp/m3/AwdIrvD3lqSKecSzfNZwbb1G+rVmYGZtg8tzSkMp7DAk7ZYXaw6wJD3s1ZaiOYO0odJFMCY3DxHGV81phCUn7QuRI7rooG536QgeUiGIt37OlQ0vGmt44UtiwT5FkR1d7bPIOuCbTm86/1fjG/2bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765920847; c=relaxed/simple;
	bh=NkyufYG9XRITkVV5ihQ2Nx1xMGH9DDxY4k76MJYAvjE=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=efq44Zy8cE1okryQ52wClacDqTGRNp3uKTPfW9l6yx4fH9dkOWvLnl7rsRvt8pS7Hxgl9XFh6A4GkKoYvnPyGaWxrD016++1ZfJtvc0dWWO5Uj6U3HuOyzQx/lzC3jZvfVfJ6wjrDhLjU5dOcIg6arlnMmajulltosBdCp1WJRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=Fxtkc6Dr; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4ee1879e6d9so60115361cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765920841; x=1766525641; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yoMj7O3JBlKlWKdRq9AgScEk4RkEXLQmYydIZMtYwXk=;
        b=Fxtkc6Dra7x+fkqpatgeJih40quWFPqCsy4gLpVyh+8DL1FUfRZdK75OebXjUEQReU
         YE98PJ6Ao8IgoGsQ/9ni1LeXQ+yQcsT5Fy8ZNcL4V036gSyBEoMNrgroX7NoSxll0CPd
         16qMl0EsbeBpRzNblfrn+rxIK+YnGLRlVLNDpNLzP08YLcnnBeS79xugrpAD+F6frl5k
         j+bOC9Yi6gKkjsffbLacZ5ltB+IL7VZrjb9EFvvegbApsHI7mZJPTZm9+L/cmZK8Fbnk
         VqBdfTQ3BjdEloqxhrhBLbOommc1XoH7B3hniBg0stJ1cAAf1bQFeJd9dXlu9cfO8+IQ
         eYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765920841; x=1766525641;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yoMj7O3JBlKlWKdRq9AgScEk4RkEXLQmYydIZMtYwXk=;
        b=GVF3cgOizMUaZKiA4oSYqMUPXHY10tbEufpjYm+V/axACFrcqvQfK7S9K7mVx8tuEk
         cqr6p5Zkj+WFrajjG3wvgM65E7ZuLX4sXbM7I3EgEv9bhb8jePqwQxaVr1g2ExlJzOfh
         7TThQnSQZom5ToHBc0aFbdV9VUufbAvOlZLIlIRIaqZ1LnwTlvZC45A+C4bVobXgu+g3
         cC1v/mN9IEwoDwyD1H+hA3XFyq9oaFhSYvn/IAYaVX8OXWL2EdeD329V90AWVVQhNZWj
         syigP+9cgsVOS6uZvBj5946nEG2JeDTRek4C+6x9qUIgPOyG1E0x/YXf3X++l5JbppHI
         sVNg==
X-Forwarded-Encrypted: i=1; AJvYcCVUP6bhy3IbrEleJd6uUEtbByPrYniqj6blX0w8xo/xQnFy7DG6Jo9mrOjBG3Ot/orZicMjlsBZSoCN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1B0KjU8cqR+eV9AvOI5u0dgAAiWtUXnIFT9RmOcGjn7XUW8f/
	2ISnyKsQ6vIWppOsoUovz3byer9LA3DwOqarUgjlmBO3FrMjLgUv5UHAIoQEi9VKCJg=
X-Gm-Gg: AY/fxX5OaQ0gsJ6dTiw6MkVuqGPWJ96PYKw9WXlp/AWTPrqAvXnPtdeaP2Matepey4B
	T7kV+UVKxIuegPT4+9997yqj+4t/5SyL2juFcsMwuos6UN6rBL+gHrScENm3msIO8j7DA5jhEys
	r7IIwU0Vx/DuIPGLU+gxWsqYtujYaU1xJxDGIQLX1ZUTBCMVwltpVDsyBP+p6mL9hSPbszEkI5h
	5RaDjR3uuitCN9NpKxrJZYn6CnINskgKZjb0Bvs6C+Yi1kG5SJQzfsmY8Cf7zrTn0zbe9QdzZ8a
	vlciXv4GQC0QDxKl9lgyGzLshD2IHJ8dFaUw+i1bFQBJcVuXpF1Cq/tcDbtVv2fpHF9+no3YYDu
	2r/i7Uy/N2ORB7iSdkqnpgaT3qSb1Ehr436VUmUlvDx9gSRFkQjwRKptAHvZF8h2fZssEI0VUcU
	QNx87aewbOzL8j0oRT
X-Google-Smtp-Source: AGHT+IGciMkKjXhgprAQmCJa8+hd28WD47/DyfWfd2h7PM9Qu46ygLljR/8O6j8oRkaWmFRCqgVd4A==
X-Received: by 2002:a05:622a:4d98:b0:4ed:b25e:a721 with SMTP id d75a77b69052e-4f1d0630b4dmr230302261cf.78.1765920841064;
        Tue, 16 Dec 2025 13:34:01 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f345c31460sm23501851cf.17.2025.12.16.13.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 13:34:00 -0800 (PST)
Message-ID: <8f985a1b2add6fbcba354a0a3d330447380a6ccb.camel@ndufresne.ca>
Subject: Re: [PATCH v11 05/12] media: mediatek: jpeg: fix multi-core clk
 suspend and resume setting
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Kyrie Wu <kyrie.wu@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>,  Mauro Carvalho Chehab	 <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Date: Tue, 16 Dec 2025 16:33:59 -0500
In-Reply-To: <20251202094800.6140-6-kyrie.wu@mediatek.com>
References: <20251202094800.6140-1-kyrie.wu@mediatek.com>
	 <20251202094800.6140-6-kyrie.wu@mediatek.com>
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
	protocol="application/pgp-signature"; boundary="=-PGLe9i9hAw1478RVGiJk"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-PGLe9i9hAw1478RVGiJk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 02 d=C3=A9cembre 2025 =C3=A0 17:47 +0800, Kyrie Wu a =C3=A9crit=C2=
=A0:
> The suspend/resume callback function is defined in the dev_pm_ops
> structure, which is defined in platform_driver. For multiple-core
> architecture, each hardware driver will register a platform_driver
> structure, so it is necessary to add a suspend/resume callback
> function for each hardware to support this operation.
>=20
> Fixes: 934e8bccac95 ("mtk-jpegenc: support jpegenc multi-hardware")
> Fixes: 0fa49df4222f ("media: mtk-jpegdec: support jpegdec multi-hardware"=
)
>=20
> Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>
> ---
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_core.c=C2=A0=C2=A0=C2=A0 | 28 +=
++----
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_dec_hw.c=C2=A0 | 75 +++++++++++=
+++++++-
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_enc_hw.c=C2=A0 | 75 +++++++++++=
+++++++-
> =C2=A03 files changed, 151 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 59fd79c89f88..e45d7e82b8a0 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1122,6 +1122,9 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jp=
eg)
> =C2=A0{
> =C2=A0	int ret;
> =C2=A0
> +	if (jpeg->variant->multi_core)
> +		return;
> +
> =C2=A0	ret =3D clk_bulk_prepare_enable(jpeg->variant->num_clks,
> =C2=A0				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jpeg->variant->clks);
> =C2=A0	if (ret)
> @@ -1130,6 +1133,9 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jp=
eg)
> =C2=A0
> =C2=A0static void mtk_jpeg_clk_off(struct mtk_jpeg_dev *jpeg)
> =C2=A0{
> +	if (jpeg->variant->multi_core)
> +		return;
> +
> =C2=A0	clk_bulk_disable_unprepare(jpeg->variant->num_clks,
> =C2=A0				=C2=A0=C2=A0 jpeg->variant->clks);
> =C2=A0}
> @@ -1658,13 +1664,6 @@ static void mtk_jpegenc_worker(struct work_struct
> *work)
> =C2=A0		goto enc_end;
> =C2=A0	}
> =C2=A0
> -	ret =3D clk_prepare_enable(comp_jpeg[hw_id]->venc_clk.clks->clk);
> -	if (ret) {
> -		dev_err(jpeg->dev, "%s : %d, jpegenc clk_prepare_enable
> fail\n",
> -			__func__, __LINE__);
> -		goto enc_end;
> -	}
> -
> =C2=A0	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0	v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0
> @@ -1762,20 +1761,13 @@ static void mtk_jpegdec_worker(struct work_struct
> *work)
> =C2=A0	jpeg_dst_buf->frame_num =3D ctx->total_frame_num;
> =C2=A0
> =C2=A0	mtk_jpegdec_set_hw_param(ctx, hw_id, src_buf, dst_buf);
> -	ret =3D pm_runtime_get_sync(comp_jpeg[hw_id]->dev);
> +	ret =3D pm_runtime_resume_and_get(comp_jpeg[hw_id]->dev);
> =C2=A0	if (ret < 0) {
> =C2=A0		dev_err(jpeg->dev, "%s : %d, pm_runtime_get_sync fail !!!\n",
> =C2=A0			__func__, __LINE__);
> =C2=A0		goto dec_end;
> =C2=A0	}
> =C2=A0
> -	ret =3D clk_prepare_enable(comp_jpeg[hw_id]->jdec_clk.clks->clk);
> -	if (ret) {
> -		dev_err(jpeg->dev, "%s : %d, jpegdec clk_prepare_enable
> fail\n",
> -			__func__, __LINE__);
> -		goto clk_end;
> -	}
> -
> =C2=A0	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0	v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0
> @@ -1785,7 +1777,7 @@ static void mtk_jpegdec_worker(struct work_struct *=
work)
> =C2=A0				 &dst_buf->vb2_buf, &fb)) {
> =C2=A0		dev_err(jpeg->dev, "%s : %d, mtk_jpeg_set_dec_dst fail\n",
> =C2=A0			__func__, __LINE__);
> -		goto setdst_end;
> +		goto set_dst_fail;
> =C2=A0	}
> =C2=A0
> =C2=A0	schedule_delayed_work(&comp_jpeg[hw_id]->job_timeout_work,
> @@ -1807,9 +1799,7 @@ static void mtk_jpegdec_worker(struct work_struct *=
work)
> =C2=A0
> =C2=A0	return;
> =C2=A0
> -setdst_end:
> -	clk_disable_unprepare(comp_jpeg[hw_id]->jdec_clk.clks->clk);
> -clk_end:
> +set_dst_fail:
> =C2=A0	pm_runtime_put(comp_jpeg[hw_id]->dev);
> =C2=A0dec_end:
> =C2=A0	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> index 84d12eea35f7..5f1557dafad6 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> @@ -540,14 +540,13 @@ static void mtk_jpegdec_timeout_work(struct work_st=
ruct
> *work)
> =C2=A0	v4l2_m2m_buf_copy_metadata(src_buf, dst_buf, true);
> =C2=A0
> =C2=A0	mtk_jpeg_dec_reset(cjpeg->reg_base);
> -	clk_disable_unprepare(cjpeg->jdec_clk.clks->clk);
> -	pm_runtime_put(cjpeg->dev);
> =C2=A0	cjpeg->hw_state =3D MTK_JPEG_HW_IDLE;
> =C2=A0	atomic_inc(&master_jpeg->hw_rdy);
> =C2=A0	wake_up(&master_jpeg->hw_wq);
> =C2=A0	v4l2_m2m_buf_done(src_buf, buf_state);
> =C2=A0	mtk_jpegdec_put_buf(cjpeg);
> =C2=A0	jpeg_buf_queue_dec(ctx);
> +	pm_runtime_put(cjpeg->dev);
> =C2=A0}
> =C2=A0
> =C2=A0static irqreturn_t mtk_jpegdec_hw_irq_handler(int irq, void *priv)
> @@ -589,12 +588,11 @@ static irqreturn_t mtk_jpegdec_hw_irq_handler(int i=
rq,
> void *priv)
> =C2=A0	v4l2_m2m_buf_done(src_buf, buf_state);
> =C2=A0	mtk_jpegdec_put_buf(jpeg);
> =C2=A0	jpeg_buf_queue_dec(ctx);
> -	pm_runtime_put(ctx->jpeg->dev);
> -	clk_disable_unprepare(jpeg->jdec_clk.clks->clk);
> =C2=A0
> =C2=A0	jpeg->hw_state =3D MTK_JPEG_HW_IDLE;
> =C2=A0	wake_up(&master_jpeg->hw_wq);
> =C2=A0	atomic_inc(&master_jpeg->hw_rdy);
> +	pm_runtime_put(jpeg->dev);
> =C2=A0
> =C2=A0	return IRQ_HANDLED;
> =C2=A0}
> @@ -677,15 +675,84 @@ static int mtk_jpegdec_hw_probe(struct platform_dev=
ice
> *pdev)
> =C2=A0
> =C2=A0	platform_set_drvdata(pdev, dev);
> =C2=A0	pm_runtime_enable(&pdev->dev);
> +	ret =3D devm_clk_bulk_get(dev->dev,
> +				jpegdec_clk->clk_num,
> +				jpegdec_clk->clks);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to init clk\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void mtk_jpeg_clk_on(struct mtk_jpegdec_comp_dev *jpeg)
> +{
> +	int ret;
> +
> +	ret =3D clk_bulk_prepare_enable(jpeg->jdec_clk.clk_num,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jpeg->jdec_clk.clks);
> +	if (ret)
> +		dev_err(jpeg->dev, "%s : %d, jpegdec clk_prepare_enable
> fail\n",
> +			__func__, __LINE__);
> +}
> +
> +static void mtk_jpeg_clk_off(struct mtk_jpegdec_comp_dev *jpeg)
> +{
> +	clk_bulk_disable_unprepare(jpeg->jdec_clk.clk_num,
> +				=C2=A0=C2=A0 jpeg->jdec_clk.clks);
> +}
> +
> +static __maybe_unused int mtk_jpegdec_pm_suspend(struct device *dev)

Its used its passed to mtk_jpegdec_pm_ops structure. Same below. Unless you=
 had
the intention to ifdef that structure and you forgot.

> +{
> +	struct mtk_jpegdec_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	mtk_jpeg_clk_off(jpeg);
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static __maybe_unused int mtk_jpegdec_pm_resume(struct device *dev)
> +{
> +	struct mtk_jpegdec_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	mtk_jpeg_clk_on(jpeg);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused int mtk_jpegdec_suspend(struct device *dev)
> +{
> +	struct mtk_jpegdec_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	v4l2_m2m_suspend(jpeg->master_dev->m2m_dev);
> +	return pm_runtime_force_suspend(dev);
> +}
> +
> +static __maybe_unused int mtk_jpegdec_resume(struct device *dev)
> +{
> +	struct mtk_jpegdec_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret =3D pm_runtime_force_resume(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	v4l2_m2m_resume(jpeg->master_dev->m2m_dev);
> +	return ret;
> +}
> +
> +static const struct dev_pm_ops mtk_jpegdec_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(mtk_jpegdec_suspend, mtk_jpegdec_resume)
> +	SET_RUNTIME_PM_OPS(mtk_jpegdec_pm_suspend, mtk_jpegdec_pm_resume,
> NULL)
> +};
> +
> =C2=A0static struct platform_driver mtk_jpegdec_hw_driver =3D {
> =C2=A0	.probe =3D mtk_jpegdec_hw_probe,
> =C2=A0	.driver =3D {
> =C2=A0		.name =3D "mtk-jpegdec-hw",
> =C2=A0		.of_match_table =3D mtk_jpegdec_hw_ids,
> +		.pm=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &mtk_jpegdec_pm_ops,
> =C2=A0	},
> =C2=A0};
> =C2=A0
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> index 1862444f35f5..785db5ba4770 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> @@ -271,14 +271,13 @@ static void mtk_jpegenc_timeout_work(struct work_st=
ruct
> *work)
> =C2=A0	v4l2_m2m_buf_copy_metadata(src_buf, dst_buf, true);
> =C2=A0
> =C2=A0	mtk_jpeg_enc_reset(cjpeg->reg_base);
> -	clk_disable_unprepare(cjpeg->venc_clk.clks->clk);
> -	pm_runtime_put(cjpeg->dev);
> =C2=A0	cjpeg->hw_state =3D MTK_JPEG_HW_IDLE;
> =C2=A0	atomic_inc(&master_jpeg->hw_rdy);
> =C2=A0	wake_up(&master_jpeg->hw_wq);
> =C2=A0	v4l2_m2m_buf_done(src_buf, buf_state);
> =C2=A0	mtk_jpegenc_put_buf(cjpeg);
> =C2=A0	jpeg_buf_queue_enc(ctx);
> +	pm_runtime_put(cjpeg->dev);
> =C2=A0}
> =C2=A0
> =C2=A0static irqreturn_t mtk_jpegenc_hw_irq_handler(int irq, void *priv)
> @@ -313,12 +312,11 @@ static irqreturn_t mtk_jpegenc_hw_irq_handler(int i=
rq,
> void *priv)
> =C2=A0	v4l2_m2m_buf_done(src_buf, buf_state);
> =C2=A0	mtk_jpegenc_put_buf(jpeg);
> =C2=A0	jpeg_buf_queue_enc(ctx);
> -	pm_runtime_put(ctx->jpeg->dev);
> -	clk_disable_unprepare(jpeg->venc_clk.clks->clk);
> =C2=A0
> =C2=A0	jpeg->hw_state =3D MTK_JPEG_HW_IDLE;
> =C2=A0	wake_up(&master_jpeg->hw_wq);
> =C2=A0	atomic_inc(&master_jpeg->hw_rdy);
> +	pm_runtime_put(jpeg->dev);
> =C2=A0
> =C2=A0	return IRQ_HANDLED;
> =C2=A0}
> @@ -399,15 +397,84 @@ static int mtk_jpegenc_hw_probe(struct platform_dev=
ice
> *pdev)
> =C2=A0
> =C2=A0	platform_set_drvdata(pdev, dev);
> =C2=A0	pm_runtime_enable(&pdev->dev);
> +	ret =3D devm_clk_bulk_get(dev->dev,
> +				jpegenc_clk->clk_num,
> +				jpegenc_clk->clks);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to init clk\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void mtk_jpeg_clk_on(struct mtk_jpegenc_comp_dev *jpeg)
> +{
> +	int ret;
> +
> +	ret =3D clk_bulk_prepare_enable(jpeg->venc_clk.clk_num,
> +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 jpeg->venc_clk.clks);
> +	if (ret)
> +		dev_err(jpeg->dev, "%s : %d, jpegenc clk_prepare_enable
> fail\n",
> +			__func__, __LINE__);
> +}
> +
> +static void mtk_jpeg_clk_off(struct mtk_jpegenc_comp_dev *jpeg)
> +{
> +	clk_bulk_disable_unprepare(jpeg->venc_clk.clk_num,
> +				=C2=A0=C2=A0 jpeg->venc_clk.clks);
> +}
> +
> +static __maybe_unused int mtk_jpegenc_pm_suspend(struct device *dev)
> +{
> +	struct mtk_jpegenc_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	mtk_jpeg_clk_off(jpeg);

This is the only call to that function, move the code here.

> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static __maybe_unused int mtk_jpegenc_pm_resume(struct device *dev)
> +{
> +	struct mtk_jpegenc_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	mtk_jpeg_clk_on(jpeg);

This is the only call to that function, move the code here. Decides if the =
ret
value should be passed or not too, add a comment if not.

Its worrying not too, since usually if the clock are not running, we risk
hanging the CPU writing to registers.

> +
> +	return 0;
> +}
> +
> +static __maybe_unused int mtk_jpegenc_suspend(struct device *dev)
> +{
> +	struct mtk_jpegenc_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	v4l2_m2m_suspend(jpeg->master_dev->m2m_dev);
> +	return pm_runtime_force_suspend(dev);
> +}
> +
> +static __maybe_unused int mtk_jpegenc_resume(struct device *dev)
> +{
> +	struct mtk_jpegenc_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret =3D pm_runtime_force_resume(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	v4l2_m2m_resume(jpeg->master_dev->m2m_dev);
> +	return ret;
> +}
> +
> +static const struct dev_pm_ops mtk_jpegenc_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(mtk_jpegenc_suspend, mtk_jpegenc_resume)
> +	SET_RUNTIME_PM_OPS(mtk_jpegenc_pm_suspend, mtk_jpegenc_pm_resume,
> NULL)
> +};
> +
> =C2=A0static struct platform_driver mtk_jpegenc_hw_driver =3D {
> =C2=A0	.probe =3D mtk_jpegenc_hw_probe,
> =C2=A0	.driver =3D {
> =C2=A0		.name =3D "mtk-jpegenc-hw",
> =C2=A0		.of_match_table =3D mtk_jpegenc_drv_ids,
> +		.pm =3D &mtk_jpegenc_pm_ops,
> =C2=A0	},
> =C2=A0};
> =C2=A0

Looks like the right way though,looking forward an update.

Nicolas

--=-PGLe9i9hAw1478RVGiJk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUHQRwAKCRDZQZRRKWBy
9BzFAQCRlmwKSJ3LHJANyH5FKarZdW91H3WPUx26AqkqlPJTwgEA37oenqoP550F
u67JsH0+OTBoRQlh3aeaZ/J692kRBww=
=3uNs
-----END PGP SIGNATURE-----

--=-PGLe9i9hAw1478RVGiJk--

