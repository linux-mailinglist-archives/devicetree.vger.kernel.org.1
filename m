Return-Path: <devicetree+bounces-29351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0429822659
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6004B284A28
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419D2A38;
	Wed,  3 Jan 2024 01:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N2lIAPNw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29C31C32
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5f00bef973aso31943597b3.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704244084; x=1704848884; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B6u8fNDV7HvN/a/qUTvksSfaPIU4anKT96Zwk1DUGtI=;
        b=N2lIAPNw071aTUdgQSavEWV0h8vVOcu5wpgHA8HhHoNRz7nGP+igO7/cewob2e5brm
         +H32RoT8eBfyRU8gQFWqrGEtV7PCv9mcO1zrMEqTOuLo8jGlLhDoOVBQggRmKQNJ+9Em
         qRVLt/WjgbkwVrx/32G/ofXyEWj0XrGVpC6llEDZj2begtHLVWLoR8ez5jCmaAWBc1hw
         w6Ko4gyJ+d4L4behmCrUOHp3JoxGhkWAKysRAM8H7i8kxk4nv7HSdyvVcDLjY+hbfBCc
         nrZIPPL22a1Cy+GKmDkVAF5k25sjWeDhocWomn2hdoHd6ZxwIccLNt3mfowSxQV1uBaO
         xMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704244084; x=1704848884;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B6u8fNDV7HvN/a/qUTvksSfaPIU4anKT96Zwk1DUGtI=;
        b=E9i1R621aneopJZWEraqmM7uMnSrHoykUCaniTJ6q/glhrE3Ub1Bsk33/mNAvGyyW6
         XzJfk+cG5p1bdNXOQcFKpx8YY7zjPIicRqxP3wEt98D9wRygG8mSJDMyEJKWAcDTIxH9
         7gWqZPpIAOcA7P3ESpP51nQYKfIUo2Q/q3VO7LtBQjIeRfNurGmVDt7ThR1zcsmwrAAq
         Zlo4zkBR3hQofX5ocEgEOlNfIUCP2Wqn80RNlavSKBQGl+4Lrl7CBlwiaZZ4ZvHaM1Xw
         PecDG2RI7gYVBObBcE0k+ARM8N08G2PIbsB+RVYKvvdDZ7M/yxkij7Uhp4Gr1f+KRVOD
         PxPw==
X-Gm-Message-State: AOJu0YxuZSWT/MNBXMhMnvYE6/mPDB0tvsD3U5Qn76kTnHkxZYUpfQk2
	t3Y9fxhBkYI5fkzQiglepgVl9+mlLDcHwkTF4uFm5Nu5nlXpzw==
X-Google-Smtp-Source: AGHT+IFU8dvqBeK3b292JYA2Ofa6I4Y0KeJfKxPkNWJVJVw3ujB8Bf4cociKBKsXp5/Fnt3LtuHieKe3hiFBfUCfteA=
X-Received: by 2002:a81:5483:0:b0:5e8:ecff:bd45 with SMTP id
 i125-20020a815483000000b005e8ecffbd45mr15157149ywb.60.1704244083841; Tue, 02
 Jan 2024 17:08:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-10-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-10-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:07:53 +0200
Message-ID: <CAA8EJpquD4c7LgxojrRg1GKZbAem-6vRtOXKAUN6rBeRN2PGtg@mail.gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: qcom: sm8450: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones. Also, update the trip point label
> to be more telling, while at it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

