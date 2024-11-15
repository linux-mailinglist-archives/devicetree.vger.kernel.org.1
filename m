Return-Path: <devicetree+bounces-122148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 466BC9CE171
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 15:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAB0C1F21848
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656D91D47C7;
	Fri, 15 Nov 2024 14:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pD51GfRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8451CEEB4
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 14:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731681558; cv=none; b=gkfXu5utYWxrllbqTgecQaHT43k0oAzLmvOhPfSQ54DJXUmWxvZBtAzb3HIub78KN1dhk3RInFVtvxONVLsi2uagFr8Q4mX1D4t5YNy7PPW6RXjKat1xSjrwU4JBFjn5iEty4mo6eMskMFclZkm2kTsFpwg/o3aQKDwy8tCHuMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731681558; c=relaxed/simple;
	bh=zcDxiuozB1RcZw7DlAgdwSLCbxobCRcmPW74Fz2cwn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HwTQ21vZyzlwqo/knspJjiRqmML3llaNhjMc3pD1WmVFXfOAwvH+BIYbDSYE+I/XH9ELxCIuE2khWZ27h7p/PV086Whph79VLxbceYLftUQb7By+HMkmO8aiOfbKEO+GyAgotbGTt8+CNhhCkLU/fnkbEWw2VSb+SR+Uxk+6yas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pD51GfRl; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53d9ff8f1e4so2187252e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731681555; x=1732286355; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=51jmKSwVle1x+SelryYShRFN85JrDXZwY4DieM6p0Rk=;
        b=pD51GfRlTxgZW2OvMcTXCx4+pYvEQnhIPlCP07adfPi1C41kiqtQ+dMhLSRUSxeMrM
         Ks1UNk2MsbEMgkYM2b0Hb+XYSM3bf7fmKBWovd0VCh986kk3V1wBSWBJS2WmrC2xW7nf
         iEZ79o9tOxCs8EfpaqsqbmwC3SeuyuO/V26nym0U96nBSurs2il9zAEWbvyj0eqAsZAc
         Tt8OL6o3mPMFKU8cNOl7iVV0vXYY8z4W6+aqn8cqFlLoOj30JAuRMiT9JtzxDpciyHH6
         8aSOA/kc9Vwf3PvXNGJQaz6q74UXjbfSZ+hoFvab1WTTFi70nbJ3OjXOJKqIrSfWV1aE
         2sOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731681555; x=1732286355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51jmKSwVle1x+SelryYShRFN85JrDXZwY4DieM6p0Rk=;
        b=lVaqvC1R8qOYqRBWmkU5mbjE5P/TQUKR4Vf2sDn78L4QOqCLGR2vbbmNZbookuqLvr
         w4B1IJw0fc8mLk/8vGyi+30mb4tMRuNbZsDil02dBVxmjPkR1OEf+2NsDjRcu80Kg0oL
         mLjtvbdhZOumdcC8XfyQ1iTVXV5tpJ+nqQx15Aa/5R6g+L+2qBmBtzBBZkgAJP3mDLif
         wwL6R5yxuXAz15hEXaT83flLplo5t17r1fMq3u05ahG/HgRqQ0iHT04LFTYTKBwM8HRO
         5USZ39FYhL9DT5lq3918BOYuX23IEFrxuifW/5LP/4WSwH2iVEWn1ayMB5UoxrOXZBrJ
         +hkg==
X-Forwarded-Encrypted: i=1; AJvYcCX51md5IV2wqcBiOX2KkXx09bYZ1ZmUZ7R7/MR82FdL3kkLcn/gT5LKZLbcsxDxg1Z3B6eNCwhX4YTd@vger.kernel.org
X-Gm-Message-State: AOJu0YwJnD7TAr/yrVSBzKQ+8hvCxXhCmuufnDLvuROvC18Y21AmFznc
	RuPd35q8RGKXjtm4UQgREhneWt3zdBlTPysM2LqBKVQaX1Wz/3Y+Z0lc4f8Airs=
