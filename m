Return-Path: <devicetree+bounces-244173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD32CA23D0
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 04:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 749853059966
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 03:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 859533128C8;
	Thu,  4 Dec 2025 02:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GCLCOJLA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IYUsVtR3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C0C30499D
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 02:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764816579; cv=none; b=andIxq0CjcnHgl3/0V9mN4MYjrbfsLW74OQPRHSK+5NqW9LJGMA64PlsgbyJmhhXDd843h5Jln6ABqStZgGYBVLqQanqFaJ5G7cNmI82P1kMnS47SqwNDR/qoEOfDUeh02dFbxxhQ43gaJl084CDzHTaCewO5y7vDqtAY30ll04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764816579; c=relaxed/simple;
	bh=KZvu2EeyWn23SjDJouenWu46nZwWJphUV2VLUfn2VtQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=odynNcLZpP+YYv6HFjRETlGi5Che+v/Q5E2Ge9My2fINOvCZtHLjxct6ShV4RBSzRMpwwfi4t5imRDzmwolECk8IcULOKnIAqudC01KNfgYw8fH/O/Zk12bSU1G2UViTv2323hwHtD88qMdveRu1v2kmcQNpoGFUw1yt1Gg3TlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GCLCOJLA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IYUsVtR3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3J7rpx3123560
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 02:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l18eOETE5eFpQF+4fs95+BgbC2dSm8raFUZecoGWy08=; b=GCLCOJLAfUFmTqLk
	twO1E891y4ojs3GuOZtt8POGpD8LhBeXABIKoBCodQsRz9/OxmvqW5WuM8seycz0
	sX8vihxReWKDtYIolLcIbSP7+5lpYtcUZGN2TFMgEtfRwXAEI/TNWCpR0i0EX/z9
	XWDe1eEn+SVA5PHRAQNLJt7qzVqHa2VyuBQgKnn+hNwDBIy4d+qI0Hpb9llro3ZO
	ek+eQOLJKlNWALvMJPR1l7qODSzhD+lPy46/HCuWGLNR6IFc/wZtxhX8LNqaYL8g
	WoPaiKMo5AebBbjBKXeKBUnLq32q0YnJPyrL65RmDH02bmhs5ZaXH9KHf10tz720
	mv44mQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h154n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:49:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297e1cf9aedso9602945ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 18:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764816574; x=1765421374; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l18eOETE5eFpQF+4fs95+BgbC2dSm8raFUZecoGWy08=;
        b=IYUsVtR32u7kSISCQeyrciEEwY9MFQamCC+IYu8gA9O6RmbNT9MJkDeaTlphw/V4VH
         i10dNJssLFKykSFFHOwGcQoenyj3I2jqmCSqg6HJHNLo/w+vU7lhAVB/rNdJtAsyx9tw
         NGjkKZ0odC53ph6QgPLBIRqhi48s04Co0VMg0Atx84TaJgcS25ADqxHGb72AlMI1QRFZ
         WVfuq+Msxsj1DGcDRT96ZriFaVAeVI3BsHzFh5D7n1Osm0ZP+Cj/dU6szjVJZx39sN6R
         +6wmKrMC8bPswC09QbLErjJvazX3XO0fA3NmcWNr4abAj+TGdAJj4DaP2w23jtGgXNWa
         ogjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764816574; x=1765421374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l18eOETE5eFpQF+4fs95+BgbC2dSm8raFUZecoGWy08=;
        b=M3Kn+3BOs3OwU+Kqd4UcMpfpuCZuBWuDqoezhgqv8g1yeNKfGRAKTHev+NpgZtdAYU
         iUCDxHQZfYBgqZP/yPsmhOyZuecI5yJmZAkn/B9+rrukvpPgwd1Chhg4VneIoXKEPZIs
         rs/Pv/WVwoUkiIH5tbs9yFK7UnroyiV0dBx3P3QsjLwl6aT9SaJl9egT/N+jvCZseKqL
         duNgDNXZc1bZ1NTlkqN++3WLbhaDMYQz5vJzJ4Wm8ZWSfRy7EgUxTkJtQtnYcimPnCYS
         i9N5r7b2F2VWI2jwcO2A+ME7hy2YjAC45gQKjrELsW+MVsE3JjHdL13f2o6fYxVaNe6t
         +uyA==
X-Forwarded-Encrypted: i=1; AJvYcCU5zEgWX99exNO3TMOlx4ci+IYFWKVNN49r8G1bBOxwnnGj+hGjRFdW3/Mnid1dx21sSDR6KjE3oiTn@vger.kernel.org
X-Gm-Message-State: AOJu0YxAnHwAb7I9jHJYgfl8E3GvRyZ/2hmGRoAFIR7jcmCcPv3THp3P
	p0Yaf4Al7nG1wOqnh95nc9Vm6h5fy4NHgVjEcdBjrne1oKwpKGfy4qAx1x8BW/zDz064x4qIIVc
	m4Qbafto1NzwJeD6icW+1aIDhm+ZR3KxW9kfaTAk9mQvcC2AIFA0E4/SbobrguGRX
