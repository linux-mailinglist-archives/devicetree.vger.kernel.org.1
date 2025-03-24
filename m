Return-Path: <devicetree+bounces-160032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FCDA6D594
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20B077A38A4
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 07:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE6825C716;
	Mon, 24 Mar 2025 07:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ItzZ73oc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7F5257443
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742803112; cv=none; b=tSJRO+LSO0pbaGlvSlj9UFI9032WGZQ7gu/nB4xj9Vvuve1kCqUK2JHn83rXZ4fXHWBubo/kpSDYba3YzxqR4knsxnVU9EQp/1XWw7ruc2ZUxZX34MHUGELqqJ0BsOoUGHgz/YSgsA/AXchf/tnv1waSpjt9q/zUZdlWRrzXeDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742803112; c=relaxed/simple;
	bh=Hk67b2jK62ZrHw9NUvbj5w/WBx3baQ3ZYwl/y/2m83U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vA6jGVoO9Dl9US75I0U75ZR5lHWWP5SWMmqgVscg/UrO+xX4sH7Lh2G89AFVJGQs37Zgvzszv7StvfSXlLe0TkaKpW72BCoEu6g1ha03hQh0H2drSjJpToqXqEvat2QzFwy6GgkvgPavW55WTYklY9QX22ENRTUIpO8fHm1toa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ItzZ73oc; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ff64550991so5362975a91.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742803110; x=1743407910; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bp4ddfe4Vf8vx05tu7Jns3bwbMSMgp5+mmtijBmV9ns=;
        b=ItzZ73ocVt57h4fentpQz2W62Su7vsa1vcDxoC52emYjha9wyPfL/rBFnk/nvSUDQO
         TIMVVaK+tmK2MX3f38qiu/J9IqfV2cSEV32GA51PZpuSEmrdNyBOZxQ18fjBLL83VkHg
         cC5GgvoWmYVN4x/2VaVVjaC6kI0kY2ZSBFuLNFWC3Z6BgQwVGZGfyT6YrE+9h9RaGdFU
         EqTGGMKRoeVr1hLMCD5QilM5jPolm06UGSXYep4Y8noM8sNs0fsFdjm+D+SSG+ta19ih
         80+QQmPij00JAFuFVLcO2Pl/oGbXHtndTnatzq2kOhJ2zwPbhhFxbP29e6CTe9mzrKlQ
         I3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742803110; x=1743407910;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bp4ddfe4Vf8vx05tu7Jns3bwbMSMgp5+mmtijBmV9ns=;
        b=keWEdlAJGtVDS94uubq3XivFKMGNVqc9ttLPri3ghUzAikQMNfI7Bm6xvbi1ebMZbv
         y1L6JObP72llSycpzFwuXAveBvaqfI+lfS25n49CQ+Z2Rung4Wa7HQGUufZPCRDzyPD8
         WiGKaM2cjFdLYr0gj64aaiy6hozY+lmGcvUUaqLbjjJl3GwDUNLT+YZmQzf7LXZJqbgd
         2gLu8zvnm5K/jmCyh0gFmoE4e5s/3B/15x5s+a7wZ477+zpBqxjbrWV984c1jGyG2pEn
         4W+U/+GWbiAVA3I1JoJ9FN+ehH3fV9HwnxUcsNFIaUGcE2uFDZSyIxmLjMNz+30ywsQc
         Tr/g==
X-Forwarded-Encrypted: i=1; AJvYcCWaBd40jDQaeRZELpwHKsGTV5nt4gv7PwmlmtcdaSp48PCHYwiWTivNg1Q6Dgyaq7o46Tnq2TM+pwLg@vger.kernel.org
X-Gm-Message-State: AOJu0YwSW/BW8TskKXv/Y3b9JszSSOLRVqqVUGaohdBrK6d9uttwcPRI
	tn1tTcjN/J/YbFk2ojudiCmCo5f2cwCcWIUZ8Z9rV79Q33J/11XDnFuRB9lxtQ==
X-Gm-Gg: ASbGncsNxnysoX+IUEnhXdwgvQXhH+eXBZ7IkIy9UyxnNcigUd0uqtn57pISe51GBMB
	vOrifq8JNUwFEf8yPnbXMslp09rqqczAbvUDxoGiRqcbgxJ06rEOm1kYHEs0D+E77ivubqkKoJb
	02GxsppSzASIqrdgxHmW3wsNqBa6yrFbLcFtHMmt/Sj7BblG+/y5qIzFMd/RE5GF5T0weMk9DPQ
	Ofi7IRA7UkeDAnMw7OxYiDS3Bx+TsQAFmDdrw35LUIryKna873fuPrh4TSRKCKA6FLZ2uJqiEiM
	BT3PG+MmtWI7rN6oj6H/FROQtsleRtIaR6XRkE06+8CDCIexxr/iayx7
X-Google-Smtp-Source: AGHT+IFaEEcjY/AaCnl8GGjUdE+Ran73MpkIfwVAljqCouhk2XWNRH1ssUSjHwSPezwzAjIBoXcYhw==
X-Received: by 2002:a17:90b:2647:b0:2ee:d7d3:3019 with SMTP id 98e67ed59e1d1-3030fe95343mr23608416a91.12.1742803110159;
        Mon, 24 Mar 2025 00:58:30 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301bf576bf0sm11434777a91.7.2025.03.24.00.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:58:29 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:28:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Message-ID: <bn74cvfyprkwdw3moh3qqwxjnoa4nff7ycm63pqvoe7g5efplj@u7t3tmmbqapk>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>

On Fri, Mar 21, 2025 at 04:14:44PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 40 ++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index 8460b538eb6a..43def95e9275 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -9,6 +9,8 @@
>  
>  #include "ipq5018.dtsi"
>  
> +#include <dt-bindings/gpio/gpio.h>
> +
>  / {
>  	model = "Qualcomm Technologies, Inc. IPQ5018/AP-RDP432.1-C2";
>  	compatible = "qcom,ipq5018-rdp432-c2", "qcom,ipq5018";
> @@ -28,6 +30,20 @@ &blsp1_uart1 {
>  	status = "okay";
>  };
>  
> +&pcie0 {
> +	pinctrl-0 = <&pcie0_default>;
> +	pinctrl-names = "default";
> +
> +	perst-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 16 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	status = "okay";
> +};
> +
>  &sdhc_1 {
>  	pinctrl-0 = <&sdc_default_state>;
>  	pinctrl-names = "default";
> @@ -43,6 +59,30 @@ &sleep_clk {
>  };
>  
>  &tlmm {
> +	pcie0_default: pcie0-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio14";
> +			function = "pcie0_clk";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio15";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio16";
> +			function = "pcie0_wake";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +
>  	sdc_default_state: sdc-default-state {
>  		clk-pins {
>  			pins = "gpio9";
> 
> -- 
> 2.48.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

