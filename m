Return-Path: <devicetree+bounces-126152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C50B9E0AB7
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 19:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63D7BB252F5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402B4204F78;
	Mon,  2 Dec 2024 15:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b5TRXOqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBB12040AA
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733152019; cv=none; b=MKTT4H41HL15BjwDtkSEiJtRRnkTOhoPM32Fiogb0cWETEVAlXHv7IbbYeaulXeMJ8C4tzB3InE/dwKyOtujyoRkrQB/CzA7hOnK/YxwjFQd1F9wt1t5ick6THY2YBB9C0Fvua0XyK50u60aeOt6S6r4iWBU3XVUBzWJtfjxo94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733152019; c=relaxed/simple;
	bh=1EX3Q/6V7Sjs15HKyRfyVFj2pNMzzOFk0u9V9vlZJYA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fOC7qznW/DytZ7dPxGNMiLke59g+jNC43Yqc3/cQXRnirgUF0SyBQEffl8ueRJLj3dCI+rPuaTR6roxx6QQr1kZfqS4Sw7+VCgXkDHH6GrMCkx5Ym7RYex1IK3e6WOat+n+x/6GPbmbTub2EbdCobDO9r7f9Uy+KWPZEENelBR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b5TRXOqL; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-724e7d5d5b2so4088035b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733152017; x=1733756817; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rhh1F0FNt93OWks/1WTeBIrSdzXMhFaYNcAsFDXPT8E=;
        b=b5TRXOqLyMkneZu+DnXQuUD7bvlUpwIFiiElKNUbUXI2zD2FTD3mWl7fS2ag5V/t+o
         FJHjHFgesW3oAMZe72MTtaO+XvkTFuRU2Fbzs4MymAx/MNtQuqkm1mbNFo6DFOzQJTty
         USzIFP8M0JvhiX2KDktHWxKvnHMGmwnvyjq1jVSRZneTfOozRTGD0tzrDG392HedUPbV
         oo0eobFCOi7FPveFrG9MxQLU0U+rUDOE5owNMRU/ZwxrhFqq0JzgwPiIBrVcMvXtY4L+
         UTesjtq0C/6A0H7riYvz9a8SBWzsKITTcM+c/hhkNQoyTwewPgMC/yukgoV5iU5yqaBy
         hFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733152017; x=1733756817;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhh1F0FNt93OWks/1WTeBIrSdzXMhFaYNcAsFDXPT8E=;
        b=YxLMDAVbkrBPePAhU4Np1regxa2NF0dbOOatNY2DwjJZDNjkFe4RJB+8wOmb6y5OUS
         SkkPOqNNxnjnnc1U2ylMlJZPClojVVFNPkIkICRkc8QZ35RJljthfuPLtYqCHKGON5wq
         EaWVm2u+Xlo6KFXTqmf5+O+LxzbKW7egp1MU0mkUiOQ7WioySzTmbZw7QAMwsdWtiqNe
         mlkofVzrjLgu/B0sFG+1RcXVjIZcdhrsHgLtHmzvRF8Ade7OdK8Nh6/gy4FoIxF5c4hd
         YHGf8VXDkPmc15ZPXLtb6J7ff2NyyfIr6eKRhfKdVDea3j96K5UtU41TE4Z62RcUeL8K
         u5Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXb7mBNowqAN2vRhppLgUmhrjc/N9G2jg2P4NCL018s2HomiNSuaH8k1kBtIVfus7QJOOvNqBJwjHLb@vger.kernel.org
X-Gm-Message-State: AOJu0YyZf6pYOh2bSdujanVEOqgvGwgYR1bJbMvnssQbnPZkTa6bc1jT
	B1XDuFwpnQvjfOWbNr22udUuB3wC0qRRGL84MgLLGgcpQpWhb2yVQKej/cnKkw==
X-Gm-Gg: ASbGncsFz61wpyqHAS+sW1+yFp6M5A+D32QzKhFCW4RWLC4INC1qisIcg74JKnjoppK
	Sp4Y1A0C2hVX1qYHc249zE25yUkHbAHd2HVgR1Xf1nb1I6bApR2Ao/vp0/kriCWxjLSBFqPS1Tb
	cIYf5ojH3jgO+yN5PlOV3h6hiYM3eYetgf5fyCT0q9N2x0iNwbxjsIQO9iaDRagaofYK0dJnmzN
	To6Mi5r9Wc3sTYuN52OGSQHZGiKHGi4geTIuF8xQjYL2Y2JzyC2raj1qkfh5A==
X-Google-Smtp-Source: AGHT+IHc2nR+uOEZidcr15cshfEn4P+vpBs4f+sVjGhFr5D8hxW5/7LO0D+hvIuBPYBe1VGyJsW1Rw==
X-Received: by 2002:a17:903:2347:b0:215:6c9a:15 with SMTP id d9443c01a7336-2156c9a0365mr117358825ad.42.1733152016720;
        Mon, 02 Dec 2024 07:06:56 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2158103ba15sm26841555ad.280.2024.12.02.07.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 07:06:55 -0800 (PST)
Date: Mon, 2 Dec 2024 20:36:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_mrana@quicinc.com, mmareddy@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Message-ID: <20241202150648.fwi2wzbdyyedueby@thinkpad>
References: <20241117-ecam-v1-0-6059faf38d07@quicinc.com>
 <20241117-ecam-v1-1-6059faf38d07@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241117-ecam-v1-1-6059faf38d07@quicinc.com>

On Sun, Nov 17, 2024 at 03:30:18AM +0530, Krishna chaitanya chundru wrote:
> Increase the configuration size to 256MB as required by the ECAM feature.
> And also move config space, DBI, ELBI, IATU to upper PCIe region and use
> lower PCIe region entierly for BAR region.
> 

Is this change compatible with old kernels before commit '10ba0854c5e6 ("PCI:
qcom: Disable mirroring of DBI and iATU register space in BAR region")'?

- Mani

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3d8410683402..a7e3d3e9d034 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2196,10 +2196,10 @@ wifi: wifi@17a10040 {
>  		pcie1: pcie@1c08000 {
>  			compatible = "qcom,pcie-sc7280";
>  			reg = <0 0x01c08000 0 0x3000>,
> -			      <0 0x40000000 0 0xf1d>,
> -			      <0 0x40000f20 0 0xa8>,
> -			      <0 0x40001000 0 0x1000>,
> -			      <0 0x40100000 0 0x100000>;
> +			      <4 0x00000000 0 0xf1d>,
> +			      <4 0x00000f20 0 0xa8>,
> +			      <4 0x10000000 0 0x1000>,
> +			      <4 0x00000000 0 0x10000000>;
>  
>  			reg-names = "parf", "dbi", "elbi", "atu", "config";
>  			device_type = "pci";
> @@ -2210,8 +2210,8 @@ pcie1: pcie@1c08000 {
>  			#address-cells = <3>;
>  			#size-cells = <2>;
>  
> -			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> -				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40000000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>;
>  
>  			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

