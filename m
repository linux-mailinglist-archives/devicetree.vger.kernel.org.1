Return-Path: <devicetree+bounces-161567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E094A74987
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD9577A66CF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 11:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E701421ABD1;
	Fri, 28 Mar 2025 11:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rjlh0NLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5325F219E93
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 11:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743162809; cv=none; b=Dk9egcy+SoQ8niMdYOshF3d8lHdih7pOta50jn2i+kCekzc3jTaJ21tg2U/OvZkL53vg3QKrQczrwmgx8mmAqkb4EUBFyA/shFUsNgHYGex0eMXbL+QDEg2mCiveI1WQ2F4WmEID+HVAjG/60Uah4pOtiOip0poehuXjRuI6eOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743162809; c=relaxed/simple;
	bh=+KPaBcdDplqSZzH8Dmz/9Pd2L3Q7Ai/3Z0gwOh8ET40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GkH7FC2jnk/Te65cIL0YigywL/6SGREDEImJG8b30Fi6ZvIrjhnGduPYi49yIbSRhro3DEnyJYYzOO1ZwWWBpQoC2UImRO+exIt14Us2QhE73M9CsG68n1nFKws6MYKMCsYc6SjkyfNhYbws28lsCQKUqJ9TdNnY5gWIOKtDAA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rjlh0NLO; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-223fd89d036so46621065ad.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743162807; x=1743767607; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RbPiP4EbP7eCOnwuLfA9DRinWmfOSHZ00Gjy8hH6OQ4=;
        b=Rjlh0NLOOrGeZMrG3khcHJskRpcvuN4Fw40qwRoKU07MFXm9WFRLxs05Ig3P3RKGn/
         0oOJt4OojtZw54WpA2NIyzxlkNftzPRLfyj6GpPmR07C82TJr4oO+7A6CX8Z8oeXAKEJ
         CFqlkIw63JEO7oOWs24NgVCProYFzRh9hNcGkdn12uubzerz8DANF8Urv541AXxPWLFr
         +qgcXuuaa7kMrHKPGtgWuabXbzscos6GduZnIUT/g2JNZP3EaeTaapXCSA3w6dqdp0j7
         M1Rjux+68KbLODoVBovF7WSRQ7WUmw22cZJCjNkomwOqzJQnHGuaH0QLXs3QFgpvrdZK
         72Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743162807; x=1743767607;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RbPiP4EbP7eCOnwuLfA9DRinWmfOSHZ00Gjy8hH6OQ4=;
        b=bL8o0pVcWzfOtvUwOQDEeGIUBEr0YXSnJWA+2Sdss/viUEmvyntgnZem2Tfs02JCti
         gzcH5qYUs5B1qBHULtQ3L/PYML7OPqFHL7B31meKJ1M0fxWmnHndIrB0bjadBWF0zrCz
         lHiT3Awn/A8lXM6NaDooyixHrGoQIdQ7vvxa1+8tdHDW7OjsKb72D2wwrNHYTtYu5dL0
         qzCasCrzffv640oge7wfl6WAiVx13aNmv8b1TMa0n+ZVYljkHzh5hWodfqN8wVX9+4Bp
         sUUZGpRuCYuvCtQHe3g/PKE8/XO0hbl/eRkNv+sKmGVpcg2wSlu+rykUI5oB5xSjlpQv
         FG5w==
X-Forwarded-Encrypted: i=1; AJvYcCU9LkqQovtBjvcSxBKGA6K8BcNWC/Pkc/LLVNecnNKRAFJpBvxZuIzj+HxjWzULCMXfL5wAZgzuaBo4@vger.kernel.org
X-Gm-Message-State: AOJu0YzB5lM+dPpNxR/dbtzIThMCkMlP22oYSJd7a4/d2FuXQImJebwl
	dvbeWc2u1u5eyTTnd7r+fV+Xp6742LTH2zVV2dSLr/u98Twxjjxog3F5AXJjsg==
X-Gm-Gg: ASbGnctIP1T3lgbZYgJnxCP+e/b9yKTFHjajq9UUsBaZ3a+29xDnPqV88jOdDdTighf
	TY3YYftUmPKSTHORujaFaMUJpqmP6yns2LtThd8Mg6L9STEZU7HEhvOYQ9g6xuxWrwpmnKuTGFz
	lSgfU6ln46efHUvMEzXACcTIV1kVBWwcpPJ9qnkTcGsQFgjttX96f/hPxfa8X4JIAAT9MyLrr8X
	6hiqwM9H1A4zaPLfC2+w1QCmmjExpNWWuuHsXjWxub4KKIp0HBN7/QvFARdp5fleyaxoD+yI7aY
	rfk6I6KKhUB5hXOJqutU5H7Xb8ztstMytY5494B1D0bNsbQQu4yhL/4=
X-Google-Smtp-Source: AGHT+IFz9XDScU1xrQzVvHGClUV+atKcmTEkzNc/q4xgcFCTocrd9IHlXpxqpsSmlXqSqGyqsW46bg==
X-Received: by 2002:a17:902:ecd1:b0:224:93e:b5d7 with SMTP id d9443c01a7336-2280493165emr104158825ad.34.1743162807333;
        Fri, 28 Mar 2025 04:53:27 -0700 (PDT)
Received: from thinkpad ([120.60.68.219])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1f7dd8sm15699105ad.226.2025.03.28.04.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 04:53:26 -0700 (PDT)
Date: Fri, 28 Mar 2025 17:23:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Jingoo Han <jingoohan1@gmail.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com, quic_vpernami@quicinc.com, mmareddy@quicinc.com
Subject: Re: [PATCH v5 4/7] PCI: dwc: Add support for ELBI resource mapping
Message-ID: <aot5wc5fki7f3scvtp56cdxpli65zpnsj4wr5n3zsa4pc2i5un@p6gnu7gqa5gh>
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
 <20250309-ecam_v4-v5-4-8eff4b59790d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250309-ecam_v4-v5-4-8eff4b59790d@oss.qualcomm.com>

On Sun, Mar 09, 2025 at 11:15:26AM +0530, Krishna Chaitanya Chundru wrote:
> External Local Bus Interface(ELBI) registers are optional registers in
> dwc which has vendor specific registers.

s/dwc which has/DWC IPs having

> 
> As these are part of dwc add the mapping support in dwc itself.
> 

'Since ELBI register space is applicable for all DWC based controllers, move the
resource get code to DWC core and make it optional.'

> Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-designware.c | 9 +++++++++
>  drivers/pci/controller/dwc/pcie-designware.h | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 145e7f579072..874fd31a6079 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -157,6 +157,15 @@ int dw_pcie_get_resources(struct dw_pcie *pci)
>  		}
>  	}
>  
> +	if (!pci->elbi_base) {
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
> +		if (res) {
> +			pci->elbi_base = devm_ioremap_resource(pci->dev, res);
> +			if (IS_ERR(pci->elbi_base))
> +				return PTR_ERR(pci->elbi_base);
> +		}
> +	}
> +
>  	/* LLDD is supposed to manually switch the clocks and resets state */
>  	if (dw_pcie_cap_is(pci, REQ_RES)) {
>  		ret = dw_pcie_get_clocks(pci);
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 501d9ddfea16..3248318d3edd 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -443,6 +443,7 @@ struct dw_pcie {
>  	resource_size_t		dbi_phys_addr;
>  	void __iomem		*dbi_base2;
>  	void __iomem		*atu_base;
> +	void __iomem		*elbi_base;
>  	resource_size_t		atu_phys_addr;
>  	size_t			atu_size;
>  	u32			num_ib_windows;
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

