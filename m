Return-Path: <devicetree+bounces-44974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E8E8604C3
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 22:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FA951C22FB9
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E4173F33;
	Thu, 22 Feb 2024 21:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t1YRLJF1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E778973F13
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 21:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708637164; cv=none; b=EimXeiFrWw3sSos+Tqt+8S+edTIQ23bi/MjNSvvTAsluuq5WcRcsJnZ2dsEC4yApfxKrjDoh7n1ny/E6xcjZpoHSQH6EdOmu/3LWEaLoY+wsvrgLpT4+ZGMeUFamjMrHstX7f6ELmEwSI5a0kHieJE48rk5E3CbWpczIXy2hW7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708637164; c=relaxed/simple;
	bh=5SguTrEUvfKusWUyCh7Z+X5KDfWptE4n71MYrhnSoa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q512fil1US2ByfWzFhJJ8Ex0/ihd261vwqR9yiHr8zvjIg1YydEY4ofDsUC+P9bS6qQ2Lfwmb6xIiRgV0/nPGlDqOP/b6jydwXpr8sgFxkjoQqPPzyDWRDErAwHHb5ENsyYeS4jG6Sv8EO95vV2buSV9FrO0Xd+nPtD1rlDSI3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t1YRLJF1; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6080a3eecd4so2045037b3.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 13:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708637162; x=1709241962; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cAL1eQi9fwO5M4iI6CPGCaZqqkkbT0pjcXeRhNKkMT4=;
        b=t1YRLJF1bFnvcvM2fLivmLBoBWKpsWzl7wcKfJMqzc7XKfqNeGZ8kIm9N9pKECU45R
         sEXJeATCObCGawYHzUNHd1+4AHWe2QZbLpXd8u2nHU4F1c2PggGNs79+2NbWyDxvcRcE
         dLVgLo46Q7z5DdxmXNHbNazPYX7GkRGUutRGxWisMoeW9S4ga6n9ocMdY0XlUooYkU0e
         64Zp/J1t8nzGRPtR2+q8OfzDNRNZol2yRNthHCW6RfP8CWPYbrCFnTNuX02SeSWmTNrh
         t7qyKoRen4HZD7JHc+R7Ggw64cgCHeODtT9fM9eTbtM09ruI28FTGx73I4l94EH84QBI
         /GFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708637162; x=1709241962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cAL1eQi9fwO5M4iI6CPGCaZqqkkbT0pjcXeRhNKkMT4=;
        b=rcUhNURx1KFXmP0jAO5bSBSnqNw0u6/yu7aZ1wk5miMhhoHVWElrvV6Ys/ZuvyqOC/
         1shi94xfzo1Oa8c80A5jfSi6CkzDoWPgFqGpI6+iQLUpNIkOtfoTQNYsDfZ17OuSRFAn
         96kihJfI8eaGd0X1yC9OWlkdd5U89lgrBgsoTBmwAvWj40/NARirelQNpwXoMnKmOmA3
         1+NAbqQN2nC332pndy5+AaqcGLkZ2daea0hYLTnzSado+JSqZ1iiA43g70wp/FHsGJXe
         rssiVd/QjFfOxMF0cPSztlssfC4aCd5uRmgpuHlHtCGbF8uFhvKHDU0rsw4sWyMyW7SH
         qaHw==
X-Forwarded-Encrypted: i=1; AJvYcCUv/r3rnkDb/4XdL7LuI363gRUYNGPcwB0ilwqfXNrsgw9nzMTLYP5hp+4A/f2PpQbrA/Tvd2wrPthcTCBXdnWbNf+0YNIxVwZxQA==
X-Gm-Message-State: AOJu0Yw6D4dypE5l+E9P1Typs6cukY/R/Bg8W24RGNK+5/wug3mJO0JA
	z1F215o2Xosx5WkknVPI7DGOzqV0cyS2Z+GMOMoakpBkFhxmH/j4i8w8GhMOPvi6+5Jq7ooAg4j
	OXHj5QGgT1H1sE2pxz4TpbzVZQMtCHrPFu7XclA==
