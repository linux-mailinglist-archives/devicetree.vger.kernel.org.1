Return-Path: <devicetree+bounces-248636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA15ECD4988
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 04:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72B9D3005488
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFAFD3242B8;
	Mon, 22 Dec 2025 03:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PgIYrdOg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OTqYBXof"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D52D3EE5
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766372821; cv=none; b=fFn3oLE2g8vlQD30U4AyxiQp6CQRmZaVtspA+tvTuDxjSN8QNtussYsZTTovQfe8FD9+l/WUnJB+H5l7TLImjW1JZQGgW+XbK5gPm6FZUZhTfT7Wh9x4awhfMQVtcYxztOw/kCH3y7Z1YBu5/PTBqxA/o+ekBQrgmISsBK+e5gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766372821; c=relaxed/simple;
	bh=V50vCeXuxeJLbmlKSUhQjnCteF4ZySqM1KaWoPGK+d8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dHtrFDcVHvRDOu839R8IeP3yP2yUF0cSoI/mk70rIh1H+naf+4JmKIrogmy2ltalI3SOxpGMKx0Jut0eYWU5GiEN7v7qOuZ0I/RmT8uMk6j+SOw3DyscwtrLu/ptS8lnL0Cz4EPwofkxpTurMHzXd90/QcpSEFHzP9OAhUV7ar8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PgIYrdOg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OTqYBXof; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLJj1gL983038
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SeCrpSAem0l6kJVOq1JnyUO91eCa1P1yPgmrmdkHcU0=; b=PgIYrdOgas+1a5GO
	YAo57qEpgOhEgA1Drloyv/WcE65w/2BVV+NMQIirQU51R/VLj08ICbfzPOxndU68
	4Nb7s0wEQs/tpriukz0hR204D+hnnWdfuJBC7pPLKOmvblpDabvoma9d0P0QxFpc
	MFB97wbjVs9jqztxddBPR0JjxKc1K3S1+f7SDtHLSbZ/QzU/DNt4vLsNc08Eex05
	pr3jc2+FTOZb9uF2emtK3bQhYeHPkOY0NBw/ubhp0vn05Z87Zh2FALMoK7H8Q7Wy
	KqEgIBES469BTVB6bT/fQis79EC5qPr8AeWxWDdJZwpTw9nX713voUjYf6C/gQSj
	fFC2NQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mydud1c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:06:58 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7ba9c366057so6134458b3a.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 19:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766372818; x=1766977618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SeCrpSAem0l6kJVOq1JnyUO91eCa1P1yPgmrmdkHcU0=;
        b=OTqYBXof5Y0CjyfHthhMVQf72tancxUpmxulY/2v3HhIQPv4UAcRhxMOHo/vWwYjrP
         R46DfCdAoq41RrYjkruu0q6DuKqioeW2vyhF0VTbi7aZ5wPvQ6PNV4GUmd3JCPQSbmtk
         0lw6LWxntQalFedqAY9agpzwYGfrvKbRaOPZkeyV0On70vEi5+lgMDWY2H4I1ANM3ZT2
         whwet2Hrn5GziAcCYZy6N8KwHooTJF4ktn3K/uFC67aoN4YOzFDwNFYlrEPVqACzLedg
         ltFLe8dn8dF6xpdvFD+qVWrwGo1Q4hndGVhAb7AvK+1vFAaYrL/eRnHa8vsb7Q3IvFkO
         38qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766372818; x=1766977618;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SeCrpSAem0l6kJVOq1JnyUO91eCa1P1yPgmrmdkHcU0=;
        b=eI1Wn7xdGnrKOJTWTUTNOKHfubCzC1VC7/mrzIa/Yv+7ASibYo1epymcs9k/ChmCvD
         sFvsFJVpsA0nkmxYgncq+O2ng783NtZHpN8po+RTD0RzCUsh4PmcJLN/ZmjCm4WskhPx
         IPAsJu+fqnR/GYqDIwxPU+g570KLdprZaLG+taVeL5vG2Yqsm1pwZRPoBKQOUXnlxL63
         dfbMgAoNLrOpygLEpPGIpPMvOAKSuxbjetyMGiURdIy6ldH3IA0OYzz5HM+1XMGoX2+f
         GYJgUfDjqrisMgVjcNblr7iM6BNUQpsFgXxmWezFWbo8NlfVM82ziAqZ9Hqwh3OVCHK2
         8rKg==
