Return-Path: <devicetree+bounces-115700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 209FD9B063D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:52:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC8B61F22E4E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC2A16A94A;
	Fri, 25 Oct 2024 14:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rCKCZPrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E3166315
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867929; cv=none; b=ZrlFfznd+mHPEWFWqQ9s9Zbj7RXSN+xhd7ZUpMYT1JKeXCoCzvD0cNA35sZo/T+sxfJmKykz4EVbhkyYeyo2k7Eiy1Z16NZgqcnA2WN08WoDhvhjFgFXJBFAnBxp0Ie1HOvIQ4ohLim159mw7jRCYNoh4fkpdiSg18ZobOk2Jkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867929; c=relaxed/simple;
	bh=PR/HBC/9SdnqLv3iwd38ahFTmRtcv4jpMizzyfBx17E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J9uN+kC4qBNK4sWuxAE0Aibrbf7COyL/0hDsseJsr0rcjijjaqRmpwJi4O56FRXsjs+PGXS2K46salCaFG45jdjEfd5BrVeKh35hOMHGEqIg2OHu2Qel++wtRu4lA13xDWRp1Dv621q5gpORVGnAaz8INrOFEmGxpiBCdieFNXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rCKCZPrA; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a9acafdb745so402919366b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729867925; x=1730472725; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=linTMr6O6XhFYFc+VtOW5M19IlrPjzZArEaPZ8T+Wss=;
        b=rCKCZPrAUvxIrbdATtoDn3bl1t/LNHnXVrQJ3j+JMgZ5qtvXE2IvVveaJYfx88SYcz
         Va/xW4+fJoFn3eVeIAQMgHgrC9eMkeO/QPE51tVvbiNz0amxWMM3HO+N7vDy/678fvAt
         O9+nYzTw0QRbgaRO8hkUMocctzjF9jmcJQgL+VrYzK0kLZPPsRFSAGrvtE9sUGcB9Ljp
         t24eTLKvGtAJlsLMFv89HHFoRdVYv3t+OY6cS+f2OUiiJUwu+X8Z2qImHxXHL1kqN2HS
         BoilBWaWQGIRLDQrZmEJXyChhQrTok0bbZ465JFd0gW5jU6c+Q94vEdsC4MylHm4vsAe
         4EUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867925; x=1730472725;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=linTMr6O6XhFYFc+VtOW5M19IlrPjzZArEaPZ8T+Wss=;
        b=Elnohm1+rSOcluARxJJ+xiJO3byc60ybLXi4MBcTcq+WvxNMb62450SCDE5ZRbuD4U
         HfqtgEdg1z9DOjOI9VkqSj55j70utVQbCyFZFLe/0aHr6sH0aY8AmN6Pnub4626YGfHE
         8W3HnNl2+KDjfAGms5ZzqVit04+F+FsPGx4wZAHriA3WPfdXh1Qrz8JiaI010+lcXZFh
         Vz3U4ShTkaoSEXqqyRvjeISqgj7CsUJ7k/yiBgfbv5QbCqkJ2PCNlmID3bfyysdkn/zg
         sGp0WIhcZ/8MIA/+Xr2Pa/bwpfe7NyiW1bx7/dUvfLFvh66SWv75Mvs1Z5vQckk/c3nD
         3W+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUWLKrAmu4AfpYRGxxTZjIhLFQzmzSH/OrmuCajLpV6pe5u/5crkIccr1Sr6oCe2eEUW+qP4FFf/8xI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/9pkAjNYC+PJL35Wu2u30H+3DG7S5YNjHD2LSCzgIsxEcJoK4
	7EGyVwGfQBuBxpVeD6xA42/slkFpYUdUoPxUMttrJfIZrd5c1rhrMfriYC7kLlTRsnKz+/6u6kZ
	2spsD79Pqp7k84sWafbIZNQty0l3szzDlA/qLSA==
X-Google-Smtp-Source: AGHT+IEwfs/W3Owgk+RTmMlzdFuDGgmomxgsb+KMUloSwElRxnFSyypOytLKotVKhjZEiJNaWnl8Bz+gsTn3D052dQk=
X-Received: by 2002:a17:907:1c84:b0:a9a:8263:d2c7 with SMTP id
 a640c23a62f3a-a9ad199c2c5mr567345366b.7.1729867925486; Fri, 25 Oct 2024
 07:52:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017-sar2130p-mmc-v1-1-c84da16a001e@linaro.org>
In-Reply-To: <20241017-sar2130p-mmc-v1-1-c84da16a001e@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Oct 2024 16:51:22 +0200
Message-ID: <CAPDyKFqBAm8kC5HNsKKpszftqaVisL1wMuFVNSKtBT1soz9HMw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-msm: Add SAR2130P compatible
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Oct 2024 at 20:15, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Document compatible for the SDHCI Controller on SAR2130P platform.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index b32253c60919eb68f3cc0e1a37381f8cef748728..f2215de02e1b1f40ea9b11cb39f1ebc39d78845f 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -44,6 +44,7 @@ properties:
>                - qcom,qcm2290-sdhci
>                - qcom,qcs404-sdhci
>                - qcom,qdu1000-sdhci
> +              - qcom,sar2130p-sdhci
>                - qcom,sc7180-sdhci
>                - qcom,sc7280-sdhci
>                - qcom,sc8280xp-sdhci
>
> ---
> base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
> change-id: 20241017-sar2130p-mmc-7f8b32889e31
>
> Best regards,
> --
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>

