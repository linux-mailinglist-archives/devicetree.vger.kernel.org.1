Return-Path: <devicetree+bounces-225811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8D4BD1321
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1927A4EC7B4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DEC5284880;
	Mon, 13 Oct 2025 02:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SrQ4iNdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF0E2D594A
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760321388; cv=none; b=jS8uNLdFwVgKqsia/BAZjw8QvdAt2Xh4Vpjzq+ABkMa28fzSbXq4C/KK/nul3ijZ/zcA7bDqap1tFavbWK80b+TFZJgdPfV0LClJRITDpysepjZWY7riPbIsT12hp7i1GXWROUKQoLqljjAmR2dwOZKYicBW1VhiQQ4iGJcEadE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760321388; c=relaxed/simple;
	bh=FkhTO/czN9dofNzglJcnz28mMXp59FfI5fzYQN4S4kc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BUOR8kz2MEymBuBlURtWYOGSt/fGxgwcH+9lw0MLK+S/ecC5etNfl3zsSAHSUkVbySPdqwDfl16/G2RFPiz8wy3mLuTrdvjEcAwfxOhF8hhTQvyEoeCEzRu0c995O+Cv8jxrVw7IgH6mwPxaDIDjla4zt7ZwPyZwQi+FaeaLUc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SrQ4iNdT; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-63963066fb0so7690873a12.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 19:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760321384; x=1760926184; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wN9WKZXYO2Nmb+YIelwARSerR3E1lKOGfH0FqHzn+JU=;
        b=SrQ4iNdT4nG40VHPXbi+zLCcO4HFG8jR5gOMH9D5ZMC3P142Zkx3LzYXg+8vHG7dnt
         a+l3irMChyLPCPVb4lijKbAoPCB7z/IWpqTyE/0gyXl6OUkJiWVOgGoOhoGETithmEue
         uQ933uQikE9b+NCfx5otAcE1UmGBmPTz47kF11PyBMdA7iXxZCNtbg0SEVzgtTNwGs4Z
         /fB73rzMXg0Zx7iB6PLf16H7+dPio6MnqTvpLuBkiFzM5msLNhUKykzSt31Yw5EgdSna
         7Z47e7hBGg1JY9m2raFKNoGzDvcUBVLj7SrEEhaTAX5TVkr7lt87wwKsz6f64FazMbGk
         O6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760321384; x=1760926184;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wN9WKZXYO2Nmb+YIelwARSerR3E1lKOGfH0FqHzn+JU=;
        b=Y49SZW9q5F9VOVA1KUtJybpX1CqavMDOFgorDn2nmnmmNYdDuDrvEAVJRSBkyFY4jT
         0lsEg6qRKd/3FBr6ghhTDuLwdxsKveFAzgaf3orQqEtjPB+XikShK1IZjcOgFMk+Sgys
         LFrVskTGOqEvoK/+kxtKY6CT616tRGA5oiNBS/HNpuC0aZhT9jruTWVKIaaMdH1a+2Fz
         +t0US7BdDiDzi0qVGFDmj1t4NabYfGHdW64R2oOJK5MTHSflTsCKFvQJTlC1/iY5E3/r
         0T/l9TM3966X3/zV1IPdyD++fqKcV/PxNpvJHZPZZpxq9/Bh6iS1uuW3UIypeeT5Elzg
         Xf4w==
X-Forwarded-Encrypted: i=1; AJvYcCVVRvFSAATCbUL57hbrD9VAVpGE5DUU/uRYdS32NPKAii/Xla4KDc2fIsCdj1f95DuDdJYoFP8TXAte@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy2oUByLUVmdkmMLh0ZEu1Uy4HM4S1Rjy2LFaCnJua0VRovpYi
	DYLzLhFF4e/XJFVCHETZ447PgFJ7P3Ja9oe0f4OtgqALLq2co/RS6+8e7nwYj04KyZbxIr7RcSR
	ohLexXqexkTSOuDOnOdjLYzMowyeZmvI=
