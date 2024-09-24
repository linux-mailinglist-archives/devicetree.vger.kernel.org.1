Return-Path: <devicetree+bounces-104900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7CE98479A
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 16:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6B39B22AFE
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 14:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72601AAE02;
	Tue, 24 Sep 2024 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WK/EJH4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091FD1A7AF9
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 14:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727187773; cv=none; b=dfRtQJcyQ2u6WFOkMIW3GwoNHg5DQP7KdOjDh2qQL7rCho+RFofRdMBY0lUURcLNmH38Us7mOQT+raaVAvLS7zRTaQ2a6/WZNhgfygMxETVq8PQY2y9QIB82BVylX0876UJ4KIG+RSsZuKGWaFnGeMMhk7COEtAM/xO9JgVIIHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727187773; c=relaxed/simple;
	bh=Hs8CScpBEfYE4rCg0iZxpO4Br8KFrmFfugQINQ+4bY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lo57x3G1LmmX2uJvVyOYW6QMPWgfUYFYhiMRVNoweDNW7N5/+cXmgTxK/0+QNpoKfQFX72oBcUxTnv7h/jxkMSwwn+BMiKFkcPTtkX8h+mLDW9IOG3X+W6cjO+C4FMoQy7kxEvDRYZQblLsRQnykEt1JWsUqki8f8inBDqKniGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WK/EJH4Y; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-374bfc395a5so3624695f8f.0
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 07:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727187770; x=1727792570; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v7kppg7Q0WopvTHm3mYvO0b0XAFSW9Be8XsW5zt9bbw=;
        b=WK/EJH4YKuY25S80Y3pBEHKX9QZZg56tDdD/kVrF2eOU6lM5rXtzE2jEChu5JNmgg1
         G5D38RHxkSHW5Kf6MK7pQ7pVXmfJfqSRiQLuy6vwgaD0bs9e8aYDgqtmrHLWULU0FYU7
         hEI14lNEUQ/hWj3nXcfhNWSkIcT1hrB4Jrojm1/sURFBjh+UINQY063y04PkXxeY3kwC
         JhZAg7k1ChKz6wrffd8LGbFMyuGjuW43IMv4d4Axg6bXxMIwZnVoHGp944JEPvDD1acx
         DhUWsnfcDUV4c1EYCai28m9Bqe47Ac3qQxl8mf8n6DLlJZLAZP5p9z2fQNNQ0LMdelDh
         KtNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727187770; x=1727792570;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v7kppg7Q0WopvTHm3mYvO0b0XAFSW9Be8XsW5zt9bbw=;
        b=OVM/mNVMSd0V77qVmsyAW6roBplPOTGTeyna4iq8x1zYYs7NAFku6txQD5wF1x+WNh
         ZJJaPHD1PNIP0lcYVwFaYMd7nXT5AaIUq6T6Vx5cXsDR046410b0j+WQrKVmwWZGAYC5
         zrQ8AyrYVIIwK5/S0/ScJxl4kz94O2lzHT3kPWB5SrbwDTVG3jBuVpHkfTFfmOD5Tk3Z
         1AHWvTx40UstubrK7lquBoC07/uDi8UnJcvNsKlHpZiuVhM4bmxffREOtgAotitTN9gb
         P6D5rPJd6ydiClZgcB0yeisb9t3matLjsOpD9jrlw/nb7ByxhOJjY5de9cFtyRMKdomV
         c3Ew==
X-Forwarded-Encrypted: i=1; AJvYcCV3ZTy36bMEr0SRwgHAMsbl7QS5My21hCV7wXSmM1jDIP57L1Yjn4qMeI99qymPPpH19oTdmnj5vphA@vger.kernel.org
X-Gm-Message-State: AOJu0YyjxPtmkRBFzXHLZaoBtPItq6Albqv07SWpprM6Y7l2BtCFi5J7
	qOPNwsdnXPECjzjqHB4Hk4CkUStZhsXTtb1G6OMA6vqbOFn/u1nutHAiYtHaFw==
X-Google-Smtp-Source: AGHT+IFRuDPewf36+EfX0flbkUrVtgaUGcAMED8IIOZ6mewqhDzvTH0iRhAd5jrDA6W6XVQQSwqvNA==
X-Received: by 2002:a5d:484f:0:b0:374:c57e:1ea9 with SMTP id ffacd0b85a97d-37c84e3ec85mr2074333f8f.18.1727187770262;
        Tue, 24 Sep 2024 07:22:50 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e754a619dsm162094525e9.30.2024.09.24.07.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 07:22:49 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:22:48 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: quic_jingyw@quicinc.com
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>, quic_tengfan@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Xin Liu <quic_liuxin@quicinc.com>
Subject: Re: [PATCH v2] dt-bindings: ufs: qcom: Document the QCS8300 UFS
 Controller
Message-ID: <20240924142248.a5bjev6wqmkwrbar@thinkpad>
References: <20240911-qcs8300_ufs_binding-v2-1-68bb66d48730@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911-qcs8300_ufs_binding-v2-1-68bb66d48730@quicinc.com>

On Wed, Sep 11, 2024 at 03:06:36PM +0800, Jingyi Wang via B4 Relay wrote:
> From: Xin Liu <quic_liuxin@quicinc.com>
> 
> Document the Universal Flash Storage(UFS) Controller on the Qualcomm
> QCS8300 Platform.
> 
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> Changes in v2:
> - decoupled from the original series.
> - Link to v1: https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 25a5edeea164..cde334e3206b 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -26,6 +26,7 @@ properties:
>            - qcom,msm8994-ufshc
>            - qcom,msm8996-ufshc
>            - qcom,msm8998-ufshc
> +          - qcom,qcs8300-ufshc
>            - qcom,sa8775p-ufshc
>            - qcom,sc7180-ufshc
>            - qcom,sc7280-ufshc
> @@ -146,6 +147,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,msm8998-ufshc
> +              - qcom,qcs8300-ufshc
>                - qcom,sa8775p-ufshc
>                - qcom,sc7280-ufshc
>                - qcom,sc8180x-ufshc
> 
> ---
> base-commit: 100cc857359b5d731407d1038f7e76cd0e871d94
> change-id: 20240911-qcs8300_ufs_binding-b73f64e16954
> 
> Best regards,
> -- 
> Jingyi Wang <quic_jingyw@quicinc.com>
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