X-Google-Smtp-Source: AGHT+IFFXq6ZdVs+esKVUTRY3iUZ2e43HpYp71jG48QwgglW7QLb5Zy314u5bVlw4Lh3Mu4F4rG/gw==
X-Received: by 2002:a05:6512:3d07:b0:539:918c:5124 with SMTP id 2adb3069b0e04-53dab2a2e59mr1717693e87.31.1731681554662;
        Fri, 15 Nov 2024 06:39:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da65019ccsm593960e87.110.2024.11.15.06.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 06:39:14 -0800 (PST)
Date: Fri, 15 Nov 2024 16:39:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 6/8] drm/msm: adreno: enable GMU bandwidth for A740
 and A750
Message-ID: <p4pqswgaxbx2aji6y5v2qngn3xp4gdlruthhbzpb4cgfs2earz@mo7zbsgqwc4b>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-6-3b8d39737a9b@linaro.org>
 <nw2sqnxmhntvizzvygfho6nhiwfni4xfquwst5gd5g2tel6pnr@h66d4mw46jcf>
 <8df952a8-3599-4198-9ff0-f7fac6d5feaf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8df952a8-3599-4198-9ff0-f7fac6d5feaf@linaro.org>

On Fri, Nov 15, 2024 at 10:20:01AM +0100, Neil Armstrong wrote:
> On 15/11/2024 08:33, Dmitry Baryshkov wrote:
> > On Wed, Nov 13, 2024 at 04:48:32PM +0100, Neil Armstrong wrote:
> > > Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
> > > is in place, let's declare the Bus Control Modules (BCMs) and
> > 
> > s/let's //g
> > 
> > > it's parameters in the GPU info struct and add the GMU_BW_VOTE
> > > quirk to enable it.
> > 
> > Can we define a function that checks for info.bcm[0].name isntead of
> > adding a quirk?
> 
> Probably, I'll need ideas to how design this better, perhaps a simple
> capability bitfield in a6xx_info ?

I'm not sure if I follow the question. I think it's better to check for
the presens of the data rather than having a separate 'cap' bit in
addition to that data.

> There's other feature that are lacking, like ACD or BCL which are not supported
> on all a6xx/a7xx gpus.

Akhil is currently working on ACD, as you have seen from the patches.

> 
> > 
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 26 ++++++++++++++++++++++++--
> > >   1 file changed, 24 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> > > index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..014a24256b832d8e03fe06a6516b5348a5c0474a 100644
> > > --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> > > +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> > > @@ -1379,7 +1379,8 @@ static const struct adreno_info a7xx_gpus[] = {
> > >   		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
> > >   		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
> > >   			  ADRENO_QUIRK_HAS_HW_APRIV |
> > > -			  ADRENO_QUIRK_PREEMPTION,
> > > +			  ADRENO_QUIRK_PREEMPTION |
> > > +			  ADRENO_QUIRK_GMU_BW_VOTE,
> > >   		.init = a6xx_gpu_init,
> > >   		.zapfw = "a740_zap.mdt",
> > >   		.a6xx = &(const struct a6xx_info) {
> > > @@ -1388,6 +1389,16 @@ static const struct adreno_info a7xx_gpus[] = {
> > >   			.pwrup_reglist = &a7xx_pwrup_reglist,
> > >   			.gmu_chipid = 0x7020100,
> > >   			.gmu_cgc_mode = 0x00020202,
> > > +			.bcm = {
> > > +				[0] = { .name = "SH0", .buswidth = 16 },
> > > +				[1] = { .name = "MC0", .buswidth = 4 },
> > > +				[2] = {
> > > +					.name = "ACV",
> > > +					.fixed = true,
> > > +					.perfmode = BIT(3),
> > > +					.perfmode_bw = 16500000,
> > 
> > Is it a platform property or GPU / GMU property? Can expect that there
> > might be several SoCs having the same GPU, but different perfmode_bw
> > entry?
> 
> I presume this is SoC specific ? But today the XXX_build_bw_table() are
> already SoC specific, so where should this go ?

XXX_build_bw_table() are GPU-specific. There are cases of several SoCs
sharing the same GPU on them.

> Downstream specifies this in the adreno-gpulist.h, which is the equivalent
> here.

-- 
With best wishes
Dmitry

