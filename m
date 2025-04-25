Return-Path: <devicetree+bounces-171088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0CA9D2EC
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 619501BC6510
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8958A221F16;
	Fri, 25 Apr 2025 20:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYv9FjDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72593222562
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745612643; cv=none; b=SF3kB6seTa2jP3chghr036OROj200tH52pN6uglmMaJd9bVM8NNSpJTmDHA/mNqGwFqNBrBdeEDLeh4xcCchIMGYDuhlV3NP5Ou58Ade3NPfxM/7e21dQz9ELjg0Sc5AMVvWvXSB3QTjkUVlYmjrlHtlL50dM8FJdR4MG44ig1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745612643; c=relaxed/simple;
	bh=6jcOXtZ8yw/PG2mZRLKYqvuu9+gIse7sKPo4JRdFcpg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0hecqTPxfl/+TkZ4RalwfiV5eln7ENvqEF3Sex2TwOe9tJmdvhboBWwUEKp2xZN8CDOfVZJhKfnl79BiIyilkDE01H73ghskuaj6H5Ky8fZoYA4uTglSnob4QuaKvfZhyB4ys0QHINFN6iTdEI2yICfI8VNNGUg7M6cE/WyUY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYv9FjDj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGKbLx014016
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:23:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vZU3IwA+bgrpaQ2TBAaKogUm3yKHUkoHUnNFfaSufJk=; b=QYv9FjDj8TwUwwY9
	1iz9od9cq1sS0Wjjd7QdWJ+WxcaR01vkUfE4LBYlnDkT3dYzB/VKKZnwMSlIwckn
	SIW5ABcO1x5GfSaoIOkWCUmhudtAT+fOGW9EDPj9BgkcvDfYgRv35n/42BSkqymO
	OqgV6UiexjZoTjWWU60Vow0z9JAVeJrbkMvcxBWjwKNu05s/Bqe+5BzN6YXGIaEo
	KePUClJ3HX0TTPEO6MF/Qvm4GVbfX7WFlg0pLD+LI42ylFia9qGYA82pnSwUKbZx
	AvhTB2nqb/oNJQGSUXrDOSCNJo+cWcDTENdjP49jDWpraFBGodvsAQ+xWoB8efZS
	kMz0FQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1t8xq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:23:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47983a580dbso6108881cf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:23:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745612638; x=1746217438;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vZU3IwA+bgrpaQ2TBAaKogUm3yKHUkoHUnNFfaSufJk=;
        b=jyaeo9BgaOhZND7xp7SsfBjDesTMq67/gqlZoAvBiF1bC5cYJ5yzRKwc3w9lqMUMPV
         9wtH+EqhgvpxAz/W8+ReBXeee2MGPb/4rcPXFV7TrHmiy+/BujTbEdT21Wdj7kal7oK1
         ZSE4G2JWckVF40lJZv9lyYXodaSn+q1CEKFYyUk5uVLJ1iFKrWi902g39Dyi79SOzU8o
         b5gHn5BarMh+RuNI6KR7S8YKXWJau5EtpkFXVAnjixeDrdwjHno19W7zzO34TW1zUTbl
         ewPOm+2Yh6FLgfB/DDUO6FPFkNt3nas4R4o3fm8i9Aojsb4jSiovXPG2lwFh27bn4THY
         fq+g==
X-Forwarded-Encrypted: i=1; AJvYcCU9Ew6HOYz5ruhimsRYlXWhrs+yGADUscRwu4M7IFCTJFPcv6k182Tw4Cso2m9qMzLnlbaaReZWm8xj@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0I80Um75teXxcYPCY4/ZSBomujXDhFFA0LJQgoMS/f828/lm
	PxfBlNASc7LOa0eb2IKy2+TuU30opPLFpk/VZQuoU37dANJDN8teSfzsyj9hGYTryXkO/yArsso
	eDYHpHqVTgQHYUY2VehMDoC/JPwIGaMww0C8cWrdU0q+PPBUHPjwN++491w3j
