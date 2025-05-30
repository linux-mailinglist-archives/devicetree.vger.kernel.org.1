Return-Path: <devicetree+bounces-181887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5CCAC94E6
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:43:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E03191BC615E
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E7A23D287;
	Fri, 30 May 2025 17:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="ik8pxQvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F571DDA1E
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627010; cv=none; b=UILefqNq3bDF8c2Mr2VrhmgvgrDlK8VzzNSkBloftz3oQDarK3neN9tgrJcpVheqQmVAw0Lr1cR34Wksc1qjteE9JOw7dNLfyNrsga+to5/O/JDtQvTNHS3VdUqy34edunQpg8+X14BfWXQ6tjg52ibmhaJC0ly3lK/CxGgxjAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627010; c=relaxed/simple;
	bh=dgde/hm/N9Jq9+T2j89gusjOZI2jhU5AquYbJxKzPn8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=N87DgEcRWej7iRtRD+GYuLN/4uBTXkvL7LTTzVn4IFClsRAMUKx6tQ/I2HTsSD2zfjBR5c7onw+UMT/Hm9ep1+O3N7U8tVu+09j/x7OmqNR7Sgwg+Ev1XhP63ZlE2HXggUXlf5Q1cFVjeTgOl9CXaRsrrIDnSzGeKz1xFAycmu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=ik8pxQvf; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7d098f7bd77so238475285a.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1748627008; x=1749231808; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CugiFgaF8cV3/dThOCPe5O8k9DqeJCQ4MP4Ml/URQdU=;
        b=ik8pxQvfI/EFDGf9oQs1de7B9JiN2bSgdk1XCfg4T+Mc9pjM/O9Kje6OsCSNJPwQ1/
         Cgm4PXfdYMpWWNmdvKAWuWNpXjO4zmneayUB2YifhEDuvX0TEUaInDdnzOSgV3KMr8JB
         lXQYf9rrSFLricxZkBpngz1lvIDdHEvuMzd80bQ2vwm6Dc6Op5aUwqJ+jVtKmwAwv7dz
         IyPbVQ6/sJFEVCykDg+N4zHCFm27od7wdT9mPJQjSmmq0UzbS58g83XaJBUIR5PEWydO
         iqPV8gtDAq21VXUlYoszzSVlcUfwF0RBQChhOntCMjF9MS8aXamHsIc4s0ZC2RfhfNP0
         pShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748627008; x=1749231808;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CugiFgaF8cV3/dThOCPe5O8k9DqeJCQ4MP4Ml/URQdU=;
        b=N7hD3jawjwyMnfv4nUpZIvymwvJKIcvgLa5ORLwmkwmZ9Yt99n8TTjw7cEgp5iE1Y3
         O6HE6q0eIyZb4A0hFW/alWO2BWooDk5kzMaE//aoDl4gOE6CvqAAtvN+AzM4fLYPBIIN
         +LG0ZLU4vh501a/urbFxFjSBYO+JWURoO3PU14lfLEyDGEPxqYoHBuEhXqQntq58C0xe
         Ei6riCRLDJGM2d4I8+W2f48GNY4YiPbGlHwwIZE7owQ9fALNCAqoHcs8NLoO7v9IXIh0
         1nbnCBVzJJxgj57QKIzRmGhQFdfYlDjfOc9dku1RTsoLMB5rk58VpB6Wyn1GU8fOH+4m
         QFqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6VasmXNah57xM5gcrqQo1y7HOeieKunOdBeuCEWb3axMg/4KBpxv7B1mCEQCWKO0F5PDYoVCNIMqN@vger.kernel.org
X-Gm-Message-State: AOJu0YwLpkKowtVODhcm7rNG2LLvp3CEYG+JN2ZxYLK6DD3JNGs/46XV
	kfgpdJje3lNkC2C3E9AYsLeS5RZdo2l2g+kCJp9bYVlsaTT1q2T5rUtnCBAqEDHyMnc=
X-Gm-Gg: ASbGncusLS2DCXTq4wY37wS7bvqarVizLm8pgT7AkfvsH8+Tk5HFT/O1EnaB6JWnawi
	jLA8I4DfGuVpbQjnMpWLhH70YIM5XmWWVQeXi6on360uaTUjUs9BPmcjkv5rfMea/MYVB8iJFpO
	EGMLL8N9/7tHzkXPpHwleOHWkF9z73+UKF7v7+CheTn7hFUynZgd7RDFWTyb9Oj+dOHqysf9P3X
	P0tlzvQ1zfO7WeGp/LX2KV/9HhmW7oou2Sc+GInSY71cAk+AOsDvHrUsyJWEWfUkZf8vdzB0eHx
	rEKAUYwdq4SVCwGSePZJnmUTWImGBv64fweGcxNhx+zpYs9+K0nNfWCE
X-Google-Smtp-Source: AGHT+IEqVszFCVyM2GhwMbXsI8xtVBtEFkmw/qP0M9bEN5pAdb7NtRmnfyG1MEJy5baKQoLnMuV0cQ==
X-Received: by 2002:a05:620a:172a:b0:7ce:b782:8931 with SMTP id af79cd13be357-7d0a2387041mr603525985a.2.1748627007702;
        Fri, 30 May 2025 10:43:27 -0700 (PDT)
