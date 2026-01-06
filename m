Return-Path: <devicetree+bounces-251743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E16E4CF6444
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB75D3023510
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F021EA7CE;
	Tue,  6 Jan 2026 01:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LayIF0Q7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dHsradVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A813A3ED
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 01:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767663001; cv=none; b=Zrb/G7jSMqp/jkQWsPDYHbrAG7La/FHyKBcJpyLQnY83CbM7CSIegfpewsEeCvH6cSNyF2U4UAtyVL/sAM+pEPbv/ovY8stIIxd667e0QQsDgrTjzpgp7c5gQ/wh3556r3Q9cavd5A88esy2rgPycnSfHNzNElJqosgf5rA+ilk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767663001; c=relaxed/simple;
	bh=j24mNQooiAFErYeESu2vAfQJZcAiCYndswDhrOTwICk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OL1ft/7Y5SrBJuUAZVrh5SzvLKuRpzQIlfqZozU7r5kJMGO1VzfQJLMYmqKzMAif0aS6Hu+VCFBm8nxvy7H4hQfjqWJYnhh7wwMlbqOFwFt7NhtnnkBDLr8jpno14J7U3/ZkdAcCNPxQchS3SzIjaT2L4opvbAGIyan0prZ9bqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LayIF0Q7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dHsradVn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nQSl2943744
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 01:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cEML6pOrA849wZuEgdOsJGjlKLmi52IL7r85pj59rk4=; b=LayIF0Q7t2nolf+a
	NdwcSYzm2SBMHKdiMK/cOY+kVgcsBBOpRyiA6Iz7jY9UBcAkogn32PPfm/bsKd06
	idKq5o2YYVdebufB2FQZCrBm4ZOfgw2oO+QsZ7HjCEJGbutW4XILAae5IJg4kD45
	g5ArZdHc4ZqbMf6S59PqccTrmpKzbXyfQFjcxSQkk7Hin0qGb66RyxQfZ3WAx1fQ
	xZmWqwcvVpazkZzYpeuuSoWx3CYGMKVtuoKomwU1KwGhngGBB1uVG0B9fJebAYrW
	9j6XhwIBGLHV8G+lFTOnAKnc7SfYTWGLDZM2adcK461BFzdoBsPA+grmziZDIpF/
	ffBPQA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv01h3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:29:59 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0e952f153so14333165ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767662999; x=1768267799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cEML6pOrA849wZuEgdOsJGjlKLmi52IL7r85pj59rk4=;
        b=dHsradVnLm2k3Y1CLD5RkHPHsU56QRI9JNYhAYATcJshfB3fujIsgvujmX/VF20AIv
         YlN8QfgwApBYilTS/5TzqcNcBDwpxDYjddVy2M0TkCIJpSDMX3XwttXgI+GfG33KiuCY
         UFaRxSiXEAKmdY5W9azPmCfHWkY5c6fFBZq6M2ukwz/vLXG+nbd7exr/0EmVZIMq5cSy
         A84AI06bxyRd+CBlCa2f5XWYtxxYUHYjDLTYbuLT7Id6+pCtthC2e0S0ktmzWinaA6dE
         FQAV0/+l0hngQQYSP7QJvnd/ZBFpKALzpzvHrsMKK/GhHK7VUwR45TCBSJrZwntvd2j+
         gjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767662999; x=1768267799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cEML6pOrA849wZuEgdOsJGjlKLmi52IL7r85pj59rk4=;
        b=MNW095ExTNTq3enR4mLBuISwXCOZI4ScNNt6Luyk0b7HBzigtTPafVb2+szYnBPU/1
         C48nXIhFR2wPtw/tCd5D5YSQAtiFQQVtQw4yzagRMOSvLyFv4DGeTuJAewdKJzgYKcdQ
         k2rdtTQPYnLftNAgavfCCtFHvWOnV3WdVUjqPBazvpFY6BZWgX68mubbZjEw8GB0V1n6
         YFgycagl9Uq3rFwB28stxiXpi4vtn8OjAmdUrfQQ0aToevyUQs+h0gAnJCK1y+6lPcsh
         ncnBz8DlILktBO95uIDEUG2inrOSehZbXV7KgqyWEcw87N1VWXzat+IWpPl+5giHo56a
         H+sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFuVtR2uF/FVTjWtgZjzmT3PtXdGLHigYo8JJC0JwoXUgn8ac/V/Mdzs5nr+BwFtGT5Ot0UkiRDORa@vger.kernel.org
