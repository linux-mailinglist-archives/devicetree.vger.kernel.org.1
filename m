Return-Path: <devicetree+bounces-115701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D19659B0640
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:52:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95CBC28392D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEEE215ADA4;
	Fri, 25 Oct 2024 14:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JvGd3VBv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898E2158A36
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867938; cv=none; b=oj2DzTgU/ajsmzq2wZkAtfwbVJGaYGeOXMxtj5ZD4Z3w2bgItZ5vVtJtdoOScn4WnFsEJUs27McllA2zRec47KGN9Yn3pLn/07GIhRrKGegsShrO8B7uj46+ql0W/HGYx0uN9CgcBBMS21DduHDvHir2tgGq64FGOSZQU0Do3xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867938; c=relaxed/simple;
	bh=BIJuuavrMOlGZTXnRZtJFIBi6jsUUmE/2bFNi5XpxeM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s25zkEZ8F4aM/gV/nEVwfF+3dV82ZAhyzcD/Y/ST5UUiBCDRZ9kHI80Jbh23mkBgmZsQW19O9+JU7lgOs1AZ+bD35TUlfW6esvvQaXvEuKJ5TD5tvaQ6viCeucS1dOZ99wpg/4lSobgqVPjl7vNRsApjNL6v/k1znDSvls4pqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JvGd3VBv; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c9150f9ed4so2784170a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729867935; x=1730472735; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nrOief8nbYiJuOMekAxMqg6yuzzPDCii8DxLZ9mR0vA=;
        b=JvGd3VBv4GyxKHxqlO3OtS5A7Y9aW8WI5C3XtQioof5mkInUsNYSitGjR5xH1MnTQg
         WdZpr/NNaaI9vXWunowmvckOPg0QessiRxsH+XSpOVfFQjP3hD3gFyDQRDXk7S8cCwdj
         sDYUmU65pftdWsdBRj2bvEi7STzfaOG078Nvw4ddmAjahiWQ7vwq3xJZRL6Aie7XhvIL
         SjtnFVrxKXatkC6UoMejsBoH6rkobxo3bZH3IFLsMNSF7ztnvBrU9WCL9CFlitNwNurT
         +EqA/8i/7qyBl6pvm+x/insO18akILP4vgFi+rJoB5AW8YLvikUp84yHTvDj5TWhlCkV
         nojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867935; x=1730472735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nrOief8nbYiJuOMekAxMqg6yuzzPDCii8DxLZ9mR0vA=;
        b=X33ZcBtYj/bAJKKByAzIL6DL3l/sy3XwzRe1eSILJe8BSluvfsKIDqrLEOF9J6dLKl
         FqRpvxbRDdw5s5Sdo/TNhKZ9nbfsPmG2uue1mHHvt/DShAK+KP5KSw5jiK4qyFFO+KDL
         9Nk57ogy2UGXKuR0FsHajlOlDGE/qLtKjWgGZjsyLYpnv3uLcxTVn6KF1hLGVksexdW6
         BcZuep6eRCOtjaD2sXt94scfIAsROMCgskRXiw04pzelQdr53dTnQCG5TG33vkFoPuib
         5ej56VFqw934yXHDh81ScbOCIFX+k3gZhNT31E1pTTQVBe8WKjwTOb6AUHCVCIdlYIcz
         i9qw==
X-Forwarded-Encrypted: i=1; AJvYcCXYA2611cVfB5lbtbASgWwr8ZwaLSQZIOn9iMdrkeRj+q+IgoqFyczz87itcNSrgeJgo8qCvlFJ9H6N@vger.kernel.org
X-Gm-Message-State: AOJu0YxgqeTA8wMrEoE4CfLOCj6Xx5m9XDkKzQbhZgj+sYQYpX3mdihW
	rbAqySQ1ZNL+8guoLmNaKibGDjY29rYoYwxdXqAumWHwck8qpwKwT8xf+K/bJiGxgDYA5jbt0nO
	wLI5BVfL7b5HAxj3UwPBFx8wNC8lDCzOehNJrJw==
X-Google-Smtp-Source: AGHT+IHscqiA2vwhlqzyfYQiuye1p7e18GSeto+pEBjS430QeRHPKdPaupXdrDQYhsEJh+l4Tn8aYInhGwbc5CIL1KA=
X-Received: by 2002:a05:6402:4304:b0:5c9:2a5a:5f0e with SMTP id
 4fb4d7f45d1cf-5cba249c506mr5998675a12.28.1729867934911; Fri, 25 Oct 2024
 07:52:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023092708.604195-1-quic_yuanjiey@quicinc.com> <20241023092708.604195-2-quic_yuanjiey@quicinc.com>
In-Reply-To: <20241023092708.604195-2-quic_yuanjiey@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Oct 2024 16:51:28 +0200
Message-ID: <CAPDyKFr-Gzd3Mzn+vN6DXO9C4Xrvpv4z5V2G_VRTzOa=89Fd3w@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: Add sdhci compatible for QCS615
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhupesh.sharma@linaro.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_tingweiz@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 23 Oct 2024 at 11:28, Yuanjie Yang <quic_yuanjiey@quicinc.com> wrote:
>
> Document the sdhci compatible for Qualcomm QCS615 to support
> function for emmc and sd card on the Soc.
>
> Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index b32253c60919..164a45cdb972 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -43,6 +43,7 @@ properties:
>                - qcom,ipq9574-sdhci
>                - qcom,qcm2290-sdhci
>                - qcom,qcs404-sdhci
> +              - qcom,qcs615-sdhci
>                - qcom,qdu1000-sdhci
>                - qcom,sc7180-sdhci
>                - qcom,sc7280-sdhci
> --
> 2.34.1
>

