Return-Path: <devicetree+bounces-169834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C2A9859D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B06A441DFD
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1ED21FF51;
	Wed, 23 Apr 2025 09:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OFg5t/47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6E22701A9
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745400853; cv=none; b=HXP6VRxW28DwnZVMkmnhsNQeCUMYCmjIdd3QsftcEflSwkt4PrU2tKnRjc/Ae+eFUt5LWg7s4nn0oNgzQUmVqCTMY6U+1PQ2q5F4sfmmQce9Eeb6yGdVXBrcqnzSoCGK/AshuthR+EivVO1d/1RJZuzgVSoxThEqPY7avUlAGRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745400853; c=relaxed/simple;
	bh=uSE8OjcgrUbmkCp6jk1pPtxB/R+pN88XPnq8rYd1RvE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b0oj/50kdS+OohGRYU4y9N/EU+/8jTXu81UDR2aPMn0cip3OW3RXlZnhDBw5nCSlZhtkfQvCIWYAXtJ1B1c+wvyiY0lZauaiRAGAqzRB6QPLa70/21cvjWR0AGGnbll0qafADCVECHNvR8XfSXyG+YSWHtd8DEtwwBt3tCg6Xzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OFg5t/47; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0i8tk003044
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:34:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BNT20WPVvgFQc97GVJErvJnQMOitqkwB+xfhFmU4Op8=; b=OFg5t/470DQTBio3
	YGTRahQhhmjletMwuHVh7WSTVah5WBufy/hKlCp51C3U2sVns6rMYrMTxLIcjgU0
	obexMUoUZQjbFI8TlzdJcDwgq2uWRPKApRwwV/Q54ru4aM7FUzughwi1i6QAOdYX
	IJYLu5j1QTKbBqHS3/uqCGQOsBao/ScF32/OLwyOlzOb0tMo2Nn2lionaiDAtcqe
	NX5RbkjZ2ooRmlMS/v5FuLFIOVZspW+J/JILB0FLrQc6bOXiy3dhQfql+TdYjpkK
	XfqkR3KaxqgKrifkPOlo2wZW/xrYws9w9bULbmFDHGSPZnR52/+L69fEQGbInlsA
	JnRQYQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy1mf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:34:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c555d4ad75so30693885a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:34:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745400850; x=1746005650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BNT20WPVvgFQc97GVJErvJnQMOitqkwB+xfhFmU4Op8=;
        b=qNSAEFGfwyEkK6OibF6Guzk0OE9AzlwvoPrsjMILbuU2fj//Z63Xwuq91C4FmnzU5o
         D0/1jlrrUwDBe+ooAohcQ5IHjWlLjDzsR7CCxkzlwv5dqZbX62qMBIJBnrv6jPmggnd1
         vcqWsRFAWKCPK8lxBi66GN18LazQe8IRmInaGadcQBqDMeh8xTlmEaEloRgdc2/GAtNl
         HOXSGfSlAgTl/Ev8DHe2MDDBGEdFlcM9Xr63aFGnrRvbRmWl5oQpWWPH38cIJpYDEPgR
         99QC8fW4ZbHk8yfhL3F7n/Z8etASjLIENh4JC4A5ThBYDvQ6ktyEEQHd4daLzpaRs8tf
         ctQg==
X-Forwarded-Encrypted: i=1; AJvYcCXKSfE05TUbZop4KAgbwU1CDOpX+7QPzLl6KDCe5JKrPWtGTtdGbGY6Z7YzIQH5Nh3vS/CCTbRt/YaM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6vZoO28R946jZDTrAOa0bQHdc/4JA8zuNUY8YV2d0kdEWbkU1
	hyydOSS9OZPs6tKxY+fhJRi0nYsuIXmYZeVTDr5qpscojMwJ3vUdRzCLJ/K+JlkG5xZJ5aUtCOZ
	cyg87mVyiXM34F27isnyKR5PD+iuo3vO1LAsAbiqKt2F0mFgmptb4D8fNd7cj
X-Gm-Gg: ASbGncvTH28gRJzest4vlIAuTxez9Ts4FfwgA3n22sg8iI8IvuLAYfqoBthY+MGtrQl
	2r0JL+2cXWXvRuobNEk6BzKWmjp1FJRcAYlYYrxhhLp9YwmqjTcn3QH2LWZW3hJJcPj5JkrLxOo
	R2YehzEZUTJRczag4Zm69HowGf+ZOy33l86O6VJ7PTYdCedKXDd/Kwg1cuTu152zcJYO8Sp13hh
	mEyEez0H/ZvneY53YIAOm//94qjYUvIQVwhuVscqpGUTuqoQeJKfgpORubUfc+w8R+im32hf0ZQ
	3r3/D7EYQa1Ff5CM/pP+v6Eoxqnr8QyUCqbekewJbGWrJCfkqnEDB5QoWcqexQ/V3Qs=
