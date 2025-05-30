Return-Path: <devicetree+bounces-181884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C78AC94CC
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6943A42504
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FE323505D;
	Fri, 30 May 2025 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="wPLo2XZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF5D1459F6
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748626455; cv=none; b=Z2HLTTG/GPAjunUaKs1OQFGhAxl4+DIlSaf9Y3TWB/+YOXJIuZXKDzjzMfXESlVrVNCfvYWnXmxCrS/GpLQ/Eae5sudtrp70gxlmDlcJSTzMD9gwAdxO4GBBu74bPDpjc2WHv+8xaodOYKjp6ExN+dXgN5+9pBXFnlRyPJdrdSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748626455; c=relaxed/simple;
	bh=NUrbM1IHsw/iamRbw20s1vrlwE9qRJhYCkHTEZckSOk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fANk/C4fJmpBZS2gSqTGG7FgXO3DuAwyOMpCNnMR2Nhs14HR0JAOBO/vt7e/YjAq5gN1fxCOt6qRtFpkCvTWhkHZzerrNMXItM7K+hZO/XlqvhGNYRbBQplEbDPxLjly4PnXNdpEQEm3ZaT+NWSGKQzQ6OfLKeAvHODJICz0iU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=wPLo2XZA; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-48d71b77cc0so27315211cf.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1748626452; x=1749231252; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=buVLTLGIIGSDQEPVaBKvvla56/HpfEM5pnwMP7FjQZ0=;
        b=wPLo2XZAUA0jIOa3m5c3dbfGtcYPUy/z5ML174/im7dDmd1SRGzW58uNi/EbQXgNHM
         l5DDvJr+1E49WZPIL3r72uK8Khk8T1KwdYfmpp10Dm5gP9arRchoiCt3a41feMvigTF6
         e0XPWi0S5+gw96u1FRbvhk1Vs5E05L21W9cyBr+3Ev+IBZHTCaByilU5xFZxFs05WSGh
         kOhd39rN9hNrcsoK+bLbO3pPeKt7frCZNqRE3NjhTHIp/zTbtcdCgsYLTJJc8/L7Ms6C
         Usav7/fduvURvDp5oRvLqkBK4dZVI1+wpegVgTX7uI3gTn2aFs/2vnp+VTOvRugJZbQc
         50dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748626452; x=1749231252;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=buVLTLGIIGSDQEPVaBKvvla56/HpfEM5pnwMP7FjQZ0=;
        b=RbCM8q5aI/rCcComnW+VJ4SGMNFAqCiUpN6qzbbRIqkt9o2CFDYZM8DHcu1KE/hr7m
         l/BVwbagYkviqJUTicA1L2mIci39FKuyaHfAECqq1xHzzO1zGqIlgcJNNr16arcLY0kv
         XUkfzVAQWH7Vix7BlKmMnhX8sQpnvYZVNNFXHVKCb3Fh1Y7r30QTw2Evb8NTb74RxGmg
         OgSfac5GtQxuOc/Eg6KUxWA1Hd5atCY7q0nzESMuW0Y3N+lHIBqN4vNFZ9yw8xnlyAEC
         TMYmAzGoQGZ+Hfxr6I0DmavE2FGofStYQPYKH+GLVJ7vlKo5fywCfsozgGvhkBzoLRmj
         IQwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfa/BEi0VuJy4fsXLJ7jt1SIK4SCs7s1nIklK16bdg2GyeY7WKOMVzgzZOVOQCX6Ns+/ocnpWSfip5@vger.kernel.org
X-Gm-Message-State: AOJu0YyeERunfG/D4mwFPEvhPsuKtaKJVqUn9zvxNPSIP8I/UfpwG29d
	C1Kl6ONn719PXRpPPFKRxdAJl3wt/o69uSP5IdUKB6GQ7xjOTRbFz1Q41BR6pDe3cFiosaCFbCH
	lqPdJFT0=
X-Gm-Gg: ASbGncuPPmdwqfD1DTw/Oie4Jkhan1M2G7nPB9cO8i7ULKhlTqkd+kNTDy3oRWPIXAD
	WMBzMDbkNp2qQyjnW0hfCsurH4fq+1DidAhQXpgH0Nv91Ax8BvHOZHS1r2TQABPxMFR7jbyDGXs
	eHaSQK/dL/vnzCxH6dpXuLHo8FWvmTz/u4VCIQ9N+LW8DOuRHrwrdS3Fs58BAryUu/JNiePM/db
	ZW2lyCpcpS0FFUnGoYyawbRUa4nlU60yq2vHoIptD3308g1jAykzyOhTdVxpcXDwE0vk00IYbwM
	5ipCKTYb1uGJYTyi50ZM/tHV5wMuMbIJJE4QGIoQiNVjL+nkY1X+IZTO
