Return-Path: <devicetree+bounces-104751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D376A984104
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01E7D1C226DD
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E97C1527AC;
	Tue, 24 Sep 2024 08:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANZswWB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6496152160
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 08:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727167709; cv=none; b=QPrS2SyoZO4bjAY+O3B6MeHJuuv7JgxfiHqki2fPMlUarJ6QRURZxyoRsdka16H8YkiHwCV/SNM3CZ+L5fkwTWmycd/AgruJva9EHufPJ+6+tr+cJwe+xjP9oLihoqBCycCMWMb5X+Sab1IvMvO59FKx+mqy7xwmckvY4mxbsuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727167709; c=relaxed/simple;
	bh=0yqEWSs7GVnNVj9B86DTJColxU1Lh2YPeaXfonjzaq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PryhrKOqm0p1E3KzE4QXzWiyLazm7hoR5vKMXLGagpwoPFPZH5dJ/lEMQUtXfzjAuC5vB6BOrBCVZBKqaSvQnZa9JvmeBHiw6cDZF5K1PhGA7Bmx4bNSb1rbNA7O/2y9OvBw+f4zltrUwHwlr5y3Pu4L0PjGtwbSCADPbj69QjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ANZswWB4; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6ddceaaa9ddso44709647b3.1
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 01:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727167706; x=1727772506; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O2BW7rW1FYVjlIde6zrnL8EA7RyRxs80o9NImTHzZY0=;
        b=ANZswWB41hz+1U4yP2nFLn48z/Y3iaDEX5SZHJnD/eP/lMRsBsrTI7DU2A8Q09+NTd
         jOWMYaMfbHA2+wxItI7jKAJzM3C2uhH3wGXF6YQgiPPSYVk5w5TGeqlHz1LgS4O7ygeM
         XUiL6GWPXYDuPqivk064mcB3lRFDGI4XlnH6T/1rGhMgWzIFBKweEnZKEqFqCab9+O31
         gdSykt1bAkBgpoRhic9aCwvheAOn0jY+xO6PxZ7vAVXQLEexWW5P16BEEW1pTXo0VpNk
         dH/K2nF8Rr8CWP+I4LlUepuBNpKcMRQkuk/C3ghzgfAk25Z+uAnv0d/Bu2JquWrLOZFl
         TMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727167706; x=1727772506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O2BW7rW1FYVjlIde6zrnL8EA7RyRxs80o9NImTHzZY0=;
        b=oKlAZ/8Y2YY4l/PWewhr+6DC2V0OTkoBAWjY5sqKfIls+ekBY2IJ1bZU6klWAXPCxW
         i+BKssF8mlWXCLfuWoiAaI9KlQJaOI4x8eTK4t3KUV1cw3Jiny4twMd4m7AyInN8cC54
         d2+WesHoYg0Fiak3w3XU2PNWoRzOn7HDAqhH0aq11ICufhB+vxRrGKS+qNf371pCgp90
         2iHyc8r7UyKsag46xJQp+TNBwhy+2oEak/fMc3y3zGpT4P3tD+ZJAvt0dcAB14iwaO72
         UJTBEiBnnuKX2Q47QVmbnCQERYNZ4c0LO5cIcCBYlYkKGok3jHUNfF8kFHek80W/L0SJ
         iP0w==
X-Forwarded-Encrypted: i=1; AJvYcCXmuiPrDMz4+lUVkcVmL3YpjV+dWPDyvoECk1/UEl8fSa0AxU2ltWlVRIyBcVw6bueioPlIdf1cTEjp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk7DD1KJC+E/Q8Bfzaj6StZmUsT9vnIFzqJenBXpLgC0u7F6aZ
	HCWIeJnAzIQp2FDhj8ftrLj/ja52UL9La4Md4hc70Jgkx1bcjTGyW3Z1eNlNq0oR8sAgd/wHWzP
	6ToM+O8qhMO0+lakTPVEe6FWFA4uOvS43ZKBTNA==
