Return-Path: <devicetree+bounces-18378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 454A07F6414
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 766FC1C20D2E
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F9EC24A09;
	Thu, 23 Nov 2023 16:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tp3RPnxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1285D42
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:39:15 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-da077db5145so1020035276.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700757555; x=1701362355; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0eTdj9miWeM4U+bp189+wCGxZuG/z71lDB6h3m9Wk18=;
        b=tp3RPnxgavkp+8Ls+BdGNu+yTGMAMwPL1bsD7oxXawfeMMySkuamNgStNXIqUv3KLE
         l5dsXwuDKPLCMC2aSG2D1L4wWm+kKbJ/uJlnxX/uqTq6RYG+qhGITTyQ8WCiveud1waf
         fcJTtWoEDfhehzOW/zhaO3dXye9wvfIOmQ3vUrhInnImmCPKY/6mpL4xHSDqAtkQpCjt
         lckXAc8HQL+KFIfHuMrPSCItsihpI6Xad9gWmW3BLHLl6Rhe7v/Ut4YNa3O2mLwdTTCq
         jCZCxJhay8p8mrb4t/ZivakfTqG3yg2Lc+i4z8+LAFWwZ3Dn59FJ3D3YKnwFP4WTDigP
         3rIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700757555; x=1701362355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0eTdj9miWeM4U+bp189+wCGxZuG/z71lDB6h3m9Wk18=;
        b=XNVZmnjs8M4IHmajEUys2yuyXS9xKnxOqz4lBjG9ZgYJhQA69lFxfhoapk5/SLuWOi
         89jhWXdcyN0iGeHC7AFV6xTZy35xcMM6eJUagm+wgpjtsLOBEUD38xQl8jzF/cASot7W
         qipgn/eqwmba3QtQNnWzbh2uJ5N00f+Wd3L6SZ9+hsnz7sP2zZkhTKp+JBiOeExvsQuO
         u5ACuHD6Q3pbfrFH1GmKOqHYdZPwrTuhbn42hCQuCkFOb/b2Ncj3rXIE6x1zzDF4dxCl
         3wTJHpt/IQEvy00uFYglT7QHsm/PKZ8j8omEK/DFYhQr+g6dfoZSAxcHDGyYZeg2smpJ
         MDuw==
X-Gm-Message-State: AOJu0YzsjBcGgi66mzoVe7YondDUwuyVE0SYRb4bi4c7O6+1YSZ85SAO
	UB4mRhccC6w/EX9Y4AYcfu13IKZ7EtpHzx4jVDZg4Q==
X-Google-Smtp-Source: AGHT+IEvXn81cNYK+IH1RhWt+nLuhiDh2Z0MjG/kWfFXbI01hwighqvsvEk41nf/V7A86F7avZeTYr0TTKlSd1xH90o=
X-Received: by 2002:a25:d08b:0:b0:da0:470c:868f with SMTP id
 h133-20020a25d08b000000b00da0470c868fmr5952168ybg.51.1700757554924; Thu, 23
 Nov 2023 08:39:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231123100021.10918-1-quic_sibis@quicinc.com>
In-Reply-To: <20231123100021.10918-1-quic_sibis@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 23 Nov 2023 17:38:39 +0100
Message-ID: <CAPDyKFo5Jb=YWCZ9QvVScUDpbLAFehuXs4BBAHuCERsGFrdS_g@mail.gmail.com>
Subject: Re: [PATCH V2 0/2] pmdomain: qcom: Update part number to X1E80100
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, agross@kernel.org, conor+dt@kernel.org, 
	quic_rjendra@quicinc.com, abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, quic_tsoni@quicinc.com, neil.armstrong@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Nov 2023 at 11:00, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> Our v1 post of the patchsets adding support for Snapdragon X Elite SoC had
> the part number sc8380xp which is now updated to the new part number x1e80100
> based on the new branding scheme and refers to the exact same SoC.
>
> V2:
> * Add more details to the commit message on both the patches. [Krzysztof/Konrad]
>
> Sibi Sankar (2):
>   dt-bindings: power: rpmpd: Update part number to X1E80100
>   pmdomain: qcom: rpmhpd: Update part number to X1E80100
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml        |  2 +-
>  drivers/pmdomain/qcom/rpmhpd.c                       | 12 ++++++------
>  2 files changed, 7 insertions(+), 7 deletions(-)
>

Applied for next, thanks!

Note the DT patch is shared via the immutable "dt" branch.

Kind regards
Uffe

