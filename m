Return-Path: <devicetree+bounces-199032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DC6B0F1E9
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C92DE3B548F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1999E2E5B0E;
	Wed, 23 Jul 2025 12:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U8soRlhm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5195F15A87C
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753272445; cv=none; b=olTttmgEaC34bJgFqypNPhnVv292d+cc4IONv91OlL2D3KJV44Xkc8WfVV1LCmLxk4UzeinIO9MrAAGXOBER6rIrQkqA2mhC5DjWZpuUbjG65OQbO2eaQ7zRSgR7HV3AH9IWEq4FxqQeb7qavMR24FIlNpbgd1EsQUTPQjonMUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753272445; c=relaxed/simple;
	bh=l7h14Ukiz36WSUCzAfQ1B5MfKsDmhlXkecfI4fzWztY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ABTyL90qIjGqEP8csYUWKUlyS/6+2HdYrzw7C93RBF7WQ8ZVLOWigWzO5KBXzaOQrl7GzeacahDn7zV557Q1btr7A5U7REyYCtBAKZFdBYI/ydlsZIKAmU3Lpf/BQePO59hL9Gzoekt5fis+NC/ZR0HUCIRggr3TafrNCmfepNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U8soRlhm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9TL2S007909
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:07:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ghA/VS95zinQDHhXlbeITIgaSp5qFlupk4F14AhAmp4=; b=U8soRlhmuc1ef6CV
	mN/IJvlU8ogmLUzycLeymbxpm8aJGHje7tKHJ14C0LJO4kWvYXZ2fvhfS+HV3KxG
	/C8fEavtkSA/3atvmAAYZ0B+dfk95e1g3cLR4He6QqaVV7qrkHpPjTerEGjKu2QV
	NRIFYw0p+9btI2HiIq4YKnUAFnuzvqE4CInE1T4eVMNHkcfJtUHqSQqkwwySEvE4
	RdzWKb4CrsgBHey4YPHCMH11+HTPkyJrujhKojLqJlg27EKjqmQcPrDYaGJ7d+cx
	06BCukdIDa/ruZjxvbYlhHTH68jQklqrAA0GQZYDObw+9WwnvDjwmSO3xPKfHh9x
	Zhx7oQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hu2tn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:07:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74d15d90cdbso5702193b3a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 05:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753272441; x=1753877241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ghA/VS95zinQDHhXlbeITIgaSp5qFlupk4F14AhAmp4=;
        b=Ido9j/qHgc0QGLdbBr9+LNeEdYhOn41U7ULZsA51HC3fKjJcuOTBf1htj6PY9aXAaL
         AypRfkUUfpLmHz9WkhHSnblHYSdvNdSR9QI75cLUABQECYgtBsWY0XJrBx0L9xgD8YSF
         caRV2ydnm9bv2M2fbrInytma5Ob201chpJFnFnw71KxEEZGYIha+CnKVdSMW/H+IKPrR
         j5ytS/nbLaAV4bGRzbl7oOTgy6UUJ3pvj8UtUj+qlKCJcSudEMBwysCIet7SDsmyJHE4
         5vUKUT/emNp+lvW9PXoJTVvDJ3ruzSPG90WUw8fwl+JXjzqCXfMMUUT0xli1ZhLGJGBh
         8Utw==
X-Forwarded-Encrypted: i=1; AJvYcCXEEw7XWNykM4cogpUTPJ1y6ennl/Ke/9DKEgcPIwNWKKzE969HQK2NO8Hj2dd9BXdOTQHHIE48b161@vger.kernel.org
X-Gm-Message-State: AOJu0YzKvgbV6CgveN7dZ0MDggFxphgO3HeXNxdShoyxMJXnOkUs6wnr
	6uO9xFHzlVDUoO41kqAec2xHd2O0LwasZldZlZsnNhMTlyIMRM7+YUuQ79ZvVMWwJGXICKL7BSX
	ldlKoKeypHQNbDQJhGW/vdKCdL2jPiqk7UkzybuWhQF4C4hrcWjODNFIobEQSCp0y
