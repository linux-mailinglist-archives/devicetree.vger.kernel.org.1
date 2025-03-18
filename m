Return-Path: <devicetree+bounces-158421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B40A669A8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 094483B9A67
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCF61DDA20;
	Tue, 18 Mar 2025 05:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FPoyQHNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C079B1D6DBC
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742276502; cv=none; b=tJyE3+AuwiK7H0vJF4z5AHV1zieKeRCIQ9AwKjVDmsOa89FL68uqCvLjvU4xgfQU9MzREba2VJ7kGPaRBbQVqMvA6q0u9p4hhY/oGinG1+qaVz4wuOv7WAd4GNLSMxDN36rY3KHbEMImd381msVuuaW2kdELFLqau5U49+UYF4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742276502; c=relaxed/simple;
	bh=mQj6tFq/A+KM1NbxtHNGKYMq97ddoFu6i8FJTPyt8CM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2mxWPQVaIVbOeFSszBTaGduLh8/13QgXfazmE2pxwzZBBwqWQKKayfAmheWhBj9fIn2UG6u+Zv48vapVNo63JEFkb0054I2C8kXCRtwpPyXidZr8GXb7kBmWfqSsoluKakhJdePNafiDpqdmBIQMXGr8JhEMvDQX06259Wgwy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FPoyQHNN; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22622ddcc35so30189655ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276500; x=1742881300; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dFhxTV9vQHoJcyDhkGjeDrqWSmMQ/bwgeo19wSWQ6dA=;
        b=FPoyQHNNaRxULjwAhYThZekPBOebtiSbRBkZL/T8E3cNM6h9gdujgQ46oR6majlMdb
         eULp6QozqcK7YyCYnXarERdVvWeZwSs6dHVgnV0eGNZj1Bn0ecliDPORvMDRneO8p4uI
         K1/SGq8hai3V6548OD28CdLdokVWiA1LoEJcGCefbbF86zJDTBq+WNfSl4R3j19VQ8fK
         eO8jE5EOArqciaXWlkX3qjpBJwIwxo7zC9vFrbxsOJNwTvxJdlt878oLG5jf6l8ZnXgG
         NHJV/6NXBvYxdlMdrGtVhANEs2DrEHmjU91I9VL1Ckl15ZIsj61rFjcD8pvQTTBtqRj5
         ebhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276500; x=1742881300;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dFhxTV9vQHoJcyDhkGjeDrqWSmMQ/bwgeo19wSWQ6dA=;
        b=rkadYf2mCAAf81X9dyAt23XLqbbBWioCTc7KI7oYaohZO6+vsX+b9iwc7AHgmisbmT
         TzftIp1lup/DXvMQwADKZ7a9PVGkLsRN8/pXsB8Aa8UCWZ7W9QRH3B14K+TQZ74dADxW
         0rDljCj4ioR3nUdOF1UrwauKgJibm31ECYGaBtLNRjYq1mOva4F3z5EYLwYdh3w3y/NG
         0Xck6C4mZxKEJ9J9RMFKQWDVoz9NA7gMey9DgqhWYiCFrwwkXhLcA8Dl2q9GcptN8264
         r5OvbcQ14fiOVsF86dcKO63B8xQrfEl56QcEJdSz7K3KV6PH1ud7pXTrFlDcUr2xGQsp
         hA0Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/pcoeUnyNiZcmilBZ204T5HGs+DmbU9Zj3+1w+eDlRWNTOVeU/VM337x+VoGT6zkkWsbeBz9MHxI+@vger.kernel.org
X-Gm-Message-State: AOJu0YxQtaqHRD4elOL0bYtzoTq6AuLwLJ74dRXoIH4Hu/MdoNRpLf6T
	pln/zf2hClvhxe6VPNewSwG0qDNH12CNvFbk31pRs/FaDCNzLK0VhrPlLRUb1w==
X-Gm-Gg: ASbGncsDWj6FMUiP3gq2KlO5txSmSrfequE5LXyBlfC+wRDrZZ/+nWUtw67eTd3ll4T
	tnntVr7vhwhCm/t2bzViCEl6++9OzbamtsYd6DEku5rMMDgLYEb5ltPxpKWjtnvhfbJ+vBT1Ro0
	IdUpgy8BrX6/+gh9a+EvX67V+nIN2vehSUG/sUvtD9Kzy7IktDQN/Uoo518icEqaiid1mg/JAKJ
	U8lKRhtxVp7GOzb7Fxi45qk1olhYAUJpZIYcFMDehYlImQPqnTjjHgtoh4GiG7KXpPvJrSkuxLr
	awOCM3uzuBEegVpz2MvLmCNiW1hYaUOsWGj2hasLxSoxfH2KqorEptXJNnBlurwLrAE=
X-Google-Smtp-Source: AGHT+IFrbYeRnivYWhqthfQc3eWy+MTQ83guEmTp8doGdlxwXja1s1CeoiHOQzGg4CwnkxsA7aHQYA==
X-Received: by 2002:a17:902:f708:b0:223:90ec:80f0 with SMTP id d9443c01a7336-2262c55fcafmr33444765ad.22.1742276499952;
        Mon, 17 Mar 2025 22:41:39 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68883f2sm85528595ad.7.2025.03.17.22.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:41:39 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:11:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/8] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
Message-ID: <20250318054133.zrobaf5tvu2m4x2f@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-4-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310063103.3924525-4-quic_ziyuzhan@quicinc.com>

On Mon, Mar 10, 2025 at 02:30:58PM +0800, Ziyue Zhang wrote:
> Add compatible for qcs8300 platform.

...with sa8775p as the fallback.

> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index efde49d1bef8..19e3ee1b380d 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -16,7 +16,12 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,pcie-sa8775p
> +    oneOf:
> +      - const: qcom,pcie-sa8775p
> +      - items:
> +          - enum:
> +              - qcom,pcie-qcs8300
> +          - const: qcom,pcie-sa8775p
>  
>    reg:
>      minItems: 6
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

