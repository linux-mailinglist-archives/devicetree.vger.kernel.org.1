Return-Path: <devicetree+bounces-55943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5038971B0
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF2B81C26CCA
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D1714883C;
	Wed,  3 Apr 2024 13:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zfECiOLH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9828F1487D8
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712152447; cv=none; b=DEPtPr21I/8LMg6g4qeFb8s+X8Zohem6VmRNVPE8/8B5gPXZeqlSLCTaCcFULO5OajxeDC8p8FOs1BHqZMVRqsKZ4PJuNQ0lzMzWLqLrjWupEpbDwgDejnmxcDjzOw1SIblkBcuzokMlaI18NvIbnI2mUqYBKczTvB2KMPQGzyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712152447; c=relaxed/simple;
	bh=6j77YuUzUESQrILjthCpboV69/4YqDzZNIS+7UAaB9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OnqE932sxBemd5g0UntiG6MKeLVz1D/HorKJeWVWEvANN7SgX+GpTExkpKdbgL4P4ynj49Z9fRhVTDRHaRsVzPiB/7oxqlbkTjg7Kmyfr4/5RuxfQSx/iBiFyrnwWC6NtxrmbKfffeFJ+N5nzI+2uYAvkLZeIlwF61CvPqXEPnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zfECiOLH; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5a4f7a648dbso3999529eaf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712152445; x=1712757245; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1OAL06Mg2B7p2mgKMtF0umqm+s4wnDWvZ+hhRFE0Zzo=;
        b=zfECiOLHamGSPjMF81yan7vciO/nsc/LUleAiY+AtMER85KxW31RNy8S9o+C4MTPeq
         IY21xaOw344YBqKC+4P46rfjvFfGH4OGjM1lVXCrhPALPFiSrB8kkc0e2whUyeJ16x3C
         +hceBlueziSrmqF/kYO67H/aFoyIxMAFaPsgrJ2Iz7dGL6OQvlKfzPh1Ek+gRvqvQNvx
         xAL/PNFKwktdfjqLof4ywCzLJGrv4fJtE4TKbCEwM67zXPrkqM+EmwlEMkIOEhrBE2Z6
         1s57+eQ1TvkyHOUAtPZJKPVV2SxOx+Pgve+gHDhsUs+e+MCefSD6CLTT+SQPhiKf0Q0h
         plnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712152445; x=1712757245;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1OAL06Mg2B7p2mgKMtF0umqm+s4wnDWvZ+hhRFE0Zzo=;
        b=WuFBkbtVB13fTq2vALb2DosKj5yvkVrDNEftpzWmJsYgn0Yj9vEREeImohdr3wd1Dd
         vWrLNTLnS/h5yrDaaHJch/fvtlu0dEdaq5x8S/F4TawVu/Nt4QdZiYVmZy4IZhi0+khW
         u+XnZ8XjeqZEMU9JW7u8c93xnFiKmK+ojwH7vY9TThAEpZIiph94JOacP9/pmB/3GPsK
         UARTjoDvWvoYE14x832ndciDoCKt5ZKRXiSzU39PBIAWHuEL+QiDUbR4U55jzTXc5qbk
         AbNEYeruo8PfjACfLRSGzWM5s7pNJ0duOg1trTnISDhKdMuciOENyIM6YVfPkzgElm+o
         jvQw==
X-Forwarded-Encrypted: i=1; AJvYcCW8dTXMGcW1oe1eKDXfCDxFTp3pVAE+xvOeLk2CKDK6mhCdTzjavjQH8oe3H1Uo0xXqH79QEaL+eSLs1Hzw6Ah+jcoLKpB8dPrgaw==
X-Gm-Message-State: AOJu0YzckWlmXaLqjO9Sps6jODhFGxqq9bPFmd5V8IH/E1AgmH1zAOkw
	WZQoODbdSChAexTOfUzC6eaz7g2sCU3ENq/xgA03gdQRz5kP58Y/jTaULPrh4A==
X-Google-Smtp-Source: AGHT+IF03w0jcECjD5j3s8soEBtUEIJMV7AING8b0+KbubR0veAvTNYHRFP+TmHHg+oq53dMCQ1BVw==
X-Received: by 2002:a05:6358:9486:b0:17f:7807:3204 with SMTP id i6-20020a056358948600b0017f78073204mr19114172rwb.25.1712152444401;
        Wed, 03 Apr 2024 06:54:04 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id dq8-20020a056a020f8800b005f3d54c0a57sm2081588pgb.49.2024.04.03.06.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 06:54:04 -0700 (PDT)
Date: Wed, 3 Apr 2024 19:23:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org, davidwronek@gmail.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
Message-ID: <20240403135359.GO25309@thinkpad>
References: <20240401182240.55282-1-danila@jiaxyga.com>
 <20240401182240.55282-2-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240401182240.55282-2-danila@jiaxyga.com>

On Mon, Apr 01, 2024 at 09:22:39PM +0300, Danila Tikhonov wrote:
> QMP UFS PHY used in SC7180 requires 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
> 
> This change obviously breaks the ABI, but it is inevitable since the
> clock topology needs to be accurately described in the binding.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index 91a6cc38ff7f..a79fde9a8cdf 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -86,6 +86,7 @@ allOf:
>              enum:
>                - qcom,msm8998-qmp-ufs-phy
>                - qcom,sa8775p-qmp-ufs-phy
> +              - qcom,sc7180-qmp-ufs-phy
>                - qcom,sc7280-qmp-ufs-phy
>                - qcom,sc8180x-qmp-ufs-phy
>                - qcom,sc8280xp-qmp-ufs-phy
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

