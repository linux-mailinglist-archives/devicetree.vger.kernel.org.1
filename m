Return-Path: <devicetree+bounces-124639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9DD9D97BB
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 13:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23CED285EE9
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916CC1D45E5;
	Tue, 26 Nov 2024 12:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PMYVFlay"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CE11D416B
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 12:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732625766; cv=none; b=mrQJpZEp3giRSZfCSYECB0BhsIU0dZgZuGzniLySVdrH4OelaxYuYyDCVCiI6SyZLvo1XjNnOkWlPzlKExoksakA0qPEWKdcaUW8d7vuP30wF1ICEDIcURR6s7/iiFjD8F89s9T9PhBgs1o2rMcXNlQ7tXfAnMs4MYEOVa0PfCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732625766; c=relaxed/simple;
	bh=bzBJ5ySU8iyC+cTGOrqLjv/wf4htjtDCeE2Z/8l0Yew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UymuH9dT32bRqtWKmLlJ83y30Nzpz7GskaghZW+5W5FgdrRbtCgyur836Apqbl0zRNIfRu2ZN/oFv4qaC8z4VIYAfmHE5yxYE32ENGXJlVnkNxV6jCuoRJy1oZB44erHJPJAMTAnYXMjNaaWn04xwmS/kuj5/J0GBCrhPt92fUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PMYVFlay; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71d554dedc6so760502a34.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 04:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732625764; x=1733230564; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dXE3QYJ5LikeczgQTvHoKWrWw3sPXnz+0dNSvQEom74=;
        b=PMYVFlayZbYKDjEyVTe5fZj74kzP54VAZ/lHXm4fqVF/LvelXMGdUopWDfJG+A7TIH
         Wdc+NeTyppMffNMciIJvha4WFY03DoVCPJo4ecBg3U/waVbaxQdlLkKDVdJ45I1CNkAw
         3M+qZ6RrcME5lTjpnYFihsS8u8nlECyxbuo1PdKc18EukNyl0B3WmAsxe3K3E9u3aRKF
         Dk/Ff/tifeLb+TWZfcioitKpzsH3KY+dm5iEjXoS78Mxki+GMLqooWzksW8yBWj0jSM5
         E7g41da/hePC55oE3iCmQSYduxKwgQXFbfcT6WyXfBaotmly2kf1xwUXJEM6XyllQDd1
         l5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732625764; x=1733230564;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXE3QYJ5LikeczgQTvHoKWrWw3sPXnz+0dNSvQEom74=;
        b=fKhuuEmr7zG9N+ck1grToaxJOKL1rfwyQClrd/foKq9QQomhlYeU9nUC7/fgU8BAFw
         t5LbuJZ8RwMgAkR4b4qh6pz742aaiVvnMTG+lB4ra976lKhAFN5cJHp/7aMN5QPIiOeZ
         kRMWb8DbyiIGg1iKd05zOJ475dvrzubbk58blWZj9O0rToP8VFrB/QVMDf4GlcYKshmB
         97KOdNxBkTxBWY497tu8JeB8FO0Qy3+6oquxI6fsLCS58ZoqELh/eqQ0IkXu/RED+h8s
         CGlYnrn4osZm/65ivVL5JgcJZbI+Zx9AjzieGWGuHjDbJ+mUgFfCNaaNPiJAzVOeCMIs
         wx2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzb0OBisChDsVgm0FKXriEXf+d6DiFQutzHG7KFvh8cgKD7E+uenxNwwNyzn4EECcWrM5SQQBphukj@vger.kernel.org
X-Gm-Message-State: AOJu0YxfkMFKEumCbKUZUPydnr0jf0NTm4qhWriYIciBjACN4A8VFUXr
	dZefo7RB95+Mu5Cmp5zSlo7WBqjE9+ITfy9j57QrJlp6vSPbxbMYBu4itO50YQ==
X-Gm-Gg: ASbGncvmurVkSfGy/UM7gs3Tas41XD1jXX9w91reAlXzx2HxpEU5rFa4UvgHd+tygsT
	uovLUSvF4rdLSh918+jI2E9MiMwJNkz6vrZzbCCFy4OhAjiLDhf7Eu7zke5gcx3SszENAar2a87
	7tJXl0qMQ+2tkbs+xzUz2/iE8YfmLi26Ys/GSJ0OF0n7hcwBHmtfljdtTWICota145+QBlMgQvn
	sbH6IBqxrC8CQrLt12F1Xl3IJ1dA7Qm4KFvcNWgCBnFF80ZEDQsXRmS/vlI
X-Google-Smtp-Source: AGHT+IFNm2gT/rtGSM3QDKFPVSFCgKiQoR/R4Xr++om1Vj/nQzObB88rsH3X/oaoAwNa1JWVmpMuRw==
X-Received: by 2002:a05:6830:6403:b0:718:4073:62bf with SMTP id 46e09a7af769-71c04b7eecemr17953453a34.7.1732625764057;
        Tue, 26 Nov 2024 04:56:04 -0800 (PST)
Received: from thinkpad ([120.60.136.64])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fbcc3de284sm8598526a12.55.2024.11.26.04.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 04:56:03 -0800 (PST)
Date: Tue, 26 Nov 2024 18:25:56 +0530
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
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add 'global' interrupt to
 the PCIe RC nodes
Message-ID: <20241126125556.oncvvkyrwj5s7u65@thinkpad>
References: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
 <20241126-topic-sm8x50-pcie-global-irq-v1-2-4049cfccd073@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126-topic-sm8x50-pcie-global-irq-v1-2-4049cfccd073@linaro.org>

On Tue, Nov 26, 2024 at 11:22:50AM +0100, Neil Armstrong wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPUs. This interrupt can be used by the device driver to
> identify events such as PCIe link specific events, safety events, etc...
> 
> Hence, add it to the PCIe RC node along with the existing MSI interrupts.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 9dc0ee3eb98f8711e01934e47331b99e3bb73682..44613fbe0c7f352ea0499782ca825cbe2a257aab 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1734,7 +1734,8 @@ pcie0: pcie@1c00000 {
>  				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "msi0",
>  					  "msi1",
>  					  "msi2",
> @@ -1742,7 +1743,8 @@ pcie0: pcie@1c00000 {
>  					  "msi4",
>  					  "msi5",
>  					  "msi6",
> -					  "msi7";
> +					  "msi7",
> +					  "global";
>  			#interrupt-cells = <1>;
>  			interrupt-map-mask = <0 0 0 0x7>;
>  			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> @@ -1850,7 +1852,8 @@ pcie1: pcie@1c08000 {
>  				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "msi0",
>  					  "msi1",
>  					  "msi2",
> @@ -1858,7 +1861,8 @@ pcie1: pcie@1c08000 {
>  					  "msi4",
>  					  "msi5",
>  					  "msi6",
> -					  "msi7";
> +					  "msi7",
> +					  "global";
>  			#interrupt-cells = <1>;
>  			interrupt-map-mask = <0 0 0 0x7>;
>  			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

