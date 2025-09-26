Return-Path: <devicetree+bounces-221815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E69BA31F1
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF0D1386C00
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECE5271475;
	Fri, 26 Sep 2025 09:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ECljYK5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44EE265623
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878665; cv=none; b=E+dDCBMoDshOOubPatm9EE/aO/0PMftCsLDHeRMQfb+CFB/aldD9C8uaiTPaLNr1FleMZM+/vizCq+wnKpB8daBZX9pkBhN2lY7Ye6EltEc2QrGR0Yx/BRTfKqtxjQFjef0Ma1A0s80yd9FvUIzTDwF+iVKjrivEfp38R5NF1Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878665; c=relaxed/simple;
	bh=KAd1J0S9oQCh720nBw3CT2g5k54ln9BvTNOHBbN5Ziw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PQrGn8RREeb2+F7yHIgtRvEwPlRMVVS8zG5LYc8740jTfA5P2/JBHcFi+pBSF5P4Mvpsr8lMWxjzKi54ryeEcCUl/cmGMKyKHt9BUB5dtqL2eayJUFiFNowG7JrVrAVRLxdHMXG1aCkc+K+KSrb5uC9Z6IbT494MfLcfib8seEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ECljYK5n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vZ1r015998
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:24:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qVnOy2qXL2j3wLZjEIZJ3GwgAoKs3KAugAQxc5Zdx1c=; b=ECljYK5nnkoeqbzs
	ww7nSkWQp68jqCnSeeKOhoVrPuzC+Id/nBkl1jMVAAvI9swPb9sU6QdX9mRynXkJ
	6OE0azoNGuvlQ+C/lyEZnfRwH201keXcXNaqtlSovVwACNtFNlaroBiOm6p7KDb9
	8Q/acLR//OmzwSz/27pLH84DWdIyvHRkjFB09CDevB8JU/TbVocperUCIM7yQHHM
	ltBQbs7CBrKMqNeIuEyugTZ9FeNAeP3RJ3pGnn3CLDmXvkSr9foXU1avpwxzpJHS
	3lEQFmtNOQHxYApHIj1lU/08CFncRvJC3vW9Q1BiwGMdiMkVus48rrAbbYCOyNP9
	pRDE5A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rj9ad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:24:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b471737e673so2479868a12.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:24:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758878662; x=1759483462;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVnOy2qXL2j3wLZjEIZJ3GwgAoKs3KAugAQxc5Zdx1c=;
        b=r1IiFF7z64uDTi8KnAp5+hNFwctJtJ1FStGSOFuckWHfl7GNVRfjVsj03D1HTh/IHT
         V8W4ieRYedUjuUjUWGRaW41Vi43gzxMB4UGjI1keYPsWlM4KwOGg+lRTg8vzGiOk7Ztu
         LTR67xYo3O7iG4XYbDMX1J8WMf0oZQsdsTc3pGv+oM63bel1BAVttkzhXPp4htcO0XZx
         mYuFzy5N2gQSx7ynZqvXb5C4EbVF5xIVeYY39CWvZeJ60ksT34+JzpijSTMjvb95KDMO
         yNK5Deann7a+LjtuE2nigifDuvauVbqdVOiF2xddWLjrzars77u6rDe8oSqT+NBxeCR9
         lCCw==
X-Forwarded-Encrypted: i=1; AJvYcCVsQrYZOnYJRdVEc3t+3wq1fZUUcFSpoiR+Rmepo7hVePObIDxt9yeSvc4FBw4ZpkdIQqDiNQysS9f6@vger.kernel.org
X-Gm-Message-State: AOJu0YwuKZ4EWaHuwxRoUzoS0H9OdFIRHvlFR1CkRQk9hMMvPOT24Nb8
	plQpFDrdPqpQybgJkaH6dL1Z5saqfGPyOmOBZeeARJ9EWJYrzVkNIf45D7HAGPuDIH1oP0cG45q
	/H3BTa/vLLrVTtlCQeBLVK02d61uH0cBRkQbmKLoZXX/IeCuQuQ99Ty/9K0WBOwbX
