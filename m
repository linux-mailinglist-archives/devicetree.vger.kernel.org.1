Return-Path: <devicetree+bounces-252523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82246D00560
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 23:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F01AC3014A25
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 22:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA0D2D73B9;
	Wed,  7 Jan 2026 22:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BPdQIeoG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MCM5LvC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B1B255F57
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 22:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767825415; cv=none; b=FoUKDrkAGxuHU2voKShOs8Vu4AzKkgaqumLEgh6ATPI/MVfcG6YI4L/MUJ+H0hmZ00HS6KP57T3svPk6NMbNYoXnPirs9z3Dnbnc0K0Ec154f8TTfXuWaHZB9oJlstl/rjUd2fXkenoSQ31GwbG0mv13SFRIxg2v9DYCMyRqZ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767825415; c=relaxed/simple;
	bh=zdQPGIU6srXFl2SDsNLm+yfUDwwBi2pK/Cflx35wFlE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VS1tMVQl850b9JU1Hq5vMi8eK8G3WspaBSJ5ZHmJKmB1F0SEKj1AMPUVMDQvSQSRmAtzjbhwLbBZxyj6aOy3ltImJiEZaNQnRxnu38nZsOVLKFlAHh7Lk1A9EHdoPCalKkwkas88ymYwkiHhd7hRm9P0b29T7C2No6pvnwbL4Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BPdQIeoG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MCM5LvC6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607HTV8R3751446
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 22:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s48bYb8nQK4bfh2YY2wiWgsLUCc96ebr9E+hh4fT5OM=; b=BPdQIeoGVcPEiUXt
	hctiBGcEQkXi1C2zHgqkGaLl4XuCDEjgmtc1W8SL54bbjgAUc+lF9WgYNZQ8r0UK
	BdqQ2QkYIVxuYt7r6gp7aNL6YSMuP5N6qcvMQ/osFLHG81yoKO3vD+zkgUIbdYIB
	ED/EUVKyB1VQw5VLl1OV4kTUogKfAuDwtYbJprmGKiatamJ69AS1VvE5uuLX+JAP
	fsJ3DpKdFN8IyUQbtaNkNjRtBPrArmtNguQRaKBtA6aCjLKGH7kesWlQ8kgVB/5g
	2IBw4HsIrzr8YwxfKTPpBAZgvCdkWEU++BYzv+ZnMb5vZxlctmYZ5JRPAASMB8q2
	bKKHhw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxcrvwq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:36:52 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-11a342e8c19so2811860c88.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 14:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767825411; x=1768430211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s48bYb8nQK4bfh2YY2wiWgsLUCc96ebr9E+hh4fT5OM=;
        b=MCM5LvC6kpnaJ6SPhg99wEQWaZ1iUkVxpjtsatf9nr/4NUcdMY+wKJXGIs0A6T9e4r
         l8ZDTt1Sa6jz4ZwamSar+94xVYTbfUTMrJMjJTxb3KHXxSLlbNzXYsoxwVVG6GL08hPp
         0hx/xVCyqfq+SwFH1u4BaRMe3Ai8eiVMRqSMonOX2YsgFew4SwzXwpsz+QDUgUnnowUP
         XLpPrRBHG9ZktYsCxdExTqdP024N2HZIsnB46GRSX7/RIH7t7WjbAYI+KPNMu6WUMOOu
         FTarmo5pL9AFnO0GRk7p1I4jEOtWVMPlk2vGNkWN5LTa5H51BBWg2i/Sg+2YH1wqXCPQ
         rnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767825411; x=1768430211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s48bYb8nQK4bfh2YY2wiWgsLUCc96ebr9E+hh4fT5OM=;
        b=OsWl/lMugNVqe2tRRV9WH7+5//FUi1leqyLVfgi1I388OGACQ7NDkqN0QppiVuu90H
         sitq/oyXKPI55us3Mp9A2dLMxLUxchDcAwCxhxj4QlxWA9GNzbWNfYB6sADuYzpfI6nA
         B4jFmDMrmqutIkMZprA+L0H5nFD2RY31HCkFDghGcQEcYSTUgkfMlWgGD+LXsVdM5KXg
         WCdxzjT4N/P+G2XmHdTkDD8jafZIgZpjQT1vphVcgJdjUmlfabBv/X8sL0BxWM6YPzy0
         4yoEzNX+uxqIB6OD5B+926Aghu7tyEa8bCMDvYxBftR2XKciZdaTxuEkPLsui33MfwPO
         PDOg==
