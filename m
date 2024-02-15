Return-Path: <devicetree+bounces-41936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24368855DF2
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:26:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3B0828C6AD
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B7E175AA;
	Thu, 15 Feb 2024 09:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="te1hOjk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F05217BC4
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 09:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707989147; cv=none; b=SBCd6v3tJj3jVscB2EcJY3dKEdj1FOw2K01OxiLdJVDNPVXmzAB/34UnZu9rrG4Ay3oitF23ekgjUdwnXSeukVOOXmHNB32Q2RItVtPaOO4/ohDjtw5YLXPlpspH9Enqt2RG1tJz4mgbUXlH8R2rXW2j+2JBfCDbxewZ7S0SEn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707989147; c=relaxed/simple;
	bh=ovUyhUiMjBKTnx4DSiTfVdweq3UHIu1azJ/rG3mlzsU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c1C1cdHhk4lWzqL7DrVHJhkIu+829JshvDvxluD74hMuDw5BfksEmDtOz+bLfnVlP/J0eqiUCCFMo6LONgYezWdY3dS+55IUrZlCDhAbyrJOZn9kpB74Q2FEN9O/Un1ndKZdmio9wES1detdSpoTejg0LEnb89mC5nRyT3atykU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=te1hOjk9; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcc84ae94c1so562857276.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 01:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707989144; x=1708593944; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ut8NlXOEY0y/ncuagbllCtcYDmgG86ebbFIp8z5hh8U=;
        b=te1hOjk9XbaUg0o+jvjaQb0DlHJh2hri0GdgTFcbE1PR1bAl8k5GFnANjnUflYHS6M
         l4wcXyA7Kvi97d3PFUnwOkiYLfONFwEwgh33i9AHB+dz0duApDOvblyL86Z+32Y/TLGd
         a06JQ726EjKwcKP31mI+8iqhNFocYW3YwRx1QZKwauRf32XHe90smEGAGZvMhWF2G0e2
         g+mStjP23DTNtYptuNz17TkVa3w60Sy1MFBDqw6zBbZFxKH/ORFR8lQzm3vyraIi6siP
         ZA9pPZGguq6QyxTMmOF9s9m0g9hApAYHXvKlpRuobpvY1DxMRlXOoTnUi//bl/ATeG2t
         UC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707989144; x=1708593944;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ut8NlXOEY0y/ncuagbllCtcYDmgG86ebbFIp8z5hh8U=;
        b=MfvxUr04RkpiVWd9E0Il7R1PXJeL9J416Y+/35PbhlI7hJX3eS+abxvlt0uykS7YGG
         KozPbg7EVamE0jRvDP7luaPzJuK4bqQ9dOxFbol/WKVAsSNxtUjv8saU+SR4w62f17nM
         S2ksgrrCwFTRr6F4JWwPcq7rxA0jwGLvUZXWSjzUCWSifKfeY3qRQ1TlJj9HyaFLdHpo
         Y6FWZEiWEjZKI7or2cBcua2pG/itSscBC6/A2n+/8tg5QsFK2LppSYmh7uePRf6P+q8A
         0Mu6/zFOo56R0AR4Jx6Oxo3jI3OC0fy3K8IdifMWgHmgNXUkeKDdDaUY6E83vSf7Qwym
         sOtw==
X-Forwarded-Encrypted: i=1; AJvYcCUyqMxAtihgGfgA5lEsJTNkuThC7PI0n2ff+CDSxttod0l+8npYqYmgstTfTwyPY0XlsKGO8GgzW70MfqXD1JYVaHmXHAWFLuzWIg==
X-Gm-Message-State: AOJu0YwXlIY0Xvt+3AhShfz52/VV0X/M1XK+87Brqavh0jQ6Gyh+NK0d
	w9rHhHc/QgXT7hHEKwFcOzgKxxp8creXNPwDySxy77LFVoiUv2iOIlNx039uFNEd3M1gPFdwUTv
	jDu/r3rZuKPXpmNBNqYRvsWswlmjAl0ZQQ+3BpA==
X-Google-Smtp-Source: AGHT+IGK2EB5aTs8BfG4jSsckxgl2EOaTmuQv0ycjxUuZs5Mb4QsZ7LrFpeHU2Kn6y9+s5eezLpdwLHcymkVAR1BGTw=
X-Received: by 2002:a25:7447:0:b0:dcc:273e:1613 with SMTP id
 p68-20020a257447000000b00dcc273e1613mr1232044ybc.40.1707989144074; Thu, 15
 Feb 2024 01:25:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215-topic-sm8650-gpu-v2-0-6be0b4bf2e09@linaro.org> <20240215-topic-sm8650-gpu-v2-2-6be0b4bf2e09@linaro.org>
In-Reply-To: <20240215-topic-sm8650-gpu-v2-2-6be0b4bf2e09@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 15 Feb 2024 11:25:33 +0200
Message-ID: <CAA8EJprpYEhGi5b+uWGWtOa+qbSwUR8C0j9NLC+ah_-nvy-=Ng@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: arm-smmu: Document SM8650 GPU SMMU
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Feb 2024 at 11:20, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Document the GPU SMMU found on the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index a4042ae24770..3ad5c850f3bf 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -93,6 +93,7 @@ properties:
>                - qcom,sm8350-smmu-500
>                - qcom,sm8450-smmu-500
>                - qcom,sm8550-smmu-500
> +              - qcom,sm8650-smmu-500
>            - const: qcom,adreno-smmu
>            - const: qcom,smmu-500
>            - const: arm,mmu-500
> @@ -508,7 +509,10 @@ allOf:
>    - if:
>        properties:
>          compatible:
> -          const: qcom,sm8550-smmu-500
> +          contains:
> +            enum:
> +              - qcom,sm8550-smmu-500
> +              - qcom,sm8650-smmu-500

Doesn't this cause warnings for non-GPU SMMU on this platform?

>      then:
>        properties:
>          clock-names:
> @@ -544,7 +548,6 @@ allOf:
>                - qcom,sdx65-smmu-500
>                - qcom,sm6350-smmu-500
>                - qcom,sm6375-smmu-500
> -              - qcom,sm8650-smmu-500
>                - qcom,x1e80100-smmu-500
>      then:
>        properties:
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

