Return-Path: <devicetree+bounces-152258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F63A487D3
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 500887A72DD
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC32222C32D;
	Thu, 27 Feb 2025 18:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZQYwdyQv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA56B20C03C
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 18:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740681005; cv=none; b=EOuXMV7LEb1kbYkgPEXPhke+hkSS/5B8q1tNNtOgHd9eMc03whroDe/Zflll6qkTjNqhH3rp4HVa5DQ0MiBhiQvbejQNXbNI0/z6mJ38kxJKfJeqwQk1oIjEpurxQ4tQt9FdVPfhVxJYJU3B3IEtfv0U6kWabyzPZRL6jLLyh6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740681005; c=relaxed/simple;
	bh=qWTescY9VTpDYccdLyalIWu+a+eTm21wFuIg/J+tQlo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T7MTn6q16umsEJy5pa2tsRmpjjIcxAtyJd+Py9G4Yz8I3abV7Kva6CDJXTcoe3gHs1TD/1vVNrOIrW2TIOorTUhatnINNW1FdkQP0Vw/SBRvyfWhoSLDyHQacwiMtcNSdh0Jpa1LYp1IOFJSaGLVxk1Mmi0aOQTvdSCYF55jOhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZQYwdyQv; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-547bcef2f96so1294964e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 10:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740681002; x=1741285802; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HiVWALSTD//m/UIip3RqCj0OCMJzxffojcYsREWRIbE=;
        b=ZQYwdyQvslX7PKKqIh//93rkKkNK0HjO7nNhFkgbBuYvPKrUXSCL4/lxKfyvb5dRuo
         qn+wkRa75PHU1t1XdeFhT6fiqy5Ul2+JiiB0TxGAGqfeNX1oHEi1FJtGK+C2isH0bOvn
         l9bJCs5H96EEDiWF06OhdANVUtSSKI7mZrgojtT78nrfKOD9q5sJxNoKbc797+iAnwIR
         lXR0b3YlB0INf2GpTmcRsLloi9S6GjI/U4gDwU4HvK5W5O9KhNIP6/nJChheuoK72Xq0
         Qyfvn/cmIAPieQLXNRprRJc6evPiQ27lEz0uKdy2ccIChMlzk8m9Tjb2UdUipxA9E+Be
         nFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740681002; x=1741285802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiVWALSTD//m/UIip3RqCj0OCMJzxffojcYsREWRIbE=;
        b=HQYdH189PmX6bzt/FJVUWYCxDKE9SH31bfiNAro6Hlii8BSqO1HlZhrp2XnNq6CA4d
         InkoF6RLeJAIb3gKuk+95gy0x/6ZawXxXtG/Zyrt5SOqNMnEVUn6FbQWNvEURN3vbpB5
         RvT6Acess0zXMQceF+NWL8uOPWJOuGSZorSQTljxVUMHQZhM4FZZ65Rf/slSlj5/ScWm
         aft22lVLNwS+7Y9xZVd9vzv4OImfMCTFlXI1z5vJO17MEfeKA0JYLtmhZvDLk5vxMAUd
         5o4AaTmJf2/Z69ZUw9u/PpGDOOW3EcnnJl8cJDVMN16GKx7v9IpzrIw07hbel23xSb74
         EFOg==
X-Forwarded-Encrypted: i=1; AJvYcCWj8C2O429HM0zJgqES92EvJ7XOnV43Yan5xojCPgy1faRvqXLMz4RMjQydxYu43mMX4/PuD+t0xTUq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv49sXp6dMEtZXzPaBjAh6zfOsULyK0+/2GWZHQB5MpRBeT2kj
	HXbDjOqa8pQwLiSnKe65ATIyQ6BF0sTBnazP5hJ3rjlegf67796COHQ8mHJdxIs=
X-Gm-Gg: ASbGncsCjhZ5XcaM9Eg7VaVBPPN91Jd8JmMPUWRzEfpPk45AQqbbhdN6E5a1WWaA3nn
	G23kNhVXk6Qj+c81lTufbCPteedRT2Otw5/uRH9ExgblL7h9MeM6DCw5iNOk3IV9WFkc+6jSOqw
	7bxGJHpeqVnwJL1pY9YYJrdv8NnjI3hHiUUVeTvzo94xQXXGn9TaedHRWrp3OYbxRNITQ0dgiP+
	7KjbqJzBhVrKoXV4fVR94h8hHmANXIWDvVF7Y7VqP/7cGR+spWp5PeIRWvVyLkExkSL59AC5fmO
	iqVtsbBLnErB7HW7QZccJczw+L7HKVJppTobtIHORU1C/Wt8jHMo2f0faEquRzCSPavuULZr6zx
	fwwHiaA==
X-Google-Smtp-Source: AGHT+IHBikfdMSK2JkSKuT0fc4cM+qKPdJZs+aMwAQcHRUzz0Xs5ze16P/SepqSYoZv2Lgzl1OHSNg==
X-Received: by 2002:a05:6512:1103:b0:545:225d:6463 with SMTP id 2adb3069b0e04-5494c36bcc8mr200018e87.42.1740681001614;
        Thu, 27 Feb 2025 10:30:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494417b66fsm224376e87.93.2025.02.27.10.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 10:30:01 -0800 (PST)
Date: Thu, 27 Feb 2025 20:29:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8750: Add USB support to SM8750
 platforms
Message-ID: <g47ac6bzxqyqbkuqsvuwm5vdc7x5wjfppv6fj4mftwyjlyuz7t@jzmw2kfa2jnp>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>

On Mon, Jan 13, 2025 at 01:52:13PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750.dtsi    | 134 ++++++++++++++++++++++++++++++++
>  3 files changed, 182 insertions(+)
> 

> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x3000>;

If I understand anything correctly, this should be 0x4000, not 0x3000.
You have missed the DP part of it.

> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +

-- 
With best wishes
Dmitry

