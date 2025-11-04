Return-Path: <devicetree+bounces-234811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD21DC310B6
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF7574E35A2
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9410A2D3ED2;
	Tue,  4 Nov 2025 12:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M/4+2Buu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PzplkmJC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A77120C461
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260457; cv=none; b=PNcoTERnlH/03aJtbW83yl7JVTpUM0MVgaRQ3iRuO7JHjZP5ecIdn22XbGXx5Hw7jVebQzKm0lBEEA4KbxiUAVNkD3N7kAdxQcx2/XfQvy+oYaVgQvnwwYxyI3CA1xZMKUdUDfRdlUStEAldcg2rRTetC57ucfxecQRSaRy2xoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260457; c=relaxed/simple;
	bh=gTxs5rn49DdYb8Oa5KQlFCzJzQuiPSQL8X+NvSES2ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=usR4kgypp5pZlTcmgv7XT/Fvx/2uTpNjgNouSRDhTKZ9WshtJYLaWCv9vcfMuN1utR9DHsgOmDYNAysS3nxQr0H10a5NYqB23RcDfGL+zk4ChNhVxbSccFXKpn3lpvYh3WS2lzKhcV1w0FajC1OU6/llwt+/Rl+GSr51rYws1SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M/4+2Buu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PzplkmJC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CfsFS2061957
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 12:47:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	btCLUFG2JW2R6lSb/zI9bygKazt32LU1QnP6IaOo4lg=; b=M/4+2Buukf5mYu89
	WA05TNN2VSx7YL7TBTGKfpPHBA0dSJvcQ7YRGmm3HbkjYf0hWUxdeGH7ZXKMqZPN
	ml+wEwweBqeex3ao8Cq5D5Kebss6kBgv3Ydde9gOdNITp82yk2FepnmughxKUkLA
	L8C5GZNdJIYbKe9zCR/IzPPm+vhHErPMlW4+sFANg4Rec4n1vnR3//njyNDMB2Yq
	rAScset5mlmSSq3UK9yIbikkIP1xUioHby48GoXB0oGH14847f8zPc3KZtv0G1ja
	7cIZkv3IOMekJ6QMAYTU/YkDJtyMbNBUTemE/5bSmrSgfz6iQV95mF+3WtONIJKU
	c0cAgQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ex7rfmg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 12:47:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b1be0fdfe1so13986285a.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762260454; x=1762865254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=btCLUFG2JW2R6lSb/zI9bygKazt32LU1QnP6IaOo4lg=;
        b=PzplkmJCi6iE4uURukblF9Zf5YfG1wEhS2rIJvP/j2IdMo6FvTqUmXeCimgVKZZa76
         HgHlFfgZ+hNkCRM0jvOfLKQfRx4v5sQtkCFmyyjvdC6QbERZq/geuDkbyiF7nboTA9e0
         5+K1OccVRVJiu9NdarzyLyVuytOXO+QPGvblqveG57fGiAuMIFAZU9Oitp6O7kF9MCXY
         0gKjwZSIa5RfsDeVUjhAS/heatfjyvRS09sYjh4YIPhUw46H46I5gkC5Eo2AqJCaRSbx
         qlvkCqS6D+9K1bbv5UOdIAE5c9yRvRjFFmIlP9nouYI+cvyIJaTRhv0OOBnPVXlQ7cXk
         OQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260454; x=1762865254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=btCLUFG2JW2R6lSb/zI9bygKazt32LU1QnP6IaOo4lg=;
        b=NFTBdzNDLN9eUdkNg+AAuL1A8atBmm9Hsmp17e5pBDqxEtE8yKlYJsXcyPrcy7yVCZ
         TUQw1rpw563n96iffWR+iIVRcy9iXVze1WD5l2TGCRNulxLDN4dnCIfyA0jaqQSouHCv
         8xwPZBpY4Dbm0IfsEowP29U7AKWcfrU5McA57TFRd1XQN7l6t6d8CNEB4hhKaQf3802h
         vgKlbjqqSdRLWYGSZvXVjsoh+j2W8kyyQBIJK3nObTiMGMo2cposdpPkIBPLhmrL/FI7
         EoIb1Vo1rOT2DxlEHE69kD5pk21WqFDJe185aVvuw3WVj6DEBcp2Fp45vkAYO61d8IjR
         rAHg==