X-Gm-Gg: ASbGnctQ3he4QGUl6ECSlLlFCdX5vH3jHP/tnz0yrvdUlvjPocYkXKrCpjZHC+hSemN
	D0HbJiDSkQVkKAgoCujt/RiNtdvUJqkwTQJi2El7bqXUYIHffA3LQWveUlOz++WcLEOPWtovxdu
	4bK+2yRfLUBI048Ns/iGx6BjmJTDeOensDBZMjEo9BZ+kgeJvG944dkkccEDRw9MPpEL9vV9fRG
	ZQi5679vON310qMFBR1+JyOe/gYr8aruSnrlHdOf2dCbkBqKv2gG0BmmkuaW9FwBtt3JZjq0XF9
	fmYIfBMgRVTS5ZmCj4oEIJzkUHIsMdCpcyLU+uZ1JYqIvJhJWVrNgASVa4dmwniVBPOn
X-Received: by 2002:a05:6a20:7f9d:b0:2c8:416:6470 with SMTP id adf61e73a8af0-2e7ca214561mr8039388637.24.1758878661935;
        Fri, 26 Sep 2025 02:24:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEf3xeG/lORUyevxAy1/n4CTalckBAz9JKsfJobNuVQZ9c5XJom6g/A9a5nv12tT/rxgxXhxw==
X-Received: by 2002:a05:6a20:7f9d:b0:2c8:416:6470 with SMTP id adf61e73a8af0-2e7ca214561mr8039357637.24.1758878661419;
        Fri, 26 Sep 2025 02:24:21 -0700 (PDT)
Received: from [10.204.79.108] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b27ae1sm4081410b3a.65.2025.09.26.02.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:24:21 -0700 (PDT)
Message-ID: <d451f8f0-d2ab-44eb-bfcc-ec1e9dbba060@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 14:54:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
 <nnvjazbxpywrmjnt67isba6m3ld6rqdaiid4qeczunmuablntz@vlbrjnxj5r2k>
Content-Language: en-US
From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
In-Reply-To: <nnvjazbxpywrmjnt67isba6m3ld6rqdaiid4qeczunmuablntz@vlbrjnxj5r2k>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d65bc7 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=qwUjrA7DuB2iKsSbT94A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XjUY2TXVVu_c0x6qjhCbPcSQBUay1vhT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX4CxOVRSTOBL1
 nabQwyacxwN2a75Las7S0qIiCr7MTmPII7GL7unt15PXW8ZLjawTh+OjVrSTThwZjPCVKB5Z4EE
 6V8Fugudci92PCaYHrCYyzppuSMfV+SFIvkcoiT2MdLiiCtknzynqIOdFR9XfYby7Z2kbedboYi
 stKFDXQNflUf3oDgX9zyXqLGLsb4CoZSnW5nYpYWa7yCeJFPqrx/7NhZb3kDTN1XO8HwfdFOZCa
 cqPMlbqiObLHteGsJq81pxtKD5KO29Faor27E2SzZHIyWGy1P0fmcFYvkrutUAysVLBYDd2Mobo
 /Go+GIwzzx3FPwLrvMcultdc00cjwo6UUM4WlrzC+ZqP+QAibPfXwHfW/KcKDRXTPVQre/gCo3h
 Md4S+r5pzALwRh4dC2INodtxLZXlpw==
X-Proofpoint-GUID: XjUY2TXVVu_c0x6qjhCbPcSQBUay1vhT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171


On 9/26/2025 3:11 AM, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 02:28:07PM +0530, Mahadevan wrote:
>> Add devicetree changes to enable second Mobile Display
>> Subsystem (MDSS1) and its Display Processing Unit(DPU) for
>> Qualcomm LEMANS platform.
> No outputs? Should it be enabled on any of the devices?

