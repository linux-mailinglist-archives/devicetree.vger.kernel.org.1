Return-Path: <devicetree+bounces-169832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8EEA98585
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70BDB1B65A54
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7AEF1F5433;
	Wed, 23 Apr 2025 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QgnmXYJS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61E925CC48
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745400623; cv=none; b=OQ9DRkUGEMKErcgzKZVfYSGkwAJJC1/RGyXiLXfDUob96igUK65KP9Bdk3HBx/zv/hBvGiZFeMNRW8inHihEcGN5o+hagAK952lgkRhYZHFwc+no1vOB25g13lKhLJChUNfh5G6bCsiZIEhEXlqy6AoW+LkRxTchSuTVRrh7CB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745400623; c=relaxed/simple;
	bh=KhFXpabGbKqNKN4jEUG3Gsr5KqeWcLFALNi2Exu7Wds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X7qawknhnP/i7YAPsiz9s3Niv1KQS6sQsjXjYFIABotVrv60Fyo7oZu+6VCXymzeirTaqGSXd2/DJcIsZGKviRsf9R9i2NnRQsIbD1nQKFl9yrSZ9q1XXJp7LGxErwUIb2wGLuDDx2uLePXChPkSXQGkglQ8opiOALqcFF68+1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QgnmXYJS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0iCmv016863
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g2RfEZO7YG6Zogn9SRD/U/qedhxSt7eBAmsr8vFvW5k=; b=QgnmXYJSKwgcFXRp
	LhBCvmJXZ5d7xPDhYd+3oF5I3LJ8aKjEDbeCLieplaaETwY9tftj0IAY8p6fWVEB
	4g8LJNoEHNwhk8/pszTNS2l4TZhPwYzgmgDydUoaCbo5ca6zlgELuJlcGbYlq/ID
	ouR+/py33AXNb/mdGqNPkF6Tyt9NfT2B8Tm+UCpv3lCsVwDXisixz6lCynkgUSwF
	uDBiqVbD7b7ITh8XfETbgYmOO8FtHQnKKhczf1ukBu8YUxAf2Zl7mjH+EftPAZuz
	dZ5+b/ZNHYT12jl/0Go3G75SP+lKOIRGPg1TsgWwyDfq7XGYWq+KrSRhY7hVreWL
	ro8QaA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh01mfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:30:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4766654b0c3so11939851cf.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745400620; x=1746005420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2RfEZO7YG6Zogn9SRD/U/qedhxSt7eBAmsr8vFvW5k=;
        b=u0y0lN6u9AsTxfDr7W2fjD0zuDAEcpSlMZOmqZQE2zWaMqhjlz8J2oGX0KkKDbOYvv
         kUdTIZgPPY61VN5JHtc54DPaKTGeXHoSFLathr6FxhABmE6T9PImf3mCAGHTQN9Hucij
         rmdkFV35+l+3ZY2NifrErNXmgjnAHXp3MOTZrNa5UgflByluIk/oez+p8LXoSbPL832o
         OlA7JN2Kv51DMuITdmjyTH8wATvd968b70cZqY5A+XrFXCzTcETz4q+gFgdVgaOd/JFv
         kePbDuy68HhJ3d5hyx3CIiGUu6efuBrPwYQddAyYR9FdaCd7HVxg9VyJ0FW2aoB+Co2/
         H6UQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUAd57PLb0KzyO1Gd+E9sqlDlyM6JEtGslJyeQvNP/jIe+kA02QIF9TJwogEBXpW0gGOgYG4toJLE/@vger.kernel.org
X-Gm-Message-State: AOJu0YxjdV95pFZWZuetw8aA2tMZnPcrK022+q+8wT2C5FKS05ACyNz6
	rQ6gCPYYBxb3mBZ9Nmb8Hx/7IivSGGn9aKEnFZaq/du2lRJWPfrizeuoNsgGy3CmNAu4g1Szdkf
	Y6Nb1l8wWs+rnKzpWO2rfkr+vpkJ9AURWe1eg/1LT0WAByKii9BgXvBv/w3czxPrfOWDW
