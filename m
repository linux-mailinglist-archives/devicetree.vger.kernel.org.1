Return-Path: <devicetree+bounces-12904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B25A37DBD45
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:00:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDCD51C20899
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA5718C14;
	Mon, 30 Oct 2023 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yf7bzi1P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6505918C09
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:00:44 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37017110
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:00:42 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so3212816f8f.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698681640; x=1699286440; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NKk2V4+YytGbf7Kubv6ahLWsu9n3OHUmke4aOKpHn8o=;
        b=Yf7bzi1PG5ut2cbQ1LOqoqr+9MFgeva2chErIQxn/qrNCkvGKnw2V2osoLDat5DQbp
         HquBd/SqGgflnr0n3esqw2t34IT8xMjWG02NgBUdA6epG+X404cssQhd3+5TL7ljxbm5
         7/o4eUGGLLS/MI87lBWz0goSvZLH7XKb2FzkdYJcVxkECGYYIDp5NhYQAy7I4DRhHfov
         viZ+cH4VtzYpBGpckD5nwSu23HJRlSeTfuMXnf98UYTE77pkTz7bp6RntYv++JlTIi8m
         6Z02UPjjxzqIR53qJSxSu4U57WuANdXs1+buoKEIiU7jJNW5CV1nwmA7elQ3ZPR4LaEw
         nKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698681640; x=1699286440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NKk2V4+YytGbf7Kubv6ahLWsu9n3OHUmke4aOKpHn8o=;
        b=ceElhd3bEhjO9Hr3E3R9fnBKupUVaKxcDWHK8FD6U1LY70kY1CNntNU4feP0aLQNfN
         0PHXMZbs6+9i8OuDCmc3W1mO1aKglDxfz2UuoT100e7/rUj1ES8NDmy6rpQa9sEzVEOD
         LeA6Tt8uLBS5SAhq1mpGRWPr2HnCKxNayvb3KyDQjxj69MKEtoSw46aPMOVN0w0tj6cX
         9EF9/E7k7krIlXy5+yUL54uDsjxOPj3REOASDd7pohe7Zgnykg/kuWK8vpe6X/Q1W9ZO
         mplgZejUTBv2Fg6V3KSOXfzqIha+hOyK9vnnetyqdPPTUNqv6AYuJLByVFdseOsfygKL
         mAXg==
X-Gm-Message-State: AOJu0YyozJUDf+gFvZNZ/dMiDMknKKyEAYMTX4+eV09IV3XQ+uYZ9Coc
	0lt1HQy10cxx4G4iQVds0IIoxQ==
X-Google-Smtp-Source: AGHT+IFgDOW6Z+sEemwwIK9J/rhKUnbKudXde4JZ+gqlGYM31QGNGKxbw5dTfoiWkoWDrgoIQbN6HQ==
X-Received: by 2002:a5d:4842:0:b0:317:6513:da7e with SMTP id n2-20020a5d4842000000b003176513da7emr8040501wrs.36.1698681640485;
        Mon, 30 Oct 2023 09:00:40 -0700 (PDT)
Received: from linaro.org ([86.122.213.220])
        by smtp.gmail.com with ESMTPSA id h16-20020adfe990000000b0032dc24ae625sm8575499wrm.12.2023.10.30.09.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 09:00:40 -0700 (PDT)
Date: Mon, 30 Oct 2023 18:00:38 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, catalin.marinas@arm.com,
	ulf.hansson@linaro.org, agross@kernel.org, conor+dt@kernel.org,
	ayan.kumar.halder@amd.com, j@jannau.net,
	dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
	m.szyprowski@samsung.com, u-kumar1@ti.com, peng.fan@nxp.com,
	lpieralisi@kernel.org, quic_rjendra@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	quic_tsoni@quicinc.com, neil.armstrong@linaro.org
Subject: Re: [PATCH 0/5] dts: qcom: Introduce SC8380XP platforms device tree
Message-ID: <ZT/TJtlHrXXXr7X1@linaro.org>
References: <20231025142427.2661-1-quic_sibis@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025142427.2661-1-quic_sibis@quicinc.com>

On 23-10-25 19:54:22, Sibi Sankar wrote:
> This series adds the initial (clocks, pinctrl, rpmhpd, regulator, interconnect,
> CPU, SoC and board compatibles) device tree support to boot to shell on the
> Qualcomm SC8380XP platform, aka Snapdragon X Elite.
> 
> Dependencies:
> clks: https://lore.kernel.org/lkml/20231025133320.4720-1-quic_sibis@quicinc.com/
> interconnect: https://lore.kernel.org/lkml/20231025134049.9734-1-quic_sibis@quicinc.com/
> llcc: https://lore.kernel.org/lkml/20231025134632.10363-1-quic_sibis@quicinc.com/
> misc-bindings: https://lore.kernel.org/lkml/20231025140640.22601-1-quic_sibis@quicinc.com/ 
> pinctrl: https://lore.kernel.org/lkml/20231025135058.11268-1-quic_sibis@quicinc.com/
> regulators: https://lore.kernel.org/lkml/20231025135550.13162-1-quic_sibis@quicinc.com/
> rpmhpd: https://lore.kernel.org/lkml/20231025135943.13854-1-quic_sibis@quicinc.com/
> 
> Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Here is a public tree with all the support currently brought up
for this platform:

https://git.codelinaro.org/linaro/qcomlt/demos/linux/-/tree/sc8380xp

> 
> Abel Vesa (1):
>   arm64: dts: qcom: sc8380xp: Add Compute Reference Device
> 
> Rajendra Nayak (4):
>   dt-bindings: arm: cpus: Add qcom,oryon compatible
>   dt-bindings: arm: qcom: Document SC8380XP SoC and boards
>   arm64: dts: qcom: Add base SC8380XP dtsi and the QCP dts
>   arm64: defconfig: Enable SC8380XP SoC base configs
> 
>  .../devicetree/bindings/arm/cpus.yaml         |    1 +
>  .../devicetree/bindings/arm/qcom.yaml         |    8 +
>  arch/arm64/boot/dts/qcom/Makefile             |    2 +
>  arch/arm64/boot/dts/qcom/sc8380xp-crd.dts     |  423 +++
>  arch/arm64/boot/dts/qcom/sc8380xp-qcp.dts     |  398 ++
>  arch/arm64/boot/dts/qcom/sc8380xp.dtsi        | 3267 +++++++++++++++++
>  arch/arm64/configs/defconfig                  |    3 +
>  7 files changed, 4102 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc8380xp-crd.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc8380xp-qcp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc8380xp.dtsi
> 
> -- 
> 2.17.1
> 

