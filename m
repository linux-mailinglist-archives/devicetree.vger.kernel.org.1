Return-Path: <devicetree+bounces-203564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78239B21DBF
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 07:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C4663A790A
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DC01A9F91;
	Tue, 12 Aug 2025 05:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FhrQzbW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1312580CF
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978130; cv=none; b=OzhlHLFmpLeQtB8kZWOtc5mETV13rcFcvm6a20/i2wAjNejuK8mKqGPvfD9e0qpsUWBiJKUzftudg3EGdVy0mOPRu9VXtZFOeJs4Sclpv0nYKYGX18XCaK6/CFl0DV+ImmnAVwyhI1GJc9SBGgJveTF4J2oBOj89+/gVaQppi4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978130; c=relaxed/simple;
	bh=jVgCYfXMSjJ/9fZtfupDTMepf8WIhFofQBAD5wXcV8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H9vF6DITg+8qX240GgNgLmLVddpoD00z1MBo2IgasYj2eD7Jr86MXidr1HqFDgC/4h0iRk85967ggtaZHyXGHZyrVT7ouqpUj8IpkTypG2l8MHpFhZw0BX53ms/RQkGpjvA/iJcuRRtF1gXM8VU+zVHAqm+eFKR4A7SItwIv1jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FhrQzbW/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BJNSVI004991
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:55:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XI4zA0XPEeDju8LmiA5iAEsb1GjF7x2tJZG8gRPEHcw=; b=FhrQzbW/vDlM2Zam
	Aqq0M+z7LFXJEmSTWYT1ASIuluq9c7fLPwnTy1t4UJX1tW4jKcr6HQpo1wnrTscE
	yZG0t6M4qhQWvZxDXzV4HYqnyKnlbIqZyrbq3oycD29I4myfBbHAK/yZjLDqLyVP
	6JSfbbT8ZZwqw4MqMfcFnhRvFoq7/29rZH6fckzUnzL2D840tlge4T66xiU+HV4p
	CIed+G5to8rHqRsMDn392U5s0Phk3Yk7hsHpnGYUP6gvSFeQ4vHIva4niKR2m6CW
	p7UB6D2ycgRGXSIy2LO/3DplyYSVwbrvcB/8OdA18++tdZjddYuR6uB5Fv2qea0a
	zpNraQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6jtga-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:55:28 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32129c65bf8so5774861a91.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754978127; x=1755582927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XI4zA0XPEeDju8LmiA5iAEsb1GjF7x2tJZG8gRPEHcw=;
        b=jL/SEzE9lhPIuBTXV33HEQA/xnxScdmO4Kg02mC0p09e/pES2sgBCGkUnBalAqRplB
         qhhkLzI8xKkknbrqCB4lzGcTLz/nqmLixVz/utss2qpIN6k58qLKdDwvXkKjtTLYFlYS
         IvYTGlRergWQybg52h1POo0YgUWtvVk/3kLELxc+TS73g1oPcpHWCLd2FXddpP9bKrdk
         yZvoXXScnpN5Vcb6T2Parxvcz7CH+8JLj4AGibRo4RkHDJyi8UvtQXqFbP7SoAyO6+zR
         KyeuhEIfMGGylO0sXH1fhTcmH7u3mTG/6T7KU2H3h9UX+v42iZ6M2dZ+wcjgp9rK+8cD
         B6uA==
X-Forwarded-Encrypted: i=1; AJvYcCVj6UPf5Cw9DWqjvVeeQY6D/owl+zIjknxspR5VOLkVWZV28+B2BCMCHZ7Jb6dWQe6Lf9t4q7dMePMJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwdPW3s+s0siNCeT5SnuDwNS1kN6HXk2AHPJDfaAMrnQQ43xjcT
	y/e78mVv3ndhs/pga/G0lHD6hsv8+tS2TwcCVsw+Az9/+WvEGRkFIpKGosTKTtZi56QBxCiEKSM
	+nt1TXO1ca14+RYnrI5eItGMic/yeGgYyvrkB6ndA1/Q7hbxzeMN4eR1JsA9IUIjn
