Return-Path: <devicetree+bounces-200416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F01B14A3C
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:38:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45CB71606A1
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 08:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53FA3285CB0;
	Tue, 29 Jul 2025 08:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yqnr8IP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED37285CAD
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753778288; cv=none; b=RJUQZEpbscM50em6L3FsrIKu+Jdchopb9bMF4n7WUtnNhGBhdK/DlfjjuJmbx4DF+j9pnUer+mUvB+Q329Oiv6RPNcyAmG76+OOIg1eetvoD8oMK7aC6LDXPUvI+ctuUssysYodkQ3YKv4zSkdK6OUQpU0Q8fpSIuopuSZCGLsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753778288; c=relaxed/simple;
	bh=2CKRoTOlakoVAgoUoXVDppdXBBkLdTwPeVGLg7uldsM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sY3+facyBS3STFDxDuAitAzkp9AT7SLjxJagjuAcAc/JSyElS79QDXf4pv5v3jOGtpQdOdIprnw9rwZexOjDt0KMk8jwFuvsSUDYwlHz2JgKIX9NADE+9y6+p0whGHXsW/XDtO7HnilctgSwRPzdXmDdqP7cv/aFqOUK5LktsiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yqnr8IP5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T02vUI018846
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:38:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3gghsUYc5xKakDXh6woUpeDalKj8wf6qzVK3HfipwTc=; b=Yqnr8IP5tQmqwuCH
	8larnZuta/+U8dsWfNr+tyBYywiAoB6ITRP0tVqG85kwyRZmvpi0zjxwbrk3KSm6
	ecHaW3RSWIX3zFf6TsnRqajGd8a7Zt2tKA9QExLceoSyogqmIuvdpU7LUdZNY9C3
	9+xfAaHqz9hPRmzmj2ZhGQHr0ju1cfU00qTfIeiJMF96sGkXi8bhrkDakDXm73mh
	qnX0OcOBXruC731vuCZwtvGeD+w0WylYAY4SwmIWG/cz/H0SkhNBU0KZyYMukbe9
	3Uqcou0jmE5huLEDkDyhxwNKlEL75SFJ8r8ICY46L7Dmhgx++YGLHFGxCKFCTq5F
	hRDAPw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2fapj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:38:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab3ab7f74bso16671341cf.2
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:38:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753778285; x=1754383085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3gghsUYc5xKakDXh6woUpeDalKj8wf6qzVK3HfipwTc=;
        b=n/aXLhuyiIPcLhYSuo6FIARIsblesWRziFEYUIj3jmRYy1LPfDt1i0wtJjw/nfPZo5
         DEU4jwbCp2M9NVczZp/PJYT1bdmlY2KCbnh3ZSTMZYkAx9N+Rtc30ochpflgy0P6E5S+
         AmAY7/iFiKLlwGmBSPHcREUktDrIJHaPnsJrkqrShAo3f0vr3T04LXJmBgg1RXkukhJy
         eTpPYb1miTovCP7LZ5jui8lTBeb5O6DfGsRmvQgeu9UCL6KHZhdlF1oXk0SCvryA7GGa
         uZ1NDhrdnEO8A53Mrm1+QPXKjlVNBgcwgdjiI8fLHTP4RL5x5vjHPfDmOeUQd96F/UtX
         +Xxw==
X-Forwarded-Encrypted: i=1; AJvYcCXJjr8zkYJu/XmzkQb7/9o8SZfKB5gkPh2TNp5hgq7iyY0mjxtUr2o3ZcTGBIu0iGhsO6hLLJUwLwBA@vger.kernel.org
X-Gm-Message-State: AOJu0YzREeAZzgW3SDrn7iltwOxSyuCzdqNbM6To2zfKi693flgRGbAB
	LRfSLgsoEF4Dte4czKJ0jaZKthMya8GOtJ/zLVXqHX6J+COjFKqSWOaCx5FedY2wzAQCuHB4cne
	901j82taqpKUEtMPDC+PVRhZjkX+YgAPbvg3OLimoVOkmczGLKD99/ckEFMc+mxPv
