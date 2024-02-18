Return-Path: <devicetree+bounces-43185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD03885970B
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE6C21C20A57
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 13:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279B065BD5;
	Sun, 18 Feb 2024 13:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H5AFYKt5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9E77492
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 13:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708261619; cv=none; b=WRLAOLmUr/+oyHdVSFMs8fsYu8guGBnjzq9LZ3iZiBQz4t0e/+skksNnC1v8tGIxufeyK9ARL/FD6wKHjZjNiwu14ysOCCo8lBxtBFa2LXBWkeHTRRWB/DR7hEwpE9def8/zkyPbQE8CB2fnTnQcon5cyNFxKlYNVmfNXcCXmqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708261619; c=relaxed/simple;
	bh=j7efkgnv9Iz7iAuL4g0Pk1lRK1miSATAg1PG0Ezcnmk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pSSjmdkx9LQGA3/9DvHVJwABqEM2dROciHWHTQO2g3VLlNw36qXLSR111Pu/R7qHPSF2e/BPJjoLT8WobakO+VuZNx/RL4xSzPOvUbZc5L2ZhHlaf9Ph9z35rftPSoVS6ph/aXqNulJMVIBXPZlWwpiyEK6xmpDpcmjXe8WXZHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H5AFYKt5; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-608342633b8so907127b3.1
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 05:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708261616; x=1708866416; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YBVRcSBBuxFaTxHHxCFDbpb9aYFi0NsXjnHpoTC9kRk=;
        b=H5AFYKt5Rb03xW4y0DAqXtpN14YaPvd4Ix5nlihdM2yd79NtfQ8/X+LKes2wLzYdAr
         8rPnzMO2D35lYe9pKR5CHE6F94IruBLETCGBWWMTMfEAp6x88Gt9PhR2stbY/pjh0vyO
         4M7K6+8ty1l/+NC5iCzEaXk2frqBFBMRhCL6nTc913VFLx20aPnqZT6KQGkPZjwloe29
         m3a9rhLNw/D0FT8UhgFxh8cmIZ0tmSIJ+Izy6YGwRR+P5zInNZInNOyUGBVQAXGS1OsP
         ai8OQrunoSOHw/mpKifvbX7IVURFGBizqee/Bv04Udjo8DRjKRmq2E/bdJPRItXwL/LT
         SJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708261616; x=1708866416;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YBVRcSBBuxFaTxHHxCFDbpb9aYFi0NsXjnHpoTC9kRk=;
        b=RblmF/QvRDh/1StotMvD4H8DMQxz5wa8TOyN7ORow4LklIdbUFxnoUTNw9pU+gQn4s
         H33AqLaeQRQVjkAVzR3ONwIM5MirQnTIIIaJoYfvtMtH8+vSfBo/aI5GPPEnZZw28Dmj
         JTyonkku/BGhm+LEB3tzXSsAaUOn1wysnYws8kOkXX4RFtEvWCRHvgHU7Se6ioo5DDv7
         0zQTfe2Ku3TQIUzFZkRFULlIIxbO2HJqbbUjSq8XnO1QHp0Kvshe3xVEwMnQh3nTueAU
         qadtEm5dq0BNqe4XQE9YzvarAoLg9lmixn+9zYCsCO12nf4S7+w5MB21JCXd368mc+kx
         BmzA==
X-Forwarded-Encrypted: i=1; AJvYcCVMxXfMDiFaSQBQU2XBiYxTlGaE5cbjJqPJ+Nb8ZvulP/8Rvb4tEOoEMKYBCOPVrf306+oTBrq69LkJrO4eyhMjLhnfL1V4MyPQ9g==
X-Gm-Message-State: AOJu0Yz8mHwsUirG2RV6i7j2zIhPXYmR8FrHH6WcPiLlWYAzRjcfoSiV
	bKMqK2+AIv2s6CdQdz6a+UUL9Wowzg2kae36SZlnoA2m/3j0anndRCEJWrz4HzaOlmsaQym2KC7
	hCNlVif//4fHsAkGs7u99DQ5bP7WKmvSZ9fvU0g==
X-Google-Smtp-Source: AGHT+IFwAgLxBZXblOBulsbnsc4LQ+Pe2xER0SSlfwoxqWLXlBGUgn+4tkOT1j2KFCAC8mjhS4ohhc82TcyeI7dNm+U=
X-Received: by 2002:a0d:e2d6:0:b0:607:8c84:d474 with SMTP id
 l205-20020a0de2d6000000b006078c84d474mr9844866ywe.31.1708261616529; Sun, 18
 Feb 2024 05:06:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216-x1e80100-display-v3-0-28b1c33ac8c0@linaro.org>
 <20240216-x1e80100-display-v3-2-28b1c33ac8c0@linaro.org> <170810832158.3497594.1997532394027797497.robh@kernel.org>
 <ZdCbAjnga8HCMdYf@linaro.org>
In-Reply-To: <ZdCbAjnga8HCMdYf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 18 Feb 2024 15:06:45 +0200
Message-ID: <CAA8EJpqCKWih1OeMsynMHkS6CAoDTsgRXcv5YAPZNvLT3MfA8g@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: Document MDSS on X1E80100
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Sean Paul <sean@poorly.run>, Maxime Ripard <mripard@kernel.org>, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, freedreno@lists.freedesktop.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, David Airlie <airlied@gmail.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Rob Clark <robdclark@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Neil Armstrong <neil.armstrong@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Feb 2024 at 13:39, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 24-02-16 12:32:02, Rob Herring wrote:
> >
> > On Fri, 16 Feb 2024 19:01:06 +0200, Abel Vesa wrote:
> > > Document the MDSS hardware found on the Qualcomm X1E80100 platform.
> > >
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 253 +++++++++++++++++++++
> > >  1 file changed, 253 insertions(+)
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.example.dts:24:18: fatal error: dt-bindings/clock/qcom,x1e80100-dispcc.h: No such file or directory
> >    24 |         #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
> >       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > compilation terminated.
> > make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.example.dtb] Error 1
> > make[2]: *** Waiting for unfinished jobs....
> > make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1428: dt_binding_check] Error 2
> > make: *** [Makefile:240: __sub-make] Error 2
> >
>
> These bindings headers are already in -next.

However they are not a part of the drm/msm branch. We can probably
merge the rest of the patches from the series (once patch 1, DPU
bindings, gets reviewed) and merge this one in the next cycle. Does
that sound suitable?

-- 
With best wishes
Dmitry

