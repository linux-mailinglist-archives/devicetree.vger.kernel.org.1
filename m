Return-Path: <devicetree+bounces-236375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA29DC43A39
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 09:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DDEB3B1FB6
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 08:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0DC2C158F;
	Sun,  9 Nov 2025 08:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o/TDAH3j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TfwF6KHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1ACB20102B
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 08:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762677451; cv=none; b=cAjKSs0SxFDN6Yx0jEpy5Z3J2vurMyOwqD1SkXkfKdosmnTFNnQM9ZE5FIyjbcer3E/vA0mI/6zFllFieCckIEzQiLUDI02fTEnlQBw1JT6+BrepEcMV/fYtpu9+DhhrvHfBb4GzukjFEiBPuq8pT+5O8RRtU8ipuDDCZe2FcZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762677451; c=relaxed/simple;
	bh=A4tGv4a+kosuNZwrt6td+1ntnL8Js9JLYGY5ugpkjh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XBivP1JxU2kh1VVBQQ4uEhx/evAoLCkQqiOUMG3guttzV079ACTf1IainXLyoSM0ogWQMj1yRkh3g2OGksLuVOBnN3jWvPT2FW0yusrogQbza29MdhIW32WfKuSSKjgPEYNecd2M6f4lpobVVJWERROAA+nOaxkuA4qL8S++KL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o/TDAH3j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TfwF6KHO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A96cldJ4111915
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 08:37:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5vtrCHIV3tGX/aHdrbiRnkOFgxeHUrk6TNFoRHkYZBM=; b=o/TDAH3jzThCXnWz
	87pGSgmdHvTAPV3D8dscde5Fj1IwSzl4k1up6wpQrS1kKLfTFBNiWd5ZNzp14TH8
	4qcWFTJBq3/oiKiYUu8JlaVltx1ulhNHXYu4lbVZb31HYLP9Ks245f/eaOfsMHTN
	adTSAgunnRtpIs6fovun404uMcEQRx45c3yxBedIwCJoVVcXx3d1K1uBwD6iO+oP
	/qpxl9XjAyO2lXrFX7PqGHo/lwS6N337FGjG4hcX5o+2cciq+/EBr2tTP+z67KoM
	rF1CQvZ10B3glURySEAo2OuyWxMW9FAZM70/7IpR1jj2EfWnO5LIusL4hmrZN/3w
	4txLzA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xuehupm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 08:37:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956cdcdc17so24198605ad.3
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 00:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762677447; x=1763282247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5vtrCHIV3tGX/aHdrbiRnkOFgxeHUrk6TNFoRHkYZBM=;
        b=TfwF6KHOOlqZEhMNaL7q+k2wzOXk4BxetNhOOMCM/Y4GG+tkNBTrR4g2BvF7+qAoP7
         Gu8vfQs8R3x8rcDaHcaiXXpLjFx4nrlynDwRTqyokNQ9NSuikJ7OAERb6wYsZTakD5MU
         M9ddxQxTNwYttzOo2o6ia36Mhg10KxNf48LYQ8U5zwE9yIcuCBHtLhJcoJ0EM0EWgzNQ
         JsqM3XzmQBIQpeEE0oRKPWCxpve8B2AjAQ5zYfTkoav2rZ4WKKCp4P71waebCEp58kNT
         PsNDVwAKv4Kw+SEYH3pdgtfkT5X2fDuSISjS5QK0vkhmyUvATm6VVUFqpTw7d5NDWUEE
         z9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762677447; x=1763282247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5vtrCHIV3tGX/aHdrbiRnkOFgxeHUrk6TNFoRHkYZBM=;
        b=QO6db0pgZTQb6Jr92gDWBJxyD7PlfOmiE7WIhwIlcQ+mri4gfdoXgFSK/DojH21X6m
         P7xtvvMOqrxMo3h/3tROIgqTdnGc22iQzcdJwA38QGHQ18V+b+qD7XEN/MQbaQUQUSV/
         VuHZFnS0ZaqVz0EYtRMQT76yVxzPqtmXJCv7/YeG6b4JSEtUkpYyLw6IQDu0WHbz1N0W
         Ie13+N3sJt1timB7RdozrW5yn2UWbLkJ/yg5rijPRViYGsc6tOXGTwHQew3+rjtPJio1
         YTz3H33NTSMWzLGyn2UDWwglddLUA4+KMGWjdLh+tbqyKw6OMKzoKW6HueFdyZsAEc9y
         lIhQ==
X-Forwarded-Encrypted: i=1; AJvYcCURj9S52eLPUaL/VL/2oLHoy7sbAIV5G0uoOymddBLWg7mHUnZ4F3XOMhhQxOXVuyu4GOwFeiJXrP84@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/XB3T2aweCW/arvVsbCqPpAUx4z37cAA1uJB3MpLvO1sehdKj
	bIaviLS+i9XATbXrTN0QlS3J6ZJuBJ8WnJ5QbwAoF5Mj7YQUQFgOQ97SrlrLQgPxwxP2NYul3GQ
	cScoo8g6NbxwTKH/t0AoVwswc37/SzUvV5VYkFd9aKW9qcxWiJdqaqlZyqCnQhz/X