X-Google-Smtp-Source: AGHT+IHjLHOAn3d1xA8OLMjNNh0KseItAA4qflnmZwhssThdabG4QAR2XR2GIUqKvALq3wp6IsH/tg==
X-Received: by 2002:a05:622a:260a:b0:4a3:d015:38b9 with SMTP id d75a77b69052e-4a4400c18cdmr80240681cf.39.1748626441532;
        Fri, 30 May 2025 10:34:01 -0700 (PDT)
Received: from ?IPv6:2606:6d00:10:5285::5ac? ([2606:6d00:10:5285::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a435a633c8sm23319031cf.70.2025.05.30.10.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:34:01 -0700 (PDT)
Message-ID: <ac655c582609b7887381e1b68ed99f6b128fd794.camel@ndufresne.ca>
Subject: Re: [PATCH v5 06/12] media: mediatek: jpeg: refactor jpeg buffer
 payload setting
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
Date: Fri, 30 May 2025 13:33:58 -0400
In-Reply-To: <20250530074537.26338-7-kyrie.wu@mediatek.com>
References: <20250530074537.26338-1-kyrie.wu@mediatek.com>
	 <20250530074537.26338-7-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Kyrie,

Le vendredi 30 mai 2025 =C3=A0 15:45 +0800, Kyrie Wu a =C3=A9crit=C2=A0:
> 1. for multi-core jpegdec:
> =C2=A0=C2=A0 core0: |<-------- decoding buffer0 and resolution changed to=
 smaller
> =C2=A0=C2=A0 core1:=C2=A0 |<-------- decoding buffer1
> =C2=A0=C2=A0 core0:=C2=A0=C2=A0 |<- handling resolution changing
> =C2=A0=C2=A0 core0:=C2=A0=C2=A0=C2=A0 |<- vb2_set_plane_payload
> 2. the payload size is changed on the step of set format. Because core1
> is running and streaming has not been stopped, the format cannot be
> set again, resulting in no change in the payload size.
> 3. at this time, the payload size is bigger than buffer length,
> it will print a warnning call trace
> 4. set payload size must less than buffer length

You'll have to rework the text in this commit message, I must admit I don't
understand from this text what exactly the problem is, make it really hard =
to
review your solution.

>=20
> Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>
> ---
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_core.c=C2=A0=C2=A0=C2=A0=C2=A0 =
| 18 +++++++++++++++---
> =C2=A01 file changed, 15 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 0074d1edb534..52d59bb5c9ad 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -720,10 +720,22 @@ static int mtk_jpeg_buf_prepare(struct vb2_buffer *=
vb)
> =C2=A0		plane_fmt =3D q_data->pix_mp.plane_fmt[i];
> =C2=A0		if (ctx->enable_exif &&
> =C2=A0		=C2=A0=C2=A0=C2=A0 q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
> -			vb2_set_plane_payload(vb, i, plane_fmt.sizeimage +
> -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MTK_JPEG_MAX_EXIF_SIZE);
> +			if (vb->planes[i].length > (plane_fmt.sizeimage +
> +			=C2=A0=C2=A0=C2=A0 MTK_JPEG_MAX_EXIF_SIZE))
> +				vb2_set_plane_payload(vb, i,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plane_fmt.sizeimage +
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MTK_JPEG_MAX_EXIF_SIZE);
> +			else
> +				vb2_set_plane_payload(vb, i,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vb->planes[i].length);
> +
> =C2=A0		else
> -			vb2_set_plane_payload(vb, i,=C2=A0 plane_fmt.sizeimage);
> +			if (vb->planes[i].length > plane_fmt.sizeimage)
> +				vb2_set_plane_payload(vb, i,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plane_fmt.sizeimage);
> +			else
> +				vb2_set_plane_payload(vb, i,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 vb->planes[i].length);

Is this the same as ?

		unsigned long max_size =3D plane_fmt.sizeimage;

		if (ctx->enable_exif && q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
			max_size +=3D MTK_JPEG_MAX_EXIF_SIZE;

		vb2_set_plane_payload(vb, i, MIN(vb->planes[i].length, max_size));

It is unclear to me how this isn't just a workaround though, looking forwar=
d
your reworked commit message.

Nicolas

> =C2=A0	}
> =C2=A0
> =C2=A0	return 0;

