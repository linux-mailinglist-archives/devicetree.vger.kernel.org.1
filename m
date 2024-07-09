Return-Path: <devicetree+bounces-84434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF8392C2F0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 19:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FE45B21597
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4872817B044;
	Tue,  9 Jul 2024 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hSUtqeMc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B411B86EF
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 17:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547914; cv=none; b=HHhln1H7zJvlcj5BDPxaFvTYiCKH5IXWmEqb6KG8UTuiSowFodgE0Psx+YxG33SgWsw5kddin4Dq3CU3F3ebdVFCBg/RPEv4htOijdX6LtUZi7UXl0KUAPEiq1XR57LqIdH4xUhklJrcIJV+Nau9tKReIc+ShYE0NRqOk5Zdu7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547914; c=relaxed/simple;
	bh=+/+EC2l+olOF7KyGXIXNGZzNzi+/+As1tcpMx62bp4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qdcyEqoXXa/irlKjKoqkqhnrc4AYpmSI4hb53/rg8nKBtOJyCRAywPum8rGLJYNWnxyMgUsVuy2FRWEUv2vUL38OmeCVXEkEk2Gs6K9QeITv6IGSKkq5+swbmoZDEb4uP5TZ4dbcKLVExDTLIN4ukhzRc99wmNuwc55QLuOy+W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hSUtqeMc; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1fb0d88fd25so106775ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 10:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720547912; x=1721152712; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=akLpSFPHdkCvX8sa/CAhBoiIqmBtSWHSGyWXF/WIX2o=;
        b=hSUtqeMcYpwX1GU75LrK8Vmb/HUmegrPhyzc5tspqVTl7IP/h2w2irN/igVSUdP3WQ
         0vFZc7dhhFUwNIRwGdR7dIWGrkifRDhk6OMLh86AzVd4wtD6kNny8JXf/DeTcRQFbofY
         laJfTZhpaJEA83Y6Nq8Cp9Ey5RspuLBEklPnGwEdrzsESm5mPv8M1o48r9Ntd90eKUwl
         L9GPOBHJ7qBSHusKh6LG3LjVpteSki/67WDZSUKr9T9/BMv32IXPiZv/oUfPsqz6NZ7U
         V2BiwxTKMsWOnUHh8QpjvOO4+FVzQEH5tQyOtlmZHYPddGgpTCUbuIe3Yv2NylVRtlD7
         cK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720547912; x=1721152712;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=akLpSFPHdkCvX8sa/CAhBoiIqmBtSWHSGyWXF/WIX2o=;
        b=X0/a4QPp4Qm4bEga3KPzYYf2SBW/N0C6a6eHsdqb+jOG/bot73gOWgPtfc69lDZkCV
         XCGe8GBD9qqJYPi3sM0AQIx4DwswElHD82PWd9ybYdnZezjzw/65Dtj/X2Ps9XovtQPx
         6T9Arfw/5LlXAOGMPpoLPa6Zv/0pF5KcVtIpDS5UNNAalSRTBunQtAnyRQB5WGvHSk7R
         OjqtarL320rCcvM3PJEl8o0bdZtLJrU8QnndfSMqEDsNSe3sHwnVHb1JAmSLOQkaHSTH
         Cm3EBJih3CLYirzfD6mDbc1egUfMlWPFyTqjESVbLkzRbd9AxWGoKCulfAIfjFNa5oJ1
         dfCA==
X-Forwarded-Encrypted: i=1; AJvYcCXcIH6OMx0Z4/hnRMvxXzv7lVnesesb41V4gLk7K0yl5qV6o0Z1qxHQaNeiFQ+rI08eorb+r8f7851YP7YGkMWutg+8D6OkVG0YIQ==
X-Gm-Message-State: AOJu0YxwJx9LQ3Gk7gkeBlwXX4aSr+nZVCaQmZ611Mzb+GLydyymdGI9
	rK3B63CZJOIh8YDwmG0+dt/CookQH4YFfZiSBykEH8IrZbkSCOja4j9E3lDSMw==
X-Google-Smtp-Source: AGHT+IFVh2IfVOJVgTJ8rxZyJ6qhLDArqH/TiLZO7RAzJ4aVX61SuWXJwMdf52YpYAsJ0SEWy7Yk/g==
X-Received: by 2002:a17:902:fc4e:b0:1fb:58e3:717d with SMTP id d9443c01a7336-1fbb7fc8302mr48538235ad.12.1720547912078;
        Tue, 09 Jul 2024 10:58:32 -0700 (PDT)
Received: from thinkpad ([117.193.213.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6ab7debsm19019685ad.166.2024.07.09.10.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 10:58:31 -0700 (PDT)
Date: Tue, 9 Jul 2024 23:28:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] PCI: qcom: Add QCS9100 PCIe compatible
Message-ID: <20240709175823.GB44420@thinkpad>
References: <20240709-add_qcs9100_pcie_compatible-v2-0-04f1e85c8a48@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240709-add_qcs9100_pcie_compatible-v2-0-04f1e85c8a48@quicinc.com>

On Tue, Jul 09, 2024 at 10:59:28PM +0800, Tengfei Fan wrote:
> Introduce support for the QCS9100 SoC device tree (DTSI) and the
> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
> While the QCS9100 platform is still in the early design stage, the
> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
> mounts the QCS9100 SoC instead of the SA8775p SoC.
> 
> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
> all the compatible strings will be updated from "SA8775p" to "QCS9100".
> The QCS9100 device tree patches will be pushed after all the device tree
> bindings and device driver patches are reviewed.
> 

Are you going to remove SA8775p compatible from all drivers as well?

- Mani

> The final dtsi will like:
> https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-3-quic_tengfan@quicinc.com/
> 
> The detailed cover letter reference:
> https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
> Changes in v2:
>   - Split huge patch series into different patch series according to
>     subsytems
>   - Update patch commit message
> 
> prevous disscussion here:
> [1] v1: https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
> 
> ---
> Tengfei Fan (2):
>       dt-bindings: PCI: Document compatible for QCS9100
>       PCI: qcom: Add support for QCS9100 SoC
> 
>  Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 5 ++++-
>  drivers/pci/controller/dwc/pcie-qcom.c                       | 1 +
>  2 files changed, 5 insertions(+), 1 deletion(-)
> ---
> base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
> change-id: 20240709-add_qcs9100_pcie_compatible-ceec013a335d
> 
> Best regards,
> -- 
> Tengfei Fan <quic_tengfan@quicinc.com>
> 

-- 
மணிவண்ணன் சதாசிவம்

