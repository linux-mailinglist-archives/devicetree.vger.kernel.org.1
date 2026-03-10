Return-Path: <devicetree+bounces-273348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAoaEOvYr2kLdAIAu9opvQ
	(envelope-from <devicetree+bounces-273348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:40:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D14DB2476DF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 411473021978
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100DA275B18;
	Tue, 10 Mar 2026 08:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F4EpGxIt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WAkfEgaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC12E427A0D
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773132008; cv=none; b=GA8XCd4H1GdWByUiWAgIvv8kC7amwtzSolh4ngBuZzdL4DyRjYVA5BjNtYHuh/+EDTtL/ZalF7GtD6g7HDgrmytzhtYwiUNdd576MV5sKSjvlNRL0zmfkGu9/DeiHeAtiiMjZr+bbLU1L6EiUAii6fS+NnBoutKdRwkpjaWTa1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773132008; c=relaxed/simple;
	bh=T2nbJsiBaSmJsuvvmN4hSj5L9VFJx8Vt5p0D6TCv/Is=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lPQ4pHXUFl1oAlpyFJbd3g7A20kL3IGqtk2uZqGd8VIj91iC9BmWCL41v0yM3ZAU1Br3YCAL0Jashb9u6gZKaKPPTV3aMtWca9qWuuU0kpq6MUtL11AK2jKVbAZLXBCzvfswx0xg0TSpM3NG9k2DEkKRdmMqeP8f39b031YG/cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F4EpGxIt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WAkfEgaj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A6VKYX2021368
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:40:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+aatNi4tYJUoEjvW/rAuukHbHE9hwS8CQC87hhFwD/s=; b=F4EpGxItgBJIXmvE
	SRz4lHG7ehpZEFfWFwqFWWgajdCfGfpWgCY+EQ034PmMe3V6h1wWHeetEqrk3XnY
	QlfGlWZH/JHZOMZugn0nheIAtkNdlj+S3m/dOGDGLlz6p8BGcWIFiSwrdx/KQDi1
	crxSrSsNLYb8ITlYRNswreTYWnGygiMKmOlA8Y6+egBdZQYDY8QysqLqgUzH7ZFP
	ZBZ6pDQU01WWvp/RSm4rBQl047tXb5bBom5vjeCti62s8+DnbKjmSOA7yos0NlXj
	eB4Ckf7CXX4qEq+F24Ks+cgaAQwEnCQXBT0C33Z3VEUJOVR4UP33Mq4hj1MX42TL
	VAY0AQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cte3w8e36-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:40:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c70c114e02dso5373074a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773132004; x=1773736804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+aatNi4tYJUoEjvW/rAuukHbHE9hwS8CQC87hhFwD/s=;
        b=WAkfEgajTbxTGs810MnsQqE42PIrwjgzckGgPtXgLScAKF5PpJuF0sswYkSJpdGxoO
         cnpBzG2ojwWbIgR4EFNagxXBzI57AmBwXnFwc62VdUJy2qqMJ5tk4nzhc4t8gekQyem2
         9+jV76aJ1J+xTBnWKDiZS79rD/0SLaPdPoHgsR3QarnAqlk4okkITOFxJLFH9jNG8oiG
         gD+MRzu0m4H+/cfofRb7yeBBRwJUthIGsvhlU6imajSkCW/8xvIOAIaPYNdlMgOJvoH1
         NyEzUMCds7/Li9y7twHDRutZyK92F34NcS0LTTJsOVAKLIQhDFTRh4O8ERGoCS1xtlKK
         v+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773132004; x=1773736804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+aatNi4tYJUoEjvW/rAuukHbHE9hwS8CQC87hhFwD/s=;
        b=WEsHqGmamwZMIPbTJ/lUPur/6mlfkpDM3omq5gCHw0Z8WrY3pEUEZ2ftGV+pKX0Ulh
         XdXkqteps08NEkb98m4C8IbEL7SE2cWSaq42cBriXA07lVOieVQ6C0i8g8IQcJrBUrxT
         HgaOUpOXWU7tKj6SOyywnLkD3UiMm7VvWek9ZAz9iom33ohDyMxLJKTnx53rP57/Mg/m
         BLkPlGI6Ljzjid/LjxxI8rsCrow2Zw0y5Lf/CAGC6YMsj/0r2+2qbUec9bTSGHydEoRe
         cjHkj9bm8i2nKdFnef2ErXEXECQpG4RCWrUX/i5/UXgMJs3TCJfEni7E2Jinf1NMfsqY
         Rvng==
X-Forwarded-Encrypted: i=1; AJvYcCWwej4QdarupNQ4L3apTGZQ5892sUXfAnq+t3S2PZ9XIowlmWFFsd+mn9hNXU49winUUPhDgeXG03nv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx28waYbpiEDxwGZvKN7poY22Kc0QDGqW/AXC+JoZUfXa7JZcq
	Z+/WCZjiesI3c/V7ibAx6m4jYlx7QzPG5WE3sk3dBqPQ3T9iACwLty6gnwNmhy5GN5f4IFCKG7s
	OQop8ZdxAsVW7ijbb1V43HtwzCsnfLh5XuD/xX7eKBAr/FaXCc70Z9fGCnDp3vRXd
X-Gm-Gg: ATEYQzyb6BfcMmjgpZ8DHqq0s8xEdSVKpHvh1+xIcc28IdFIio1ggERHTTq4tDr+0UT
	z4LAI0aKNfK1YaWawE7NDd/dNoKMNjCfrl2OXz34uMhUgCLQNZDRLdPZEe3fI4PtZEHC9lPRokK
	I5XP2Zp/5sNY7GqEqVvGqfWFgIZYLTZHIC0gRCzAE6K5KHgNZBvAmlh0GYOWKqFL1OaXWTtvr2D
	W5BKATe7F8x+jRET57fZYEq+hp/sZSVofYHIChDBmrA5MFQtzA7b8iG5VJptyq/SnoRkIjTKJ0q
	OIvD8vpzH5sOejFoBvCKpdCHs4mBspMmAYlZm0OLcfbWUGScjSQP99VOF5/1NXvYLpfnYiVwg/p
	r2/1fej+GIHdspKzNDhn4XVBUze6DRmGJLvHWzzn3p++QOIdrYg==
X-Received: by 2002:a17:903:2fc3:b0:2ae:8252:d670 with SMTP id d9443c01a7336-2ae8252dc9amr59263935ad.1.1773132004280;
        Tue, 10 Mar 2026 01:40:04 -0700 (PDT)
X-Received: by 2002:a17:903:2fc3:b0:2ae:8252:d670 with SMTP id d9443c01a7336-2ae8252dc9amr59263755ad.1.1773132003841;
        Tue, 10 Mar 2026 01:40:03 -0700 (PDT)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e78f77sm203882055ad.21.2026.03.10.01.40.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 01:40:03 -0700 (PDT)
Message-ID: <64f43d77-7c09-453e-8d7b-b4e0e5f05598@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:09:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add model string
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
 <rdglzhmncexfcvec5hyenj7jx3m5hsphjlxsaeq2zhi4z4arml@bjeqghbbaoa2>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <rdglzhmncexfcvec5hyenj7jx3m5hsphjlxsaeq2zhi4z4arml@bjeqghbbaoa2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA3MiBTYWx0ZWRfX659Lz9a5cpAJ
 R3w5Ccs6Gg43+/CMPHgCsOSuOlxipPhd+agJGZCJC0gvrhY/HH1VOrOMgffsX6aCHpSlxYRH0jN
 5m8SfEy8nk70vgzsamHRQCvY9+bnIZIvklZrCU2/gpOA4z8ogtw2tCGNTJVhboP88yt6kJ1xOw6
 ndUwpHlIHtYKHPk9u4L9NiJQmx0dOEa3lbd3bwdyKKqGNI6Ct3nmZ8vj/GqpyeBUegHJmq2EpqZ
 qN7mqzX+PujryGVsaV4z2fDFWWj3pDseVyLEClLOwUvMu5WsI/q3RS4vLvHaOxwaa2k5cTZSAJV
 fYELl+cilRiaKuFhEN0KhWmWXEln2gQVB5lo7CngExVpl542c5PUXmicWp0r0o2aXn3UXLAaC/L
 ciDLL49ZG1VPkUbJ/dDnIPsezkRBItpzXPn5c1Dm7cTnS9LvQoCrneCkQw/ImBr69zqbtFM0Pd/
 0bJYgKupOEHqFRgb8ew==
X-Authority-Analysis: v=2.4 cv=GtFPO01C c=1 sm=1 tr=0 ts=69afd8e4 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=yYSc_uR05PvdiyNszLcA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: 64ps_c5lHo40n6Bs7VWOcw4Z1vaxWsfd
X-Proofpoint-GUID: 64ps_c5lHo40n6Bs7VWOcw4Z1vaxWsfd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100072
X-Rspamd-Queue-Id: D14DB2476DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273348-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hello Dmitry,

On 3/10/2026 2:07 AM, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 05:49:35PM +0530, Umang Chheda wrote:
>> The RB3 Gen2 Industrial mezzanine DT file lacks a "model" property,
>> resulting in the hardware always being reported as the "Robotics RB3gen2".
>> This prevents applications and user-space tooling from distinguishing
>> the Industrial mezzanine Kit from other RB3Gen2 variants.
>>
>> To ensure consistent identification across all RB3 Gen2 mezzanines,
>> add the appropriate model string.
>>
>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>> ---
>>  .../boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso   | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
>> index 619a42b5ef48..7d6e425dae89 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
>> @@ -8,6 +8,10 @@
>>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>>
>> +&{/} {
>> +	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Industrial Mezzanine";
> So, what happens if I combine Industrial and Vision mezzanines?

H/W does not support to connect both Industrial and vision mezzanine at same time - only single mezzanine can be

connected at a given point in time - hence probably the above scenario would never occur.

>
>> +};
>> +
>>  &spi11 {
>>  	#address-cells = <1>;
>>  	#size-cells = <0>;
>> --
>> 2.34.1
>>
Thanks,
Umang

