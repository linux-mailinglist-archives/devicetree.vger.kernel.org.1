Return-Path: <devicetree+bounces-235158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BE4C34FFD
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 11:00:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CE0D461822
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195F230AAA6;
	Wed,  5 Nov 2025 09:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVM+/AcQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZEESVtnx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A432F9985
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762336697; cv=none; b=uY5JNNLkL6hk2pXGhRSkG/bZ/NrhPZkY6SRmEHvADLaVqyHi+VN/VSa4/lx/esre3o4fH/WGAuSIr4rtvKZs7l1wEu1R8oPN/E82cPZyiwravZ9lBsJm6bcfdHwIqlDpWn/kFPL+GVvzfvKfIRKvrcoUlM23GtNhyDCv+bVWkoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762336697; c=relaxed/simple;
	bh=l65yTJy8J6XfbbvB0kxV5KeXip9+LRJ3AO3oR1KV/ts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pepJFGCYhhz0dNA6j2Ow3nLnvsudwe93L7Kj2+RqF09hZG46Q/sOWYv+CNlIDYdyOJO8tIvtWOuKxsyFcs4UYxUuvAH96fpWdL3p504i3MEWrs60AzjsVuM+ugLHkZOKdOcH6tlBtBpg0DzJPS0PAQ2oIuFJhM2w5yPQbCeQqII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVM+/AcQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZEESVtnx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A58OATk3049565
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:58:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FUOMVZZcOe+DXfQDl4qHtAFVJnxyacvakGsOH8ELEYQ=; b=HVM+/AcQr/yq7/zr
	rJ9o5dO4fsw53NoPDeGvmPRP3zqPaillRwiMiIuufws6/ibYXGfEBuYcJua9XwJG
	lSrZg/V8NvxkcjJARQmYmXAQ52tElp6wbjwgcLdrC5F1BHtxlD7VM8VNemR5YO6c
	DdFrmBDyTDALHPNeApv3DJfgiJVDoWecL9EdqjxnE0ABws6Yf/nkA4ta13P+9+Va
	4Vy2g1Ku5ppXvjLAkpbbXRQ5clGzGVkL+YiAwYtevjhcbxuM1HpTidbko1AgFR+Y
	umxPlem7kIzOBaeKyrhzQf62cyq1BROtegBQHXBrMz9Vqjl2ID27G11AsWpFr+Cy
	rdHw9g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ex7uvr0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:58:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295ac7012acso11946555ad.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762336693; x=1762941493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FUOMVZZcOe+DXfQDl4qHtAFVJnxyacvakGsOH8ELEYQ=;
        b=ZEESVtnxAh6GyQNdWFqRGgkI4rAF2yf4IDwKnTDFPOSQNd8iIvj7n6ESWllTbW8Gmb
         0StTmPPciBiHbz4Xtqci4Q+BtTm43iGqNy4hxgFXbIUozhL1KTW1M5yk5pcOhYT5yaFa
         O/C1SDIPWcbOW4ZLxMtBwv0uj4hCioapqggtovTaZcNBxCIXG9sVZHVYO4kkeG+xTwrW
         B5iG5YnF9SMliSrKW8yixQA8AQKwzHTl2Pt0VkyfGRHlXSiHHyiU/Kr/n/bYWmyUkJ/b
         SvrA7JPUzcOr4iTS1wx4Js6ct7lEjSEzzdzsy3C4gKVh/ld2IeW3faDWbVnnfST+nc2c
         i8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762336693; x=1762941493;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FUOMVZZcOe+DXfQDl4qHtAFVJnxyacvakGsOH8ELEYQ=;
        b=aWVO7+AJ5A7grwAQGcZvk8+sNTedZ7SswEJhjf+v55FeU9iNFp6mDNjo0GaZsJjGgG
         ajjleY+d0Ok0ohDHoxsL/2gZsiOwS3ZE/cA5rioJY02Dvvjd0+VvOtJ8gBA4clnAd8Bv
         GrfbkztY6DifeM6TYiu5vRwivnnX7INqjGDQ4E5cOPm1luHr4dxYKTfp/ce98gEInpsQ
         RC6Fk4/+TANQSW5Rt62e90OoQKyX0QsK2hut5KieGzNi93mZlwsYT1580DksDANTsWJ0
         pyFvvn56WRIgJZZBWjUxFPk/Jf7KSTZBw/SCtfUukEFGqld8COcznKUDLEGF0zl0J1yt
         uD3w==
X-Forwarded-Encrypted: i=1; AJvYcCXEZRq2RgDKwJ+8cZvEVX+Xs1QKRmcuhU8bzRK730gOsIaiEnB7eN8AXTyCiCnibDNfO4VoKylrFA+Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+cyusM5r0YK9nu9MDmdWB4xxhC2To+iI7JZNAdctC+35J3S3e
	njlJqYAqT+Ul76ujpguY2Y+uaqSADsnQF3OEFXbmwqiH9JZJWgU5jDgzIorJkt98G49toafUtCM
	1NV6LXL1A6Hy/5Njf5S8SjrVrTj6XzRzdZ1H18O7GgwmS9xqSpfBGzqg5LVNrAB1V
