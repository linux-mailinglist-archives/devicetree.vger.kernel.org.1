Return-Path: <devicetree+bounces-257209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD3CD3C05E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 873B54F63D6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB2038E115;
	Tue, 20 Jan 2026 07:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTtPkhIP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bHwTrMCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A5138F23C
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768893328; cv=none; b=apulLca3tS5+dm7eDx8Ad3qvgSNcSUxCYGfViDW7h/fQYQjHHykItYpn0z72vc1518d8qn97ze6c3lltPRkrOvL/N4RO78UqTXjJDvVL3/DZj8mx9npdgFBlPn4odOu3DBuQXvjnTKwt/h4OF3jhx1hx2h6Z3lY0LJhEvb6uZuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768893328; c=relaxed/simple;
	bh=fdWX3blyu20K/5ybDJkaMz6YkTp8JgjkYflTGmFz5VY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YA9uK+4qbmWdoGQw3FY7kIG/+vhL+E0W6oId+Kup5qUF3ZyEQcPiwxFW4nWyGUZAwz7DpJYuIiPFWL7sAGHsXOSTxBhRRn+AW1vo/duLWHudK3aKIfWw7RjG5YUHDwzWsWgCpXJEqYKh2VwHQ2rgaIaH6LW5NYiu7LY8G/WGCno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTtPkhIP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bHwTrMCS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K183NW3365755
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:49:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SWUV70517N/NjH3RfBgQSOZERAP2WMEQGxBpe2gg57g=; b=DTtPkhIPY7U81hHV
	74q4caGWHWFUpa/FDO0a2Ptmiv1eQYJ65+L5CQGiyhWqcaFV3LuqpbmPBYAcH0Ig
	n5YaCPYJRMRab+Bv952uW7rcMDou9wn3Ccb4AqWoMvkLut40LbnoGkbMBvVxw5Y4
	6vdokaDRlhpDmwyPrHvnZFetZm7XO32mDktClCSZxZli+1cWi1781c7GLx4beUg5
	j+Ps5EQB1M1StwwdBkh9eEXFyZm/FRAPxE1QkXr82XWbp/S6/01kqqdRTcJcGN2J
	5ONXhda96ulevmpa0jTRW5Kp295tF5HXbTxHYfTJOeU7hlrVyK7Vj7hWy6Q9QOVA
	itP8cA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsysb0u0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:49:40 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81f42368322so4366300b3a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 22:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768891780; x=1769496580; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SWUV70517N/NjH3RfBgQSOZERAP2WMEQGxBpe2gg57g=;
        b=bHwTrMCSc7/33O52iNtPUw94318E2edfZUvLp0SJYlQYAVq6n8V9zMH+0dOx2eo0dT
         J5dSIpRRtrWNMOhNeoFBJQ7lhyOpiwhSH6Q78NcdtAKC8VcPppG7XoPOW8EgjE9KqdX7
         Ha4KJlbFLpOpuS9fMJr2uH+bP2vk+oVCcpHScqyrsdSm9nRpc8tcp+27jfGQUJ7owFPZ
         DcydAwVHXjrwY14/vlovP8pRpDZ3bESEr/qaxN4LV1JHbZSbxBmr1qUtyQZH0MagPqRt
         2OU1Ve0WHug8G2pWiFMORzDCxboT3PUQjeRXNOop/wJZbWn8Xg4yx7tVYmJrqM3XqCxW
         o4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768891780; x=1769496580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SWUV70517N/NjH3RfBgQSOZERAP2WMEQGxBpe2gg57g=;
        b=KOVHMCs9W8suscrIiZJl9Utg2H2lgjoykaKdN5oRDxyupuH4MNTZC3/ts7YnkKC7W5
         GI8ZXQD9Gj0vwzy5+g84b3oX203hYeQecqvKLS7pWYH2IZDfdK0ET6300YvXt52Lb1ig
         8SQdpWh86JZzT1EKUEcsbGYn9Gu0h1QjSjOJ5xED+2uf869ngNgX5H+K4Hc2Bd5jRJzP
         ov3kEk6vc6SkToDmgG+nj2UZcndDV8N0/TQNFBXW8brSXpruQjoBWelNqkf18MV4eKAg
         UZS5mEOqbg/rP6GzOP38GoAkRFrjpq7fsBEFDeGLtkaIYSwMcXtU6kLT0qkhdwh26piZ
         QpEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDF+LBL5NCPbhzTlaEeCnHWGucUv3ylS7ErglbMVTAiWhhMNMPXmG4jeh9AZjiQRlDbePJvnph5LEm@vger.kernel.org
