Return-Path: <devicetree+bounces-252622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCC1D01864
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 09:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C108330C421A
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FCC538BF92;
	Thu,  8 Jan 2026 07:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMOwfOdU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O1xrXewf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5C738E112
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767858911; cv=none; b=r5mUW4ELoATSp8ejrwXPvrY7ulXct6ADBjRK7w8emltZTc1jRv6zkoRisEMAxh2MoNIfIA2knhSxrlidSxU7Ze2GD5FU9FS4UP5NNX54C730HX7KC3xmiBZfeijH54/dCJbhI4rZNmJRKAj27EnziQo1r4RNMDIPJizQxq6OevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767858911; c=relaxed/simple;
	bh=u5AFjsSzR6iKwQTgn/aMlm1sgDHc1adqC2yD6Q5e/Zc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XPINARrEVD0aq0HJSBjg93N4Qewm3Yh+19hmRo1O4Qz/l0EbNLWlXJvyBVGYaDBg+XCc3AIHXjz6mObJfyYfPXFGCiEBMYAALkKAqhruSSeTbk5H4S+yHiBwSkI5EO0v8bHfKLz4sA++s5Pfmsy7IVNPB2JRsZPWdZEZT8eaMZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMOwfOdU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O1xrXewf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60855BZe3890549
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 07:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1jwje/eK8M5C/9BgsV5p/SGB38NoPwEa4/5GdnweBkQ=; b=TMOwfOdUM/ZuE6BO
	SrMLe2GaOinIzcCTw2VjT2Xtscu6ZvS9nj44Wz7OFUozAUJ16mVfoEWTi5aY/G8D
	akqscHh4sbY8QgcNquY65VmPKA5zLY2MoHygsVavQa7COSdSPnNtderrZtm00pui
	UFPYud8EGQ0cFWz6VfTYHf+9h+BrUJwF/XO+tRqU12IZ6lleuSnyvcfdVXZdc4j0
	2VShbeGq8vRDsBW7Odlc8LQBIqipCsUsGZ9MJcMNHUXCC1m67V5U6cl7voVNXu3M
	siDInX5pNPUBiaPFvgco+/wR8Hc2scrF9tE41zod0ww18r0jtuisUjStYxWyDhEw
	hz2Yzg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuy7281n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:55:01 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a9fb6fcc78so2238101b3a.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767858900; x=1768463700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1jwje/eK8M5C/9BgsV5p/SGB38NoPwEa4/5GdnweBkQ=;
        b=O1xrXewfTGdsUEqsfoQ639Tc7IDwTcdw/7DMnvzw+WPivSeMnveieW57wyE8e+jKwZ
         QYCwWLkhLLuGyfwND/OxptWo8+V7ECQL5LM01LOCskfkUxEWOaXTbugGR4SV4+nkOJLm
         oIl0kmTf5Ux0vNa35/n71XEdWOwdVVAM6cr9tqszXBSpvGTpOu/8f0u/FBzWCW8tuizh
         MjPtiZ5WmNNpwo/e67xvuAKAifzrQL41RbMfNbxLE6ZXGCRZdXikd3pWHi9FCwX9vm+O
         rkYC3fA8hM/Uw04Q+OhgXfohh0lcwZcj4pjTceSLDErImo4gPuDntXeReCJHtIeUoSlN
         Oc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767858900; x=1768463700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jwje/eK8M5C/9BgsV5p/SGB38NoPwEa4/5GdnweBkQ=;
        b=Xn0Q87UJNZVbsTDoffgU1zp5jLmm6mMeA0GLw/qzOJPnKOPBZagI4Tf7BRPusgWl10
         sCBghKPvL411VSz52IDpNl0tPQYYV5FtshM9jX2j0FjwEYJpQ5Xfmvv6zJI6WI9TQ7JP
         LeknmJGlWBJXeeW74SDPmLX/UkmIVwI42rQFqAShmC/EIgt0EHNqZvBBsYnh32bALOtf
         L6EpZT/B4wGrC/7qP4q9Ji2eJDJ7VC9xmwA6k0QN3AIIPWACT+gt2rMZQL+Pt/JKzhEP
         wHm8+7xWOFSLcco/tEHrUfLdZA7tCuyQoD1WG9d5JnklcaWoePxPi0s6lZDH25Mok2qc
         BXYw==
