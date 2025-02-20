Return-Path: <devicetree+bounces-148705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 863C3A3D205
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90E9718902F0
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 07:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF1E1E5B9F;
	Thu, 20 Feb 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNLZAx69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4738F1E4937
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740035993; cv=none; b=JHnceXtzS4aWUp1ij982Ld69jrtsBp7BL/DSg5mcpr75s+qNF561by368dyuAuSOVzOJZOQkmEtB9s/rA2ujIiwSC6aenGsRv6veoZTw8m469djpVQi7VZP4NCxkN3kG81+gJvobC41AxCM/voYDEuckbSI2+wDBaey6V/4Iers=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740035993; c=relaxed/simple;
	bh=dSKE5I1F5l6I4pWkjzFMa6oZu20U6ZVKkb/GOJ9jS3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c0eEkKpzYCicqQ83UE0EAo9nOF2lWHRPvuuuGh0sda5vNpg+pBEDYfphM6Sr3t1IQG4H5uiTcqQUtKAxgdhFbcar3GMjULVc5XCrZvy/n812aKri/Cs30wuNZ6GtXSGsuwX2ZM90W5gTXMYbPDpGy+xLMtYstRI+h0yF/Bsy/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNLZAx69; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21f2339dcfdso10735515ad.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 23:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740035990; x=1740640790; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Ur9dFsKFbvJEs8mC6dKdEyGV45W+SbQs+6opIdZpbs=;
        b=VNLZAx69oomZ2UsY/9Cxo311gLJEFuu4zoHEWnn1HdOYJ9H10PWen//VB7OkXM8aji
         indTno01AIY1BtmqmZYus2N/06rkmcBhlI30jb5ajRX/zpxpUB6+mNx7tNSNqIVgRJVf
         vNZ30uYjL2fChu7wE58nPLJ3nBi7J7uOnv75wFOStLEwCDpAui1WcThIDnvjarRAJYQu
         /uvJzscP7FiTToS7UrurzWbRm3lRQpnROxA6I23IzQUHXaJMXHg50pnfbP2KSNNB7W96
         byLYJ26/72OF5AUZ85DUTrdOqZOtqL5mZ2euyH3V0FMx2hx+s1YW+gm5glkFveDzBGSw
         0d+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740035990; x=1740640790;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Ur9dFsKFbvJEs8mC6dKdEyGV45W+SbQs+6opIdZpbs=;
        b=uimI50V85GyUThPa6WV3ZbbFgbFWsiXq9e+pB6TUlBVMh+SQT9Um9HUas5tDzMTDe4
         VgQTmlKVpe6ezicpb2+LCfMyZEdEFODkGVCkKqEgBJy27JgL2dmXTjc4NyCeM/xvYEPe
         kwMAED+4csgD9Kf99rXuDEkq1hTF85KFfq5r6MI6DJ95V3/F9C0siVdMzfVMPCUyKH1Y
         2LP+YtDjSn7M2bmfW49FHO1/XV9fdUp1m3Ub2sXCwUikNofYx7lxseKNnuw6C6DOYWmH
         yw920fuNA5rMjkzQg/VjJyZiUJQMBsF4wbL7UAJyXrUKa/ZOY6CYCnsmh4wRW7o4ovOR
         HW1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2ne57aUH9FYTK9G7GvyeREaF1y4z4b1bLzrgUeKJqWm0CwirdxO8OD1TbKXfCbHrGhoPs2ccZOqid@vger.kernel.org
X-Gm-Message-State: AOJu0YwYpD6lekofEE9JwSLsmESnd/6q94ClinLTnlnG1RTt5IVT+WDK
	f0J5juuBgIDMGoKMDNl8uQCV5nrlayzVP4bZ01rND2Ua1jkDi9w7FFkKGe+rILtWHWE5eOAvlBU
	=
X-Gm-Gg: ASbGnctvv2Wfs6lxo1iyR2i1Z+0kvrRDj+uuf/Pz9Df0QNQYSLO6BSRXhknz3yU97E3
	Uol5aKnq75OVi+RXRq68a2AJcTvafUnLLQIiou0pQh5AJrosYb4GOjk90ySOkerx9qJRfVRyVv5
	7qEWz9qoEUGMlR3svL/jfsZS1s6IlkZ7KD/Rpf/p0+s0e1JSMivW3GbbHBekaeicH6QqHP56Ww1
	G8DSfW0UQOCmjYEIeyYZCAqIfZF030NOSYwDXVhaknhkPgIksvGGjo/+Jlxk1cZnfp7YBghQRs/
	3oGk0IXGU58xE6/jFFPcgUmmmg==
X-Google-Smtp-Source: AGHT+IF3yihejjwT/v8s1qaCn8nd+GpEMzld00Wlnl4a36L6UHNc/5ltRo3ZjwkDna6NDtWQ/sG8kQ==
X-Received: by 2002:a17:902:f54d:b0:216:271d:e06c with SMTP id d9443c01a7336-2218c3db4d8mr38128005ad.4.1740035990566;
        Wed, 19 Feb 2025 23:19:50 -0800 (PST)
Received: from thinkpad ([120.60.70.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d537bd1asm115277265ad.102.2025.02.19.23.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 23:19:50 -0800 (PST)
Date: Thu, 20 Feb 2025 12:49:43 +0530
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
Subject: Re: [PATCH 1/6] dt-bindings: PCI: qcom-ep: describe optional IOMMU
Message-ID: <20250220071943.edn6q65ijmeldnag@thinkpad>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-1-94b20ec70a14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217-sar2130p-pci-v1-1-94b20ec70a14@linaro.org>

On Mon, Feb 17, 2025 at 08:56:13PM +0200, Dmitry Baryshkov wrote:
> Platforms which use eDMA for PCIe EP transfers (like SA8775P) also use
> IOMMU in order to setup transfer windows.

eDMA has nothing to do with IOMMU. In fact, it is not clear on what IOMMU does
on the endpoint side since we do not assign SID based on the RID from RC.

But the binding should describe it anyway since IOMMU does sit between DDR and
PCIe IP.

- Mani

> Fix the schema in order to
> allow specifying the IOMMU.
> 
> Fixes: 9d3d5e75f31c ("dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 1226ee5d08d1ae909b07b0d78014618c4c74e9a8..800accdf5947e7178ad80f0759cf53111be1a814 100644
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
> @@ -233,6 +236,20 @@ allOf:
>            minItems: 3
>            maxItems: 3
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,sdx55-pcie-ep
> +    then:
> +      properties:
> +        iommus:
> +          false
> +
> +    else:
> +      required:
> +        - iommus
> +
>  unevaluatedProperties: false
>  
>  examples:
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்

