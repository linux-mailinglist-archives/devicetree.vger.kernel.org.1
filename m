Return-Path: <devicetree+bounces-129669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 762409EC7A0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:47:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A971816A745
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4041E9B2E;
	Wed, 11 Dec 2024 08:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Od9pYJ27"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45401E9B23
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733906841; cv=none; b=d54OdzljZUbm/bwNjWj0X+70b3V6Ufq+L7i2rKsju6m4c/E4GqUazZqZThMfscdh1ayL7gQmd/z9qeYeT1b5NBITZKQZCSWF5bIO36ZZ9jQlAmY5loXIGwucuLxmiU0m2VNnMcsbdUOQOagXjte1U6Q8hSK2qtdjw0np4ujtGKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733906841; c=relaxed/simple;
	bh=VCdtky//FuKQ1O98k1ZwZq74x732mntDSu0a0sp4nnI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cdzczy7pwdf3doW/0PfC+r7vUw482bUs3A3LmCxlSiX7lDNm902kv7ZrVHoqLBMbpndApuq3tDkMQHu+NbGEANWPcYaruK94nGPM8XWXCNeWJkbE2hrGPJFclHHIvfQDH0RSke1uVrQ5FGeS/8kwj4gam25IiJ3W1Y8ftSNe9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Od9pYJ27; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30037784fceso41568281fa.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733906838; x=1734511638; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WZ9yw5+eiQnubxYw3ZTt7r7hhaE0oRY7onPmgVMFj5s=;
        b=Od9pYJ27MmeUIMvCcBya10un1oCujI97lTizjsJg/4JUKva00FaOwTMnp0h1qhGOj0
         KgKgA5tqPFKv9NdDHHMqS/z1fkyNtPq43yYIRrB0mSvYay/9Is3tJJlOTTD/ztcpe4Oz
         28ksnIu5jUzLAivNW1AMmu0hSa9hK0pXoo12lDloeM6F0TRBtERFjaNu6I9eX+KoKGZv
         zl2+hOoFNeNts/AfGhf3jA9O/FlF+yUlwa3VZRiHGUQ+lVaXNXOlWrkUIKHiKTALHwGz
         ClrzT0BudeUIDra1fa+8AZtWx8OPLYl7BG9n3mnnv0Mfm8NssqeetyDRD2muu7ts2EXa
         qPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733906838; x=1734511638;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZ9yw5+eiQnubxYw3ZTt7r7hhaE0oRY7onPmgVMFj5s=;
        b=TMDFsKgeV/4OVnkBU/NMOU4O92NjZv7rPu+WF7BoqlL5HDzA8NFQVQCYmGQzsjr/gj
         fdqAFvVV6p/1dLm/BD35u/cyw2undl245DewyD6Sh9zl+/VScTStT+KKCUdN+WkoJOFu
         v4ncjoBYtvJNs+Isgy1M9hT9zzg4rZ9sAK3bQgAbSzr5Uw/ox4LvQr4tcrYok3S5LWxD
         HZHBw8w0v0qBGLrj2rSdz/he+diNSuf6UQmcKSqYCKF8QPDHwi/Nj6CtY9bliUzAeGNr
         I1vejta4MrW+Fg2qvnobdVC+qXKsg8s+AROajalTX56upLVHyU9osSPTrclRAxMm/7e9
         EZbA==
X-Forwarded-Encrypted: i=1; AJvYcCV3Ass7enXACItiJZCJKbSEn0wi/cAScCvsvR9PZtLHtzoSIEUEQve1wSaPh01vcFBVeouVe+yFCp2H@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm4DoDbWO+JwL2JOX/n2IQPCEMK7FVhIs+ovIGt0Njm3D9ZG9L
	za7e23naBQOZeF6g8y5eOnxd+1+eKvxllwjYzHeQLvSurvLd4pbgDokRgEOT624=
X-Gm-Gg: ASbGncsLXU9JrxjxYaggkpw9THMv4FSm3U6NWtABrrYirZ+SAq7MRq5FE7yJjLKAW31
	2pmfD1E2/YnNigCZraIFDTnD1yS2IC+FSy8ihESSYfgltFm6Gl/36b4Fccuz2L4BP3htxbxx9R8
	7rPXS58HlvBI0Hpzr3UzkjHPXq/NkcsmGoPRav3U38i8tv5uMkQ2ES/FuSaqtSkyO2mjwbzvSV3
	xkXMb/DXCI6/ITvw5Ak1sME+hfWSSKU1Ut6aNIAfGHgLHh0haBzyypyGRbtfohRpQF4JCAU1dAW
	i0EeBgVe3dzJ+UIS8GdBXwWpI45YCAunLQ==
