Return-Path: <devicetree+bounces-131825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B059F4A9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CA5D1654A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5FC1F03F4;
	Tue, 17 Dec 2024 12:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eyjLSg7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A842B1EF0BD
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 12:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734437215; cv=none; b=K9cNe7X5XuFJ/nFhYCM+HUQDLjvKM4Wcjmm406bXUJdHeb6AhUZS7dHnywA+A6Y6uhZ4KGj/SeZAS5Upk6qwha9FIDrF2L24W1OOif31vfwZv1CCLsMTx3SjJF+6lUDz2SM3Lm8g0f2eDNQ/o/VKj1DEBQTqv7L1CgUarEt6ziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734437215; c=relaxed/simple;
	bh=iBjw9lwrFUxrYI+y8XvXFRyg4NbyoH+ZS9l+QedmvMU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tY4Cdq7s+vDXBcmmKfaPnvGLXo3qCy7YAAFl/Qxf6b/GZ/sPm8cqs0WGZXcj/sJqHmj+9UayUlXckNG7Bq5peVBte7pTcLecuK38l0XsG5yrCtwV+46ozjUvKu7wE3EQlbFmFhAsi5p8S6w0ateav+jQyFwjnIVTL19zeOH3Tew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eyjLSg7f; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e4a6b978283so1989029276.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 04:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734437213; x=1735042013; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xtcNS4WYNQ7vwgcHRVs06xAqqZt34Z8yAs31pHoB2MM=;
        b=eyjLSg7fflwxDBOifM/sN89ZZp5bi8hkayEWIOe0CTRopI8suRci3taj4SNrLr28mX
         e2gm/8jc2q2CFXjB1BxuGUkfPhW5BtvhuESh6m+8KBWnv0nWdZx8dDpjUO05h7MANSoS
         iS/Epl8fHjWRAksvAqMSFNDfVFv0nakOhKWl55p2BQabT3RhSBYKfap1R9GF+8We3zxO
         k6tEgiazTiVROCyR2QR6Z8JUH3WrW9iLuY+/nPAtYN7UcP6CU3Ae4T2bMpKaGnUcpKN3
         ch82wdZAUakHjnOEW7cubvu6aI9yd1QtWwopF0GLg+rEUU02lPy+oRJBZVZlF6UXCm1E
         L+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734437213; x=1735042013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtcNS4WYNQ7vwgcHRVs06xAqqZt34Z8yAs31pHoB2MM=;
        b=nsqtMPNHSV98BNOfO3vLH6ZuA1LBmcFvY/K7YfMdhriOUKW5iLrUZ6LKmP6ydBb/dE
         HeAophChuYErm0kPEUwibPlyMfbcujPPzJD7tI5SgOAUfNqCQ/JCEQ8pd3wzg/kZHdG/
         YLr3w6IrFzFzSLwtr+iwHSj20S7WkkuX/YWPNWcK/kHCbpkyX1+gxTRM50lqi2kSZQRP
         AZUnFRkxMOsK+8km6evynC9TPkPjv8l0vVnVhaFHS6jMih0yibf+iVNjVWczQgd0Z6zc
         ifBVE0055PoTgshM+hP3JKDNAyVnJ8BG6NOf8qWq3Ch+bgDshpt9rq9xnNxgxvftYV2Z
         EJzg==
X-Forwarded-Encrypted: i=1; AJvYcCXhZsLmdOTSOdtI9U2ivVveOugBF3Gpv5zdRk7qaQb1SBucJ3cYZ7jryDzF443o2Im+yxvfkOSfsN9s@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq6eTcTjeIY1DrvPJUcLPQhv7SBVnWiQqZyPC/NP+qPSXaGPjy
	diWJnuTLI96zo8aWRjQEiY6Y1NtTAnsgOKMkGjE8ooh9WtqauPah/MTt3CYONU9i50Ndg02pwsP
	SHNI5RVrLEzbrq/0vPxThaxhrZfhNUnuTiXuyqA==
