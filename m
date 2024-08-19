Return-Path: <devicetree+bounces-94811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 297B0956B78
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6827282E90
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 13:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A6A16BE39;
	Mon, 19 Aug 2024 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="NZuLwHBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C6A16A945
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 13:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724072674; cv=none; b=Ka+wGWLVhmuSBrvfRmqiueR71yeUbmQl9N1o16Mm95JXdVNvMNbN0+9OH3IXuAu2xg/cXf8kNIhF/sG7P72HXtN8o/tDR0wwW0SLM0rcih6EhAyY0xBjT5GUZUStBuTwVvYebeLCPcWNRy0nKRZESUhklsyzjQ4m3emmnBi12vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724072674; c=relaxed/simple;
	bh=IYdbPe0OKx/9hkdhX0xvBdF2XVrWlDywpNqyZct7aPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yo8NjpPPPsaJPs7UcUWjs4Kgx/DaXoNmVrxxyIG4n+QNbKjVcoz6sUO88UEpdAiigA5n5EWPJgU3N0F1G4GtNaDw3mSuQjZsjLVEnfflNxnQVfV9O8WPcIWOUp7MYZeSOO67xZRaYdhHMLVY4E/W3sGf6Uo/53RqYQOiks8MJy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=NZuLwHBt; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42812945633so37805675e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 06:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1724072670; x=1724677470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0q7LUcKKVTgxdpr8vjwYxLdRxCnhdSlwF4/mUSsGME=;
        b=NZuLwHBtVjzI/y9TywloRQLed4d5bIV0lLqC0hZuFcwcqXqUtqAeuhOflldMWloKyU
         f43pNehxNS7GTwth6oXhowOkXYGY3413ir9boUnyhEKwyKXfeqjGrrXaDfAE6vFskZIe
         IrGCHoqQ5s0UCkFRUT7cdvun43Jsx8w26HWnixx1kiZYCM6jxF8SbHd+ZfYNi6bOanpX
         qSnOjWzscOXRgptOqRq5RWeHzOyk5qNF+6pf+fywQCERoAjSPzqZ1wDhL/l5QzIDiPPT
         vIGl+DiIuhIgDGWFc6uP/IEIIDz4LGcWuKeR9m0OR/KXVAqnsdWzgqcYXLicAfohNmpt
         HVxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724072670; x=1724677470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0q7LUcKKVTgxdpr8vjwYxLdRxCnhdSlwF4/mUSsGME=;
        b=tM6cjHX68NDrs4O8hcWSreFo/UazaX02D89VZ+0O+Ckf0StrQvg7vIm3DpOMRVq+ZN
         ohPD5S63TusO1+Dna1wrcdC/mGe9QNG2EGWf1DAQ31+f8KlmVGJEiicZPbOoU9Rch/+H
         JP3ooOGWiQzyaudzQe1m3BhfYB5DsP3+NuZsMfnTKDQfUqXshdNo5rz1ttl4OE6yUMNb
         PQkRMQ7a1ibMvX7tDjnOM+a7rKXRo39nsl8uVntiMeQ+zPr1hr0vypSX1yDy8NZLR5OY
         UXBBgnziWco5+H/M7TAel1/s3iE9R4IzpyFuijpGmuronVrFT9VWrBXKtDQdLrG5Fzu3
         SyHg==
X-Forwarded-Encrypted: i=1; AJvYcCXdntaN4e9ytFw0fTbxzlAzfpv7f3HLcnLnMa68ZDfez25QboWr1V2jrf7N40A3j2CmMLiYCI/k4+48Ip4lRljtkcFjjwmmVREGGQ==
X-Gm-Message-State: AOJu0YxvCDwXdQGQk4y0MK2cfIOKVUvhSOROIfrovPJMgKu4+z1F8SKD
	IR6+rZRrfHnoQ5X5E6CBNaszAJ9RN7I3WzDQCh/L9dkxk7k5jKYYDrMrwEeGKzs=
X-Google-Smtp-Source: AGHT+IGcco8Uu1B03BDNK+9I1i3zqOW3bHDc2syatTmIlBY0tq167mhZ/tsqdcQ13lZ+5LzGYNYw8Q==
X-Received: by 2002:a05:600c:3509:b0:426:6b92:387d with SMTP id 5b1f17b1804b1-429ed7b8860mr78913165e9.21.1724072669628;
        Mon, 19 Aug 2024 06:04:29 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded29fcfsm165221705e9.20.2024.08.19.06.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 06:04:29 -0700 (PDT)
