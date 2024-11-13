Return-Path: <devicetree+bounces-121498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5929C6EF7
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:22:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D71101F21966
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F0A20125A;
	Wed, 13 Nov 2024 12:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFFeFxte"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E71201024
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731500492; cv=none; b=kj3fG1+rrcHqH5UwIpi8VOSUUqBURnjjXsivUQPh0DiTt2bsYkDM00Yw9zUJiRJowSrUCOV/E0RPFmjezI7b5VUIY16kk1UQ1XqfIO+E37zHcY1MFfLlZDcpYb49RYW/UjwF5pHeSoptfcIa4Ivk6LjOtKnxWy70+SLrcBRlF2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731500492; c=relaxed/simple;
	bh=Fjca1LWzFAdCd0y6iIxSu0s0Obt4f3zGnd1zEofN2SQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FLaOt2FzZ+znBpjI5KUFClFfjEMcxO4KdzdRKB+UdOXWJ+DiQisVUtFTVPUwOWGd8yaggdCxXyZzeE8KbVBJV2kJcQdaTuwvDrCAmjhqT66DHdtUEeIkZEkU+h2z5icL9ozApjDTTs4dgux/CyGZpoWGOq0VoehaGC+oIMHLzOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IFFeFxte; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e30d212b6b1so6360674276.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 04:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731500489; x=1732105289; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JsE6HZ0BDIdFm8pHUV9wjAijdgzctcE9O8piDmD3bwk=;
        b=IFFeFxte1uY32jKGhbDsyIdhtHi7tULp16Fe7422DFwk6FR4gOK6WbpC0mXh+jjcZB
         Cj1nXPLNBAngJVnV5N8mXMpgREZQqI7L3Ey9haiiM7+Ey1xMIkgLyFA7W7PdaENhOEm1
         EpODEMLFQiqW8JYty/Qti3C3a/YwlH7N9JpPjmk9KWGOOQuH0lx63OUX2oBLrKWXBEFE
         kZYn0DyviLtnhaGLziA388+iLjpbn01hpubtmm8/c41prnHwPjFWPE3xuE6PdPVMhW1H
         4zjaV7L7jyw81NQ05uqbhx95cQCiFjoR2HU9hE27EECHZesItmsctj1CL92OiV0wXwtA
         K/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731500489; x=1732105289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JsE6HZ0BDIdFm8pHUV9wjAijdgzctcE9O8piDmD3bwk=;
        b=I8dSHzspXQ+9vVQ1X9iicCi04jJ+bPpw0uiryzwIX3Vg2/q4+LIEWEI0e6GPaiQlHQ
         MA6LGepeD2bGVRFpwsMCV7qUKo2EhicPVrCxnMFaWwW3W5DpZGBJvW53e/K/ObSoODP7
         3RC0iPByhbfTRoWW72x6ar5nXuPOhVkDBUid7sAPkW43c/9AI9vv75yv0ItbgIwZ68tg
         ExtLS9ZFBIHjLjEno1psJASb18y32ejmtVrIdr1HUh0LMQKKizh3ZKAItssGegL0u6rF
         n6Wq1VH8XCVHRPI81aAR98VC+hAuAr9vlpVzpKP4vXJkNSOhK/nlPnKYG0AcLtggCK9U
         XU/w==
X-Forwarded-Encrypted: i=1; AJvYcCX8Ugl0ME2Tj39CnVvdk3Y5yJV2UIM0u214mMvmhuVJ2meqG6vdc5FByHAgKa/5ksymsN+XqiK7bIam@vger.kernel.org
X-Gm-Message-State: AOJu0YyzzJKBgExlVGFsKbpFOMUpkbvJQMHwJa1pJ0syb6p/F5WBoK4y
	Mw/J/gw7akIC9RP7cfBM2ByN1Qdnw681zlRpOZrerVmLd/Eti5SdGktVOM6P0znEl1KqQ26yvE6
	ihSB4nDCKXTiAnILN1+F7nv0F5RVD12xJHWqxlw==
X-Google-Smtp-Source: AGHT+IHlEW9Y6a6VKxz7Rj8wBbFwf85y1XuiF8DPZGiTfkNkpU73TSXFVeGlAI184r1k/vIlZa0la+oK03iLvn2Otwg=
X-Received: by 2002:a05:6902:1101:b0:e30:d443:8490 with SMTP id
 3f1490d57ef6-e337f8c6c9bmr18265860276.40.1731500489516; Wed, 13 Nov 2024
 04:21:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
 <20241113-add-display-support-for-qcs615-platform-v2-9-2873eb6fb869@quicinc.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-9-2873eb6fb869@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 14:21:18 +0200
Message-ID: <CAA8EJpok20-7HXJJbcJi8YZYCU68g_DGThR_ckjBEz0e+gGBSA@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: defconfig: Enable SX150X for QCS615 ride board
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 13:53, Fange Zhang <quic_fangez@quicinc.com> wrote:
>
> From: Li Liu <quic_lliu6@quicinc.com>
>
> For the QCS615 ride board, enable the SX150X to activate the ANX7625
> allowing the DSI to output to the mDP through the external bridge.
> The ANX7625 relies on the SX150X chip to perform reset and HPD.
>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c0b8482ac6ad7498487718ba01d11b1c95e7543d..599a339a19435efbee7a5ef80c093b0e8c65f7ff 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -631,6 +631,7 @@ CONFIG_PINCTRL_SM8350=y
>  CONFIG_PINCTRL_SM8450=y
>  CONFIG_PINCTRL_SM8550=y
>  CONFIG_PINCTRL_SM8650=y
> +CONFIG_PINCTRL_SX150X=y

Your commit message doesn't describe why it needs to be disabled as a
built-in. You are trying to enable it for all defconfig users.
Also the placement of the symbol is not correct. You've added it to
the section with msm pinctrl drivers, while the chip has nothing to do
with msm.

>  CONFIG_PINCTRL_X1E80100=y
>  CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
>  CONFIG_PINCTRL_LPASS_LPI=m
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