X-Gm-Message-State: AOJu0YyUlTfP5HkN3kzZsBQsj6NuFOhr8Tk4l1wI4tFYGsiw1duvJnUX
	pac6KkUpWZHyeCORtuj+z/Vceh8Z4GFUZttlin43fJZrYNmthnpLqQ8qSau5IlSTfBOlO2bcPnQ
	fXAC4QqGZrX6WUmkn/Ip+qlimhXuv/wexldQItaepqP0mqUlqYDJMPESuN4d8offK
X-Gm-Gg: AY/fxX4WiOon4QoFthVoo6zAmy5Nm9ncmXLA59kzPsagt01dw3H50YCneJgnLqTPkk9
	UBNHN/vqzNBUQKwKKczaKC4XK14+CONPAuU+a7tMD3YsswKR8EmmeLSLnkMZtsG1j6G5CqZlBWX
	1x37xed4tIB05y7cGvLWyULVxjluVF5PfwO9Brw6HPlHWq1GzqT/3qJZYOsbeOkGC05ZjrKU8uZ
	BKrl+E7Dkz11YsEasF3rr44xqAwznCBZ0bqT5/z3BazbWOty2tDallT1Wpay7FxvCdhMzuSET7K
	uRk6oOXxFGx9ieXMqR/WaBGdWzwvp0Oed62RQOfY/nLcvHrE2RY4708IXufXvlMRTO6jmtg/IT2
	FleFfslnd7l5ve1a5hEEIYxltRv3z3L1u10l+RoEOLrRU/LSjyojG2NKzPCImCdmC4bZGwRC8JM
	I=
X-Received: by 2002:a17:903:2342:b0:298:344:1229 with SMTP id d9443c01a7336-2a3e2e1e544mr12113015ad.55.1767662998867;
        Mon, 05 Jan 2026 17:29:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5+7CG5xgC4gLsroYKzxVVsBNnVADKYWQW7AEKJd7RNZaU9tSR1esDn4MXfLTh2KoFIFE6zQ==
X-Received: by 2002:a17:903:2342:b0:298:344:1229 with SMTP id d9443c01a7336-2a3e2e1e544mr12112765ad.55.1767662998367;
        Mon, 05 Jan 2026 17:29:58 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd495dsm4208955ad.96.2026.01.05.17.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 17:29:57 -0800 (PST)
Message-ID: <3618ea01-1fc4-4fc8-a0d7-23336c633435@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 09:29:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: monaco: Add CTCU and ETR nodes
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
 <20251103-enable-ctcu-for-monaco-v4-2-92ff83201584@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-2-92ff83201584@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695c6597 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=li7pXvKEtyOYx0Cqe80A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: yFXC1tXeKhqK0IqakLsnsiDe2YX5_VSp
X-Proofpoint-ORIG-GUID: yFXC1tXeKhqK0IqakLsnsiDe2YX5_VSp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAxMCBTYWx0ZWRfX2zTp01hQjb3V
 sdC0ZDAJKLbgxydl76T5OIX7mvl5eV7BuSwxHNHHkDakyQ72eJa2RSRzBPWv0zG/gw/FbrVxAgZ
 VK56mT57F6mEWsOYaEBu75d+3BuMoo0ow3Ple7nU8kpEr4hDLDsmn5zMMdEkejsmlj+dSs0NfYN
 MlaNwshtqCMO0mwH7WkevKeK5LzIxgV/cPDECSOk40uoDXXY+cXNtzC++l0HApEkTuv7IKSzznU
 iqtFnacpC9cRTRtKo6uo92OXYEXxnetMvvg0heJ68KmNDbzToSR83yCNO/WTOUkChLCc5tLJpnx
 U09IkEuY26eaVMBbJ595dClKeFiKKheiWxhIGhswCRoejUuBNFKTJdQCcMtHsxNrUrV6WyvW8XJ
 UV+UZ7pqkt1ANwqNSwvWpO9+RmIx7bKm0LJt0zyX6PL8MOJ5JTJ7VJs7qcQvW+vFvdKq4ML5k/L
 LMKL/D/WFGTV83hz9iQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060010