X-Gm-Gg: ASbGncsEjj+8ZNkE2/NMOGDDom14eMb+e8NWm7LHf9pX7x3wCyavMGxk6REZFvi9YfK
	18Db42YDwgFoqgh4AhLT4b1j0CeR9S1gwctEiEUDOs8i+Lf05gEkqTPub0Pm/QbMTTX/4n0EH6z
	QpezLu3IyrqvX90RIHyqFbuPk2tDWuL7azlPhc5czfX/nDrNqWLry9xJ3WJJQUdrKCEseYlJB7m
	OPSuaU5W0OCzcZjm+hbDAXMH3s215spVryueal15UtPBTOXK+9FzbwIo6cHgS4gAQIrlJCIRKZK
	oaiuOkK9TgPnBW3CEv9e8zQw1CVcKdlNUbV3q2m8/N1EjvCw3kU6MqweRsT+RSS+UjjrBqYjvvJ
	mMuYmWMzOZ4SKFEcYrQOh0PG2h29ffm1ddtwGPdaQuo9ATMOJZ0K1FXlTwvOylYx1
X-Received: by 2002:a17:902:f681:b0:295:5da6:6014 with SMTP id d9443c01a7336-297e5659932mr61934565ad.22.1762677446916;
        Sun, 09 Nov 2025 00:37:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHq71za6tPtpBRE50nvuoVMRlPWw1zs7VbanBMtzoP5o5KupYbs1O/4Jsv4fFrfY2toq9BdcA==
X-Received: by 2002:a17:902:f681:b0:295:5da6:6014 with SMTP id d9443c01a7336-297e5659932mr61934375ad.22.1762677446407;
        Sun, 09 Nov 2025 00:37:26 -0800 (PST)
Received: from [10.133.33.224] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2965096b801sm111076075ad.7.2025.11.09.00.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 00:37:25 -0800 (PST)
Message-ID: <2ff919e3-8bce-4519-abb3-3ef8df06e6f1@oss.qualcomm.com>
Date: Sun, 9 Nov 2025 16:37:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-binding: arm: add CTCU device for hamoa
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251106-enable-etr-and-ctcu-for-hamoa-v2-0-cdb3a18753aa@oss.qualcomm.com>
 <20251106-enable-etr-and-ctcu-for-hamoa-v2-1-cdb3a18753aa@oss.qualcomm.com>
 <20251106-imaginary-speedy-agama-c8f437@kuoka>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251106-imaginary-speedy-agama-c8f437@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDA3NSBTYWx0ZWRfXy31eUBpKRz04
 mXYj2WJHW7e1BK7jwU56JjyVUq/Rq9o9jjFPSr10gwbQuOtG44E0aQdjt/u1AXA2Oq1QZdlyXwd
 va1hOKxQVB7FVfdSUrAnWPvzSyT6U092o6ky673/XjDQF1uDfyzduqw2oIH0dVj2+Igxh+meRS0
 WviYCFMgofazPzmv1SKOZvuL4p8ARvCgLwDNebV14Yfc1e7fBc4p+rfTibTFuYA9a3MF6Qjf06W
 iuvvFIhPB6P3g/S7RQSDlFhjKQEHjqaH45Rti4QWchXULQYxyPPT0A+HY4hvTSNAYmB/d92qISp
 JFXJATC09i48Zj40oJmzhu8HBwn1jJS0JhXTxlqZxAUSUp7QTyx8J1hJCF6EjEki5yDASmhcUEw
 bI9GhIXIgi00ATyo1FSRm5TlAV8iBw==
X-Proofpoint-GUID: h7vpuqNOzgbByqfTVk3ZqZG59JP9MSJa
X-Proofpoint-ORIG-GUID: h7vpuqNOzgbByqfTVk3ZqZG59JP9MSJa
X-Authority-Analysis: v=2.4 cv=BOK+bVQG c=1 sm=1 tr=0 ts=691052c8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5OoSBQWy4bDub-yfWMYA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090075



On 11/6/2025 4:27 PM, Krzysztof Kozlowski wrote:
> On Thu, Nov 06, 2025 at 09:57:25AM +0800, Jie Gan wrote:
>> Document the CTCU compatible for Hamoa, enabling support for the
>> CTCU device on the Hamoa platform.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
> 
> Nothing changes, so same comment.

Got your comment. I had add the dependency in cover-letter. Seems it 
would be better add it within the patch itself. Will address the comment 
in next version.

Thanks,
Jie

> 
> Best regards,
> Krzysztof
> 


