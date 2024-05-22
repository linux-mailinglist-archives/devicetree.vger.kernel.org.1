Return-Path: <devicetree+bounces-68510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FA78CC78C
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 22:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7501A2829E4
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 20:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B609457CA6;
	Wed, 22 May 2024 20:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bRHwC2Kn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA14146588
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 20:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716408001; cv=none; b=jBRNCUVAtid1nQ0C/7Ua9WVKaS4WL+HNN6xq5czuCTigAjj0pNDFKfWM2BU6xPthlYVM62tuBI4vP182/g1X6bCwwrKgOenLLweLHJtDrggxI8ZiPaL2IN47cc7HQS2pNv+wTCSAnPT6eA8QzrnJRMix/dBuNhIAmbYOv3rkmsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716408001; c=relaxed/simple;
	bh=KWaPFpkiq6hX3ztTPxaiJU9wUr0Fl+FZZDfeS7d7AAM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xt6cf/wndcxSZr7mBF4rGmDf+OKhhpcmemwN8wAL2wfGWHQ/cOLbX3xy3iOFWjMTmqU9S4fe8lO4y4LSigo9uH745HeNSchrOmkA8EExafH1Tdu0Jb2BYrLZY1gqmJkAtDbD3nWheA7YbC+br0yBZUAP4nM5+aEHFPqh85aZVJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bRHwC2Kn; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-df4f05e5901so682473276.0
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 13:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716407999; x=1717012799; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/qhl6IWId5wrM73iQzxcnHSvXyYaW/mKPzC9kbK3RJY=;
        b=bRHwC2Kn7ohq7NAVrn39v83fmbK/qWthpDXOTqRyD3E9/f4TAyfkjQZKTpzC7A0oQQ
         8hdO6A//Qsb3FDbQxrDa5e+ZnS3NvYDnU27JvL2dsZNHDm38WPo/hl6dxXZEhO7wWDmC
         yH/rvP9JVhksFMH35kNmETgMFuVmlmTTAqgUAQyvXJgFuHMzkdhRcPjNceibE/SxwVKR
         gtWxVqm4EoDjLamfaAUu3pJzpTQdlC9gCCm2J/IYm1CNXT9H49g/goviz4IsaxxPpP5a
         3rX96GdTyUzgjX+ZOMRqEZbhqpt88vfaYItOjXCE4rcxi1FVVyJhiHzXOhc85BaekFWD
         cBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716407999; x=1717012799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qhl6IWId5wrM73iQzxcnHSvXyYaW/mKPzC9kbK3RJY=;
        b=UVDY51+wj/3uwGQo9mHi9dtrNnGYLFGsGfnQ3CXrb5s5/fazwv0RWXUlTktTCTpYk9
         Emr8YDtKemO+SUv55vdN6vwWFRzhqNOXeHO1deI+6MZ6GslAUzCSn5yguKqStyiZFjLg
         oifh6ZV3DKqnRiWHemGEXVzL1lkwgvzOCxu14KDP49EGU0zRAomcDlD5ywV/r4ZUI8av
         Bm01Q/xzez2go6Cf75xbozD4Uow2Y5CydH9l3qajJvCyp5DPfKt90JV72TnSeaNR7hfN
         0TKL9OATHlvixC4oXkiZVOvEz5uudIzVn9iYXCKvqt9Yp1m1xuOM+HCBVgnlEJAiuv3k
         JVBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJEN172xb6qbEk9wfoAfIKa8MCHHquDpJh5+TX4vmh06qbnEcxVqS4qWRbjMCPysZOup0bqHb9kj9qaqIpivkGgqoFVCvrEg3j8A==
X-Gm-Message-State: AOJu0YzXoPoJhzL+sogFzrMMfgR0hIFRz3bmQzLVsrxW2KXycmWIosRr
	EhNCif2NxWlzQq5sY3dHmfxdK83F2R2APMl2i+lMCvSyRR3lAMEKWHHDq6UucAskzfUhh2CUzw8
	O4AkWaZ4HtN9spwuOI80va8z7iWeoXI1jobzAAg==
X-Google-Smtp-Source: AGHT+IFBdpHbxJ+yLv993NBkaZKCxzG+KUPF15873Oa8DQwzjjPnnwpp06GCFXfzkmTafg7JcepNq4qfLzPm44EJARc=
X-Received: by 2002:a25:2651:0:b0:de4:738b:c2e4 with SMTP id
 3f1490d57ef6-df4e0acfd9amr3345943276.28.1716407999068; Wed, 22 May 2024
 12:59:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org> <9fc7e388-d9c7-12d1-bee5-803dd6f1ca60@quicinc.com>
In-Reply-To: <9fc7e388-d9c7-12d1-bee5-803dd6f1ca60@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 May 2024 22:59:48 +0300
Message-ID: <CAA8EJpoWUEGX8fq5qxXUebA-E25ONycm4NXscFhXAhFwcJGf0w@mail.gmail.com>
Subject: Re: [PATCH 0/7] drm/msm/dpu: handle non-default TE source pins
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 May 2024 at 21:39, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 5/20/2024 5:12 AM, Dmitry Baryshkov wrote:
> > Command-mode DSI panels need to signal the display controlller when
> > vsync happens, so that the device can start sending the next frame. Some
> > devices (Google Pixel 3) use a non-default pin, so additional
> > configuration is required. Add a way to specify this information in DT
> > and handle it in the DSI and DPU drivers.
> >
>
> Which pin is the pixel 3 using? Just wanted to know .. is it gpio0 or gpio1?

gpio2. If it was gpio0 then there were no issues at all.

>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > Dmitry Baryshkov (7):
> >        dt-bindings: display/msm/dsi: allow specifying TE source
> >        drm/msm/dpu: convert vsync source defines to the enum
> >        drm/msm/dsi: drop unused GPIOs handling
> >        drm/msm/dpu: pull the is_cmd_mode out of _dpu_encoder_update_vsync_source()
> >        drm/msm/dpu: rework vsync_source handling
> >        drm/msm/dsi: parse vsync source from device tree
> >        drm/msm/dpu: support setting the TE source
> >
> >   .../bindings/display/msm/dsi-controller-main.yaml  | 16 ++++++++
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 11 ++---
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h        |  5 +--
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h        |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        | 26 ++++++------
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h         |  2 +-
> >   drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            | 44 ++++++++++++++++++++
> >   drivers/gpu/drm/msm/dsi/dsi.h                      |  1 +
> >   drivers/gpu/drm/msm/dsi/dsi_host.c                 | 48 +++++-----------------
> >   drivers/gpu/drm/msm/dsi/dsi_manager.c              |  5 +++
> >   drivers/gpu/drm/msm/msm_drv.h                      |  6 +++
> >   12 files changed, 106 insertions(+), 62 deletions(-)
> > ---
> > base-commit: 75fa778d74b786a1608d55d655d42b480a6fa8bd
> > change-id: 20240514-dpu-handle-te-signal-82663c0211bd
> >
> > Best regards,



-- 
With best wishes
Dmitry