X-Gm-Gg: ASbGncv83CXnOImRRYAVs1vvDc8iG537HjKjUBDcdpUG2R6ggPiDLQtEv47UcH/G7A1
	rU2ShzcFNAp01ZtR86NhTrESbxOeaWH+lxUWahNEoj+fLW4G5gUSs
X-Google-Smtp-Source: AGHT+IHA892uAzKw6cPgSlziTULlXbGE7tU9YemAvZukjV0KTn0lzS8KUSWqbZi8euRBjZNVY3gThecx/TV6P6m2k58=
X-Received: by 2002:a25:acce:0:b0:e38:8d3b:66e0 with SMTP id
 3f1490d57ef6-e53299709aemr2594135276.19.1734437212629; Tue, 17 Dec 2024
 04:06:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-5-2d875a67602d@quicinc.com>
 <ntffm2jwr44m77z2bvuifv3itkpywco3cemgzkizzdp7e2ekdv@htfktmyyoe3k> <ba59f164-2ccd-4cf9-9426-9b6a2c199224@quicinc.com>
In-Reply-To: <ba59f164-2ccd-4cf9-9426-9b6a2c199224@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 17 Dec 2024 14:06:41 +0200
Message-ID: <CAA8EJpqApTLaNTkfHyfg5vgPtDQZs1cWjBSgdGULP=xRm+WmMw@mail.gmail.com>
Subject: Re: [PATCH v4 5/9] drm/msm/dpu: Add SM6150 support
To: fange zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 17 Dec 2024 at 13:02, fange zhang <quic_fangez@quicinc.com> wrote:
>
>
>
> On 2024/12/17 18:54, Dmitry Baryshkov wrote:
> > On Tue, Dec 10, 2024 at 02:53:56PM +0800, Fange Zhang wrote:
> >> From: Li Liu <quic_lliu6@quicinc.com>
> >>
> >> Add definitions for the display hardware used on the Qualcomm SM6150
> >> platform.
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> >> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> >> ---
> >>   .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h | 254 +++++++++++++++++++++
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
> >>   4 files changed, 257 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..621a2140f675fa28b3a7fcd8573e59b306cd6832
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h
> >
> > [...]
> >
> >> +
> >> +const struct dpu_mdss_cfg dpu_sm6150_cfg = {
> >> +    .mdss_ver = &sm6150_mdss_ver,
> >> +    .caps = &sm6150_dpu_caps,
> >> +    .mdp = &sm6150_mdp,
> >> +    .ctl_count = ARRAY_SIZE(sm6150_ctl),
> >> +    .ctl = sm6150_ctl,
> >> +    .sspp_count = ARRAY_SIZE(sm6150_sspp),
> >> +    .sspp = sm6150_sspp,
> >> +    .mixer_count = ARRAY_SIZE(sm6150_lm),
> >> +    .mixer = sm6150_lm,
> >> +    .dspp_count = ARRAY_SIZE(sm6150_dspp),
> >> +    .dspp = sm6150_dspp,
> >> +    .pingpong_count = ARRAY_SIZE(sm6150_pp),
> >> +    .pingpong = sm6150_pp,
> >> +    .intf_count = ARRAY_SIZE(sm6150_intf),
> >> +    .intf = sm6150_intf,
> >> +    .vbif_count = ARRAY_SIZE(sdm845_vbif),
> >> +    .vbif = sdm845_vbif,
> >> +    .perf = &sm6150_perf_data,
> >
> > I noticed that the catalog entry doesn't provide writeback configuration
> > although the vendor DTSi specified that there is WB_2 on this platform.
> > Please send a followup patch enabling writeback on this platform.
> ok, will update it in next update

Just a followup patch is fine.

> >
> >> +};
> >> +
> >> +#endif
> >
>


-- 
With best wishes
Dmitry

