Return-Path: <devicetree+bounces-239748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20918C68F9A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7C7A94EEF33
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CD834F25C;
	Tue, 18 Nov 2025 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VnvK2jtb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BqF+kU3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4433934F263
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463812; cv=none; b=VAVVljRKx1hj2Aj1DRRI3xnkTBSZa8dVsEfFBEFY7LbHKt6hiR6AA866OWVpEBhvRMH3KRJS8xC0PmPa1iTSrkZWeGbMZpjMTTGioNBPk9KOWVe9cxO0apbMn93Q6+ruSNElwRvo8YHiXD7StRcn1oULf72ZJP+fEH9jfqRkE8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463812; c=relaxed/simple;
	bh=PeU+nU2GWiNEmKRbl8Iy9KQbVH9Vicy23izAc1lIMGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lv5sMjui7EJW88HKkjsFAjbGmlErLgt8iNKI7EHeN0uld699wCPVqNepxNRdEg7gZ1Sai1gINawZG3h5hwFYTqhkgu9vfok8d6m7Utm9I8C8z2rXEiLLksKGbMJlTicdd9TPyocfyBQRZjUKgNlDn9SE68XSzXjtsSHebxc+Dvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VnvK2jtb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BqF+kU3H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIAQw4M2926894
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:03:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qrmKV8lDoEBlhPy+rG/xSl2xxaAYr1nTB4+w0Y7pcFo=; b=VnvK2jtb4eI9NPmg
	p+OyMJMCauPuKptWl+/acXpYZTjlVVs66ErQzXEwUN+l3xNNaMZPrXgYXbuHiah9
	0p1nvG9iwoMJAELQzeEw4e1DrV8sc4hVNiDmMmXauoCE79Hdrl66elSpqdSHECWt
	/Gw5/iHcvQXi3M7FeFS3hz9aSWHvH1Ki7ccKUD2+gI8TECZQxzbKc+igOGeQDlez
	5OcxuXh9cuozoJn6MCnPG5yY/ogjEyMJIf0EFZObA8e+Zq1E7CHIUWMjCe/80t9y
	LXv/0FuBZ1iJZILPkx81tSGYmrLC62v0HkI3aaUSnNXLAiPJoX6ondBpytCDtqdH
	GMisXQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agq290325-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:03:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaa289e0dso26097201cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 03:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763463808; x=1764068608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qrmKV8lDoEBlhPy+rG/xSl2xxaAYr1nTB4+w0Y7pcFo=;
        b=BqF+kU3HBGJAEv3Rpm/X0p+zpF4BTC4ws2dhipQAXzXaLtqdlLWGsPtaXdL0J7zoq+
         eEV1l5RVniSGpkUWGTA9QYo2wyKbASPfqueCNZ7vOKkl/+JxxcRKKvGbBq2Me3q5t9/q
         z0G4lbZ3Jsgp4zDaxUiqD2T50qOtGZEe0KuoFUtCM9wLR4XEAZAOgSF287Smw4SluXfB
         y8miKyi8dl3WTKtoQbY6zuOgwpfrr6M/pGmJETe+hMWjiFsVBsZn/eHxMkBQzta0nZSI
         pPIfwl7Au80gIHu//bA22z/wpONp8pFJa0/vMDE774cZeGIyb3uXpSgzMqcAg/n0cuaH
         nd/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463808; x=1764068608;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qrmKV8lDoEBlhPy+rG/xSl2xxaAYr1nTB4+w0Y7pcFo=;
        b=eFBABYQ1VUflwKVFKyuvuKuA/BrX5ciR4MlKS+4zvu7RibinnxIdoxQtCcwHZEwj9Y
         EECVK1EZFlKin8NXVBv3UBO0EMHSOaNCqGWaAM5cDohAVEGv3ZfsAbiZsUZUaj/2PiG5
         ZQmincE0NY0wAWE72JOZXrbVgjaKg0oxpjWPueiyzxxN6A82oJ3E9soru4QmQE68C/O5
         GTJI9fYkT5QHPeqWfga2cAY5uPWqNZHwUjkSDCdF44qikdFRx9RIygWowTaSKAA2LcAn
         eZsDMDlIQ3olkAfUULNIxBTn1LPxn5VlZURMXxJ30Up3q08Ws0LlCNcON7Zyx5mx3q4v
         geqg==