X-Received: by 2002:a05:620a:430b:b0:7c5:6fee:246f with SMTP id af79cd13be357-7c94d231186mr153898085a.1.1745400850183;
        Wed, 23 Apr 2025 02:34:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLnxCv9VXYwZKLmPcXEO0/NEnT5DrG/YWmnJcvkBu85Ijyalv+exK+5Oq+0VSxEPPYLQtjQQ==
X-Received: by 2002:a05:620a:430b:b0:7c5:6fee:246f with SMTP id af79cd13be357-7c94d231186mr153896885a.1.1745400849852;
        Wed, 23 Apr 2025 02:34:09 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefcf4fsm785708366b.109.2025.04.23.02.34.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:34:09 -0700 (PDT)
Message-ID: <654e4b69-dac2-4e05-bbe7-61a3396da52d@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 11:34:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs615: add ADSP and CDSP nodes
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250423-add_qcs615_remoteproc_support-v1-0-a94fe8799f14@quicinc.com>
 <20250423-add_qcs615_remoteproc_support-v1-5-a94fe8799f14@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-add_qcs615_remoteproc_support-v1-5-a94fe8799f14@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2NCBTYWx0ZWRfX0tXJJfoIluNi tZzVA+77UhOwlQ2o39uFkAo4e+x2Hdxzer3VjlYqaAU4zUrANBXNoBfTfZXYJtHhH6t0kJhQ3Fx Q21WoLRn3WJZ0a2UlnIGjjQ1lXIKF6MgqKt1RtHCA+Us4HzENuOJ1mcUB5b7I8yfjleiQeC/yvC
 np6wcy7/VsxpGTLBNaSQoanXCdiwnjzMfrhTVgXJ5oExaegCrvzXEXbSxZQVMFqubfhzI1msbO2 UCJQ1ktI83K8+h9y9pJmovEKgvTQjJk0m/kW2n8mJnmm3g16TEk1IaHKkarv6aYU1o6B5xST7DO jBE1QNX5cfJNuv7P2l0YFbET1jSEO66ClgtkQr3mgIQKP7NNElR4+/o/8Sz64k4v8mmMRhwxdYN
 f1KMynVRt2LpvUTfcw27rnPs9XtgtCGGZAIFwVJeidQnz5P6nmkAZ1Nqsowe3MUVadV+ecP0
X-Proofpoint-GUID: 9aiTxdsa4aSweSGw7Wn4xPCMTkK-8ic5
X-Proofpoint-ORIG-GUID: 9aiTxdsa4aSweSGw7Wn4xPCMTkK-8ic5
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=6808b412 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=j59CM_6C_jZRu4RL990A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=865 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230064

On 4/23/25 11:17 AM, Lijuan Gao wrote:
> Add nodes for remoteprocs: ADSP and CDSP for QCS615 SoC to enable proper
> remoteproc functionality.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index fe9fda6b71c4..c0e2d8699d05 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -503,6 +503,16 @@ smem_region: smem@86000000 {
>  			no-map;
>  			hwlocks = <&tcsr_mutex 3>;
>  		};
> +
> +		rproc_cdsp_mem: rproc-cdsp@93b00000 {
> +			reg = <0x0 0x93b00000 0x0 0x1e00000>;
> +			no-map;
> +		};
> +
> +		rproc_adsp_mem: rproc-adsp@95900000 {
> +			reg = <0x0 0x95900000 0x0 0x1e00000>;
> +			no-map;
> +		};

Please double check these addresses, I'm not saying they're necessarily
wrong, but I can't find a confirmation for them either


>  	};
>  
>  	soc: soc@0 {
> @@ -3124,6 +3134,44 @@ cti@7900000 {
>  			clock-names = "apb_pclk";
>  		};
>  
> +		remoteproc_cdsp: remoteproc-cdsp@8300000 {

remoteproc@

[...]

> +		remoteproc_adsp: remoteproc-adsp@62400000 {
> +			compatible = "qcom,qcs615-adsp-pas", "qcom,sm8150-adsp-pas";
> +			reg = <0x0 0x62400000 0x0 0x100>;

The size is 0x100000 (1 MiB)

Konrad