X-Forwarded-Encrypted: i=1; AJvYcCX+927FrARBcAkjGgRI/tm2FMk+N0LUJwJIPgQT8EpJcREgtpPILAyTpMqgFbd/tVfbrIdm7XtA1c4W@vger.kernel.org
X-Gm-Message-State: AOJu0YyLovFbDo9xtaw6nYI1I4HcIG8cFexrhxA8sDpZ9dw4RMSuUS0g
	y4xVhJB2/7+ZbJkKWVQcBcGTgAewyxNG+GR5VwBoKBtfM1p1WwEFm7kugEr53c9rlcRUfxRHSdf
	T1ZmwuJRzjChYgaXIHqryFUm+542IRCoUyGRDnI3YvHuqWMDyMejR8uwc7Fj5zysm
X-Gm-Gg: ASbGncswDHx2le6zMqcVEIvf+YeiR3Q8Ssi7fvWUfvQ4WJwDS5H6u3Q/vbaI4u97bf8
	hXcA+R2lUogi8AWPqwmd6+nIfuiFwqzws7mrz53iCZVE+b6/055+q+eCncjV3dmYAIeMtWc4l2d
	7Q0ZOpJIUUkp4nsdq845iWcwgET8SZYGFD3LPmDo2tqtxp5zGHucYboq0vwrQDjrKBiXqYPW1cU
	10ccDMbEijD4bJlA/6bbUGhXw9WNgo0RSijfd07+hKMwYAR2qDKPxv4F04wz/qvpMvpZ9pvL8N4
	p70DjRlkj44oiq31KUtQaOrEZG55eM8PeaNWA+ksdB/2VB4Us36CEgVCvQWK71/0RP9bETiPNz5
	skCBoUVkHRg8RQ0KKIRd0jqq3KvgqT7nfl8XORrobJIVgk1letRn1yGz1
X-Received: by 2002:a05:622a:1889:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed30d4af53mr132226931cf.2.1762260453979;
        Tue, 04 Nov 2025 04:47:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAViUaNmyoIrrrtJRAsJFTDtaonsJt68AYLkIMFNWARiJlxrMxIPqTiGU7C28cF/+f/XRsAw==
X-Received: by 2002:a05:622a:1889:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed30d4af53mr132226561cf.2.1762260453333;
        Tue, 04 Nov 2025 04:47:33 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723f6e26e7sm203838566b.41.2025.11.04.04.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 04:47:32 -0800 (PST)
Message-ID: <25b7abfe-1881-41e5-914b-ee16ce63ed3e@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 13:47:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: hamoa: enable ETR and CTCU devices
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251104-enable-etr-and-ctcu-for-hamoa-v1-0-af552cfb902c@oss.qualcomm.com>
 <20251104-enable-etr-and-ctcu-for-hamoa-v1-2-af552cfb902c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-enable-etr-and-ctcu-for-hamoa-v1-2-af552cfb902c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEwNiBTYWx0ZWRfXxyyxHI8ZeFGj
 Q6+F9qEeBKqRob0cbE6QmBvTWBFM7L5UTWw6opHIMQnA0GknHk99DnIy8PjOQP9OdBNB/sqeGk3
 uifXf0p/z5KNcvAsJY7rsug3eDoM53Q4RRc7Col21/EUEB65Wj/HAFnkvsOJ3E0+Uq4Yzrncv91
 LAX4qgWUnuueY8fXZoAs5WRRhhlHViUDd/+Zg8IK33iRutExec6EdoZPGsguQxqgFCyv7yruzqD
 MD+XJ0Vlt4XV8QYsxLPZCUMRn4GeGhnW3z8V/zNPp839ZzKw/OfNe82scJE6yZqMvvyOud8b/BV
 V88DQaSRCbuRIYJpcpokD7kO/V48Ffjo91EykAVOv7pnqwJsm9D8ZQj8HFqcXX8eZ9Vudw8OnkP
 od/yk3dr1ijcN3qFvOAEjsPG6BKSPA==
X-Proofpoint-ORIG-GUID: jwqwbYygzudPI11I6Cb1yxPUo9euzozr
X-Proofpoint-GUID: jwqwbYygzudPI11I6Cb1yxPUo9euzozr
X-Authority-Analysis: v=2.4 cv=auy/yCZV c=1 sm=1 tr=0 ts=6909f5e7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GSohi4rL9rV8qtWeFt4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040106

On 11/4/25 9:10 AM, Jie Gan wrote:
> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
> tracing data from source device.
> 
> The CTCU serves as the control unit for the ETR device, managing its
> behavior to determine how trace data is collected.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 159 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a17900eacb20..ca4a473614ee 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -6713,6 +6713,35 @@ data-pins {
>  			};
>  		};
>  
> +		ctcu@10001000 {
> +			compatible = "qcom,hamoa-ctcu","qcom,sa8775p-ctcu";

Missing space between after the comma

no issues otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