X-Google-Smtp-Source: AGHT+IEzbCuaw2gb4SoiLfoCGhV4qUqReRteL4cHA8BdEPX67hviGCcUhbWK23EzV3nUwwQBFx6QyA==
X-Received: by 2002:a05:6512:3d18:b0:540:2339:3761 with SMTP id 2adb3069b0e04-5402a5ea3c0mr647882e87.31.1733906837971;
        Wed, 11 Dec 2024 00:47:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54020b50393sm796000e87.20.2024.12.11.00.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:47:16 -0800 (PST)
Date: Wed, 11 Dec 2024 10:47:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Stefan Schmidt <stefan.schmidt@linaro.org>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Jianhua Lu <lujianhua000@gmail.com>, linux-media@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 27/28] media: iris: enable video driver probe of
 SM8250 SoC
Message-ID: <35tpvx2uok22tmq76fe6mluiqnkymm2es6iu5jjj2zapeio6me@l4obuknsn3gz>
References: <20241210-qcom-video-iris-v8-0-42c5403cb1a3@quicinc.com>
 <20241210-qcom-video-iris-v8-27-42c5403cb1a3@quicinc.com>
 <CAEvtbuuO5Ga+wW9rstX_e_RGnm5jSNSHmyy3w3M9FTopNhKttQ@mail.gmail.com>
 <b4f35301-6361-9e07-73dc-023e87c80857@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b4f35301-6361-9e07-73dc-023e87c80857@quicinc.com>

On Wed, Dec 11, 2024 at 11:54:09AM +0530, Dikshita Agarwal wrote:
> 
> 
> On 12/10/2024 9:53 PM, Stefan Schmidt wrote:
> > hello Dikshita,
> > 
> > On Tue, 10 Dec 2024 at 12:08, Dikshita Agarwal
> > <quic_dikshita@quicinc.com> wrote:
> >>
> >> Initialize the platform data and enable video driver probe of SM8250
> >> SoC. Add a kernel param to select between venus and iris drivers for
> >> platforms supported by both drivers, for ex: SM8250.
> >>
> >> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > 
> > [...]
> > 
> >> --- a/drivers/media/platform/qcom/iris/iris_ctrls.c
> >> +++ b/drivers/media/platform/qcom/iris/iris_ctrls.c
> >> @@ -17,6 +17,8 @@ static inline bool iris_valid_cap_id(enum platform_inst_fw_cap_type cap_id)
> >>  static enum platform_inst_fw_cap_type iris_get_cap_id(u32 id)
> >>  {
> >>         switch (id) {
> >> +       case V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER:
> >> +               return DEBLOCK;
> >>         case V4L2_CID_MPEG_VIDEO_H264_PROFILE:
> >>                 return PROFILE;
> >>         case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
> >> @@ -32,6 +34,8 @@ static u32 iris_get_v4l2_id(enum platform_inst_fw_cap_type cap_id)
> >>                 return 0;
> >>
> >>         switch (cap_id) {
> >> +       case DEBLOCK:
> >> +               return V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER;
> >>         case PROFILE:
> > 
> > The handling for DEBLOCK does not seem to be part of the SM8250
> > enablement. Or did I miss something?
> > It seems they should be part of a different patch that makes use of
> > the DEBLOCK cap.
> > 
> this cap is part of platform caps of SM8250 and the value(set by
> client/default) of this will set to firmware as part of start streaming
> through set APIs.

Then it still makes sense to split into two parts: one for DEBLOCK
handling, one for the platform data only. Or you can safely merge
DEBLOCK into the main caps commit.

> {
> +		.cap_id = DEBLOCK,
> +		.min = 0,
> +		.max = 1,
> +		.step_or_mask = 1,
> +		.value = 0,
> +		.hfi_id = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER,
> +		.set = iris_set_u32,
> +	},
> 
> Thanks,
> Dikshita
> > regards
> > Stefan Schmidt

-- 
With best wishes
Dmitry

