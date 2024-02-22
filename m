Return-Path: <devicetree+bounces-44591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2CB85F050
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 05:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39E592842CE
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453BA17998;
	Thu, 22 Feb 2024 04:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CFi4hf+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248631773E
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 04:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708574515; cv=none; b=sGehwqJ6LA4/f1rnmAzPpweXcZRDt2dyXv/mFAi/OHccFhDdhYlCCjOIYtMM95YyrFY3YFHDsvQ1XM43ovN0uYdgSN3HoCSApaee0EtdDexz0SyRkLkktgHZH0mcAtVojTtsGg5DO3R0UTbJ037zhWXkPKeECELrDgYnNe5ebA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708574515; c=relaxed/simple;
	bh=1DqHzr3QAz4XD2JcRhhUcwAQtSo1ubyexqzQLkSXPMc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a1wZnqdcaysXPJmdy2oFCmKi/RjR/G+0COCjo/7XadV4lzHUongGowD34Q8uQdf2dW5BHleCjd2qi3aCMEFJFYn5UAmoFMXIxYfLm6jgnTIfYuvbSX73z62r62TDhJptH71nOzlSg4BUJXqgeKcNv13rW7Vum8Kjd5lWWFyzXGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CFi4hf+Y; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60495209415so72525387b3.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 20:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708574511; x=1709179311; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sj35YOjK6RKB4C5ExxVych1pGfUJCfir8o97Bxs9Vxs=;
        b=CFi4hf+YefGisns3uINQkbPASHrd3kl9MHjhhDfd4oIuHPw3Al78SNgYAauNHVUL74
         MRIuDRRL/eaMxu55ej7amZuMPHr4/503HAcIoBYbMOehmmjbKgKhF0JwWwmExTSx2RM9
         daHK7UgHZliQvW6eZo5Vhrv2/ut3o6UfsiaXVvdOia21j/2omxB7ae21OXIef655zuCd
         zFvqHJeG0jqQC6MN6tMW2iUBS7Xt/lomRjI6B/XzGugelCpu/OIedyb/XZXc/yLeIJDz
         S1hF/uSOEPgw6FB3OXuHrEtVVHxSnjb7sVFnEEpGVscVFqj4RsGAWCnVeZZhefTUkE+B
         kQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708574511; x=1709179311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sj35YOjK6RKB4C5ExxVych1pGfUJCfir8o97Bxs9Vxs=;
        b=EDTML/w6rJ018NYJmkoIv32+xsIcbTpZyyM2LKyXLQox2FvekE/iGwhameZXDTgSdC
         3IwTg6g16aomS6sia8hDOxyzlNKhFdYeyLsvoYO6t115fFoJLc6RN7dd0hF76+uzhFoU
         VS/khcoUucwk3DFYQGOdxxqLT6LFxiK3moNFleG1TzMZLc0KIrzNx6OjFDhfntKg6ibb
         4Gpf6Lxv0nyzsgws/uHJPA2ZzvNHKwgSpXf+vEQlZCJcohXo/oYrZyAtfuBQ38umuw5o
         +/t2mNEfrdiKLiJxZlGAHsV/u3S/sq3ARuzSZSo420gdXnW2gLEmzfOLARhhC0bZeyD1
         wkMw==
X-Forwarded-Encrypted: i=1; AJvYcCWG5wcGIotivwKyB+Qbq5A2qj4uQJC4mS5YUdCOi/JMGHfflN66Lap15Lb23rTqwKL+9p1DHmXTWVBHB8HHAV/20Ov3dhYtdwpHxw==
X-Gm-Message-State: AOJu0YzdPpBbuuxMdYzEJ0MTc3lavv/dHqd/NoFRcHDQH5CWSaw64VWr
	YYacyGWUfZQW6QPURBXlHs64H0qk3OTZncTu81Vs2ZCui90lZY286MPcsryaRJmIa9LWrdEwHJ1
	azjJCAVZGWFqAhz3HYIYFsGEOul6tSvxJnfMKWQ==
X-Google-Smtp-Source: AGHT+IG7ga8Qwv736rdMo9Jd6hOdoA/3LAjM8sRFm6VRm7EEEGVF9fa5s36oG1kV9WzIB5M4xsWL1nKyzNF2W5KfJjg=
X-Received: by 2002:a25:2944:0:b0:dbc:decf:e511 with SMTP id
 p65-20020a252944000000b00dbcdecfe511mr1272238ybp.6.1708574511204; Wed, 21 Feb
 2024 20:01:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com>
 <20240221-rb3gen2-dp-connector-v1-1-dc0964ef7d96@quicinc.com>
 <CAA8EJprXXjvanBU_HGv7X_dS3nyZ867AsvKj5+S3pnWcpsk1ug@mail.gmail.com> <20240222034727.GG2936378@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20240222034727.GG2936378@hu-bjorande-lv.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 06:01:39 +0200
Message-ID: <CAA8EJpotx0PiJ6geGUerOihnH3v5a=cm4ngpHsU1aKDOYtoAeg@mail.gmail.com>
Subject: Re: [PATCH 1/9] drm/msm/dp: Add DP support to combo instance in SC7280
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Feb 2024 at 05:47, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> On Thu, Feb 22, 2024 at 01:38:45AM +0200, Dmitry Baryshkov wrote:
> > On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> > >
> > > When upstreamed the SC7280 DP controllers where described as one being
> > > DP and one eDP, but they can infact both be DP or eDP.
> > >
> > > Extend the list of DP controllers to cover both instances, and rely on
> > > the newly introduced mechanism for selecting which mode they should
> > > operate in.
> > >
> > > Move qcom,sc7280-edp to a dedicated list, to ensure existing DeviceTree
> > > will continue to select eDP.
> > >
> > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > ---
> > >  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > > index 7b8c695d521a..1792ba9f7259 100644
> > > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > > @@ -129,7 +129,12 @@ static const struct msm_dp_desc sc7180_dp_descs[] = {
> > >  };
> > >
> > >  static const struct msm_dp_desc sc7280_dp_descs[] = {
> > > -       { .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .connector_type = DRM_MODE_CONNECTOR_DisplayPort, .wide_bus_en = true },
> > > +       { .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_en = true },
> > > +       { .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_1, .wide_bus_en = true },
> >
> > I think we need to keep .connector_type here, don't we?
> >
>
> No, Abel removes the need for that in his patches - and while that logic
> is slightly broken in the RFC I think it looks good.

Let's see v2 first.

>
> Regards,
> Bjorn
>
> > > +       {}
> > > +};
> > > +
> > > +static const struct msm_dp_desc sc7280_edp_descs[] = {
> > >         { .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_1, .connector_type = DRM_MODE_CONNECTOR_eDP, .wide_bus_en = true },
> > >         {}
> > >  };
> > > @@ -182,7 +187,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
> > >  static const struct of_device_id dp_dt_match[] = {
> > >         { .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
> > >         { .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
> > > -       { .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
> > > +       { .compatible = "qcom,sc7280-edp", .data = &sc7280_edp_descs },
> > >         { .compatible = "qcom,sc8180x-dp", .data = &sc8180x_dp_descs },
> > >         { .compatible = "qcom,sc8180x-edp", .data = &sc8180x_dp_descs },
> > >         { .compatible = "qcom,sc8280xp-dp", .data = &sc8280xp_dp_descs },
> > >
> > > --
> > > 2.25.1
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

