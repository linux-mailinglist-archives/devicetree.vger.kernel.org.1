Return-Path: <devicetree+bounces-168528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABBAA935FF
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 12:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B24F27A7344
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 10:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C63270ED2;
	Fri, 18 Apr 2025 10:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z8oahwX7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37789270EAF
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 10:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744972078; cv=none; b=IsNMPCDOxs0Slh1QirfkMc9izHQIXImkPQiMO5crS4AumAU+TMzzh6SpgvgcLWcN/c9s9UZsF73uoOaTdnLaoZudXZnKDhEy2TmEkAlNbq8CQUFc1Aix5A+UrlMugG4LvtVOc2y9yFq9jMxB5Z6Gf+RQooqWqjxFd3bEmT+fSos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744972078; c=relaxed/simple;
	bh=+vnWalud2xUiup/XdBBrUW6ERK+wl4wDLxIJ6KQUR9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j4pw91nUb2Jc6PS1mo1h7rLzz6pincEXHk8qYqDL3WgJvRxlrGK00F8u7crWVTFsQPd1AHAwbs/kbJy3rVRTu2r3uG4pvXb/KKmg9dCxDkvhgg+CFmbPY5jEDytRnLBjtDVYZhRDsmrA81oJoAvzhQdEBQssrVTu+qNVAl2D4UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z8oahwX7; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39c13fa05ebso1137397f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 03:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744972074; x=1745576874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=57k7pCek81nUSsl2ehblZZG77S+NE+N9+pi5LGTuadY=;
        b=z8oahwX73y5LB7byXgw2pYYqBm0yixi1pFXzBV0QG9Pj49/fCFjUPju7qVIITT0YRi
         9UghvWbmXKe5dWZOiVjwokUJoQhmNXk/XAp33GVfTE7ALu9uNUiwKi6PiyTqYG1MwXeJ
         BIhM3n1DZY0pcKj3ZddEach3XZeN3+9CNC76QiwcU6vT/byLZwh9LHWCYA2j0Pd3pKXF
         JGv4bmZhiw/XeGD9bN8gwlm5xXZaEIG07RqssJCW18Xspx5GkdFPvrj0CBzmceXFp9Mx
         gyt1P7AVFMWkYNSJqoPnMOfxQmHKRcSS4Gj3GTu4l0DgFVVf43n0UTWUGsOytcnRyrUL
         EfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744972074; x=1745576874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57k7pCek81nUSsl2ehblZZG77S+NE+N9+pi5LGTuadY=;
        b=R1KpQySwqjftytHNVtdlyWe+PRYvzl7RkODLJ/sbzQLi4UQmjbr5Ovyw9vKw6ePSTB
         g6hjLoKcag/seFwr4Jfs333h5qJ5TrT/EGAbZqd8mS9seDwU3FXXCnSvY9j+aI8cisgo
         kb26eiVUMgfFYWZiHR9gorc0L9hxy8rWnD26B9xUvPm9zG5YbGTZerM5Nps+unF0Qo5O
         V2de5/GSTZINZollXZa29yQovr4SfENJWbAcANvWbkc5qpC0Z1bH7yZV+A+1hH4FwxCK
         uX+jVBKsPPtO/vwEKGR0cg2aHp5jLaQsoAVrMGGRTfeLj7SuML3ji41fzx7R4AS/iCcv
         Gaxg==
X-Forwarded-Encrypted: i=1; AJvYcCVFOvB5j4k+qZHIGOFwAHVZmL3mrP71oZmCq9RmH1J3C8u61X+wI3hEOJWYMutojlgF56aKbHVZe2wd@vger.kernel.org
X-Gm-Message-State: AOJu0YxGobNL+og/OYAQ/Nj7tMGL9xwqNfSzYHtp0Je+QoWRSO0j3Rgm
	R5E2uR/UAcLdzYLHlZndF+zm0Q7y9U9EqiiQWvy8E23eKdoTEzJvEtmKtUIAppk=