X-Forwarded-Encrypted: i=1; AJvYcCUX8aXtfLzJmfHgPJIIZpLRqjD4D1ZvbBIM6ZMRm68/PQ+9es04uFfelJws0PL7pj6RT37Mh3mTnbUM@vger.kernel.org
X-Gm-Message-State: AOJu0YwMt+3YST0FGQUHlc5fBOJLlhXVOU/HWV69BlRFrCktRecAXQKb
	VQXeQ9tWaTiuTeXhy6YwbVl1TL6ag/jGNuGKW67JuvOFQkDL7/kUZx0wcWfdBM6XC+AIAawk6f6
	/2WLT4tQ5wup5AJcA0QB0K8DhNpE2dVr3ekhC55GPi3/zrZYGAkw/B1hkVpbuFS35
X-Gm-Gg: AY/fxX55kHSuPADg4YtPXPNpC+dKHm8PcU3OQmOoUT4Ue0L/JZpe/u9h6Z4o2uP3FWX
	ufb10EfKjh1aLiuUKic2PdFcfEgg1GJa8v8iU9au8TDzOAea0jlj1SNYdXYwrRA49zz691Unapb
	Smgmos3Z2iPIh2SvplHqKcEWhv+htJV9s0Zy2igDcNfddozhT7jyCYvd5XObDTQoBVRF0/IKEWR
	jG/gzrVFz1fQynOfX5VARSLf4zrtA9j2IEe031iXXYmj0XGtxfvkHFQBqD2i9hHPCrVUeFlxzYy
	H0oqha6GuR4kkgPsOU5zi/jID/cggbVhXYdg4YS4yZks+KzjK00LqTR64s19vvInmZ9tK2t6CwQ
	6CZhwJ1BhyPWWV7EJg1vlCaaQ3E2Vc1JI2Y1BL5WtUQUcWQXqqDf9/9cJ4GhEgDX1uqnZzUkxPc
	Y=
X-Received: by 2002:a05:7022:428e:b0:119:e55a:9bfa with SMTP id a92af1059eb24-121f8b2f7a4mr3355507c88.22.1767825411485;
        Wed, 07 Jan 2026 14:36:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEk+ZDESY2HrWZjH4V5H9CRBBHsFoWUbFbS34q2BtcxhTvlqzPxQC7xNIuBcxIHIxd53WbMpw==
X-Received: by 2002:a05:7022:428e:b0:119:e55a:9bfa with SMTP id a92af1059eb24-121f8b2f7a4mr3355480c88.22.1767825410906;
        Wed, 07 Jan 2026 14:36:50 -0800 (PST)
Received: from [10.110.35.210] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248c246sm11464090c88.11.2026.01.07.14.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 14:36:50 -0800 (PST)
Message-ID: <aa2cca7d-3362-43c4-9af7-94f277b16793@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 14:36:49 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add
 Kaanapali and Glymur compatibles
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
 <20251217055655.638594-2-anjelique.melendez@oss.qualcomm.com>
 <fcb65bmrocuyapp2hocfzxuufa2ttgv7sf4ip72yybbefm65zb@ojka5lpo7iuh>
Content-Language: en-US
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
In-Reply-To: <fcb65bmrocuyapp2hocfzxuufa2ttgv7sf4ip72yybbefm65zb@ojka5lpo7iuh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE4MCBTYWx0ZWRfX4VWDkReWZx/K
 RuNielODbc9YNk0PohQqb+/xzy1ls73CRO3XCXiXhauWFny5sFTKm5peu6yRliqlu+TVEKVMIE5
 fKod52LwxVlU7KrsGGn+YNp0+2oJhGdZkavPe3KN+G3dXXYA254XgATvtzKCDgbljzfEOJO5NVH
 H+/Lexo1XZTo+W6iGIito+wq2mAx8TG4vtNTfAni3UMUCOglEEWFGq6NQJcCNnxH312r22vQ2P3
 gEGz6Sfsb3XGsVdixtuHXK54dWAhRF+eGxk7V3yp3YSdFw59vSJ4Sgn/LwwpA4ABmRA42kj9YmR
 r8JbrFEqGZrv/adM0prN3UabReOwIjrdA+EtcEFWBG5cId+L+Nrm2A4vjvriQb34r6U4kiTzW3w
 Yoc8A/+ysdjNqe0Rn/YB5plI+DRpFDRtQjLW1pCYQQBy7tX+cHxtM4ls0qBBKj+f0vtdh0eKBoM
 eZds7i7e23sT7HwlMpg==