Outputs  and enablement are include as part of this series:
https://lore.kernel.org/all/20250926085956.2346179-1-quic_mkuntuma@quicinc.com/
I will update the commit message to use the phrase "to support" for 
better clarity.

>
>> Signed-off-by: Mahadevan <mahadevan.p@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/lemans.dtsi | 88 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 88 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..45c11c050d3f8853701fd20cf647aef5c6a9a8c9 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -6751,6 +6751,94 @@ compute-cb@3 {
>>   			};
>>   		};
>>   
>> +		mdss1: display-subsystem@22000000 {
> Why do you need this label?

display-controller@22001000 is using mdss1 as interrupt parent.

>
>> +			compatible = "qcom,sa8775p-mdss";
>> +			reg = <0x0 0x22000000 0x0 0x1000>;
>> +			reg-names = "mdss";
>> +
>> +			/* same path used twice */
>> +			interconnects = <&mmss_noc MASTER_MDP_CORE1_0 QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&mmss_noc MASTER_MDP_CORE1_1 QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
>> +			interconnect-names = "mdp0-mem",
>> +					     "mdp1-mem",
>> +					     "cpu-cfg";
>> +
>> +			resets = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_BCR>;
>> +
>> +			power-domains = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_GDSC>;
>> +
>> +			clocks = <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
>> +				 <&gcc GCC_DISP1_HF_AXI_CLK>,
>> +				 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>;
>> +
>> +			interrupts = <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-controller;
>> +			#interrupt-cells = <1>;
>> +
>> +			iommus = <&apps_smmu 0x1800 0x402>;
>> +
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges;
>> +
>> +			status = "disabled";
>> +
>> +			mdss1_mdp: display-controller@22001000 {
> Why do you need this label?

will remove.

>
>> +				compatible = "qcom,sa8775p-dpu";
>> +				reg = <0x0 0x22001000 0x0 0x8f000>,
>> +				      <0x0 0x220b0000 0x0 0x3000>;
>> +				reg-names = "mdp", "vbif";
>> +
>> +				clocks = <&gcc GCC_DISP1_HF_AXI_CLK>,
>> +					 <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
>> +					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
>> +					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>,
>> +					 <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
>> +				clock-names = "nrt_bus",
>> +					      "iface",
>> +					      "lut",
>> +					      "core",
>> +					      "vsync";
>> +
>> +				assigned-clocks = <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
>> +				assigned-clock-rates = <19200000>;
>> +
>> +				operating-points-v2 = <&mdss1_mdp_opp_table>;
>> +				power-domains = <&rpmhpd SA8775P_MMCX>;
>> +
>> +				interrupt-parent = <&mdss1>;
>> +				interrupts = <0>;
>> +
>> +				mdss1_mdp_opp_table: opp-table {
>> +					compatible = "operating-points-v2";
>> +
>> +					opp-375000000 {
>> +						opp-hz = /bits/ 64 <375000000>;
>> +						required-opps = <&rpmhpd_opp_svs_l1>;
>> +					};
>> +
>> +					opp-500000000 {
>> +						opp-hz = /bits/ 64 <500000000>;
>> +						required-opps = <&rpmhpd_opp_nom>;
>> +					};
>> +
>> +					opp-575000000 {
>> +						opp-hz = /bits/ 64 <575000000>;
>> +						required-opps = <&rpmhpd_opp_turbo>;
>> +					};
>> +
>> +					opp-650000000 {
>> +						opp-hz = /bits/ 64 <650000000>;
>> +						required-opps = <&rpmhpd_opp_turbo_l1>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +
>>   		dispcc1: clock-controller@22100000 {
>>   			compatible = "qcom,sa8775p-dispcc1";
>>   			reg = <0x0 0x22100000 0x0 0x20000>;
>>
>> ---
>> base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
>> change-id: 20250923-lemans_dual-c03ad5c84a84
>>
>> Best regards,
>> -- 
>> Mahadevan <mahadevan.p@oss.qualcomm.com>
>>
Thanks,
Mahadevan