X-Gm-Gg: ASbGncvogvwyZwGxtuCnWzmbPuULXnB8DZIw6NztHSEEnt8sjxc4iFgAn3tteN0/Se6
	pLARq7hxcoD5g/+ki5zCRIPoCHcty5FEAppUQB9g+mpjuYbCFsbIvZ0bpp2rmgVPUnWZmuiTI7v
	jcMFx7Wcqb6YsGff/gOQ2DVzknB+ioyehGPN69YtA7bjqRjo+sJ6qS5/mtIn9zNaJacRDA8/MG8
	8PZMz9DCiXpCNmatTgo032C0TKycUYvRfU1BM2upGJJPRJY3ITOjKqHJaGJfbB48C0KC9J7p1Fh
	zp7i/eBTBZzTFd+9ad87Fxy4midgVEneFD70T4ZCY5iXCArdRxEUqcwf9IeDfn7Q9bC/AofjXNv
	Qu9sIluHwLM92EOZmqfREpmB+w94XXTqLNMYQBk1yZ2e7j8u6tVrlvg==
X-Received: by 2002:a05:6a00:1909:b0:748:ffaf:9b53 with SMTP id d2e1a72fcca58-760353d5d08mr3999943b3a.16.1753272440647;
        Wed, 23 Jul 2025 05:07:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUboQ8jvgpdXbLokFYRCm9swkz+x1eIWhQBORpRgtnNTRDZV/f+O4yVxWhMrDrPrbssQecVQ==
X-Received: by 2002:a05:6a00:1909:b0:748:ffaf:9b53 with SMTP id d2e1a72fcca58-760353d5d08mr3999895b3a.16.1753272440071;
        Wed, 23 Jul 2025 05:07:20 -0700 (PDT)
Received: from [10.190.201.48] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb155e25sm9630984b3a.94.2025.07.23.05.07.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 05:07:19 -0700 (PDT)
Message-ID: <d31c5e0f-dc50-4e7b-bd81-256269c82ec3@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 17:37:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
 <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
 <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
 <d37879af-a1fc-41d4-8e31-2abba6fd6d57@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <d37879af-a1fc-41d4-8e31-2abba6fd6d57@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880d07a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=fmhopZmm7R1C_NTn11oA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDEwMiBTYWx0ZWRfX1OIwhZtWPVBX
 ifbgYvHF1a8USw8QrpDC1ZhX+7tp/q4ZvZ3A5q9ngJZJ+GWhU28fnbtnAeMyatoZAIARgnWqfxa
 1ZTmZHgaD2VY2Y1q0cTWaE9xDZ/ntxNLvqzKPuuer+hWVKI5IAp9/EKP8bqxcS3Vv6f5zJvFvHg
 OLZonxCrudT1QRhpTZYTHGFL4sq1hcJn2XjlGXBRk8isJOH2OdJQXxQChhL8TvrLDGiMa5J0MpX
 qBxO2u7uMnSm+mu/TG01wk1xjRYpvp7QEF8/kcGtCCwAFh9XuduyAMmsiGNiwcdP66NZXh5wVAa
 G3qGZ7IvD1s/xAHRzjm1RhLem7DrlLtD/ea9HCzbNCr4NmsrDDu2XOOpKRpIhRXo+kUzouuC2Lp
 UR3iEVL0AUcWVlM58nvxhwGTK3qxCASwd56yRldtpMKmwBm4+Z9umMkJj7FULkoCLHbonyWI
X-Proofpoint-GUID: b0fW5UsdyI067mF08icMPxmMPIPXalVi
X-Proofpoint-ORIG-GUID: b0fW5UsdyI067mF08icMPxmMPIPXalVi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=845 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230102

On 7/23/2025 5:25 PM, Konrad Dybcio wrote:
> On 7/23/25 1:48 PM, Pankaj Patil wrote:
>> On 7/23/2025 5:10 PM, Konrad Dybcio wrote:
>>> On 7/23/25 12:36 PM, Pankaj Patil wrote:
>>>> Add DeviceTree binding for Glymur SoC TLMM block
>>>>
>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>> ---
>>> [...]
>>>
>>>> +      function:
>>>> +        description:
>>>> +          Specify the alternative function to be configured for the specified
>>>> +          pins.
>>>> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
>>> Any reason for           /\ to be uppercase?
>>>
>>> Konrad
>>>
>> glymur_functions enum members fetched from ipcat,
>> this does not exist for sm8750.
> I'll repeat my question
>
> Konrad
It's in uppercase because of the way it's in the driver,
I'll update only the bindings to lowercase and repost.
Thanks

