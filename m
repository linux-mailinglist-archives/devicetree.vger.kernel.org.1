Return-Path: <devicetree+bounces-228154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF7BE8DC0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79C7D40147B
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB3F369970;
	Fri, 17 Oct 2025 13:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OW6YrPiI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15303570D8
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707867; cv=none; b=if1jg9fgJwaT5/T7oPDKE2q9qiMT+OCrsZmVMZ6AuOa1DaTaJx3RbyT4wF1fYulj71qb3uKl5tCvho7wxgBR3UpguRGhwhPiXKVdIAp0RzdWdGcEEkyBPLWJ558cDehSel2LlVV2s1Bt94i1/3UUOtfYtoA0fU0mw3+epQBynnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707867; c=relaxed/simple;
	bh=dE9/ua2G+yDuGUrL76DK4p0HBiiblfdcYkaY/cxGS8I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RgFsA5wPdQI0P29e2Iqw43WERSGs9YMOeXoXv9QO7QUGf3q94cTBuNd6ICNAC8z3yZljv9bFw0Bmo2LEjT4OqYVbE6wFkRQaAVnKNgqg/USGIL8gEBVJ6l42PFdGFEpAZlFWajHWQtQNalsuGDqzItqpiNd/p2W+mhKBh/qoyME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OW6YrPiI; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-63bc1aeb427so2041266d50.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760707865; x=1761312665; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f1HM0d52xL5++z1kGRjypoT65pMC3vnmCE9M/Z2HtkI=;
        b=OW6YrPiI8mXZzqqXJt3uJxufH6bnjTxOMFucnUji6RStU8NHoxAzwjcPK4FYI3IRo5
         5N71rh6FfaHLxLTteOMJpfQgVfoeaFoLigIVCYbrk9+89wooLtXjjAZkmW+T1/7z9gdQ
         JvKztkTF3sC5FN0wTfryrXCpoc42XClvMn1LtsmvqBIRVoZn6YJOHXiQW+LBTQAd53qv
         V/gPoY/0L9+tAnXZ8icBL1DRZ//5Gl7R5tXKCHCVACKNQ0p3Hj4sl/42XanyKYsi+duZ
         SRgvMwSf8tazfXfIeGWAlh+khPbu2wjRKyZc5qyyGEtu6YdQQvF/9jEubkgbjDNJxYiB
         FzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760707865; x=1761312665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f1HM0d52xL5++z1kGRjypoT65pMC3vnmCE9M/Z2HtkI=;
        b=P1JOuffmUQtDnao87tyTLLP4FMFbfAAxhXh/JjeiapbNjOll9yzFf7HE97MYdCjKpj
         70PdfG9GmVr1jqfioLDFDfZkHxtqlqaFZq8JUkwS62Vzc8Dz4cVBjgOlXlXypAesZH+s
         cZJiAJJk/hLQyHtuYDyiLmuk3uX7wRPqpRC+TX5i+o++4GP1y/+neQxDLi9wCuG87hv9
         eXVmmsMPAeEBjvsravsDImrfXImjn3iLZyrH9zm62w1PMOs8d8KB17PloSDL/Yc6dVfW
         n27yqo1ApLw28XBpNCtEyYiJjhAOyzkszbG9ptFKBh1vusDO63GMTlM3rOCiEZN8R7IE
         nEBA==
X-Forwarded-Encrypted: i=1; AJvYcCVAubTmcrNLJxilKt0jWnXWFH+jvXRfc/+vNFwmOG3jngQXIIQlul6N6n0lDTb2U3Mxqqe/9PtLMl1T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6Hf/nzmE0K1CUuzBr5pZmcE01e/hAPUZW8gRi02Pp0XRh/lSm
	VPBaXaoRoZ1yfwsrxLIwqKrl76/5HzrfEK1Yj4kzNNngLMX5jOIWIHtvDoAk8Xxxl9FW23qp4y5
	fyDD0PFyiiSauQUv99MmTX/xWJS/g5NVAZYjMgl1CTA==
X-Gm-Gg: ASbGnctMAufGNYuKygBN8/n+DGCS9X4k0103HJbES5RC9222n8a9xLwtO5rVZNBi6xd
	Djuxm4yTTCwoJinZRUho0RHEZiAStbh6aN92R8RCAyJGCFgbQhxMnRQd0JtclS1h2zISurcXOOB
	HNXCSHL+joE4HlBzcj1auNrH4DSET8CvAK2R9X6RRfHyEGO6wVrTIK6XOXcBdw3ZWDe2hGbjm/j
	wEnPWF/GKo3H0gM9bn0BuXII/RFJ2d6av92imFNpBpMg32+7a1S4/4PaH8uJQ==
X-Google-Smtp-Source: AGHT+IE/y08spNfC3C2r2brNPGUt04U9WD7A7XI9X/3WcTMgc7vwP8JOHw/hjXOaZRx6V9A4RKsRRr1cMaZ80YFieN4=
X-Received: by 2002:a53:acd8:0:10b0:633:ac51:9823 with SMTP id
 956f58d0204a3-63e160e3c31mr3275386d50.2.1760707864737; Fri, 17 Oct 2025
 06:31:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007054445.4096630-1-sarthak.garg@oss.qualcomm.com> <20251007054445.4096630-2-sarthak.garg@oss.qualcomm.com>
In-Reply-To: <20251007054445.4096630-2-sarthak.garg@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Oct 2025 15:30:29 +0200
X-Gm-Features: AS18NWAnMhRpcm4So5FqnrddWjLlUpGh3rZ6MGn4VSylaqx5Qy76TzuXLh5A2eU
Message-ID: <CAPDyKFpaza_wXUhkD44Jxh5MUGribDy6d=Wf+NNRO=B_cUBm1A@mail.gmail.com>
Subject: Re: [PATCH V1 1/3] dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_nguyenb@quicinc.com, 
	quic_rampraka@quicinc.com, quic_pragalla@quicinc.com, 
	quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 07:45, Sarthak Garg <sarthak.garg@oss.qualcomm.com> wrote:
>
> Document the compatible string for the SDHCI controller on the
> sm8750 platform.
>
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 594bd174ff21..027011223368 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -70,6 +70,7 @@ properties:
>                - qcom,sm8450-sdhci
>                - qcom,sm8550-sdhci
>                - qcom,sm8650-sdhci
> +              - qcom,sm8750-sdhci
>                - qcom,x1e80100-sdhci
>            - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
>
> --
> 2.34.1
>

