Return-Path: <devicetree+bounces-248977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D585CD7FB0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 04:38:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 29EF1300BF9B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 03:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C982D5C97;
	Tue, 23 Dec 2025 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gn65uiMJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f8BiCcLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACCB2C0270
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766461113; cv=none; b=AQ+iTH1QunB6+47+LOCR44PVhht0V6gwS6FEyVaUsa03o+Im8OIgvzdYfdTTjs2ZSQEkO15hHEAbUlbzc75wCyAKVNNSN1A8CzHSQGBYajh9B0zWSCbnPvkwlv+aGOTldgz2JHE8b1H3xaa7jKK9bWhBY6hXcUDylBk9JldCpxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766461113; c=relaxed/simple;
	bh=IDq73ccTpwQ6XWUhUvSMHfGIr9CIN5j4KuGbi1/KI/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SiudVdCFy7qYmJHI1gdW2mOBghjh09MKs+68Y3N3cfF6r+aBpAmkIvWQRv+Yr9yBoKWxzjbfbSw/cydgbOMQaYxFvnbSX22khc3p2jIfGb0os5bzptf4Ar99JTqLNyrUNP1vNz9YR1FFaIptirLGrX888L9rWssWN8tkuXv2YzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gn65uiMJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f8BiCcLB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN32CEA1894831
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IDq73ccTpwQ6XWUhUvSMHfGIr9CIN5j4KuGbi1/KI/A=; b=Gn65uiMJMnAXpLOn
	F2ITSd6hUanyXhymbt9xqXNdg8HR0mPScWMblCpTNk5JpYLJdrOa11TUiuf97CyS
	rwowaKBjG9mTDT8S0gjFkt5g1vWZD8i0BOwauSX5fJcvEtiKgjBIVbT9L8LFu5oc
	xSvsSKs87rw1wwMo+uKOoAzS7abtcRMg538jUKZ7Xtji9relBW/Mkot+/Xp+hK/R
	0dHDgPmI1JeeKgMYPV14JBM0PPfMYkNuUsWYlMRsi77GMJLpDaD99a3emPfK3YQN
	Uk/0Td69LyncEFPszAqPkvznCCqLLvWNThmpxDwqF2BOxDvClAJRIiSIU4zt4bdK
	J6GsVw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b74tajd2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:38:30 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7ba9c366057so9291519b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 19:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766461109; x=1767065909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IDq73ccTpwQ6XWUhUvSMHfGIr9CIN5j4KuGbi1/KI/A=;
        b=f8BiCcLB1YaZJd7M2cbWaqXM0u5MpUPM7nUvtWCOe/DCz4u9mvI2XWikAybwDZnjho
         iO3ivri5edkrHiVxe8liPGWSQKd+AEZPKEDJZPMhIvkunPNQyvij5NJVfdhE26C6POEd
         GTU6+M92cvV18jjhdsRPVzq8BdbZBfL4JMAV9U2DeDdFiDEU4HnMBz1LiyzNec5ygEXz
         mzBdL+q66U8kpNSJqlpGCLUVe7+eHnzuh3uCpAb8tNrEGmlM2j93QdaMsHhNC4F3M8yV
         oUkxYMzX4qiI/CaV7uTEW4JF7k8XYtCovx125zSTX33cYRwxsqkz+P6y4Cj9uKbFh+ju
         wrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766461109; x=1767065909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IDq73ccTpwQ6XWUhUvSMHfGIr9CIN5j4KuGbi1/KI/A=;
        b=YJtpRKebBaNtfWtzJJ6JVm+ivpA5/tvqC2hpqoXcv23RBELB/mihk6eIF4kD1ltS05
         c6HmjBSD8hreo+6K9N7WJ2/NpJxvmRIni8auFibOXDdwthhUsOBn8CkB5d+qQkXFF5c1
         5dKl3M7qyVRUPeCcpIlaNBGQKS8sSXREfEKlavmiprlbE8Yl8KnHMAI6y3CSsSXb8ni9
         fhZh+0Zu5+1SXjyOFqQBGSMySSMwugr+54Jct3PCPLWwoOIV2u0X787fR0BHwupj8OgM
         cx3VicAaxLFs7sa2MvXMhL8i32CHlLDAYfbGOoitJ0e6NKuTeeUrXXMLuj0mEW012+Ag
         qbOw==