X-Google-Smtp-Source: AGHT+IEFcsXBVJngj+jrntUh79Ngs62jpMD1Nkrbl1mK5ryjeqQFq5MvMKq11CjEr4oUdruoFkkp5lRGNDbdtOkU36g=
X-Received: by 2002:a5b:a49:0:b0:dc6:deca:468f with SMTP id
 z9-20020a5b0a49000000b00dc6deca468fmr412118ybq.29.1708637161970; Thu, 22 Feb
 2024 13:26:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-rb3gen2-dp-connector-v1-0-dc0964ef7d96@quicinc.com>
 <20240221-rb3gen2-dp-connector-v1-1-dc0964ef7d96@quicinc.com>
 <CAA8EJprXXjvanBU_HGv7X_dS3nyZ867AsvKj5+S3pnWcpsk1ug@mail.gmail.com>
 <20240222034727.GG2936378@hu-bjorande-lv.qualcomm.com> <CAA8EJpotx0PiJ6geGUerOihnH3v5a=cm4ngpHsU1aKDOYtoAeg@mail.gmail.com>
In-Reply-To: <CAA8EJpotx0PiJ6geGUerOihnH3v5a=cm4ngpHsU1aKDOYtoAeg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 22 Feb 2024 23:25:50 +0200
Message-ID: <CAA8EJprvVB1sU-LxirZ+myeYj2Cb22snoO5YWGP5YELR8YkGgg@mail.gmail.com>
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

On Thu, 22 Feb 2024 at 06:01, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 22 Feb 2024 at 05:47, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >
> > On Thu, Feb 22, 2024 at 01:38:45AM +0200, Dmitry Baryshkov wrote:
> > > On Thu, 22 Feb 2024 at 01:19, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> > > >
> > > > When upstreamed the SC7280 DP controllers where described as one being
> > > > DP and one eDP, but they can infact both be DP or eDP.
> > > >
> > > > Extend the list of DP controllers to cover both instances, and rely on
> > > > the newly introduced mechanism for selecting which mode they should
> > > > operate in.
> > > >
> > > > Move qcom,sc7280-edp to a dedicated list, to ensure existing DeviceTree
> > > > will continue to select eDP.
> > > >
> > > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > > ---
> > > >  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++--
> > > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> > > > index 7b8c695d521a..1792ba9f7259 100644
> > > > --- a/drivers/gpu/drm/msm/dp/dp_display.c
> > > > +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> > > > @@ -129,7 +129,12 @@ static const struct msm_dp_desc sc7180_dp_descs[] = {
> > > >  };
> > > >
> > > >  static const struct msm_dp_desc sc7280_dp_descs[] = {
> > > > -       { .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .connector_type = DRM_MODE_CONNECTOR_DisplayPort, .wide_bus_en = true },
> > > > +       { .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_en = true },
> > > > +       { .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_1, .wide_bus_en = true },
> > >
> > > I think we need to keep .connector_type here, don't we?
> > >
> >
> > No, Abel removes the need for that in his patches - and while that logic
> > is slightly broken in the RFC I think it looks good.
>
> Let's see v2 first.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



>
> >
> > Regards,
> > Bjorn
> >
> > > > +       {}
> > > > +};
> > > > +
> > > > +static const struct msm_dp_desc sc7280_edp_descs[] = {
> > > >         { .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_1, .connector_type = DRM_MODE_CONNECTOR_eDP, .wide_bus_en = true },
> > > >         {}
> > > >  };
> > > > @@ -182,7 +187,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
> > > >  static const struct of_device_id dp_dt_match[] = {
> > > >         { .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
> > > >         { .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
> > > > -       { .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
> > > > +       { .compatible = "qcom,sc7280-edp", .data = &sc7280_edp_descs },
> > > >         { .compatible = "qcom,sc8180x-dp", .data = &sc8180x_dp_descs },
> > > >         { .compatible = "qcom,sc8180x-edp", .data = &sc8180x_dp_descs },
> > > >         { .compatible = "qcom,sc8280xp-dp", .data = &sc8280xp_dp_descs },
> > > >
> > > > --
> > > > 2.25.1
> > > >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
>
>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