X-Gm-Gg: ASbGncuT+Is4hyFHkUQZbJh3vzr5eToyiaKg8kWDPSYL8G029AdZ168ERglmzBvsSUr
	Rt6/h9YY+1kd9yQ48A9v5eajNkmFvv3nUAoElSyY7riKxOtuUDJ05BInTpTwsOyhHPQFhbP7ci9
	JseVRIyeUG17+R3DRAVTRAWZl88jtWNLE0zXx2oJUefPNU0loaqrWjrMkiYA1qQU52RlhhFH6hL
	8qQtn6ZP+ed17dXcLrXwx2tOUsWtxGzY0LCe2sfu62ISlHl315ThW4nuoEO7D2jayJ/qyEUbSCP
	nZvSfruh/Ctq+4Mp0dKhtMvmjWr7C2aEY0+ztBuwAqHytZn2LFokHtbzFBsAKP/A9iD6Yc41fvE
	Q0VSOZLjzcaArb0JMuA==
X-Received: by 2002:a05:622a:4d3:b0:4ab:23fe:a743 with SMTP id d75a77b69052e-4ae8f04c25bmr88572441cf.9.1753778284765;
        Tue, 29 Jul 2025 01:38:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFk+8osi5NjoyJJc0sozN4PRSplo5UEsJysdEFgi1ECjypp4pJyuHqbEQ1g7FkQEOFLo3MQA==
X-Received: by 2002:a05:622a:4d3:b0:4ab:23fe:a743 with SMTP id d75a77b69052e-4ae8f04c25bmr88571721cf.9.1753778282010;
        Tue, 29 Jul 2025 01:38:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa21fcsm557954666b.95.2025.07.29.01.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 01:38:00 -0700 (PDT)
Message-ID: <d14b2a0c-8304-497f-a662-5b93dbaaa1ed@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 10:37:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
 <20250729-hamoa_initial-v3-4-806e092789dc@oss.qualcomm.com>
 <a6456802-3d19-4da5-a995-c8f00553c7fa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a6456802-3d19-4da5-a995-c8f00553c7fa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hEZb_1s7nfHH505swFYp59zKHnu3UbDL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA2NSBTYWx0ZWRfX9f3j1XmViehJ
 ErLX7KwtB6l0sD9XV4NnZhDti1r+sYCpubju07Kr0lCnLKYiRgA/u4FOLa4QZMjuxjuQJiuO9DC
 hG1WCjfcjvHEgzjV8l+QlP1PhM+qjjdMQT510OuVcJiRHPlkDcATl6kV3/Vi+S8ulkA5W/TsgGR
 qQQic34/aE+3Ecti7ASX0iQ53q3DTCWh+MH6ep1Sg5yDnAtca/DUw632JL3xF4B0Wv9QPzl5rNy
 ynLvQGeZe9I1k76z4jGCMkWRokfuVzXRhiFDMKjGekn/+0ygATuwMcw6SBnfdrfcPIMHBEfBhH0
 fAokcVhar/acfAWgi/9R0ipxRcRxur2ba09IrITWhWk4QKCNyMu/JnMvaHsc7n8Nho5b5T5N6u4
 q+4gXL6s0X2Z80EDByFALE/iz7RRlttJKs/Zr4D1knlb/ZgQr4RAzwrcZVBL2TS/XLP5e+//
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=6888886d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ZOIhAQMpLvIksW73xekA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: hEZb_1s7nfHH505swFYp59zKHnu3UbDL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290065

On 7/29/25 7:51 AM, Yijie Yang wrote:
> 
> 
> On 2025-07-29 09:32, Yijie Yang wrote:
>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> This change enables and overlays the following peripherals on the carrier
>> board:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>>
>> Written with contributions from Shuai Zhang (added Bluetooth) and Yongxing
>> Mou (added USB DisplayPorts).
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---

[...]>> +    vreg_wcn_3p3: regulator-wcn-3p3 {
>> +        compatible = "regulator-fixed";
>> +
>> +        regulator-name = "VREG_WCN_3P3";
>> +        regulator-min-microvolt = <3300000>;
>> +        regulator-max-microvolt = <3300000>;
>> +
>> +        gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>> +        enable-active-high;
>> +
>> +        pinctrl-0 = <&wcn_sw_en>;
>> +        pinctrl-names = "default";
>> +
>> +        regulator-boot-on;
> 
> It should be set to 'regulator-always-on'.

Are you sure? Turning off Wi-Fi sounds like a valid usecase..

Konrad