X-Google-Smtp-Source: AGHT+IFCb5BRAlbLnAzwWjcBmVLE/ekCw6xTHW2PJeqbqJNzwemf1kqX/aZu6O5ynInq2xTnD+jZsJNpJ4482s31YGo=
X-Received: by 2002:a05:690c:3005:b0:6dc:45ef:d933 with SMTP id
 00721157ae682-6dfeefe56famr87702667b3.43.1727167706566; Tue, 24 Sep 2024
 01:48:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240912071437.1708969-1-quic_mahap@quicinc.com>
 <7fcbvouzb7gq6lclrkgs6pxondvj5wvutyw3swg55ugvzfpvd4@2ph7x7ulxoyv> <013459fd-fbb0-4225-90e3-a16115154646@quicinc.com>
In-Reply-To: <013459fd-fbb0-4225-90e3-a16115154646@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Sep 2024 10:48:16 +0200
Message-ID: <CAA8EJpooSPgUbZdvDeQcrauAU80sL98uVojVhrK++8=+atsj7g@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add display support for Qualcomm SA8775P platform
To: Mahadevan P <quic_mahap@quicinc.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, swboyd@chromium.org, 
	konrad.dybcio@linaro.org, danila@jiaxyga.com, bigfoot@classfun.cn, 
	neil.armstrong@linaro.org, mailingradian@gmail.com, quic_jesszhan@quicinc.com, 
	andersson@kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com, 
	quic_vpolimer@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Sept 2024 at 09:16, Mahadevan P <quic_mahap@quicinc.com> wrote:
>
>
> On 9/12/2024 1:26 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 12, 2024 at 12:44:32PM GMT, Mahadevan wrote:
> >> Add support for mdss and dpu driver on Qualcomm SA8775P platform.
> >>
> >> ---
> >> This series depends on following series:
> >> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/
> > As such, it probably can not be merged before 6.14 (the mentioned series
> > will go on 6.13, we usually don't do cross-tree merges into drm). Please
> > rework the bindings to drop the dependency (it is possible, use fake
> > nodes instead of using dispcc + ID). Then you can specify that only the
> > DTS patch depends on the dispcc support, allowing driver changes to go
> > in first.
>
>
> Can we use clocks = <&dummy_dispcc 0>, <&dummy_dispcc 1>,
> <&dummy_dispcc 2>; instead of  clocks =  <&dispcc0
> MDSS_DISP_CC_MDSS_AHB_CLK>, <&dispcc0 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> <&dispcc0 MDSS_DISP_CC_MDSS_MDP_CLK>; in dt bindings?

Please take a look at how other platforms solved that already rather
than inventing a new way. For example, see sm7150, sm8650, x1e80100.

>
> >
> >> ---
> >>
> >> Mahadevan (5):
> >>    dt-bindings: display/msm: Document MDSS on SA8775P
> >>    dt-bindings: display/msm: Document the DPU for SA8775P
> >>    drm/msm: mdss: Add SA8775P support
> >>    drm/msm/dpu: Add SA8775P support
> >>    arm64: dts: qcom: sa8775p: add display dt nodes
> >>
> >>   .../display/msm/qcom,sa8775p-dpu.yaml         | 120 +++++
> >>   .../display/msm/qcom,sa8775p-mdss.yaml        | 225 ++++++++
> >>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  85 +++
> >>   .../msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h   | 485 ++++++++++++++++++
> >>   .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |   3 +-
> >>   .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   3 +-
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   3 +-
> >>   drivers/gpu/drm/msm/msm_mdss.c                |  10 +
> >>   8 files changed, 931 insertions(+), 3 deletions(-)
> >>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-dpu.yaml
> >>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> >>   create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
> >>
> >> --
> >> 2.34.1
> >>



-- 
With best wishes
Dmitry