X-Gm-Gg: ASbGncs/1wAgiBgUXDOW6fULooJ2pXFwEmJo0xeEca/0WaSII6ZVwB3nbMZ5MkAxFdn
	6ggrQ2R0NY/cMh1hlCuudHH0UcVxriCv2fLqLZRPuAu/BlRJURjE7bqKq0nPUZLJvduf2fZ/piS
	YkjHy58REV/IL5OyfSq51tyeGnv5Ux1VA+waXfpYWj/vFIvTeKdq9JG0FObw4CNhQ+0OveKUZgj
	LeisFrxPXpozulgsP+wegSVxGPvJP2c/lQSpqpDfB6dzyGa19qSJw5vQIfU0HH0C3ia9fhbyO+r
	sSPJz9MdjnRFFeACMknxmHxJkhgsYYbGmVNOemUtrCoarMUfUtosq8nyk+xhSXdrit40fwNLlp3
	qoqvYAA==
X-Google-Smtp-Source: AGHT+IFP8JgAPDCYIyJachPlekRb63SaHAvqzfZ89N17Lamqh8kJlt2t2X30gdARFYG6zJeqr7bpbQ==
X-Received: by 2002:a05:6000:2203:b0:391:40bd:6222 with SMTP id ffacd0b85a97d-39efba470e8mr1559521f8f.22.1744972074393;
        Fri, 18 Apr 2025 03:27:54 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4406d5d6cd2sm16577935e9.33.2025.04.18.03.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 03:27:53 -0700 (PDT)
Message-ID: <df97067e-a293-424d-aa19-24a99670a354@linaro.org>
Date: Fri, 18 Apr 2025 11:27:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: qcs8300: add support for video
 node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250418-qcs8300_iris-v2-0-1e01385b90e9@quicinc.com>
 <20250418-qcs8300_iris-v2-2-1e01385b90e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250418-qcs8300_iris-v2-2-1e01385b90e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/04/2025 07:28, Vikash Garodia wrote:
> Video node enables video on Qualcomm QCS8300 platform.

Add the IRIS video-codec node on QCS8300.

> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 71 +++++++++++++++++++++++++++++++++++
>   1 file changed, 71 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 4a057f7c0d9fae0ebd1b3cf3468746b382bc886b..158779434f610b10ea82d2cdae08090a7a4402de 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -2929,6 +2929,77 @@ usb_2_dwc3: usb@a400000 {
>   			};
>   		};
>   
> +		iris: video-codec@aa00000 {
> +			compatible = "qcom,qcs8300-iris";
> +
> +			reg = <0x0 0x0aa00000 0x0 0xf0000>;
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> +					<&videocc VIDEO_CC_MVS0_GDSC>,
> +					<&rpmhpd RPMHPD_MX>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "mxc",
> +					     "mmcx";
> +
> +			operating-points-v2 = <&iris_opp_table>;
> +
> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "vcodec0_core";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "cpu-cfg",
> +					     "video-mem";
> +
> +			memory-region = <&video_mem>;
> +
> +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
> +			reset-names = "bus";
> +
> +			iommus = <&apps_smmu 0x0880 0x0400>,
> +				 <&apps_smmu 0x0887 0x0400>;
> +			dma-coherent;
> +
> +			status = "disabled";
> +
> +			iris_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-366000000 {
> +					opp-hz = /bits/ 64 <366000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>,
> +							<&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-444000000 {
> +					opp-hz = /bits/ 64 <444000000>;
> +					required-opps = <&rpmhpd_opp_nom>,
> +							<&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-533333334 {
> +					opp-hz = /bits/ 64 <533333334>;
> +					required-opps = <&rpmhpd_opp_turbo>,
> +							<&rpmhpd_opp_turbo>;
> +				};
> +
> +				opp-560000000 {
> +					opp-hz = /bits/ 64 <560000000>;
> +					required-opps = <&rpmhpd_opp_turbo_l1>,
> +							<&rpmhpd_opp_turbo_l1>;
> +				};
> +			};
> +		};
> +
>   		videocc: clock-controller@abf0000 {
>   			compatible = "qcom,qcs8300-videocc";
>   			reg = <0x0 0x0abf0000 0x0 0x10000>;
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

