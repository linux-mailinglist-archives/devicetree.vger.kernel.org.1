Return-Path: <devicetree+bounces-151678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F0A46864
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F9A21886788
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 17:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CC7229B2D;
	Wed, 26 Feb 2025 17:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KpRBqUll"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14FF229B1E
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740592064; cv=none; b=IwTwi44PK1CWP96ccsFdHwAHAGPz1pB8LgbE6c2tSkuwIW2eJmDTtnVpbdyzyAYZ3qjUtejxBeoRvcOLyn2HGSV17P3qxpYST9Lb3w4t16RKxf6T34wnwzYVeUWIfMFiMcyIq4cUNiypzLgNQEFEJLx7euOUjK+mFljyh4TG9qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740592064; c=relaxed/simple;
	bh=yx9HBoyTT64Je0uq82lxBgoaFRfHMn+wHZXRSMyTEQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AnXyuBPmbjHjllT5SGmywfv9unGK5NOgH56JtxVzUiqLbNIa5jfQJsazjRkG5cKu/FCgPcLgZQRXwtWYSYHkusKMVr7IAcsFo9SxYFIuXDnXXR8YOV9s1p/7MgH/F5yLllRLzVaJvIY9HJA28N+VqOvyIHeUlRogWdMOfcFVdhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KpRBqUll; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51Q9o1NI015555
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:47:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6oY1wcKisWOl4v+aKxLtrgUHCu5Y3zouC5bBt02O79o=; b=KpRBqUlldn12lwci
	Yl/kedKoLKajqP1yXSK8mg/Qwv6/xuzS0eZx/gg6cn60a9PbELaNGRWlqojs2oOu
	6rhCYYT4pu4OCdBFHMBFE7kxNQ0lcwKtd4Zz1kwy3S92Q17n9FFK5Vx7E3zUqhxB
	yZEQWGn3vuiv4BG+yPVS/OEc3UjinnQIMbUmwiind+KKP1zESXnunLypNpIRqq+3
	26+Hti3sdlYK7hsBEgIAG+Gdp2ud1zf3hHuT4zrhxHBzAk8QgYRmHzdxsnFHPr8X
	XNXxrbhOt7E8K2IwdHSuh/NoqW07J6b3+4xf6RnI62Q1yzSR51Lq2Ne6yRw+ArRT
	We/mbA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prnjuam-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 17:47:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e66c7e5348so230656d6.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:47:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740592048; x=1741196848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6oY1wcKisWOl4v+aKxLtrgUHCu5Y3zouC5bBt02O79o=;
        b=TbdldwQrkuwODD+P/m4CbxI0WjJqsaobpFEbTj1PIEV7t5AZ94/ybGR4VChSKg9guE
         FdfTeWrZjglf4vg2qr1PpNfltMKtHiz0tYXOZQjjySSsPmoREo+F32p31Aleejw7PZbA
         NXUmYaTPzkrC3j8u95HXd6tuFokYy0bPx8D9Ecw1OrisAsfK/gIm/P11iNZt9OdLJwd0
         5V7huK5LqYGlThR5t/YkxV09tqT/i8b43SE+FGEJlv/A3xzijt6htozMivkYYzr05ctc
         feMbaS7vCfZ6YKwqelqh2f9hGAa7P4fGkzs0VQCocXvz892LvGeXbU2sdhxFHbzym0RI
         PHkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrEeAdO1ki/IgM59ZkKF9oVBZyLYB9EXH9uHTdkDj+PigB4JDKp8nhN+ZQwUKiw2t5OK6c6AoHpIMA@vger.kernel.org
X-Gm-Message-State: AOJu0YzRO0N91DdynXijYb/Kyiatp+dIBr7ApZfHueUyUOZmG5d2KliV
	kgf6oJHX5XgMnTZTBdZtm8lEaUjDr3Lv3hHucdgEIqm8yQcUjVyOD3U49BPEl5mvHmrKta529pX
	yweNitlwXmaUzwH3hQcFn2lDR21HzVijDVsD9NWvwQXa9CZXoSmNTJKjjZ6Km
X-Gm-Gg: ASbGncuizISjoWX7GrjWVtaCSo5IWqtMLt2+UrmXLZ6hsCQgm63g1rhm/8fcu0SyTkz
	zTB6Je8LK8xq228dWYCxHzMgBwpsDlc3xYqCG9nknjGLGtMOZgSyAUVfYWMptg9FZ1Broox4psr
	A+I1JG9EZAAm6d4ZJWH0h7eiGNqU+l82tyzF3/bGiaaanFiaCLOqjU6B7nF7WOinypR80oevwTb
	pK1QNVyUauguOkGz8yByZPOZv4pRoz7pSBuj6MFUko73zRO1Djax3kocccIiLRqE32mQNkmv5JW
	6SrjBxwYOHhxNU1FFAiWlK1/Wg1ZKdM/SvYuEWDVUGNCnRsGwR+Bxb5GpLaIwdYgXOtQJA==
X-Received: by 2002:ad4:576a:0:b0:6d8:98a4:cc5c with SMTP id 6a1803df08f44-6e6ae5f3142mr113399086d6.0.1740592048141;
        Wed, 26 Feb 2025 09:47:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3IU3MTjaiVctOk855G6e4ouS0ZCxqdD/RFoz0LzUHhEO0BvR1rzcfjcWWFGlZ+8n3by4XZQ==
X-Received: by 2002:ad4:576a:0:b0:6d8:98a4:cc5c with SMTP id 6a1803df08f44-6e6ae5f3142mr113398956d6.0.1740592047859;
        Wed, 26 Feb 2025 09:47:27 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed20122b0sm370019166b.107.2025.02.26.09.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 09:47:27 -0800 (PST)
Message-ID: <e2351938-6def-412d-b22b-6f7a7810ce46@oss.qualcomm.com>
Date: Wed, 26 Feb 2025 18:47:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502
 redriver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
 <20250226-fp5-pmic-glink-dp-v1-1-e6661d38652c@fairphone.com>
 <696aed52-7519-4351-a3f6-7b86778b18c3@oss.qualcomm.com>
 <99ed4a61-6e0c-4743-91a1-2312152ccf6e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <99ed4a61-6e0c-4743-91a1-2312152ccf6e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: K3N8XSwNUTM7uqaWQszPRnivaSmnOzlX
X-Proofpoint-ORIG-GUID: K3N8XSwNUTM7uqaWQszPRnivaSmnOzlX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 mlxlogscore=806 bulkscore=0 adultscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260140

On 26.02.2025 6:45 PM, Konrad Dybcio wrote:
> On 26.02.2025 6:40 PM, Konrad Dybcio wrote:
>> On 26.02.2025 3:10 PM, Luca Weiss wrote:
>>> Add a node for the "Type-C USB 3.1 Gen 1 and DisplayPort v1.2 combo
>>> redriver" found on this device.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Actually, please also rename the redriver node to redriver@

Scratch it, that seems to be used for dumber redrivers, I can't decide
today..

Konrad

