Return-Path: <devicetree+bounces-139558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A38A1629F
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 16:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 453A21885C92
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 15:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2881DF745;
	Sun, 19 Jan 2025 15:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NaVBpdMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D301DF27D
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737300425; cv=none; b=of3pkzQbQGVkIICduhYMPoTFe4wlqURTi70YuK+ZGooPiE0uoz3URLMa/6Af4ZSD5xqBGxO4PqEunQwoplqFOV24hYptYZY8DQ3h1RtMcaodQFO7fxF23IKaaoWdTBTQvgm5VzaOp9bNq71MBRumQF0D87rEWNIHW3hqsR4rNoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737300425; c=relaxed/simple;
	bh=PWQpcLhH7Zeo4/EFrlP2gfivfal9zzDPsCLUkRO16zE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OXDrDycT7m7tYQdkDGdPIyw+Wfi+hN4CodgpNUWcK7YY7noFVKty+otfGwsJX3wPBgb9zS1Zzk5H654b4mBA9l63weV+Pd49R5Slce+TFF8/4EQDRsyPr6CnaiKrorNfvyO9lcgIUxTfkcM8ZH3zdFd3vYWF2ICxC4RoTeSqAdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NaVBpdMZ; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2f4448bf96fso4727747a91.0
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 07:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737300423; x=1737905223; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gWLJNtDh2M0LrWGMJ4uX5maH7/SrzMNwJbKx9WRcHPQ=;
        b=NaVBpdMZI071+K9NmczBY5/PxLIwgGaruZottqEB8NFCgAq8RhXj954FscI2pRExkb
         p0LSrisa6Mg/UaptV6v3Sgh7rcGu9AEm5ycGJP4ibVVsWolIVH8Z6fByE96OWSvUqTiR
         +G6ErRdgHBotP7cPXALTm1IjdCusqq9IdvglxWMvw/Ehhh8noMJAQ+Y5VdJoJpgrUuJb
         zwaQQgwQqff+35EoUXqqZbwUpq9sWOcu0y9QPi1yjt5uxJN9LVYlqnkHwk7mQnFtpTHp
         ay94PoY4+VX3Zy29LJF7gpyVa9G63ljcrOzXXx+khLrbjQOhcWjOj+lIkE0bgHNTXfm1
         AIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737300423; x=1737905223;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gWLJNtDh2M0LrWGMJ4uX5maH7/SrzMNwJbKx9WRcHPQ=;
        b=JvOPPCPKlhz0MmblCu0k4I/2pLnR2n56+OujFIh5QcfrBLedXc64E6uWB8nYmQxuKh
         uniHMRyWxd/AOoVy7eRhTXRjenmuPfbT3MM09sUlgcebODH90DAcM9Qnr0khUDkg64pW
         lwED4zW87+Aq9egNPfAoUHUpQzbqwnGJrqgS6kaNQgHokBqCMZv1ZHj5Y8K1lt/Mrex6
         x63zFVbi81am3OmNtQowcpt5RPEz6eE6SEFpHK8AuPXLVGwzkQJIFsVb70cbj5PT7r7r
         cGPsteeYeEXTGl7tbH5poUWlQwStqmEzXEKXgXtOaeKVNbbqaKUKmHmRIOTyloVYBY5M
         d1xw==
X-Forwarded-Encrypted: i=1; AJvYcCXM9aWzKFRT+T4JIh6b4biFC20v0Cm0//gaSDRcWeFMDrv24HSIQ7kQ6kdy/fPf5xoTXP3zAY4m1ZVj@vger.kernel.org
X-Gm-Message-State: AOJu0YyWUoSTV7URarqZiERczAk232cLX80hM70eywo3K7xDUKRQCcx9
	3KqAg62bRFFKG3FFs8nRl4BObnoxWscg5ojyENYe/CxAWTE4Eo+pQZOY7qUBJA==
X-Gm-Gg: ASbGncsF0W5h/7uJR4iQTVQQMVBH8v2NMRuJaD4q50yBOKHPn1whw1Si79ZVUKxToVK
	bBTqPMMnz4YvFz0mxDNRKdEROvTrGy+NS7KU6OMRuuRKIxasPlNELJw2j0qnaGEd2ayU7FolzTq
	88VMTcqfm1u0HDZbDtmDD5zF76h77KMUcAzmrNLGqQ8fHM9bISdPXPZpiTc4SngAImrZoPsuYfh
	HEoapOaFjXqE+KBbCULlr0WHnaBxZpcMgXvPs4uxVxPAg26wJpKIvyPG+MBaTWsBfFPZDxGDR+t
	GcJBlg==
X-Google-Smtp-Source: AGHT+IENWqIH7vPK9qo4kAByRAYKRm1YyPEDyBpffvJczNdBlZH+Y7lmOf7IJkBmPUxBttv2OPLC8A==
X-Received: by 2002:a17:90a:7141:b0:2ee:dd9b:e402 with SMTP id 98e67ed59e1d1-2f782c70237mr16844568a91.12.1737300423171;
        Sun, 19 Jan 2025 07:27:03 -0800 (PST)
Received: from thinkpad ([120.56.195.253])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f77611a162sm5861697a91.2.2025.01.19.07.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 07:27:02 -0800 (PST)
Date: Sun, 19 Jan 2025 20:56:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] PCI: qcom-sm8[56]50: document and add 'global'
 interrupt
Message-ID: <20250119152655.g2w4evteqqastil2@thinkpad>
References: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>

On Tue, Nov 26, 2024 at 11:22:48AM +0100, Neil Armstrong wrote:
> Following [1], document the global irq for the PCIe RC and
> add the interrupt for the SM8550 & SM8650 PCIe RC nodes.
> 
> Tested on SM8550-QRD, SM8650-QRD and SM8650-HDK.
> 
> [1] https://lore.kernel.org/all/20240731-pci-qcom-hotplug-v3-0-a1426afdee3b@linaro.org/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> Neil Armstrong (3):
>       dt-bindings: PCI: qcom,pcie-sm8550: document 'global' interrupt
>       arm64: dts: qcom: sm8550: Add 'global' interrupt to the PCIe RC nodes
>       arm64: dts: qcom: sm8650: Add 'global' interrupt to the PCIe RC nodes
> 
>  Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml |  9 ++++++---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 12 ++++++++----
>  arch/arm64/boot/dts/qcom/sm8650.dtsi                        | 12 ++++++++----
>  3 files changed, 22 insertions(+), 11 deletions(-)
> ---
> base-commit: adc218676eef25575469234709c2d87185ca223a
> change-id: 20241126-topic-sm8x50-pcie-global-irq-712d678b5226
> 
> Best regards,
> -- 
> Neil Armstrong <neil.armstrong@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்