X-Gm-Gg: ASbGncsfSNuPQsKra7rjZtRnjc76Qt8Ck31wJQftSwPZIHmp3865kYVsloVyXk4oCmn
	fHcFo8/dZ+3jjn4vj8dAHDTUyGV9fOp/Mi/Sms06xxhKX9oAvJ4uZ8H2zExbvwyImV38k7Wq7c7
	pOfJ6iVKlW30mmWGmu2hjCGjr46gk2SQ0qH2sumqDWrp5YG7NDxPO7G7/uxJoGtD+J6AX53hZ94
	VDxK1HhusEJW3nRJSExxv6qfiud5TOy/qj9O6QymvnjmMkfg9sCAmhCXOfz/GT4E12d8pIdv0Kw
	7180zUNAnalV2rCMw9SKLULdFVM8FSV+ylPiygfTLGzLb1km6Il+hYtt0l27s0Nw0NcaRCM=
X-Received: by 2002:a17:903:2283:b0:240:9a45:26e6 with SMTP id d9443c01a7336-242fc230f18mr30549755ad.10.1754978127369;
        Mon, 11 Aug 2025 22:55:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/YPzCOCkFvG1QEpOcPR/+AeqBulYJ1CpcEiZvOMQ6dowlNrMRbKyFgKjMlGH5EpOo+tkUlg==
X-Received: by 2002:a17:903:2283:b0:240:9a45:26e6 with SMTP id d9443c01a7336-242fc230f18mr30549445ad.10.1754978126934;
        Mon, 11 Aug 2025 22:55:26 -0700 (PDT)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1f15092sm290447335ad.66.2025.08.11.22.55.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 22:55:26 -0700 (PDT)
Message-ID: <d1cce1f2-df38-49ea-ab62-a1397be4e599@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:25:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/5] dt-bindings: misc: qcom,fastrpc: Add GDSP label
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-2-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <20250716132836.1008119-2-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX+E1Cam5no/EG
 yFob3GmD/peWVFM2pIq24nKlkIt8MeEty3st+69EOn3bPgbdEuu2iTJlq6S9NNbpXo5RYyay05I
 C3hrNd3r3o3PAeD9S1PG94roMCltp/FAG/HAcLUXXAIk/WrXABgjDvFI+mSgin7OA8h5jV9A8ke
 0exEmUbpia0Wl/U2C9E3E0ivQXoyVCcQg+l1I54RD4mhTVuuEgAINvh/q1135Lp2frFLSRV1I3O
 coiLXVFJO47We5wfQwkO8JbOeVqck0AnJmNXhvLta18MobvU/DuNvCMHpNDvcN6qyw1GAk22Ywe
 41uLD6KoEe+AhTseA7sxYzs8OA8tie1qBC0o3o3E+Lyl8exz+3ppB57P1iW88i0YAYr6IOFMqpj
 BrpPo6n0
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689ad750 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=3zBhIfn5MegWJkNBbEwA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: pEeCR2kfS4SJ6_Hv4ZgaqJog1T3QXWOy
X-Proofpoint-ORIG-GUID: pEeCR2kfS4SJ6_Hv4ZgaqJog1T3QXWOy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075



On 7/16/2025 6:58 PM, Ling Xu wrote:
> There are some products which support GDSP remoteprocs. GDSP is General
> Purpose DSP where tasks can be offloaded. There are 2 GDSPs named gdsp0
> and gdsp1. Add "gdsp0" and "gdsp1" as the new supported labels for GDSP
> fastrpc domains.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> index 0840a3d92513..3f6199fc9ae6 100644
> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> @@ -27,6 +27,8 @@ properties:
>        - sdsp
>        - cdsp
>        - cdsp1
> +      - gdsp0
> +      - gdsp1
>  

Reviewed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>

>    memory-region:
>      maxItems: 1


