Return-Path: <devicetree+bounces-5952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8E97B969F
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 80031281827
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144B2241FA;
	Wed,  4 Oct 2023 21:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tinl0shr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE1B23750
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:46:55 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253EDD8
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:46:54 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d8a000f6a51so375938276.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 14:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696456013; x=1697060813; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8qEbU8CefnmyxzPVcmg3qvbOFWDDg1iUYnbnQT6L2GM=;
        b=Tinl0shrzp19m4XiDWHqC6WzRpSbyrqImp1oJHkOlrs+S2eGP0oEuSBM2TIQvFYVS6
         Gzdwm8wR9+q7esAGFbkRDQbTlVVj589muZenASjN7ykYjEBhfRtr0Gp3aWV2/iN5ELaJ
         Zh674ntU0wrqp2QYGysNdxZLK+bgJv/I/vah0mb9FuR+QgAG3VYpeAiX87bOf6fSYYW1
         NfjNBoLa5LzES+jrsq1g8UvnHdt7fFlQG6KWUQ5e8EtC4D0kntNmFkdXZUB9lot33611
         bZhc6+wxLi9VP6KI1uuj+KMKxjkIL8+wTDBDrhu14lx1WQnyZvR749zm1v7gUkmgP/Bb
         faiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696456013; x=1697060813;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qEbU8CefnmyxzPVcmg3qvbOFWDDg1iUYnbnQT6L2GM=;
        b=oDtfLBK1OLWZPx6hT9mwZHHD1/mVVRm3zXd7iU9fZoki9yZdbmEVkQllM2OdXLsnm9
         hQYPRZ6smgymvUkxdXj27ilOErBuRJ6blIu0JzYTanba2YZwdIYGF298WhUfkxdKC4+7
         9r3LsVAKyeYfKNUetQTkqcJFMWs/kczbOQsmixvDegIZAxkJ2Al1ODbdASq/FO09d5Yy
         +zwNlqtZBQYXZEZ5M9Gbqq4cJFtKuI2CxRBfJlDVfn4Tkrpz1NYHZABjC4nkjfmR/J8Z
         iZn3jZjYF/LACVkDneE+d7NpzkINNRgUSijCkdklMRRtidb4D3KTI+vWXP4lMr13GWo3
         fFTQ==
X-Gm-Message-State: AOJu0YzYEPdlVhThcHZlsV0muN/Qjiz5XyLOyF03BMABzHqxljnxAlEq
	WdL0Aq9PhyadKU/DFuSdoUF1cVzoqdhAUeAHP9gc0Q==
X-Google-Smtp-Source: AGHT+IGM+a9ee3sjXYFYEDqq+rc6CPhFi39CeztSVz54fvnEXT/PKFZQrVPdT08OqadHn1ZVPfg/t+JMya8g7iT7sD4=
X-Received: by 2002:a25:b210:0:b0:d81:6344:540b with SMTP id
 i16-20020a25b210000000b00d816344540bmr3157985ybj.45.1696456013128; Wed, 04
 Oct 2023 14:46:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com> <20230927130734.9921-2-changhuang.liang@starfivetech.com>
In-Reply-To: <20230927130734.9921-2-changhuang.liang@starfivetech.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Oct 2023 23:46:17 +0200
Message-ID: <CAPDyKFruXQp83DdnX2wNMoC41NCVtKCq2NG_BoPqcc3D0NFhNA@mail.gmail.com>
Subject: Re: [-next v1 1/2] dt-bindings: power: Update prefixes for AON power domain
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Walker Chen <walker.chen@starfivetech.com>, Hal Feng <hal.feng@starfivetech.com>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 27 Sept 2023 at 15:07, Changhuang Liang
<changhuang.liang@starfivetech.com> wrote:
>
> Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.
>
> Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Applied for next (spelling mistake fixed), thanks!

Kind regards
Uffe


> ---
>  include/dt-bindings/power/starfive,jh7110-pmu.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/include/dt-bindings/power/starfive,jh7110-pmu.h b/include/dt-bindings/power/starfive,jh7110-pmu.h
> index 341e2a0676ba..7b4f24927dee 100644
> --- a/include/dt-bindings/power/starfive,jh7110-pmu.h
> +++ b/include/dt-bindings/power/starfive,jh7110-pmu.h
> @@ -14,7 +14,8 @@
>  #define JH7110_PD_ISP          5
>  #define JH7110_PD_VENC         6
>
> -#define JH7110_PD_DPHY_TX      0
> -#define JH7110_PD_DPHY_RX      1
> +/* AON Power Domain */
> +#define JH7110_AON_PD_DPHY_TX  0
> +#define JH7110_AON_PD_DPHY_RX  1
>
>  #endif
> --
> 2.25.1
>

