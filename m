Return-Path: <devicetree+bounces-28937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FC08200B3
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 18:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 174D72825A9
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 17:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB0DF12B6E;
	Fri, 29 Dec 2023 17:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ka4ZNgsS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A512B6A
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 17:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42782601608so37973871cf.2
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 09:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703870075; x=1704474875; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zh8fOp0kVPMuIegzy0Ht8ImQGG07PuOEnsybQwGt/AU=;
        b=ka4ZNgsS4Lrd67+0ixriXiwb3RkMQL1OPj/ZQ/aK0jOcjk41buCZCvEOfMmH1FcK8j
         93kMVW24ac44Hg2xz3PhpiVKglRxw2UoenEUYtDZOOLJcupBVYeTcViCGS1DLUtGcQZh
         EC3iNBHiOyIj2Rin/3t2BUZJsjYLv2RUXW/2V1v+J3ClwQleEHxNDyOX8yr8LDa4UrBR
         WUcluO+B54Jb2x/p0ZXUNb20Jtd7E1938sYMUR0lPY4lt2SYLKV2cJkgCtF36pTOAEri
         hAekUNju8IH0Mo9bJudYdUJeu30fw0BjXUqp4J1Ib3NhpioNSuKVriO4STvjgUgsu4hc
         5XTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703870075; x=1704474875;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zh8fOp0kVPMuIegzy0Ht8ImQGG07PuOEnsybQwGt/AU=;
        b=hy8KWO8Pk0OPD5gNOXYAODIDQdky2IVpyYiR6214S/s3v01c4zV6sYrvzSPqkyV2OU
         1F/akIr1CXS9bMu6o8fOb3sLoVo2i5I8O1iaryyuUxossm7/QQoynxD4KZTnlQLAtwY0
         vHX6kFOSMhzmv1s7NrM0MIH/s7iryOtJDn7Dsl68FMkUvSqFSkmGA8R95sqNn2eBdkU7
         XPoosX8gC2XttP9yI1sZQCTOCGGlblQzgramB9KDnAvv1zvBS3yOswqGeQHcKLDuHlPn
         r55jhFlrTCtGTdmDOfu0Xat291nNg7Spl7ZMtP6X+YEcWciyDkHEzAH3BivwXOEXk4ds
         RRGA==
X-Gm-Message-State: AOJu0YwMix71jNZNQAPgDixudpAvUPBYcHBv2bLo5Otv2VAztKan19Rm
	hxmO+QyBrnoVOSyyQIiVRwDgzmgpIngt
X-Google-Smtp-Source: AGHT+IH/g21GtNan7HVM4yKKpcfcEVmgcHJK+d54J10TnWBAocH02Sn7SWXgF+RUrLC0tZ9luI8+yw==
X-Received: by 2002:a05:622a:1b09:b0:428:9cb:e2d3 with SMTP id bb9-20020a05622a1b0900b0042809cbe2d3mr737431qtb.117.1703870075132;
        Fri, 29 Dec 2023 09:14:35 -0800 (PST)
Received: from thinkpad ([117.207.24.172])
        by smtp.gmail.com with ESMTPSA id w2-20020ac86b02000000b00427e7970d38sm3367243qts.51.2023.12.29.09.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 09:14:34 -0800 (PST)
Date: Fri, 29 Dec 2023 22:44:25 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp-crd: Add PCIe CLKREQ#
 sleep state
Message-ID: <20231229171425.GC9098@thinkpad>
References: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
 <20231227-topic-8280_pcie_dts-v1-3-13d12b1698ff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231227-topic-8280_pcie_dts-v1-3-13d12b1698ff@linaro.org>

On Wed, Dec 27, 2023 at 11:28:28PM +0100, Konrad Dybcio wrote:
> The CLKREQ pin should not be muxed to its active function when the RC
> is asleep. Add the missing pin sleep states to resolve that.
> 

I don't understand why it should not be muxed and wondering what is the actual
issue you are seeing that lead to this conclusion.

- Mani