X-Gm-Gg: ASbGncuQvwCL/beioHb2YYhqBL7CB4fAARSxmO64En3iW3dFKaKkf5BHR5Gjx8sFyHF
	ru/gs+TPVcxHy4e7U9HeIADVU4QAKOopm84vao2b8uHdZsfYISVIgm96NbsJF9ZKQorx1hwTAOc
	bHrPCCtiWh5b1/9VcLPSQBJW3TJeunr0UZzicaRF4ekDMOCUyfMitNFCpX2fPa7ShckD3t6MGBU
	78hYYWcCf4k8Z/Z5axQY/AiJS2bNIjbHLFd
X-Google-Smtp-Source: AGHT+IHSJMTE42FzCsgTGmPKRezFnzYeGwD48gJLrMiPETpubu6LIUbFJ/YFNHidT3rkFndsTeRCcQITlZmFIhHHLUY=
X-Received: by 2002:a05:6402:5106:b0:638:e8af:35d9 with SMTP id
 4fb4d7f45d1cf-639d5c3e994mr18251877a12.23.1760321384245; Sun, 12 Oct 2025
 19:09:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-4-caojunjie650@gmail.com> <lfdhib6a7ct36nmj3of2setjft7ydrf6sfgtx7qued7qd56nhc@2xol3grm5re7>
In-Reply-To: <lfdhib6a7ct36nmj3of2setjft7ydrf6sfgtx7qued7qd56nhc@2xol3grm5re7>
From: =?UTF-8?B?5pu55L+K5p2w?= <caojunjie650@gmail.com>
Date: Mon, 13 Oct 2025 10:09:32 +0800
X-Gm-Features: AS18NWB68269yeiTzdACPvm7V3NMKR_y0HxD4z4iqSVQM-VjCZQP0WcUwHJ0Wsc
Message-ID: <CAK6c68h307fRVR=QKJG1pRJuDi1oCSrSYXBamwpAMx_jUgX7fg@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/panel: Add Novatek NT36532 panel driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Antonino Maniscalco <antomani103@gmail.com>, 
	Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>, Jun Nie <jun.nie@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=B9=B4=
10=E6=9C=882=E6=97=A5=E5=91=A8=E5=9B=9B 10:05=E5=86=99=E9=81=93=EF=BC=9A
>On Wed, Oct 01, 2025 at 09:59:14PM +0800, Junjie Cao wrote:
>> Add a driver for panels using the Novatek NT36532 Display Driver IC,
>> including support for the CSOT PPC100HB1-1, found in the OnePlus Pad 2
>> tablets.
>>
>> Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
>> ---
>>  MAINTAINERS                                   |   7 +
>>  drivers/gpu/drm/panel/Kconfig                 |  10 +
>>  drivers/gpu/drm/panel/Makefile                |   1 +
>>  drivers/gpu/drm/panel/panel-novatek-nt36532.c | 437 ++++++++++++++++++
>>  4 files changed, 455 insertions(+)
>>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36532.c
>>
>> +
>> +static const struct panel_info csot_panel_info =3D {
>> +     .width_mm =3D 250,
>> +     .height_mm =3D 177,
>> +     .lanes =3D 4,
>> +     .format =3D MIPI_DSI_FMT_RGB888,
>> +     .mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_CLOCK_NON_CONTINUOU=
S |
>> +                   MIPI_DSI_MODE_LPM,
>> +     .display_mode =3D csot_display_mode,
>> +     .dsc_slice_per_pkt =3D 2,
>
>As this is not a part of the standard, what if the DSI host doesn't
>support this feature?
>

Without it, parameters will not be calculated correctly, garbled then.

>> +     .dsc_cfg =3D &csot_dsc_cfg,
>> +     .init_sequence =3D csot_init_sequence,
>> +     .is_dual_dsi =3D true,
>> +};
>> +
>
>--
>With best wishes
>Dmitry

Regards,
Junjie