X-Gm-Gg: ASbGncsGVaKrHcp84X/k05KLMVQiO+PaMt/tARznISZHUAAD62922GQuWZ9KcpuG/vl
	kMbIDqz0YusY+HnY6E0SNN+hU3mqzcIaJwuXwuBbNRNxDrj38lnzOP3DWfZELW1aM1gW06DLneF
	uiHdYv/l1N3it8sHXJ9Ea4e3/4Jkc3uMEQjUmlAV+NRuiTqz4zDqeJBXsTKwMFQ/bDx2mL50loA
	enkkx8gW0JY+xfaW+O9djskvxXoGvC5g1xh2wxpoIVSD66KDxRlD9rrKqFSB9JKNu/XXhji2OoS
	k7hYPgCsGyMx4yoqnKJ5hcSyamnn5qpvuzBclh+7sfqBmvLxlC/PQJ2RDWGh8ceYHWI=
X-Received: by 2002:a05:622a:8e:b0:476:ad95:c08 with SMTP id d75a77b69052e-47d1be7947cmr13214261cf.5.1745400619900;
        Wed, 23 Apr 2025 02:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5vFPCb0l6vMoBMz9fXqDHwfp0G7G6fbQNsGjj/FVClyK0wqBPS0xHQBBimDr76TPecV1jSQ==
X-Received: by 2002:a05:622a:8e:b0:476:ad95:c08 with SMTP id d75a77b69052e-47d1be7947cmr13214091cf.5.1745400619353;
        Wed, 23 Apr 2025 02:30:19 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f62557a151sm7209483a12.32.2025.04.23.02.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:30:18 -0700 (PDT)
Message-ID: <b8bde418-450a-42ce-8d39-098d5c10e2a4@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 11:30:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: qcs615: Add IMEM and PIL info
 region
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
 <20250423-add_qcs615_remoteproc_support-v1-4-a94fe8799f14@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-add_qcs615_remoteproc_support-v1-4-a94fe8799f14@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2NCBTYWx0ZWRfX/kNOJVjbnNyW ZCZ3Wm2TEjGpOVUgfbcc3bAo6A40awaOISyfOC5KzYpJbq1CyYeWdyq8HXxwcvHxGP8FdE9/rXB R1v1Ebyd34muVqXb9XteT62U30Xf4EyQABQTjf45JlvfcjCUWhJMsZcin8TTOR8XpA/FRCXq21y
 iyBwLqVo23FxQnIPCnUsMEPvi3GMr86jNx0Sm2BHjae39TqKdZ2IpD43SrBktpmJ0I8lFrc5DJ4 2fWHi5cs5oed0IdLO5eNUlk7IlzC+QjLAmeTlwXQwK+J1W+b8E/p8l+xvI4GUqGWO5AQ/bsPQpj XUnjz+SJ6suq9yJN6G31Ut1hWqAQpjmSsw+CD1pyTq3a8HdhUD17W09af+juzC1Gb0LgNiy3dWP
 BUYlje57SFGRT0pzgSE0WApDS84yeW/XDK5XBsMUc8TvW5b3wKmOiWmzSlcQmLxFRuMdkEj9
X-Proofpoint-GUID: IJ39WA9GZoStOobanaw0YTg9lIikfofb
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=6808b32c cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=SE4aMjCliAL7rhkqCSYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: IJ39WA9GZoStOobanaw0YTg9lIikfofb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=777 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230064

On 4/23/25 11:17 AM, Lijuan Gao wrote:
> Add a simple-mfd representing IMEM on QCS615 and define the PIL
> relocation info region, so that post mortem tools will be able
> to locate the loaded remoteprocs.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index ab3c6ba5842b..fe9fda6b71c4 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3297,6 +3297,20 @@ sram@c3f0000 {
>  			reg = <0x0 0x0c3f0000 0x0 0x400>;
>  		};
>  
> +		sram@146aa000 {
> +			compatible = "qcom,qcs615-imem", "syscon", "simple-mfd";
> +			reg = <0x0 0x146aa000 0x0 0x1000>;
> +			ranges = <0 0 0x146aa000 0x1000>;

IMEM is a lot bigger than what you describe here

Konrad

