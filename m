Return-Path: <devicetree+bounces-5953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CDE7B96A0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A3E7D281830
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2B0241FB;
	Wed,  4 Oct 2023 21:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cxH1nUU6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C1123750
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:47:00 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDCAFD9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:46:58 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a1d0fee86aso3005257b3.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 14:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696456018; x=1697060818; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tpTnpDJ8m5u92YyzRJIrb4UFVgAGSfyLUUGh9QrCbEs=;
        b=cxH1nUU6x2vefMLkWSdvBIHTVHCwhRcorKMT7bToAafoDfONZ1TQcx1h/Hk/4IqR0V
         D9aSi0+aTp1z/LgiZAPab01nNv0v7YCyMJxH5VN7HYeV2QirqyOI5MpkNTLnorxkbigJ
         eV2q8CfaQbut00/10H5G4wdRh5bcL0zWp+oRAW/mzJhX7Scnh5lByoJgJx7q2VWdptTd
         0WaqwQRqa5FggbzDakARe99KG2zY+pXkbtfueU7DJAEbkuUH6gHqae7hfsMVnKmXF4Hi
         a5mxZ/AW49dC8PqxofQ/hxAPkZks3i+EXbfLFcxYXUSbiPpiWoSjnpf3z/7/kri+lIjT
         0Xqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696456018; x=1697060818;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tpTnpDJ8m5u92YyzRJIrb4UFVgAGSfyLUUGh9QrCbEs=;
        b=oqaIp8Kv/iH6/ti3rcEW6HHZG8wuq2Ulz9XWyXrjPkyFVT9+SClGSvP7PSdoqFQ/DJ
         F7pvINAoiaRx3Dkle8GVhu8s3ZSCZZMJSjI3+XfxMsGCHAyUobAo/j54oOgNY+uBhjrX
         xGiB+B8DIui57DPqjONzmoYaWRwInQkXXBu52+c4fCJ2LU5yIl0p8lPq+p4DxJnLcsul
         iv6NoztwBgizT5g45iVXL08a7qcGAahqizYRhzH9lov0Pw98eqlIXLmlnQmNBolw1vVm
         +uI5I9d6AG3vjxa6PrAU3VKUPBJFe6CXkCCE21u0xVHt0CXfKfL3EMS6+IY6/eL2iqh6
         ExzQ==
X-Gm-Message-State: AOJu0Yx176nXhFGNjxZUyHW2fHfq0PF0un9S9zXhnENPqA5p6xRa0q1b
	Uhg2ThGKCkqjnx3NJEDlTwyls7q6iHcG7YM7SrFj9g==
X-Google-Smtp-Source: AGHT+IGRAT6txNT8z5BHKJlzrsBs/tEhnvh+ByZd2oleUCBulCvOS6ym+tk5iY2/WHH1JuKvU7PVGteknDPUUHfWA/w=
X-Received: by 2002:a25:9cc2:0:b0:d85:abce:3f43 with SMTP id
 z2-20020a259cc2000000b00d85abce3f43mr3251502ybo.38.1696456018079; Wed, 04 Oct
 2023 14:46:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com> <20230927130734.9921-3-changhuang.liang@starfivetech.com>
In-Reply-To: <20230927130734.9921-3-changhuang.liang@starfivetech.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Oct 2023 23:46:22 +0200
Message-ID: <CAPDyKFpQr87+SxGpX=KBYF6sCJJqcE84ugttQ9Zkuqf3iZDLmw@mail.gmail.com>
Subject: Re: [-next v1 2/2] pmdomain: starfive: Update prefixes for AON power domain
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Walker Chen <walker.chen@starfivetech.com>, Hal Feng <hal.feng@starfivetech.com>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 27 Sept 2023 at 15:07, Changhuang Liang
<changhuang.liang@starfivetech.com> wrote:
>
> Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.
>
> Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/pmdomain/starfive/jh71xx-pmu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pmdomain/starfive/jh71xx-pmu.c b/drivers/pmdomain/starfive/jh71xx-pmu.c
> index 2724bee7e85f..74720c09a6e3 100644
> --- a/drivers/pmdomain/starfive/jh71xx-pmu.c
> +++ b/drivers/pmdomain/starfive/jh71xx-pmu.c
> @@ -419,11 +419,11 @@ static const struct jh71xx_pmu_match_data jh7110_pmu = {
>  };
>
>  static const struct jh71xx_domain_info jh7110_aon_power_domains[] = {
> -       [JH7110_PD_DPHY_TX] = {
> +       [JH7110_AON_PD_DPHY_TX] = {
>                 .name = "DPHY-TX",
>                 .bit = 30,
>         },
> -       [JH7110_PD_DPHY_RX] = {
> +       [JH7110_AON_PD_DPHY_RX] = {
>                 .name = "DPHY-RX",
>                 .bit = 31,
>         },
> --
> 2.25.1
>