> Fixes: d907fe5acbf1 ("arm64: dts: qcom: sc8280xp-crd: enable WiFi controller")
> Fixes: 17e2ccaf65d1 ("arm64: dts: qcom: sc8280xp-crd: enable SDX55 modem")
> Fixes: 6a1ec5eca73c ("arm64: dts: qcom: sc8280xp-crd: enable NVMe SSD")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 78 ++++++++++++++++++++-----------
>  1 file changed, 51 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index ffc4406422ae..58c0c2d10cb3 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -530,8 +530,9 @@ &pcie2a {
>  
>  	vddpe-3v3-supply = <&vreg_nvme>;
>  
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2a_default>;
> +	pinctrl-0 = <&pcie2a_default>, <&pcie2a_clkreq_default>;
> +	pinctrl-1 = <&pcie2a_default>, <&pcie2a_clkreq_sleep>;
> +	pinctrl-names = "default", "sleep";
>  
>  	status = "okay";
>  };
> @@ -549,8 +550,9 @@ &pcie3a {
>  
>  	vddpe-3v3-supply = <&vreg_wwan>;
>  
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3a_default>;
> +	pinctrl-0 = <&pcie3a_default>, <&pcie3a_clkreq_default>;
> +	pinctrl-1 = <&pcie3a_default>, <&pcie3a_clkreq_sleep>;
> +	pinctrl-names = "default", "sleep";
>  
>  	status = "okay";
>  };
> @@ -568,8 +570,9 @@ &pcie4 {
>  
>  	vddpe-3v3-supply = <&vreg_wlan>;
>  
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie4_default>;
> +	pinctrl-0 = <&pcie4_default>, <&pcie4_clkreq_default>;
> +	pinctrl-1 = <&pcie4_default>, <&pcie4_clkreq_sleep>;
> +	pinctrl-names = "default", "sleep";
>  
>  	status = "okay";
>  };
> @@ -835,13 +838,6 @@ nvme_reg_en: nvme-reg-en-state {
>  	};
>  
>  	pcie2a_default: pcie2a-default-state {
> -		clkreq-n-pins {
> -			pins = "gpio142";
> -			function = "pcie2a_clkreq";
> -			drive-strength = <2>;
> -			bias-pull-up;
> -		};
> -
>  		perst-n-pins {
>  			pins = "gpio143";
>  			function = "gpio";
> @@ -857,14 +853,21 @@ wake-n-pins {
>  	       };
>  	};
>  
> -	pcie3a_default: pcie3a-default-state {
> -		clkreq-n-pins {
> -			pins = "gpio150";
> -			function = "pcie3a_clkreq";
> -			drive-strength = <2>;
> -			bias-pull-up;
> -		};
> +	pcie2a_clkreq_default: pcie2a-clkreq-default-state {
> +		pins = "gpio142";
> +		function = "pcie2a_clkreq";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	pcie2a_clkreq_sleep: pcie2a-clkreq-sleep-state {
> +		pins = "gpio142";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
>  
> +	pcie3a_default: pcie3a-default-state {
>  		perst-n-pins {
>  			pins = "gpio151";
>  			function = "gpio";
> @@ -880,14 +883,21 @@ wake-n-pins {
>  		};
>  	};
>  
> -	pcie4_default: pcie4-default-state {
> -		clkreq-n-pins {
> -			pins = "gpio140";
> -			function = "pcie4_clkreq";
> -			drive-strength = <2>;
> -			bias-pull-up;
> -		};
> +	pcie3a_clkreq_default: pcie3a-clkreq-default-state {
> +		pins = "gpio150";
> +		function = "pcie3a_clkreq";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
>  
> +	pcie3a_clkreq_sleep: pcie3a-clkreq-sleep-state {
> +		pins = "gpio150";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	pcie4_default: pcie4-default-state {
>  		perst-n-pins {
>  			pins = "gpio141";
>  			function = "gpio";
> @@ -903,6 +913,20 @@ wake-n-pins {
>  		};
>  	};
>  
> +	pcie4_clkreq_default: pcie4-clkreq-default-state {
> +		pins = "gpio140";
> +		function = "pcie4_clkreq";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	pcie4_clkreq_sleep: pcie4-clkreq-sleep-state {
> +		pins = "gpio140";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
>  	sdc2_default_state: sdc2-default-state {
>  		clk-pins {
>  			pins = "sdc2_clk";
> 
> -- 
> 2.43.0
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