X-Forwarded-Encrypted: i=1; AJvYcCXsmt+N/Jwsyw0pldUUXY+qHqYgRtyw59dHC1Gh5yu8pZCT4PuNQv5avXmvw7z+7I8e/rD1zkfIU4XZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxVAcH46Odm3R7N2Q8YZ7AFOgyjbRczv48ruKvibLRBoshv2oqL
	Ylmf/5erB8OSlFBCro4Jq4WEf0H4fGgt0J9g/uVTLjTKbbgln1Hdyee2GqLO++zvobWk25P90qG
	iZsGL0EZXI+VFqBb7PjIqAEMNjjDrONHZlrq1veUJUP4vxI3aV8Y3n53TSZlOahml
X-Gm-Gg: AY/fxX6dqwPrBwU1u5aFmoUQ4oKfliwynu3nfcYVlbbMTAS5M1Sps09u38jg5evAg0J
	lp3xHGmseYfbn9qi0C+HSo7ZxnClMKOOoQXfsgI+0Sas3V0D0lB8dXgW6vwLxf9QgpqoDyGvUr1
	+pdXDmEuVqr02mZC7Maxrl5V85WH7evE2qFYVo5onSgE6nUhFmShaJd8WcSFGDnRu62rlzmMtWX
	LD0UNtGtstRTykDChOKZnFD/2q6K/NXrB7/PZeW18ZvY6RuB7Q5f/q0gDVNsSPzVr3p6+NbsVES
	Aixh5+Hwd7m2aGTISnFT9mi8Rm17pKVGrVx01HPC+dKVXRpNAzwlzenFdpEg6PxaO0AdSFTbaKc
	XDozsuNYr5KQrb64qhpr01796hHWG4yeXojoNcBBM0SsI6tbpNGMMUlSDEmnxwyrbYWr6DurwX3
	E=
X-Received: by 2002:aa7:9a85:0:b0:7f7:5d81:172b with SMTP id d2e1a72fcca58-7ff664807a0mr9440326b3a.42.1766372817696;
        Sun, 21 Dec 2025 19:06:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiRUjmcbd0tX2U9/3iVcDu3SiKtj8NFf3VTBuPJbtWPRdBoriq3syFrTSFOJ/S6kYkjTfv4A==
X-Received: by 2002:aa7:9a85:0:b0:7f7:5d81:172b with SMTP id d2e1a72fcca58-7ff664807a0mr9440297b3a.42.1766372817208;
        Sun, 21 Dec 2025 19:06:57 -0800 (PST)
Received: from [10.133.33.169] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7aa32916sm8651050b3a.8.2025.12.21.19.06.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Dec 2025 19:06:56 -0800 (PST)
Message-ID: <0d3064be-c333-4ec4-9607-5122baa0f256@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:06:49 +0800
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
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
 <20251103-enable-ctcu-for-monaco-v4-2-92ff83201584@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-2-92ff83201584@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rO-UnpfFVE9lLs3vYIAOv27a0nIZYGg6
X-Proofpoint-ORIG-GUID: rO-UnpfFVE9lLs3vYIAOv27a0nIZYGg6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDAyNiBTYWx0ZWRfXyQ7K7MNRDJ2J
 DfUbBvLMBPdBFNbXgYEf+e+e8AqT+B3gJWzpPxtw6Tem34spz/x5QpwdFiLUBtdjLKPYzMO+dVN
 WKOkvv4jiJy2uGD7aarSfbXLArWMAgtJvv3PQ9/Mr/LR+bbOu29PRbZi7qBg+AJpmnR1gRO4wua
 AgauIS2ueQDxZJKQ5Gvk7ygZ2nZRFDX7krGRiw/Z3Bsv7EDk/pofOuU+Kol+mGZiEvmoE/qZ3v9
 ucnDWqv4ttGKVdVwcxaXpibYbrSa7hlPHEkr/f2sQpgib9RBb/yqUoWSJhPx1naay4YfsOZ18Ah
 qPvXv4CzjJxQ/e4f5NMI2VDZEllMMw28QMiGUlTQitfUYCBF7NLb5J3Ex9DJCZFt0nNMWOj0Uzf
 PzPAQ8X5hIQKsF9cH4OdnMO+z/iOlp3fSBBi8tfNUe33lA3vwMYBg17AIAZ6DHUAkoWlocpdScO
 NaC70zBktvO8H7p9c9g==
X-Authority-Analysis: v=2.4 cv=N6wk1m9B c=1 sm=1 tr=0 ts=6948b5d2 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mHaL0BgOlZfMPfi31Y0A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220026



On 11/3/2025 3:06 PM, Jie Gan wrote:
> Add CTCU and ETR nodes in DT to enable expected functionalities.
> 
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/monaco.dtsi | 153 +++++++++++++++++++++++++++++++++++
>   1 file changed, 153 insertions(+)
> 

Gentle reminder.

The dt-binding patch has applied to Coresight tree.

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


