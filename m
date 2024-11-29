Return-Path: <devicetree+bounces-125543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BAB9DE79E
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 14:32:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2F502815C0
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8637B19EEC7;
	Fri, 29 Nov 2024 13:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kB0Uur8M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C0819D091
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 13:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732887169; cv=none; b=eRoWPYPDi98RXP/xKBAE5xUmCV7jwOsrQ1COVuKXLxhXp9fRqJAczO+zRYkQoOztOfo9oiLx26PTOccUwo/zmhcCekL1VXV/jlzWOzkio0gvNaiaaYmYYHn4ZHk01izO3ebB3TqnmZ8naZTa3+jIJoVIWxZLVzPZitZvUylgIVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732887169; c=relaxed/simple;
	bh=ZKWLxg/koyEuJu/rxUtcz+091wbreZD9MH/W6cC6ZRc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EzrxjVBqauNmXOiu+B0HuUtvd42VrCG8Aso/xSslftjBqTRYF5d8tNJDCOkyj+7fOBUprOEyR6d+0DDlsaMd2kAB7WJUtigxXXuL0se8ObRnxatjlNqL1Frt6zx17t1NEvVGRndYpOmD/VYaQQdjwCAiz/UoI63Tbo7JcwmTmPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kB0Uur8M; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e3988fdb580so551371276.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 05:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732887167; x=1733491967; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4rk8EqcQBJedHgZVFcqE3LAsuROmL1X9WJEUhmB7OiE=;
        b=kB0Uur8Mevt3DUvNM1B9gBTjrMGPY/wTU+eu1+1dhytYuYWQ6njAIlpDqbtsnjzT2r
         +kw6DJ+x2pgQ5Zqi/nzGX/jL9Z8FxTE6qgqbhJxF4uZ5SuWUFUw/ZxI1fjkfy5ZF+rCt
         7CzCgGbpqBwC2YhmbVjHsO2OnHI0lZIXrTorqM1a8/h9zgKc2wL6sUdjnKOAe7vOf1cC
         XFDYMu7lV40gJvdzJ8yhFkb6NyyRl08Ag0OhnyCtUnIwTTL/BFH+qhMknxUHn0KamEmO
         3KU9UGJQGXD53t4vYPqIkgK5bchzXvJS4UZcfEESdInKRAc3IAApYw0mcKsbej9FxZec
         bAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732887167; x=1733491967;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4rk8EqcQBJedHgZVFcqE3LAsuROmL1X9WJEUhmB7OiE=;
        b=s0L2lkzANrtRpV9W1NnPBkCXVWqlIkqSyHZTu2Oqdfbz543yyOGmcl6xyro3/EbgA3
         XbUnicz6sHWryD85oEDwG5vvGcmEVY2k/mpNj5A1nhWaJZC/r90ITIYrLelHaiKRFKOR
         YoTGJzsfdQsbuvAtbnoaFjGAlyTccVW/seBFvZlRUTa4gEMfXyf+vSKy1vJBe30DlGaN
         JWYVtXABUdSqsoCEB6cctdD2gUbDJWFshYI3wj9SpEng/MXkY9CLmyAUIPiQAyX5k79r
         NQ0HF4/kZlrxM/osc4f0FRX8hb1cIhY7lCRVunHTyxUzTEYzMvmkXgfZD9fR7C7mCwiL
         4G4g==
X-Forwarded-Encrypted: i=1; AJvYcCVNMLuv5Wclh2LQVWvIvN6rsNJk+godvLWSWivrPsAkszjGqAeETb2fKK00DcEkHiuLuACEsIiGTKbE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyef35z9dKuN3XgwSasGM8fB7FUnuGVW3FLqU4UJD9XVeJ2VIsH
	7sIRS3yFJYz2+SMg+76eQDCxZc8NEgwIwsvAqMAX2Qs048OcxNZk61COe5lYX7uiQi4pz9X3I2H
	YZAjSLufs8aCqlk7OA16AIy1Lz5DrCAbLjlO4yQ==
X-Gm-Gg: ASbGncsr5lqfEcn+uicsd//2crrN1dLTFmGjGntOa7Tp8/XJLBLpjK0CPaceFnej15i
	7KyKfnr8rB4MlyYHqH1d0a5cd3l4V2yQ=
X-Google-Smtp-Source: AGHT+IHfjxXnTdn0iSp1AqYYDcm5/K9nEAphNu1TQKr2ozphQmTsKuv3nB1lPh4zZEbpx4kmGb4PSCSBKcPFfDN6tJ4=
X-Received: by 2002:a05:6902:1504:b0:e28:e407:610 with SMTP id
 3f1490d57ef6-e395b957479mr11164613276.47.1732887166767; Fri, 29 Nov 2024
 05:32:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com>
 <20241127-mdss_qcs8300-v1-4-29b2c3ee95b8@quicinc.com> <f5kqdxkhniwwxu6wm2q323vvlsfn3yyig7mfg3h5ctqo7jjxc7@7g32tirseuqs>
 <9821c4d5-8d1d-4bed-b3e0-879d0aeba017@quicinc.com>
In-Reply-To: <9821c4d5-8d1d-4bed-b3e0-879d0aeba017@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:32:41 +0200
Message-ID: <CAA8EJppDomrYvtJ46pi1_hDsf3zFeeTfrkQfVwE8UTN01KfKpw@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/msm/dpu: Add QCS8300 support
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Nov 2024 at 12:01, Yongxing Mou <quic_yongmou@quicinc.com> wrote:
>
>
>
> On 2024/11/27 21:49, Dmitry Baryshkov wrote:
> > On Wed, Nov 27, 2024 at 03:05:04PM +0800, Yongxing Mou wrote:
> >> Add definitions for the display hardware used on the
> >> Qualcomm QCS8300 platform.
> >>
> >> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> >> ---
> >>   .../drm/msm/disp/dpu1/catalog/dpu_8_4_qcs8300.h    | 485 +++++++++++++++++++++
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
> >>   drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
> >>   4 files changed, 488 insertions(+)
> >>
> >>
> >
> > NAK, there is no need for this.
> Got it,thanks. will modify it in next patchset.Compared to sa8775p, they
> use same dpu but qcs8300 has one less intf and two fewer dp intfs. Other
> configurations are the same.can we reuse it or a new catalog file to
> show it.

Is it actually not populated in the silicon? What happens if one
access those INTF_n registers?

-- 
With best wishes
Dmitry

