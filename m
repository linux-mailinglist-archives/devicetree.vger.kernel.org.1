Return-Path: <devicetree+bounces-10105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8457CFA9E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E26D1C20B0B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F49E225DF;
	Thu, 19 Oct 2023 13:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dFG1cjb+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1C0179B1
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:13:48 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B0FB187
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:13:46 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a2536adaf3so106440397b3.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721225; x=1698326025; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u5ChxAd/tAofPv7khr4Z6g73hAZNzmOJAjL/O4rF+Kk=;
        b=dFG1cjb+9/V16wKOVwYPMCamWFW3GTEW/Woju68SieEcec0+vf279DTCU4xqrGIf2z
         KG45eTcGp95GaOSFNK4kpMY7lKCEsSEL/M5hf8ovvz8NJ+Po2BShUlLXvluMOIQwieXi
         AVNXwUbTsWs5DPr/gaHUcCnnTNfblslxPd6IK0TCrGkdGhiiIJ5ngzWz85EP0++1Q0oQ
         MXH68ZGKNrlOiQA8gCcO+o9kwR8iwIZ9K6Gs6hw8mhNciDm56i1bLbu2tynWDyYPXKWX
         YRjJSD1qGLd32mb+0vyYXltFcJp8m3B2SVwkE7uxubY93to+g0/FbG3OjaD6E+OXWbfX
         B1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721225; x=1698326025;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u5ChxAd/tAofPv7khr4Z6g73hAZNzmOJAjL/O4rF+Kk=;
        b=nTkc+nsHz1zmq81dgSC/pcKDjUuGJY702XxRswV1IatZss1RdxQwav1ehysjpk7B0O
         gT6GrJb1+HaGfzyGE52YQoP8EvC1VpvelEt+1lsk1QwM2fdC1hfEy5aBnLs3ZDJt69CI
         CF7O18f5wnJYeo+MY2+OAxIV8rwDlJksppOsV9k5/JtI9IkswmsN25Mno26l8sSuZcix
         rx9RGoHhEtHnLGUru3q8nuKaN/VdUZaIxkneTEjquWVTdqSkdZGtgwfN1THoywDmuJnb
         0jdxbqoCREVXcAwxGd71Labp6er0sSQoECilp4Wxjpjfgy2T4lozW/xlBwDNjBxDLj/X
         905g==
X-Gm-Message-State: AOJu0YwbTMe+QLDiYQZgLtgFlWGNMB/qBX9hPlr2wjaPdIYMFX6tel8P
	IuRqwa0adQWvjOQZTusLHqb/krqesSt4DYpQRuzsSA==
X-Google-Smtp-Source: AGHT+IHHv5diCJ9edZeJViOL3pSd2253dXP9+SzRMkkAG2TKUPLe4GDcEKLsBUj2IrUb1nL3nyd6h1S4hyQu5T850po=
X-Received: by 2002:a0d:f281:0:b0:589:f995:eb9f with SMTP id
 b123-20020a0df281000000b00589f995eb9fmr2396557ywf.45.1697721225666; Thu, 19
 Oct 2023 06:13:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697694811.git.quic_varada@quicinc.com> <5e1c2ff9522dd29e69f286dbbe1c867433763629.1697694811.git.quic_varada@quicinc.com>
In-Reply-To: <5e1c2ff9522dd29e69f286dbbe1c867433763629.1697694811.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 16:13:34 +0300
Message-ID: <CAA8EJpp64kdRbGYSqP302FikKuP2MYmRGePN0zKMygShPsCjKQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] clk: qcom: clk-alpha-pll: introduce stromer plus ops
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ilia.lin@kernel.org, sivaprak@codeaurora.org, 
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 11:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Stromer plus APSS PLL does not support dynamic frequency scaling.
> To switch between frequencies, we have to shut down the PLL,
> configure the L and ALPHA values and turn on again. So introduce the
> separate set of ops for Stromer Plus PLL.
>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4:     Ensure PLL is enabled before re-enabling
> v3:     Use prepare/unprepare instead of disable/enable in clk_alpha_pll_stromer_plus_ops
> v2:     Use clk_alpha_pll_stromer_determine_rate, instead of adding new
>         clk_alpha_pll_stromer_plus_determine_rate as the alpha pll width
>         is same for both
>
>         Fix review comments
>                 udelay(50) -> usleep_range(50, 60)
>                 Remove SoC-specific from print message
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 63 ++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  1 +
>  2 files changed, 64 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

