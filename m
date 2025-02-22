Return-Path: <devicetree+bounces-149861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D2EA40A38
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C21031885321
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AEE13D984;
	Sat, 22 Feb 2025 16:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2Hk913w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC457142E7C
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 16:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740242761; cv=none; b=ETwaZ7m1BKLb9E6eMvOjBHs32YjB8m4MFOVSdTN1I4axOJZVDJfdFs20WZYLyvoGPEUG0f0nJwc3hZicGuZIWQHUbyTLDB4Uu0miFLOAqpIS50EVR8pjpOWfXeTJgEavrrWS3Tq3Xb0Ezvk7IBzQtSgUMxIC5bD6TdZ/HPWba+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740242761; c=relaxed/simple;
	bh=HbhOkf5va9izRWN4DhX+2ILrR2FahUcR5Ju840IsDmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gAWU5GYA1SSjkV2Jv2b9cUCsH2VkLwZ65x3tvsZBwclLZwYDM0XeazxHgBiCDs3Q/bxHMX+H2E0hNAVYaeZfAuJdY2Pn8MrbAy5Tqs6ahV/FLJn8upZtw8y803YS291VOWEeN3m+anDRB8msbA8vdzW5F4ittyH6QeO7vVOlMR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K2Hk913w; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22128b7d587so60003065ad.3
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 08:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740242759; x=1740847559; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=npHEnlQklkIzG9S0yPJOdrGcjNp3Yqbn0DwAvN51LJ8=;
        b=K2Hk913wBWdCBXJqs6hHfxZNdbIiuQUPwSwJmT7Kdm63TTmkBCl1WUjoUGthjPHROg
         g7akvXbrEZyPAdB+ucrMT7O3oO2m/kkuKMwFbpvTpn0n3ABdJEHsOMiBk81hlef+DXkw
         lXoLq783N+ORHeFd9yZqcVCVkL0pcWHGBCfTX1o1TP4nHtDbBYnGs6LhDeVsx3ZvXNuF
         TkA01w2pMKEOvu94UF/ExX2OoEte+n+IXyqGaY4kwKmjabZnNTJtR9jZqlbpDt7z3Ei7
         X87oaIrrYDJ/RoF5yj0edUUngeI5Rdws8qHOsCz5/RqYeREXBXkNc+J4VUtjHkC24WRa
         txig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740242759; x=1740847559;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=npHEnlQklkIzG9S0yPJOdrGcjNp3Yqbn0DwAvN51LJ8=;
        b=mlb7DI/HKSGmnOqm9hUflOZd8P3ybnvWja4LRYLuD3wkbDkVt5mKzdBNBUPd+N9qHx
         zy/ZyI7iXjzuE7KZpu95Xwfu20/hZ7w5eSz1xAKSRpiXmQicNXdzk1qHp6FrO7ifZQJF
         Q39GQVDjFFQOBrJUkTWj62dPxhFnP986fk/TV1WKy1m5AApkr9KXjKBNxxovlbe4wfNz
         oOGlKOlEMk9N5G8XANTCZk76f02oT5LVpvMnWRsirfDWOQHmUCmFV2jRw+53ajV4YDy3
         LYGP/6fHXTdWW2Moz0KPBz0YIFfvs2dG0fPyQ5eJB4TLNZFhC5XyCpmDMrt08rQry+4B
         HsDA==
X-Forwarded-Encrypted: i=1; AJvYcCWRvRhfVZW3og2VOpVISAE406L+LrGcki1tQZnPejth1Vv30UIHJ6ChB65ARxYrTgrUX2TpFgxBG3VO@vger.kernel.org
X-Gm-Message-State: AOJu0YyJeJbr0Fh+Yhc1dC0+Lyqdn4X992b1BwseCGMk2tCGyBx4v+fd
	Q67SkSy7U19HL5vwW6M7gtiNfXbWoiMeSSZTmpQ3WR355iVT2G2XZq3NuXlOEw==
X-Gm-Gg: ASbGncsKSSp5PqcJRzX4HDpnKCCaxOUfAcBKnmfTf6ndDpJN5K9hRq6eKzIYjIp3tlK
	gnlzvLglc5mw5LrTHyPr5q3M9HxG2aOGBAnAqlSkRZjFpYc2VQGm/xe2KBX151lJ7qi+FTCS3dW
	c7vbsKVm+QHRPCWT9AocgaUfYT/UUHrczIfMM0XJ98BOR79cMrSs2sWjM2ChoqNa6ZnhRQGmO1I
	zuHg4F8DOCJ924siUUruFDwSQFIpX8w184uQ7fsmZMqrrcQhVNcPo6mj1k5dORq93q8G0lppVWL
	HzGzq+LFt5C8qXrN1C4RSkHqS5YrUveN9pPJDw==
X-Google-Smtp-Source: AGHT+IEAg9fXG3M0fKnjbzdl5VZ4lVQEn0XTGMRwRl+F+PVh6Z/VGrlb+f87puQR4ZYwRqZLtT0tTg==
X-Received: by 2002:a17:902:f550:b0:220:e63c:5b13 with SMTP id d9443c01a7336-2219fff4ef2mr110406945ad.46.1740242759049;
        Sat, 22 Feb 2025 08:45:59 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d545d09esm152627855ad.112.2025.02.22.08.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:45:58 -0800 (PST)
Date: Sat, 22 Feb 2025 22:15:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/8] dt-bindings: PCI: qcom-ep: describe optional IOMMU
Message-ID: <20250222164550.smiisjruiyyket6u@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-2-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221-sar2130p-pci-v3-2-61a0fdfb75b4@linaro.org>

On Fri, Feb 21, 2025 at 05:52:00PM +0200, Dmitry Baryshkov wrote:
> Some of Qualcomm platforms have an IOMMU unit between the PCIe IP and
> DDR. For example, SA8775P specifies the iommu alththough it is not a
> part of bindings. Change the schema in order to require the IOMMU for
> SA8775P and forbid it from being used on SDX55 (SM8450 will be handled
> in a later patch).
> 
> This fixes the following warning:
> 
> pcie-ep@1c10000: Unevaluated properties are not allowed ('iommus' was unexpected)
> 
> Fixes: 9d3d5e75f31c ("dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 0c2ca4cfa3b190b3fb204f0d7142370734fb3534..6075361348352bb8d607acecc76189e28b03dc5b 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -75,6 +75,9 @@ properties:
>        - const: doorbell
>        - const: dma
>  
> +  iommus:
> +    maxItems: 1
> +
>    reset-gpios:
>      description: GPIO used as PERST# input signal
>      maxItems: 1
> @@ -162,6 +165,7 @@ allOf:
>            maxItems: 2
>          interrupt-names:
>            maxItems: 2
> +        iommus: false
>  
>    - if:
>        properties:
> @@ -234,6 +238,8 @@ allOf:
>          interrupt-names:
>            minItems: 3
>            maxItems: 3
> +      required:
> +        - iommus
>  
>  unevaluatedProperties: false
>  
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்