Message-ID: <bb3a8513-8ee2-4532-84e3-0f1de5e6ae96@freebox.fr>
Date: Mon, 19 Aug 2024 15:04:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Work around reserved SMMU context bank on msm8998
To: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Caleb Connolly <caleb.connolly@linaro.org>
References: <20240819-smmu-v1-0-bce6e4738825@freebox.fr>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240819-smmu-v1-0-bce6e4738825@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

PLEASE NOTE: b4 spazzed out, this is v2.

On 19/08/2024 14:59, Marc Gonzalez wrote:

> On qcom msm8998, writing to the last context bank of lpass_q6_smmu
> (base address 0x05100000) produces a system freeze & reboot.
> 
> The hardware/hypervisor reports 13 context banks for the LPASS SMMU
> on msm8998, but only the first 12 are accessible...
> Override the number of context banks
> 
> [    2.546101] arm-smmu 5100000.iommu: probing hardware configuration...
> [    2.552439] arm-smmu 5100000.iommu: SMMUv2 with:
> [    2.558945] arm-smmu 5100000.iommu: 	stage 1 translation
> [    2.563627] arm-smmu 5100000.iommu: 	address translation ops
> [    2.568923] arm-smmu 5100000.iommu: 	non-coherent table walk
> [    2.574566] arm-smmu 5100000.iommu: 	(IDR0.CTTW overridden by FW configuration)
> [    2.580220] arm-smmu 5100000.iommu: 	stream matching with 12 register groups
> [    2.587263] arm-smmu 5100000.iommu: 	13 context banks (0 stage-2 only)
> [    2.614447] arm-smmu 5100000.iommu: 	Supported page sizes: 0x63315000
> [    2.621358] arm-smmu 5100000.iommu: 	Stage-1: 36-bit VA -> 36-bit IPA
> [    2.627772] arm-smmu 5100000.iommu: 	preserved 0 boot mappings
> 
> Specifically, here:
> 
> 	qsmmu->bypass_cbndx = smmu->num_context_banks - 1;
> 	arm_smmu_cb_write(smmu, qsmmu->bypass_cbndx, ARM_SMMU_CB_SCTLR, 0);
> 
> and here:
> 
> 	arm_smmu_write_context_bank(smmu, i);
> 	arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, ARM_SMMU_CB_FSR_FAULT);
> 
> It is likely that FW reserves the last context bank for its own use,
> thus a simple work-around would be: DON'T USE IT in Linux.
> 
> For reference, the lpass_q6_smmu node looks like this:
> 
> 	lpass_q6_smmu: iommu@5100000 {
> 		compatible = "qcom,msm8998-smmu-v2", "qcom,smmu-v2";
> 		reg = <0x05100000 0x40000>;
> 		clocks = <&gcc HLOS1_VOTE_LPASS_ADSP_SMMU_CLK>;
> 		clock-names = "iface";
> 
> 		#global-interrupts = <0>;
> 		#iommu-cells = <1>;
> 		interrupts =
> 			<GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 393 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 394 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
> 			<GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
> 
> 		power-domains = <&gcc LPASS_ADSP_GDSC>;
> 		status = "disabled";
> 	};
> 
> Changes in v2:
> - Use the compatible prop instead of a specific prop to trigger work-around (Bjorn & Caleb)
> - Add qcom,msm8998-lpass-smmu compatible string
> - Link to v1: https://lore.kernel.org/r/20240814-smmu-v1-0-3d6c27027d5b@freebox.fr
> 
> ---
> Marc Gonzalez (2):
>       iommu/arm-smmu-qcom: hide last LPASS SMMU context bank from linux
>       arm64: dts: qcom: msm8998: add qcom,msm8998-lpass-smmu compatible
> 
>  arch/arm64/boot/dts/qcom/msm8998.dtsi      | 2 +-
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> ---
> base-commit: edb6307a8d9be5052ba5ce121e0bd55900ce44c4
> change-id: 20240814-smmu-d572c1a16aac