On 11/3/2025 3:06 PM, Jie Gan wrote:
> Add CTCU and ETR nodes in DT to enable expected functionalities.
> 

Gentle ping, this patch should go through QCOM tree.

> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/monaco.dtsi | 153 +++++++++++++++++++++++++++++++++++
>   1 file changed, 153 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index 816fa2af8a9a..1966dfad2dcc 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -2483,6 +2483,35 @@ lpass_ag_noc: interconnect@3c40000 {
>   			qcom,bcm-voters = <&apps_bcm_voter>;
>   		};
>   
> +		ctcu@4001000 {
> +			compatible = "qcom,qcs8300-ctcu", "qcom,sa8775p-ctcu";
> +			reg = <0x0 0x04001000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb";
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					ctcu_in0: endpoint {
> +						remote-endpoint = <&etr0_out>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					ctcu_in1: endpoint {
> +						remote-endpoint = <&etr1_out>;
> +					};
> +				};
> +			};
> +		};
> +
>   		stm@4002000 {
>   			compatible = "arm,coresight-stm", "arm,primecell";
>   			reg = <0x0 0x04002000 0x0 0x1000>,
> @@ -2677,6 +2706,122 @@ qdss_funnel_out: endpoint {
>   			};
>   		};
>   
> +		replicator@4046000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0x0 0x04046000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port {
> +					qdss_rep_in: endpoint {
> +						remote-endpoint = <&swao_rep_out0>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					qdss_rep_out0: endpoint {
> +						remote-endpoint = <&etr_rep_in>;
> +					};
> +				};
> +			};
> +		};
> +
> +		tmc@4048000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0x0 0x04048000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +			iommus = <&apps_smmu 0x04c0 0x00>;
> +
> +			arm,scatter-gather;
> +
> +			in-ports {
> +				port {
> +					etr0_in: endpoint {
> +						remote-endpoint = <&etr_rep_out0>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					etr0_out: endpoint {
> +						remote-endpoint = <&ctcu_in0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		replicator@404e000 {
> +			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +			reg = <0x0 0x0404e000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port {
> +					etr_rep_in: endpoint {
> +						remote-endpoint = <&qdss_rep_out0>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					etr_rep_out0: endpoint {
> +						remote-endpoint = <&etr0_in>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					etr_rep_out1: endpoint {
> +						remote-endpoint = <&etr1_in>;
> +					};
> +				};
> +			};
> +		};
> +
> +		tmc@404f000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +			reg = <0x0 0x0404f000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +			iommus = <&apps_smmu 0x04a0 0x40>;
> +
> +			arm,scatter-gather;
> +			arm,buffer-size = <0x400000>;
> +
> +			in-ports {
> +				port {
> +					etr1_in: endpoint {
> +						remote-endpoint = <&etr_rep_out1>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					etr1_out: endpoint {
> +						remote-endpoint = <&ctcu_in1>;
> +					};
> +				};
> +			};
> +		};
> +
>   		tpdm@4841000 {
>   			compatible = "qcom,coresight-tpdm", "arm,primecell";
>   			reg = <0x0 0x04841000 0x0 0x1000>;
> @@ -3106,6 +3251,14 @@ out-ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
>   
> +				port@0 {
> +					reg = <0>;
> +
> +					swao_rep_out0: endpoint {
> +						remote-endpoint = <&qdss_rep_in>;
> +					};
> +				};
> +
>   				port@1 {
>   					reg = <1>;
>   
> 