X-Gm-Message-State: AOJu0YzCKycaVuvXLyIiSNLDqRugkbMPi0rCzFsugmfvwJlh6Qfvy02M
	dtvok9WIbjyA3nwx9hwEIldbBrtu6ZKfQA9fyzmqTcdW8+s3Wyt4XozH82zi/IGBUwAyQE3JC3U
	4jsolq+ItrS/e8DdOmgJrhZn7Ldba1/1BZ5i8xbn+GRMSsp4sKm0nc9aTKiZ+PF8J
X-Gm-Gg: AY/fxX4NJ6ffBPyrykzRla6xvuN/SzIQ9DCr2On8HALkC55ZoTYgDOZ+8/9R7SnqrES
	RAxU6Z3sCl7Y+PCyV9p3A+LGPOmaebq5Gcqp8xKvuksnocb6m5+xR8CXnJwfMLS1RflWIJzLEKW
	Y7NTkGfH3eNCAz0VObhZX7AfLeTZAnZFiGcW3sxraPNCTjgPiGf7YlBPzCIcpQquO+27YlKqqOq
	+Clwd0lNEY8NhdECwBcbC3BStdAgfNiI/937IR3pe7U0FL72Rp1shJ2QWRaH8Kqjrq/7tzppO2v
	odxv/LtNQMywfrdyO0/HSVulwBgUX6rfznhZFLAasyelkCDFckSQjL31g021Ix18a0sQIO2b9ny
	ZRFU29rnmsCHGedA98ONqcswtHM7nlh8iDigvcU9TlFEafW5EbrtRLb6FGo+reb+DZXWVdOAhhg
	XR0EE=
X-Received: by 2002:a05:6a00:1805:b0:81f:5acb:55e5 with SMTP id d2e1a72fcca58-81fa1771fdbmr9503392b3a.2.1768891780065;
        Mon, 19 Jan 2026 22:49:40 -0800 (PST)
X-Received: by 2002:a05:6a00:1805:b0:81f:5acb:55e5 with SMTP id d2e1a72fcca58-81fa1771fdbmr9503379b3a.2.1768891779584;
        Mon, 19 Jan 2026 22:49:39 -0800 (PST)
Received: from [10.133.33.151] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108c23esm11121555b3a.8.2026.01.19.22.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 22:49:39 -0800 (PST)
Message-ID: <ba0f5539-011b-4778-8025-16950f5e5a62@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 14:49:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <d15bbe2a-a88a-4a88-a685-ecd4f058c3af@kernel.org>
 <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
 <0cb38b14-13bd-43e9-8dca-3d78afd62a28@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <0cb38b14-13bd-43e9-8dca-3d78afd62a28@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -pYr85Vu3nAA5pVhowMeIqQFA7YIKeNy
X-Authority-Analysis: v=2.4 cv=XJ89iAhE c=1 sm=1 tr=0 ts=696f2584 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=1ir06EIKMARb4SxFNewA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: -pYr85Vu3nAA5pVhowMeIqQFA7YIKeNy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1NSBTYWx0ZWRfX6kyYlT9fAo0A
 Xa3A/q4XzCCKKj9dv9LXpugBR4KwgonLguC+I9b7pTQllb8kIlBrCKz5QjKpC2OlrP4PXyIw/fe
 /u7mS9GYEmLeeETVmgxasEbM8odHrSS/JFXSYpcR9siu5nbgPYwmIaEgSxCBiRsyHmlyqfufDqu
 OKmKCgWiT+DLOsnZEkzKmvWgOpqdtocvebXj78+1aQ2ZCBl0k8+DBi6Yv2XYRrWCEePBq38gRif
 j8JUhfG1aWYOWBka9HCIjYS01nJuNK62X+gBdFixZsfUtAwe1p5fkwgUI35H6mBvu4JXMarjGJI
 ZOoM0D7TtUY7ep1M7MZeI6te6vGDav4WIMVHnrbnpzbVdN0XJSkKY1VlNLwSjejBOV44Dp3c7Cz
 +XlIkyHklXr6RWAVLvmqvxcfuVUJPL/RUWRF/+NiB7uVFWHrfu/83QppmuRRAIo7l6lBjzOQU+O
 X/VAKMV2xRPxiLaNMYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200055



On 1/19/2026 3:05 PM, Krzysztof Kozlowski wrote:
> On 19/01/2026 04:13, Yijie Yang wrote:
>>
>>
>> On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
>>> On 16/01/2026 11:41, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>> embedded system capable of booting to UART.
>>>>
>>>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>>>> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
>>>>
>>>
>>> NAK.
>>>
>>> Warnings were reported at v3. Did you address them? No, you completely
>>> ignored them, so warnings are reported again at v4.
>>>
>>> What do you think these emails are for?
>>
>> This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
>> introduced by this patch set. Since it does not impact functionality,
> 
> Your patchset introduces that warning. There was no such warning before.
> 
> My NAK still stays, such patchset must not be merged.

This patch series can continue to be reviewed with the dependency noted, 
right?
https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