X-Gm-Gg: ASbGncsO3uDJqSArTJ46kp/V3HuPhanG5ST6JpxggJbM00i1tWUp3kt1+LOxf9rJWLq
	Ycx3Qj/ZGQmx9RxiSi8vqOqm013dIacc0ZrwSjDjTAjBob0vfzlK6Hx+zKriMC58dtGdqH6MTDG
	YQAIDYVOynrZtHKwO9H1C1ASmg9PcAezme/K179pm/x0SiLPgDaK7vVIJp1qCZXlqzUY8EBcKGv
	xJ96JAN11/tGhZGWTugOdUSH7Em9E5mARV6fTGroR7VhsaU95dO3CEsP6dz//t5hEsIwz/hOIHn
	o9MmHEiEdEhpuGfkMD3helzcKQrUTSWh0oCLlygoPjsTYJCCCV9hrboJ8L7SVEK4W39nRakQcw6
	L4r7use7+3Ii3EWiC0xr77jG6pVvpzu/UQo1r9V+mOT/oV83MOwUZXGrs9m7bdeumiNgWfWQbuP
	s=
X-Received: by 2002:a17:903:1590:b0:297:f527:a38f with SMTP id d9443c01a7336-29d683634fcmr54201455ad.18.1764816574194;
        Wed, 03 Dec 2025 18:49:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOXhEDM4lGPiChS+i/tHVgNqoj4qvaobNrbo6Alylr+7d/T0hWbeTiG9c4DjXOLOjZGdHH/w==
X-Received: by 2002:a17:903:1590:b0:297:f527:a38f with SMTP id d9443c01a7336-29d683634fcmr54201235ad.18.1764816573728;
        Wed, 03 Dec 2025 18:49:33 -0800 (PST)
Received: from [10.133.33.165] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cfcfasm2815175ad.41.2025.12.03.18.49.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 18:49:33 -0800 (PST)
Message-ID: <dd87fd82-9ea7-4205-88b2-1af2eaadac06@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:49:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/9] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
To: Mike Leach <mike.leach@linaro.org>, Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
 <20250908-enable-byte-cntr-for-tmc-v6-6-1db9e621441a@oss.qualcomm.com>
 <CAJ9a7VitqEix7dumLq2ND=6+PU_eCkm8=YkHB0n7iHdJ8iKeVA@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VitqEix7dumLq2ND=6+PU_eCkm8=YkHB0n7iHdJ8iKeVA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAyMCBTYWx0ZWRfX54RqIl1gypWA
 RNYSs1QdOf9G6tXjS/1r+GH4fjGDH/lufKrlqTYW+xv/S8p/5cD9BLnN09WPEKSEVc+eubUQYo/
 oauZHI2CWivMu0uZlnRNrTECu8DV4U5Qq0Rffaqht0Y6EorW08Enf8bYa9i2ZUOSFue+irT6Ufq
 o/BkuBkjTSBKPGUC+2KzQhpsxB9xb2EQipi9GOIM4QUTokiXoLYhYSUJIVq7bb+wrglJ2+DSHr6
 fnLTzRAi2D2GretFPu9/osUe4o6YiAehKr+MnzTxrgyKuCCmNy/H+yZYC6Ex+b4eevgaqYxdvhJ
 GkXVSxPFUK4bW0MvkxPwIJnoZEEWUrU3qGZ7Gr57wBQEEl4k4GTfiJ8l6R9WRRanxLpwJMa87zF
 DGHi36oqq7csIImq3UHv1rSeL/NZPg==
X-Proofpoint-GUID: IY488oac_n3NELearSY-P65iiwIhxZ81
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=6930f6be cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=bsiB8u-D1x4h01OLYjIA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: IY488oac_n3NELearSY-P65iiwIhxZ81
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040020



On 12/3/2025 10:30 PM, Mike Leach wrote:
> On Mon, 8 Sept 2025 at 03:02, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> Add an interrupt property to CTCU device. The interrupt will be triggered
>> when the data size in the ETR buffer exceeds the threshold of the
>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
>> of CTCU device will enable the interrupt.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>> index 843b52eaf872..ea05ad8f3dd3 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>> @@ -39,6 +39,16 @@ properties:
>>       items:
>>         - const: apb
>>
>> +  interrupts:
>> +    items:
>> +      - description: Byte cntr interrupt for etr0
>> +      - description: Byte cntr interrupt for etr1
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: etr0
>> +      - const: etr1
>> +
>>     in-ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>>
>> @@ -56,6 +66,8 @@ additionalProperties: false
>>
>>   examples:
>>     - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>>       ctcu@1001000 {
>>           compatible = "qcom,sa8775p-ctcu";
>>           reg = <0x1001000 0x1000>;
>> @@ -63,6 +75,11 @@ examples:
>>           clocks = <&aoss_qmp>;
>>           clock-names = "apb";
>>
>> +        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
>> +                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
>> +        interrupt-names = "etr0",
>> +                          "etr1";
>> +
>>           in-ports {
>>               #address-cells = <1>;
>>               #size-cells = <0>;
>>
>> --
>> 2.34.1
>>
> Not sure if you need me to review this purely DT hardware description
> update but...

Hi Mike,

I am very glad to have you for reviewing, appreciate for your time.

Thanks,
Jie

> 
> Reviewed-by: Mike Leach <mike.leach@linaro.org>
> 