X-Gm-Gg: ASbGncstjapUpipb3PgcVi4IppB6ZhrhWOmS9izcdPIyl/oDQgGUGHmHpubbxAPQqZl
	tLeUwUJdNtmGNqWoPzW1f/1uACHfAbpWRHqIv0EKFIKXkntxkeZ/+YWKaCbNlOVnEjsY3ZqP6lL
	q7le1z9lcJvZaKswyJAgaSrThhZxJVlY3hfY2SF7slwcLPyTRSlDiiz11yxfyoeuNAjAaW0hgH4
	YFsqdOZc0FpwaBOT3JO2QSZ3aMTTy/u4mAr5ClK43CPnz/zkHOFyAvxm7TD1IeKKUoBKfFDWE7f
	bvYh4bYDE+Og2dSueOq57edOM61XrZ59uQino6YXHwvrBadR42bJKsC/id4oY4Vc7dlq6tsim8f
	JW5FWrmQWBLVDNQmP4OH5vVhVqnvqRg8Nj8GUdfQOsCqJdze2GYW5BXeObtfVT7B6rg==
X-Received: by 2002:a17:902:ec8b:b0:290:ccf2:9371 with SMTP id d9443c01a7336-2962accebb9mr23577935ad.0.1762336693245;
        Wed, 05 Nov 2025 01:58:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFY7SGw7vKFDRZ8wK5dt7kmgnjUfTG7p6WLL+8hbX98V746oxdTtiwFEDeGrwEoFrtfUnLy5A==
X-Received: by 2002:a17:902:ec8b:b0:290:ccf2:9371 with SMTP id d9443c01a7336-2962accebb9mr23577645ad.0.1762336692648;
        Wed, 05 Nov 2025 01:58:12 -0800 (PST)
Received: from [10.133.33.129] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a3a2edsm54677395ad.67.2025.11.05.01.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 01:58:11 -0800 (PST)
Message-ID: <664b05a6-2f03-41a5-b6d0-e7b5e0b23b9b@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 17:58:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: dma: qcom-bam: Document crypto v6 BAM
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
References: <20250924-knp-bam-v1-0-c991273ddf63@oss.qualcomm.com>
 <20250924-knp-bam-v1-1-c991273ddf63@oss.qualcomm.com>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250924-knp-bam-v1-1-c991273ddf63@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA3MyBTYWx0ZWRfX7aFszTsFjY2T
 ki2n7cl2CJklI1c6q4dqaUYRFBt4hh5iuuqX1EV4V8R224CA0IedtAwdvHLR9kivXaTCThCJNMY
 307KPcs7+zTFVMScmqu99UWQ7di7VRE4JnX8pZmSY/ccRtcdA5Upi8fsSlea8XRlgcOYUNx82li
 kLF2zEjYAwwm+VOQbmf50UDQmeS9cIaCEpmPV6sdAVwoFKLK/z1dPDfWkNdP0ajLMYKhq1/D0ke
 gaRtRJmeEvqrkfIdKbVkqPYQVOb1+BTrrrXtVfjtdSay1W/GmmJkSeH3XpomouUCjQrcsLXVX6H
 ynftSoeuRRv0D+KbCBocUW6FAvyp65+6oy/3cieHWU75A6HeNBWitcON6RN8Nk2F0J96TdPasRv
 msLoSxHEnnpSAefHclN2CWySx4prYQ==
X-Proofpoint-ORIG-GUID: MlxRwPKGQs_rVU4EX9QB3ZNhsrILEJj1
X-Proofpoint-GUID: MlxRwPKGQs_rVU4EX9QB3ZNhsrILEJj1
X-Authority-Analysis: v=2.4 cv=auy/yCZV c=1 sm=1 tr=0 ts=690b1fb6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=x43bjszu3we8RisWIrMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050073

On 9/25/2025 7:39 AM, Jingyi Wang wrote:
> From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> 
> Document the new BAM compatible which is used by
> QCE (Qualcomm Crypto Engine) versions 6 and above.
> 
> Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> index 6493a6968bb4..4e5b6675af7c 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
> @@ -17,6 +17,8 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          # Kaanapali
> +          - qcom,bam-crypto-v6

Is there a specific reason for changing the name format to include
“crypto” here?
It seems the previous format was something like qcom,bam-v6.0.0.
If we ever need to update to something like qcom,bam-v6.x.0, we wouldn’t
require a special renaming format just for bam-v6.

>            # APQ8064, IPQ8064 and MSM8960
>            - qcom,bam-v1.3.0
>            # MSM8974, APQ8074 and APQ8084
> 


-- 
Thx and BRs,
Aiqun(Maria) Yu

