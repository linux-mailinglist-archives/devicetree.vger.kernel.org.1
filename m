Return-Path: <devicetree+bounces-170516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB9A9B2B5
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 17:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5994F5A68D2
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF1427CB21;
	Thu, 24 Apr 2025 15:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="t+p7faQV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00273226D11
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 15:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745509441; cv=none; b=d3so83HifGmwvd0nClnGE2fRPUKacBRIKS4YkOyGEtqXju9LeenvzfZbmjwHHa3VpG+3oFyQiQipjuIB+eiVlxsVOw/I6JzHtThVLIZL6pc5OBPjmbR6v95pzwwsXU69YNKFzTYznqSjEbjU0O4G8gk1pbLFMdUvAHon0A4gnjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745509441; c=relaxed/simple;
	bh=PrIt9cti1YTt57yyhwhu+yoL+H0Pauq0wEpWZElruNg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LSdTvXMVzw+0D/cOztThaoLAvUh0iZgBN5zHsloNE6YovKSRL2RBDbQvS8tp/9AlxOl/0cqJ4P0/3TA9Ab9rZZwRpM2TjXv2bspeuEpDYbTzuAHAYvP9BZadXrQ4PNP/rxE7I1PBM6y4W5565yg0DC0adPCl739qa/6eLO7zBzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=t+p7faQV; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-476ab588f32so19238571cf.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1745509438; x=1746114238; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PxG91MvO3mEZmIhtAaDJXqnva49Kcev69TBhblsIWrY=;
        b=t+p7faQVjB+XtCOkcmZXBFDP3t3+pPIiPbFUCVPjTnTU8FQA8gTcLxKVD0nrwQGSp4
         oVgM865DLG7XB4fV0U3+82gwY9p5fHIw6si6KftvrZyH2psdwC3u1a0veYN8PjobmaH1
         BCDuJmaYrG2g8XoQ2WzyUErbJQ0aefE/Mr5xrfuKs4Kx3zcemNlYHJUglxmqrO0ZfKWY
         lsLyyzopjF6esf5XfXLJBcwSHemXrLlXqCnciNpBivIWO770U+0sL9+9mkudfs9MdIYV
         SQtmci8SZwjUf9rBHWPpt8voxqbhrT6//UIa5FGc4Y+i0dkGNXQZ5rfIMEaLvz0lbAgZ
         sBCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745509438; x=1746114238;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PxG91MvO3mEZmIhtAaDJXqnva49Kcev69TBhblsIWrY=;
        b=mLjpvry916AX+Q0Z5J3gPI4z+q3grXyP062BJEMe6fwfvoo4z9+EEVZ4+afCktcQwF
         BiYh1JfHFwHHf9a1NHTAnfOBiC25Ii/uSnrAXdySpKmtCCyXRVSDVWKCnVOiqGKlZJdW
         dpaEX5BmhtCHlDZHNdJXQWdSeSk0CmWo7sH3vmJzuia0sahOIWd/0yFsmk+BiCL9Ol8E
         lGiPATU6t9QGh/u5+haTwHi83Ix80jdcP4asrNoAzXVytghagXzTMoSCmMZRXg7bteXa
         5o07KyMHmcHiRYLb2b6qCmw+GLUzN1bV006IJqfD5vC9ufgwgGhpF8mJFee+jaJ5EUxq
         giKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvNbXQs75uoNaaV8Ohuhy8U0h0jeuRhVLOFp+zcsqMDprfNQe1sgNNnqviMgtfgOAvsuqP2mgcl0xH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2U/aHsNfY/iSmzO1KKIwhBgDNwY6aA33YqcHohAe2ZUf3NvnT
	12TZ7kEHgSDlyiz10PyfTMnbaS4R05n8MgJ5bb804aRMrOcM1xMDD3eGoJrDvPY=
X-Gm-Gg: ASbGnct05IWbHRqZboL0x7OIvphpsuqcUqfjf67GuPsp4nyxhSHliP4tnD8kWEA6mPV
	6k1bbwuq4fMgZTC1m49A+39sqganMW5gGRrOyyUTF9/G0nz4lFAEDFNt+DQMqJTNVewAwUFu2XZ
	p6z1WSrDwxp7vcWOTKUL83eFeCTLroFJZKYREvXe4amXwKe9cvW1r5HxU9qVmcaK6fMrhgjJHnQ
	Vlc/NpGMm19wF4/dW/J2M8mnjvp2E/5IVag4sVXL+L1c5nXKcyct3on0EnC5akROJfvP/GIqgjF
	bfNJFx4cqN6yVUwjZatdfnGpVUypN412Bi0eERDV8T28+w==
X-Google-Smtp-Source: AGHT+IGA+IIOug/obYsp2byfQYiQAcdnJn27C+FPUJJIN+Z+DBmj+uagyzwdTCFBqechz7yf+kP/FA==
X-Received: by 2002:a05:622a:153:b0:476:b7cf:4d42 with SMTP id d75a77b69052e-47fba39b562mr2788641cf.27.1745509437827;
        Thu, 24 Apr 2025 08:43:57 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:9913::5ac? ([2606:6d00:15:9913::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47e9eaf2086sm12964521cf.8.2025.04.24.08.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 08:43:57 -0700 (PDT)
Message-ID: <6148110c513d2177d886469c2276c6810eb93c34.camel@ndufresne.ca>
Subject: Re: [PATCH v2 1/8] media: v4l2-common: Add YUV24 format info
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Nas Chung <nas.chung@chipsnmedia.com>, mchehab@kernel.org, 
	hverkuil@xs4all.nl, sebastian.fricke@collabora.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-imx@nxp.com, marex@denx.de, 
	jackson.lee@chipsnmedia.com, lafley.kim@chipsnmedia.com
Date: Thu, 24 Apr 2025 11:43:56 -0400
In-Reply-To: <20250422093119.595-2-nas.chung@chipsnmedia.com>
References: <20250422093119.595-1-nas.chung@chipsnmedia.com>
	 <20250422093119.595-2-nas.chung@chipsnmedia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

Le mardi 22 avril 2025 =C3=A0 18:31 +0900, Nas Chung a =C3=A9crit=C2=A0:
> The YUV24 format is missing an entry in the v4l2_format_info().
> The YUV24 format is the packed YUV 4:4:4 formats with 8 bits
> per component.
>=20
> Fixes: 0376a51fbe5e ("media: v4l: Add packed YUV444 24bpp pixel format")
> Signed-off-by: Nas Chung <nas.chung@chipsnmedia.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 0a2f4f0d0a07..de3636f1cdf1 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -269,6 +269,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 f=
ormat)
> =C2=A0		{ .format =3D V4L2_PIX_FMT_Y212,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_Y216,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_YUV48_12, .pixel_enc =3D V4L2_PIXEL_EN=
C_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_YUV24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_MT2110T, .pixel_enc =3D V4L2_PIXEL_ENC=
_YUV, .mem_planes =3D 2, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .bpp=
_div =3D { 4, 4, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2,
> =C2=A0		=C2=A0 .block_w =3D { 16, 8, 0, 0 }, .block_h =3D { 32, 16, 0, 0 =
}},
> =C2=A0		{ .format =3D V4L2_PIX_FMT_MT2110R, .pixel_enc =3D V4L2_PIXEL_ENC=
_YUV, .mem_planes =3D 2, .comp_planes =3D 2, .bpp =3D { 5, 10, 0, 0 }, .bpp=
_div =3D { 4, 4, 1, 1 }, .hdiv =3D 2, .vdiv =3D 2,