X-Forwarded-Encrypted: i=1; AJvYcCXpRN7gt9VhJEbc8bqYEpeJdO/P7Yx12fHvMCdJL7bzGy+YfzemovPYoSBT9q8tS3yymMQSpBC4zEX+@vger.kernel.org
X-Gm-Message-State: AOJu0YxuCY3zPRP6LEvvY3g4egZ3WQ+XfC9YO0uX7d6DuoSdv6RgmPZt
	2Jn0n+OPBUct44qDJj07hJF3C9q+NKK8df2NR4TUM8tmLHMbSvs4N8kVWt/0Pnan9faARaxuR/v
	3RlMS7QibcqkYNhIjy8G9YeFw9wkqYQQXQ72ARZ++YZqYcxvhbC/XUU4Pf3VyxfYg
X-Gm-Gg: AY/fxX528Ufcg3rYuoPi+UKL3uA53Zecy9UHn97nsMi8Xl9IiEwF+JgaMgFpbPgFTFO
	eh+q1K7WufNHz+ghLDAvbvxjsj9+A68WF0/I+p8Se6C23D4fymDqepPFQXZuLFgqG9bGgjg5hPe
	GlbeioT/uZWasZpyDsnvuqV98G+ZsSWJRO0SMdN86vC9Rymq6hHRmXh9fO+H2xYrlU+wzqxOHxJ
	1tbdryAnyh3CJ8/k70VL5Zh4F1HID9lOWc2aTDYcrirKS6uYKNIKn4JZT1e/kHG74AAcaTnWHYQ
	okHQ22Uljy0MmDBuJHqmGxApHBmZVRUY/Msr4uF/nK0c272qkwkoI5C3FeqnXSyE9G9nHhJmIAP
	/Sws9PP9gNjJQYT1sfGFKZlrD4Q87H2P4s+473+oyicrE
X-Received: by 2002:a05:6a00:419b:b0:81a:8ec0:4de with SMTP id d2e1a72fcca58-81b811a1047mr4774677b3a.66.1767858900003;
        Wed, 07 Jan 2026 23:55:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkE0UAtdFPWsHhFTo5H59/d393mgLsD8Uqo39EC23raIgCPA9GNnGVQGBMOJOVzIaf3DBSeA==
X-Received: by 2002:a05:6a00:419b:b0:81a:8ec0:4de with SMTP id d2e1a72fcca58-81b811a1047mr4774656b3a.66.1767858899533;
        Wed, 07 Jan 2026 23:54:59 -0800 (PST)
Received: from [10.204.100.39] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81c96d762f8sm1582574b3a.64.2026.01.07.23.54.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 23:54:59 -0800 (PST)
Message-ID: <3c1ed641-b259-a7fc-04c6-25903df21889@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 13:24:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
 <20260106-b4-sm8750-iris-dts-v4-1-97db1d1df3dd@oss.qualcomm.com>
Content-Language: en-US
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260106-b4-sm8750-iris-dts-v4-1-97db1d1df3dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AEKCXABnVXlmV-nbOs-HuyhQRYIEteHY
X-Proofpoint-GUID: AEKCXABnVXlmV-nbOs-HuyhQRYIEteHY
X-Authority-Analysis: v=2.4 cv=DZEaa/tW c=1 sm=1 tr=0 ts=695f62d5 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=NvbPUlHVyKczVWSAzjMA:9
 a=3EfvB6IQCLLuokxE:21 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1MyBTYWx0ZWRfX1HZRZmUVseAb
 XTY7DKlxHJKzhsfH3jju8cuRZu2Xsi8B3C+YvtfQRR11Tj1cA7OpOQDwFFKZK8WaS1/cgUjwFMq
 e+Kdhx2jOPuEFa3rXB+trAd6JHalnZzHT760srX7Ytsg8FlnyT5XzdnAtYjw2/S+OZgbwLMBvoA
 S2tBmH5Dxc48cdpum6CGaMNaBCmPWDLcHDQxkCLmOQ2K3X+H6NcpoMNv7Fpr01gKxqDhMqJm24k
 XcFZiYanEcsKxYyjX7StaIf5xKKL5qn20z7wsp+M4NAxU2rgz9qk8peq0pOLEz6ejEpjsJn7vw7
 4qJ3EoHgh7KPHGbAChrHlT8WQ62KG5YA1jlURFqSEdDisA99qh2tnmvu/FGhUvjLef68E+okGf1
 5k6r7NlFdTmOerqgb+vhy3d9s0Lik/RotjdnRNQQTfKN5fi2kJD+eSFVKgGsHbmr5gsmAN+5QPS
 +U1W+Ww4ffl+rQazs/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1011 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080053