X-Forwarded-Encrypted: i=1; AJvYcCViNlrhcXGEO//Sy1+B4uRZy40ktcnpLObecamIVjbXe34KYyjWQmjCFVKWUiaDaHmZtp5CA1sZuzSa@vger.kernel.org
X-Gm-Message-State: AOJu0YxrGUOqUQgQQN3Vv7mjk8W6FhauIZdtT3Bncu8IdhA9bpDRBToO
	yXZVin4B7kRMag9yB3CPp4+7EGtu611MNs9qR6eHH8mN28yH0G7XKlBiXj2EKbp2tZNU61wX2To
	m3sOhqjo6YJWbg+H5WKJ51PhNST9k8Om6YScMy4CL2h4cQj2ZgBWs1VaDAdEfnkKu
X-Gm-Gg: AY/fxX7xVbyC/e4GAj3roStNPQJFEFbdcPgRaOb0ruBsBlsmkdQdob1/Wqc+JYeOOaz
	Xy9J7dwBopW7aNr5kewCC5l/tFISU/8nBCDa+DaXX5hQWHXOiYaaLUkBB1Li0WXADA6Du9d5KF4
	UUjSpiVK6mdmjcFPGmi/n13QrKxWq5CmrZb1+J+BDJyMTwEvT6oX0zPOZKAeulvGZZUgybVzqKp
	7fh3hyuRCirOr3AXFXBp01Q2IXOmzR9ps97t9ShRGVbvY4zo3ij22pDrqLX5vKTnwtUDw8XLNX5
	IkgyeT0bmcka1LCBqx3SXxtqk7lS1PQfrnTxem36cGiKSex5Db+FXseVH/lSjy9agsy3jlGK/CK
	3f6tBgHCA5GUtfd81Wl4Gd8TYb5TuJCVZOJvac4fsX5NKOn0+avfp3J54Id9XWzNuTAVshvBTB+
	M72Wxwfg==
X-Received: by 2002:a05:6a20:729a:b0:344:f9e5:e9a9 with SMTP id adf61e73a8af0-376a88c8ef6mr12029201637.18.1766461109350;
        Mon, 22 Dec 2025 19:38:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqRk2EnrTmj79tngAq6qJVe/JAzZhABWBhAUuv9ff+6Ku3qT2YNjA7rpd9300zYVMhUaazWg==
X-Received: by 2002:a05:6a20:729a:b0:344:f9e5:e9a9 with SMTP id adf61e73a8af0-376a88c8ef6mr12029186637.18.1766461108905;
        Mon, 22 Dec 2025 19:38:28 -0800 (PST)
Received: from [10.133.33.219] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c530f72sm10298321a12.29.2025.12.22.19.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 19:38:28 -0800 (PST)
Message-ID: <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 11:38:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Krzysztof Kozlowski <krzk@kernel.org>,
        YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
Content-Language: en-US
From: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
In-Reply-To: <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=DPiCIiNb c=1 sm=1 tr=0 ts=694a0eb6 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2qjAzDyWvdJGPxEKtWQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: bY_D-CU5waCM93VJJlUCJO3A2MUYR-RR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAyOCBTYWx0ZWRfX240idKsUVDKT
 af+fxK6s4NsLkumKeLZXW2dFtrJPHRdWyoWsMiqyQ3Zc8jkSaWxYw0F5U5bEXsD76lv1Jy8yMZg
 xHN88u71zE5Ql3BFB9G4jng6WK7GpLsaW5xFYlTPlAu8HByYcBoCpk6jBFlKrsN05yLJyUWkyVM
 bGRpXRTGxfyYfOyVxoM0ddAUcaO5xDE9K9j2t6RdDe76YwstbZr0u21q9ECQ9SYdIxdwZZSXn0q
 VLGOWwOcltV1cdhLA6aucqeEyE5BSjD4KBmL8jSf3dKQ8Yi8XNWAltTVvhzpfRfKcYLJoRfDAF1
 ivw8nbPcviJtqEqQhODQcvYWmMVLbFLrX3vPF9JEqPIJDzRly7knQt/1tRaSarsq82SKyWIyZnx
 1pdZiYWMCpg/MnsWPsBgRhL0PDfMZRi1OzqNmTKF8tzMD1KIrDDu2qfGxRR0BNo8XaSh458gVw2
 MLXuLkbJTRdKvikAqTw==
X-Proofpoint-ORIG-GUID: bY_D-CU5waCM93VJJlUCJO3A2MUYR-RR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230028



On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>> the common components into separate files for better maintainability.
> SoMs do not share actual hardware. DTSI does not represent what looks
> similar to you, but actually common parts.
Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
has Hamoa on it. 
> Best regards,
> Krzysztof
>
>