X-Proofpoint-ORIG-GUID: QIxRMNQ4Xrf7BG8YNQmSe3pz4H_Lu6a1
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695ee004 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=QNQF4Q_P-Kout8HRHy0A:9 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: QIxRMNQ4Xrf7BG8YNQmSe3pz4H_Lu6a1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_04,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070180



On 12/22/2025 11:42 AM, Bjorn Andersson wrote:
> On Tue, Dec 16, 2025 at 09:56:54PM -0800, Anjelique Melendez wrote:
>> Kaanapali PMIC glink platforms support features exposed by the
>> SM8550 PMIC glink interface. Document the Kaanpali compatible
>> string to have fallback on SM8550.
>> 
>> Glymur PMIC glink platforms support features exposed by SM8550, 
>> X1E80100 and Kaanapali PMIC glink interfaces. Document the Glymur 
>> compatible string to have fallbacks on SM8550, X1E80100 and
>> Kaanapali.
> 
> But while the Glymur PMIC GLINK interface does present (almost) the
> same features as SM8550 and/or Kaanapali, I don't see them as
> compatible. The protocol is different and if nothing else, as shown
> by patch 2, the life cycle is different.
> 
>> 
>> Signed-off-by: Anjelique Melendez
>> <anjelique.melendez@oss.qualcomm.com> --- .../devicetree/bindings/
>> soc/qcom/qcom,pmic-glink.yaml     | 8 ++++++++ 1 file changed, 8
>> insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-
>> glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-
>> glink.yaml index 7085bf88afab..302b338e7012 100644 --- a/
>> Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml ++
>> + b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-
>> glink.yaml @@ -37,12 +37,20 @@ properties: - const: qcom,pmic-
>> glink - items: - enum: +              - qcom,kaanapali-pmic-glink 
>> - qcom,milos-pmic-glink - qcom,sm8650-pmic-glink - qcom,sm8750-
>> pmic-glink - qcom,x1e80100-pmic-glink - const: qcom,sm8550-pmic-
>> glink - const: qcom,pmic-glink +      - items: +          - enum: 
>> +              - qcom,glymur-pmic-glink +          - const:
>> qcom,kaanapali-pmic-glink +          - const: qcom,x1e80100-pmic-
>> glink +          - const: qcom,sm8550-pmic-glink +          -
>> const: qcom,pmic-glink
> 
> So this would then result in:
> 
> compatible = "qcom,glymur-pmic-glink", "qcom,kaanapali-pmic-glink",
> "qcom,x1e80100-pmic-glink", "qcom,sm8550-pmic-glink", "qcom,pmic-
> glink";
> 
> Which tells the operating system that it should use the
> implementation for the Glymur interface, and if that isn't known the
> implementation for the Kaanapali interface, and if that isn't known
> the implementation for the Hamoa interface, and if that isn't known
> the implementation for the SM8550 interface, and if that isn't known
> the generic "pmic glink" interface.
> 
> So, in an operating system that doesn't know how to interact with 
> Glymur, you have stated that Kaanapali is a good second choice. This 
> does accurately capture the soccp behavior, but looking at the 
> individual functions we're not compatible with Kaanapali.
> 
> If we're in an operating system that doesn't know about Glymur or 
> Kaanapali, you're stating that the Hamoa implementation is good. I
> think this is accurate for several of the features, but the OS will
> forever wait for the services to show up.
> 
> Etc...
> 
> As such, I think the appropriate way to express this is to add two
> new "top-level" options:
> 
> - items: - const: qcom,kaanapali-pmic-glink - const: qcom,pmic-glink 
> - items: - const: qcom,glymur-pmic-glink - const: qcom,pmic-glink
> 
> This establishes them as new "base compatibles", which can be used
> for derived platforms, by just adding the relevant enums. The
> alternative is to add them to the first item (enum + qcom,pmic-
> glink) and then as soon as we have derivatives we split it out in
> enum + kaanapali + qcom,pmic-glink or enum + glymur + qcom,pmic-
> glink. But I think this would be cleaner.
> 
> Regards, Bjorn
>

I agree that it would make more sense to decouple Kaanapali and Glymur 
however I do have a few follow up questions on how that should look in 
the pmic-glink and glink aux drivers.