X-Forwarded-Encrypted: i=1; AJvYcCXxzWwnXmvm3JcrppUIiWcj43NHyH6uWJ+AExh4CPCItB/ZJ+I5zqOV0adg0FUT7li1OYHuWHZclj2k@vger.kernel.org
X-Gm-Message-State: AOJu0YyB9GCQD6sVbo8MmUF0ya04mKgWAWeh98YPBxFnBrWpyhVrzXrk
	fdkfmuj9Djar/5KrsqQammgJlks6VzmfDCi96TsccyOdZG4rR+jaY4B45OBtpY0/rpitTwS/HvJ
	YKxgsDiZ7TQ6OQbewcg7yfp2biEYlltfLiUKCqedkXLQMdFL435qJaslMsiv9sN/V
X-Gm-Gg: ASbGncsrUJ8p/eGGQaglnPt2RPBBAixWEPI+HwODvp3LFFzyy2AkkZCe+Ca337BG+j/
	ojR9D6LnFwjj0KasE5wJMTzkjA6COl2B+qUruBXeB9NR5GiF1E9Jv118xJKHbIG8A6pI7nIOSgl
	9k5/Fn8Vq+FfGwSSdqKqmcjNvhc375WWM5kWrd1k92PP1aMaiA6InsMhaTfK5m8ezIMIMskF8Cj
	Kl8B5PaDOQ/G4Uz8hDNoSCFjmYVMVngvauSQlErdWNGJ5GPXlkS78mRO0ladE+RhHgj7ND7z6ks
	Jo0qnV6hhn3KEVcHhRtPHBz57A8o2a5pejsMPH6DSHr23HVO6S7GS1jXIIhKk291rjl0t0KwMWP
	adi4at6Y7XRbzF9i5QDkgeFatqDQCxVMXrFN82KZUMfjvXwKWJ0/bwjQx4XB9V3udKTE=
X-Received: by 2002:a05:622a:24a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ee317b3acemr21833381cf.7.1763463808461;
        Tue, 18 Nov 2025 03:03:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZmaUyKCa1Fx412H3sxAYJlznDamzyjPbyCAcL2w8O6ncTo0L2WOulItniSNvVKCQ6rwgeXQ==
X-Received: by 2002:a05:622a:24a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ee317b3acemr21833081cf.7.1763463807890;
        Tue, 18 Nov 2025 03:03:27 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdac667sm1300813766b.58.2025.11.18.03.03.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 03:03:27 -0800 (PST)
Message-ID: <5887f8df-1cb4-48f7-a2c1-a13330d9dbda@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:03:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 1/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
 <20251112071234.2570251-2-sarthak.garg@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112071234.2570251-2-sarthak.garg@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FJgWBuos c=1 sm=1 tr=0 ts=691c5281 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=u5TD_m37DOUvO5gpP2MA:9
 a=raoiqYfqxaO1ECmz:21 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: iApFprDgQaRAoLzSXKn4fMr3nEZ674Ht
X-Proofpoint-GUID: iApFprDgQaRAoLzSXKn4fMr3nEZ674Ht
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4OCBTYWx0ZWRfXz5VKdAk/FTYX
 5zdqkG1gA/v8macm2clZ1A4yK0cMv/WTRAxhK5/w3d9auEq8U0kMzpBQbim/4yeolsFSkzxN2v/
 bLCpZyR3cD475PIn6hoeHvgNrv+ETYb/ORR0uPBpjOWAoNXi2hkoaeMr2MudwCeKV+nKkOrlsoa
 lxUvTFxp0ydPaQsWjBjhRIMuymC4icD8twO4HUsO0JxnJC5U2VtQv2aToVTBSE0dXLOu9Iy/Iwo
 TwWDMpQ8PQF/8zZ3CTRzgBEplBG1eP0s+aaPn2aRMPp0r43KtJ8hqcN6o+O4Dii0Feh1J03nl83
 aXtDquBkUGLc3yHciH/uTX8S0K3lGYRwQvEjk/YhYtfrHJMVpEIQJei/yrpdB7vKl93cjUwDuUx
 Hvt5jrTgwLALsGZd+O3PmFLk+3RyeQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180088

On 11/12/25 8:12 AM, Sarthak Garg wrote:
> Add SD Card host controller for sm8750 soc.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3f0b57f428bb..ba8c010226e1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2582,6 +2582,60 @@ data-pins {
>  			};
>  		};
>  
> +		sdhc_2: mmc@8804000 {
> +			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0x0 0x08804000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq",
> +					  "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
> +				 <&gcc GCC_SDCC2_APPS_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "xo";
> +
> +			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					&config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;

Nit: the '&'s look better when they're aligned to the previous line

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