Received: from ?IPv6:2606:6d00:10:5285::5ac? ([2606:6d00:10:5285::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d09a0e3fdfsm268588685a.9.2025.05.30.10.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:43:27 -0700 (PDT)
Message-ID: <8ab1b3166cbb972dbd5984fa591b42dbf984fc3b.camel@ndufresne.ca>
Subject: Re: [PATCH v5 09/12] media: mediatek: jpeg: refactor multi-core clk
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
Cc: srv_heupstream@mediatek.com
Date: Fri, 30 May 2025 13:43:26 -0400
In-Reply-To: <20250530074537.26338-10-kyrie.wu@mediatek.com>
References: <20250530074537.26338-1-kyrie.wu@mediatek.com>
	 <20250530074537.26338-10-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

Le vendredi 30 mai 2025 =C3=A0 15:45 +0800, Kyrie Wu a =C3=A9crit=C2=A0:
> refactor jpeg clk suspend and resume setting for multi-core

You'll have to write a lot more to support such a large and I
must say slightly convoluted change. Why do you need a special
case for 1 core in the first place ? What about multi-core
design that support from 1 to N cores without using different
code path ?

Nicolas

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
> index 1d3df1230191..c1d2de92f125 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1126,6 +1126,9 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jp=
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
> @@ -1134,6 +1137,9 @@ static void mtk_jpeg_clk_on(struct mtk_jpeg_dev *jp=
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
> @@ -1677,13 +1683,6 @@ static void mtk_jpegenc_worker(struct work_struct =
*work)
> =C2=A0		goto enc_end;
> =C2=A0	}
> =C2=A0
> -	ret =3D clk_prepare_enable(comp_jpeg[hw_id]->venc_clk.clks->clk);
> -	if (ret) {
> -		dev_err(jpeg->dev, "%s : %d, jpegenc clk_prepare_enable fail\n",
> -			__func__, __LINE__);
> -		goto enc_end;
> -	}
> -
> =C2=A0	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0	v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0
> @@ -1798,20 +1797,13 @@ static void mtk_jpegdec_worker(struct work_struct=
 *work)
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
> -		dev_err(jpeg->dev, "%s : %d, jpegdec clk_prepare_enable fail\n",
> -			__func__, __LINE__);
> -		goto clk_end;
> -	}
> -
> =C2=A0	v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0	v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0
> @@ -1821,7 +1813,7 @@ static void mtk_jpegdec_worker(struct work_struct *=
work)
> =C2=A0				 &dst_buf->vb2_buf, &fb)) {
> =C2=A0		dev_err(jpeg->dev, "%s : %d, mtk_jpeg_set_dec_dst fail\n",
> =C2=A0			__func__, __LINE__);
> -		goto setdst_end;
> +		goto set_dst_fail;
> =C2=A0	}
> =C2=A0
> =C2=A0	schedule_delayed_work(&comp_jpeg[hw_id]->job_timeout_work,
> @@ -1846,9 +1838,7 @@ static void mtk_jpegdec_worker(struct work_struct *=
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
> index 2e6da8617484..db2afc5151ad 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> @@ -543,14 +543,13 @@ static void mtk_jpegdec_timeout_work(struct work_st=
ruct *work)
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
> @@ -592,12 +591,11 @@ static irqreturn_t mtk_jpegdec_hw_irq_handler(int i=
rq, void *priv)
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
> @@ -703,15 +701,84 @@ static int mtk_jpegdec_hw_probe(struct platform_dev=
ice *pdev)
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
> +		dev_err(jpeg->dev, "%s : %d, jpegdec clk_prepare_enable fail\n",
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
> +	SET_RUNTIME_PM_OPS(mtk_jpegdec_pm_suspend, mtk_jpegdec_pm_resume, NULL)
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
> index ff73393a2417..27da2a9922a6 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c
> @@ -274,14 +274,13 @@ static void mtk_jpegenc_timeout_work(struct work_st=
ruct *work)
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
> =C2=A0	jpeg_buf_queue_dec(ctx);
> +	pm_runtime_put(cjpeg->dev);
> =C2=A0}
> =C2=A0
> =C2=A0static irqreturn_t mtk_jpegenc_hw_irq_handler(int irq, void *priv)
> @@ -316,12 +315,11 @@ static irqreturn_t mtk_jpegenc_hw_irq_handler(int i=
rq, void *priv)
> =C2=A0	v4l2_m2m_buf_done(src_buf, buf_state);
> =C2=A0	mtk_jpegenc_put_buf(jpeg);
> =C2=A0	jpeg_buf_queue_dec(ctx);
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
> @@ -425,15 +423,84 @@ static int mtk_jpegenc_hw_probe(struct platform_dev=
ice *pdev)
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
> +		dev_err(jpeg->dev, "%s : %d, jpegenc clk_prepare_enable fail\n",
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
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static __maybe_unused int mtk_jpegenc_pm_resume(struct device *dev)
> +{
> +	struct mtk_jpegenc_comp_dev *jpeg =3D dev_get_drvdata(dev);
> +
> +	mtk_jpeg_clk_on(jpeg);
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
> +	SET_RUNTIME_PM_OPS(mtk_jpegenc_pm_suspend, mtk_jpegenc_pm_resume, NULL)
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