1. In v2 we had tried to define Kaanapali and Glymur separately but in 
the pmic-glink driver they were sharing the same data since they both 
have charger FW running on SOCCP instead of ADSP. Krzysztof had 
expressed here, 
https://lore.kernel.org/all/01f419cc-3236-48b9-bd51-e7db07d1e6fe@kernel.org/, 
that having separate Glymur and Kaanapali compatible strings but then 
having them both point to the pmic_glink_kaanapali_data basically infers 
that Kaanapali and Glymur were compatible. There were other issues with 
that binding so I'm not sure if that comment would still stand in this 
case if we create new Glymur and Kaanapali base compatibles. If it does 
would it make more sense if the pmic_glink_data was instead named so 
that it relates to the system that the chg fw is running on?
i.e
{ .compatible="qcom,glymur-pmic-glink",.data=&pmic_glink_soccp_data},
{ .compatible="qcom,kaanapali-pmic-glink",.data=&pmic_glink_soccp_data},
{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_adsp_data },


2. With Glymur and Kaanapali separated we would also need to update the 
UCSI and Battmngr drivers compatible string lists.

In USCI driver we would need to do:

+ { .compatible ="qcom,glymur-pmic-glink", .data = &quirk_sm8450, },
+ { .compatible = "qcom,kaanapali-pmic-glink",.data = &quirk_sm8450, },
   { .compatible = "qcom,qcm6490-pmic-glink", .data = &quirk_sc8280xp, },
   { .compatible = "qcom,sc8180x-pmic-glink", .data = &quirk_sc8180x, },
   { .compatible = "qcom,sc8280xp-pmic-glink", .data= &quirk_sc8280xp, },
   { .compatible = "qcom,sm8350-pmic-glink", .data = &quirk_sc8180x, },
   { .compatible = "qcom,sm8450-pmic-glink", .data = &quirk_sm8450, },
   { .compatible = "qcom,sm8550-pmic-glink", .data = &quirk_sm8450, },


and in battmgr driver we would need to do:

+ { .compatible = "qcom,glymur-pmic-glink", .data = (void *) X1E80100 },
+ { .compatible = "qcom,kaanapali-pmic-glink", .data = (void *)SM8550 },
   { .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)SC8280XP },
   { .compatible = "qcom,sc8280xp-pmic-glink", .data = (void 
*)SC8280XP},
   { .compatible = "qcom,sm8550-pmic-glink", .data = (void *)SM8550 },
   { .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)X1E80100},


I'm wondering if instead of making changes to both the UCSI and battmngr 
drivers, does it make sense to just add a compatible for X1E to UCSI? I 
briefly discussed this approach in this response: 
https://lore.kernel.org/all/481ec137-87cf-4448-99e9-4a1477f4854d@oss.qualcomm.com/.
With this we could instead define Kaanapali as a fallback to sm8550 and 
Glymur as a fallback to the x1e

Binding would instead look something like this

--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -29,6 +29,7 @@ properties:
                 - qcom,sm8350-pmic-glink
                 - qcom,sm8450-pmic-glink
                 - qcom,sm8550-pmic-glink
+               - qcom,x1e80100-pmic-glink
             - const: qcom,pmic-glink
         - items:
             - enum:
@@ -38,12 +38,18 @@ properties:
             - const: qcom,pmic-glink
         - items:
             - enum:
+               - qcom,kaanapali-pmic-glink
                 - qcom,milos-pmic-glink
                 - qcom,sm8650-pmic-glink
                 - qcom,sm8750-pmic-glink
                 - qcom,x1e80100-pmic-glink
             - const: qcom,sm8550-pmic-glink
             - const: qcom,pmic-glink
+      - items:
+          - enum:
+              - qcom,glymur-pmic-glink
+          - const: qcom,x1e80100-pmic-glink
+          - const: qcom,pmic-glink

with the UCSI driver change just being:
   { .compatible = "qcom,qcm6490-pmic-glink", .data = &quirk_sc8280xp, },
   { .compatible = "qcom,sc8180x-pmic-glink", .data = &quirk_sc8180x, },
   { .compatible = "qcom,sc8280xp-pmic-glink", .data= &quirk_sc8280xp, },
   { .compatible = "qcom,sm8350-pmic-glink", .data = &quirk_sc8180x, },
   { .compatible = "qcom,sm8450-pmic-glink", .data = &quirk_sm8450, },
   { .compatible = "qcom,sm8550-pmic-glink", .data = &quirk_sm8450, },
+ { .compatible = "qcom,x1e80100-pmic-glink", .data = &quirk_sm8450, },


Thanks,
Anjelique