X-Gm-Gg: ASbGncsV7QlZu2OwiKIYi+Eg/NnkLKmKMrbev5kBF9C2o6uuzco6xGyl8ismf24I7lZ
	hWXvnMZZjAvXi/euVc7Wc04aAvCIhtkaqt0+NkV6OqLTem7Y46YhyuH2cMpCTwrX/32x+PXT5lC
	Ziw2mTDzL78DQ5OShL9CZ91L/4KEJVrV7qq0y7SpHNGFduXPgnE5sveoPnfcu1BUdTMHGJwo16e
	RKOVE1in0G4YwYcAFEzpbUrPL0IehFh6wM3Nlpyl5uNLytnQwinngvVZEfeUfAbPvuW5BvJdzCR
	8krDtGwhqLA5f137c+5FVaB+QJcFWBBttVSrNlw3Gy3A5qOjED2AsuAaEC88Grp7GXE=
X-Received: by 2002:ac8:5d4c:0:b0:477:686:b40b with SMTP id d75a77b69052e-4801e10d41cmr18419871cf.12.1745612637994;
        Fri, 25 Apr 2025 13:23:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdHoZR5pCK2t6lb87QvYnJjLEk1VyW1AcMpSBdCT2VlKLRjguijyNKwCmllzoOHpr6Y73rfg==
X-Received: by 2002:ac8:5d4c:0:b0:477:686:b40b with SMTP id d75a77b69052e-4801e10d41cmr18419781cf.12.1745612637564;
        Fri, 25 Apr 2025 13:23:57 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed70b1fsm183172066b.157.2025.04.25.13.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:23:57 -0700 (PDT)
Message-ID: <242f6059-a32f-4ee2-a794-8a29b6449e96@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:23:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 4/6] arm64: dts: qcom: ipq5332: add nodes to bringup q6
To: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-5-gokul.sriram.p@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417061245.497803-5-gokul.sriram.p@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1ggR2DiZum-JJYgoltLDfg2Kd9w0-EUh
X-Proofpoint-ORIG-GUID: 1ggR2DiZum-JJYgoltLDfg2Kd9w0-EUh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0NiBTYWx0ZWRfX+4lUG+7YerLl AN5x+1DrXZVRhs2jLQcMGya+9olrLAWfFkGTzIBk8kug2jVDTFW9Gqg7JnuULopSQiW/0py1sDg RlXW9Mv1axFpQe40MRbmrWOhnCE7I+BcQBsK9/kkaejZHHIAhGswp7ZMBSKx4qfy3H9VXmoHOi3
 Y4OE6VhhIcXB3ggDoixzDvM/EB80yVoa3EldSsRr5DSZt4JbmXmO26+1JRqDqqI+5tLcgrq06XC 5FnMpJuLNn9yp683uPRU0HxtpdMc7C317XhDvLPJn5ls3Rep/q1vUPlQ1HBIGCU1LVY94y9dRDs sxSoxlh2fhImiWHjgfRVjfjWWvgF1zMuA+WBSgzBTOlke/gcxXcA+rVO3k9IWsxFPLcKHCXGTBm
 etGTThFNIo5GGGMwlELmB/bvSs2bkUjoLlyMtG/HNHBdfUG2UTea63iluxkZW99FCbAo+Tst
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680bef5f cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=g0nLbwh1i6OCtKyAYTkA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=884 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250146

On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> ---
> changes since v3:
>         - added necessary padding for 8digt hex address in dts 
>         - fixed firmware-name to use .mbn format
> 
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++-
>  1 file changed, 63 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 69dda757925d..fc120fd8b274 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -2,7 +2,7 @@
>  /*
>   * IPQ5332 device tree source
>   *
> - * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2022-2025 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #include <dt-bindings/clock/qcom,apss-ipq.h>
> @@ -146,6 +146,11 @@ smem@4a800000 {
>  
>  			hwlocks = <&tcsr_mutex 3>;
>  		};
> +
> +		q6_region: wcss@4a900000 {
> +			reg = <0x0 0x4a900000 0x0 0x2b00000>;
> +			no-map;
> +		};
>  	};
>  
>  	soc@0 {
> @@ -545,6 +550,39 @@ frame@b128000 {
>  				status = "disabled";
>  			};
>  		};
> +
> +		q6v5_wcss: remoteproc@d100000 {
> +			compatible = "qcom,ipq5332-wcss-sec-pil";
> +			reg = <0x0d100000 0x4040>;

This is 0x10_000-long

> +			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mbn";

Is the firmware OEM signed?

Konrad

