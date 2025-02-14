Return-Path: <devicetree+bounces-146616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 389E9A35936
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9165A189197A
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 08:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E0F227BA1;
	Fri, 14 Feb 2025 08:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MKHT8AUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C60227B96
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 08:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739522677; cv=none; b=HtGxR5zjVkuQOZVPhrgAh0ERSb/USaRSqzeiqcSwUH/UnIbo/SiuAHz3o14yAa3SxAmyxJEEA50JylLqah0/pdil9pYnEzHzvcuz0I7J3ni0j7OcFjU8rLtT4VeUW9gF9LQFkaxZ7WpKb/s0g4NJ5xn6Sd68Hs97d7VNbSDE4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739522677; c=relaxed/simple;
	bh=fjEHbbRs5nHg4MXcaxjuv+AzQnmbn/LO1Vj4x5e+g9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lgOzO1R6AeJaJuk5xYxvk0ZvqfaAx77DpTSd4Wcyw5NoGhcVQQt7TnA4t16UQpulopWtNT98ipUZCO07bKwL99t5Ur9qbTtq49EQ409HViiKMpem6aX5weOK/LePTL/+aaUEMCbLyVn9od//XV2O3kyH725PuZoiBQHwImWiet4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MKHT8AUr; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-21f6d2642faso46557245ad.1
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 00:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739522675; x=1740127475; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ceqbqK+CUw72OCIX9AcVUP6vB2bb9Jm70S/zYtdneEg=;
        b=MKHT8AUrKJj5+NGFgdpVnBtQV7Qr9FhouA7dQTEm7h9eTo2AW+kPSuiO2Y5ai1sKCO
         a5d6RTYvfrjVsaE3M7HlaQ7yMWNTtqbUOSVLatewLxVBQxcuK3AoSZsnD7kLnfYeCVrd
         oauM6Rg3Ww7bFR+/wlnvusIgUtFH62FbZebphbP8W0TjfthwrzNb9mp6b01+IWpIDocS
         OG2poG/JMhq9syw/a4oE7KTMxhY8Uv3pcv7GxNKcvCOAdZKwBH3Ai2kxMsMym+qrTT7u
         fhNt3wmI2oI//opfS6E8zUBAsCvdNDb7a+krtgFcIFSZBoNnvUHy0nkyoC+WEToDL+Lu
         gG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739522675; x=1740127475;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ceqbqK+CUw72OCIX9AcVUP6vB2bb9Jm70S/zYtdneEg=;
        b=bozSm4qej5UComs6ITAMS4OJ+cqG1cYg42M/5YPQGEs53oXAnzLtvZ9F7wtXrQIZXl
         kjxI19KJ4wK9/MRyUYR1JecDpy9jIc7r0ymmaX6YgcgiVwiuNcfko4H8guh2mjYOjtK9
         Pub4t+yNkpvMzigMcDzolsf2Jvh1m+Wje4bQKbCLf+BL05LNjdA8GXuMkmrlQzkQ5Xa7
         H/yPfw3OyjXyBFvHxmb/WHcbSFiPn4SNDlQTQT46rY7jijba7V/J0Qnek3oUEPquSvfM
         cgGx5qL2ntz72ZWtOlBq5ZDwzVCK2xjS6b8/IMpEcKD0wqrgCj0pns25E4puBW10jdG3
         T7VA==
X-Forwarded-Encrypted: i=1; AJvYcCXfw3Ta9WspyNCcRHSYT74ZQ3nMQxmyJP2UgXjOuDgfab1Vu9m9Lh6HXXrZleJCCVOE1/M+C8HcOyQR@vger.kernel.org
X-Gm-Message-State: AOJu0YwlQ7RP3Ch2ShkcnKrAmWjJgD2ikzs2LoStINp1qFO+prvOZIlM
	3s872RlSgkOOLbOxwF/Mqf4oegSR3htGOxlW+CpuazQ3kT4aCgc7RKEzuWZz+A==
X-Gm-Gg: ASbGnct7eprrJjG0MhyYYb1e62pfqy0TV5jDt2hmEgQMTxX9sgEF09zoxIeyP/D3z3y
	2dvs/qLrKQivxdxCnAMcnznasWP3YXoGIC+HRq33dah7zHA2Ny83wwvJnkKOUmL4bq/xg6iQWrK
	mW2uqUocc0b/p5/gsiHC2wUPt83CqKx1byITM2r9gN072/nGICstlOtIDTkU37t0B1KkymAa0pT
	MV6/+oRr+p7cjpoXLUZAvYPgTDZjj96zyaYwSLQcpiwjWYS1uZ5J+ZXGNGjpY8IYRTchVr8vhLr
	Ryk2yTWeX9tlpti4g0TfP/o9xLFTo+Q=
X-Google-Smtp-Source: AGHT+IEN8kvNLK7tPERMpY3Zx8RkLW09NICOccWPZzuvH4t8jd8F+7P8elAc+5o7ai9jS7oByn15dw==
X-Received: by 2002:a05:6a00:1c8d:b0:730:9860:1240 with SMTP id d2e1a72fcca58-7322c39c33bmr15562042b3a.13.1739522675029;
        Fri, 14 Feb 2025 00:44:35 -0800 (PST)
Received: from thinkpad ([2409:40f4:304f:ad8a:a164:8397:3a17:bb49])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7324254681asm2614182b3a.25.2025.02.14.00.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 00:44:34 -0800 (PST)
Date: Fri, 14 Feb 2025 14:14:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
Message-ID: <20250214084427.5ciy5ks6oypr3dvg@thinkpad>
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>

On Mon, Feb 10, 2025 at 01:00:00PM +0530, Krishna Chaitanya Chundru wrote:
> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
> rates used in lane equalization procedure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> This patch depends on the this dt binding pull request which got recently
> merged: https://github.com/devicetree-org/dt-schema/pull/146
> ---
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 4936fa5b98ff..1b815d4eed5c 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3209,6 +3209,11 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			phys = <&pcie3_phy>;
>  			phy-names = "pciephy";
>  
> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>,
> +					  /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;

Why 2 16bit arrays?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