On 1/6/2026 2:37 PM, Krzysztof Kozlowski wrote:
> Add Iris video codec to SM8750 SoC, which comes with significantly
> different powering up sequence than previous SM8650, thus different
> clocks and resets.  For consistency keep existing clock and clock-names
> naming, so the list shares common part.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 121 +++++++++++++++++++++++++++++++++++
>  1 file changed, 121 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 0a6f2a449c20..a76bf5193a70 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
> +#include <dt-bindings/clock/qcom,sm8750-videocc.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>
> @@ -2811,6 +2812,126 @@ usb_dwc3_ss: endpoint {
>  			};
>  		};
>  
> +		iris: video-codec@aa00000 {
> +			compatible = "qcom,sm8750-iris";
> +			reg = <0x0 0x0aa00000 0x0 0xf0000>;
> +
> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_CLK>,
> +				 <&gcc GCC_VIDEO_AXI1_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "vcodec0_core",
> +				      "iface1",
> +				      "core_freerun",
> +				      "vcodec0_core_freerun";
> +
> +			dma-coherent;
> +			iommus = <&apps_smmu 0x1940 0>,
> +				 <&apps_smmu 0x1947 0>;
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_VIDEO_MVP QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "cpu-cfg",
> +					     "video-mem";
> +
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			memory-region = <&video_mem>;
> +
> +			operating-points-v2 = <&iris_opp_table>;
> +
> +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> +					<&videocc VIDEO_CC_MVS0_GDSC>,
> +					<&rpmhpd RPMHPD_MXC>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "mxc",
> +					     "mmcx";
> +
> +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> +				 <&gcc GCC_VIDEO_AXI1_CLK_ARES>,
> +				 <&videocc VIDEO_CC_MVS0C_FREERUN_CLK_ARES>,
> +				 <&videocc VIDEO_CC_MVS0_FREERUN_CLK_ARES>;
> +			reset-names = "bus0",
> +				      "bus1",
> +				      "core",
> +				      "vcodec0_core";
> +
> +			/*
> +			 * IRIS firmware is signed by vendors, only
> +			 * enable in boards where the proper signed firmware
> +			 * is available.
> +			 */
> +			status = "disabled";
> +
> +			iris_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-240000000 {
> +					opp-hz = /bits/ 64 <240000000>;
> +					required-opps = <&rpmhpd_opp_low_svs_d1>,
> +							<&rpmhpd_opp_low_svs_d1>;
> +				};
> +
> +				opp-338000000 {
> +					opp-hz = /bits/ 64 <338000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>,
> +							<&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-420000000 {
> +					opp-hz = /bits/ 64 <420000000>;
> +					required-opps = <&rpmhpd_opp_svs>,
> +							<&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-444000000 {
> +					opp-hz = /bits/ 64 <444000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>,
> +							<&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-533333334 {
> +					opp-hz = /bits/ 64 <533333334>;
> +					required-opps = <&rpmhpd_opp_nom>,
> +							<&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-570000000 {
> +					opp-hz = /bits/ 64 <570000000>;
> +					required-opps = <&rpmhpd_opp_nom_l1>,
> +							<&rpmhpd_opp_nom_l1>;
> +				};
> +
> +				opp-630000000 {
> +					opp-hz = /bits/ 64 <630000000>;
> +					required-opps = <&rpmhpd_opp_turbo>,
> +							<&rpmhpd_opp_turbo>;
> +				};
> +			};
> +		};

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

