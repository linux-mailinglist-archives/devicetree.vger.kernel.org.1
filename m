Return-Path: <devicetree+bounces-227901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F493BE5A23
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D379F1A65845
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1EE2E229C;
	Thu, 16 Oct 2025 22:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IH0iahE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABCD2737FC
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760652226; cv=none; b=i/wb7diEPH6+r6hRrY/9rk2u7OYeYQt2WES5NjlApVDhQjGPen57mBcEOGtJpBEcaWb56Br8XzxHJrjifR46EiyM80Cq5AIHvaUIxRETnI67uDH0yUnLgCs1uKQuZFCgZGzOZGdjFgJz2zhBUi4WamphrabgcMx678u54/ZJfcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760652226; c=relaxed/simple;
	bh=REPaXfEEwHSvCPYQv1YOGPYDOJ36+iQWTap+y51gNTo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gt85vaejFh/Bn0IhrUjOEOR5/4GH0XA5gC5xuCdTuvrlagIVzC9SFJ3mF3NEcoSh2lVkLwoRNCUCKcpZw/0jT8G8fLvMnHC30WSWrCRjRov3479SkfWk2Z5CS1eyo7tpE9ESDoMwMpf+KnPnMM2jYQ4vUHFHuExHKyu8Ec98y+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IH0iahE7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLYUb009518
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hy4oakQHnBC57FbFZ/RDt9wr7jDjpQ0QoQIdKdfku5U=; b=IH0iahE7zd2RU9FH
	JXT25DKQ7oALJmhqpYYPRCgzdpYiII/8oI5R13Pmh0CwELM8OgWJTiPmuB/nRdTr
	mzndNtjqiZN4Qv6J35QAz+fKkjwazsct5nOm/pQvYphZXvZWgapz2h1NpcHdS53r
	QzJTNFcIvT6TNuL/hL9wMbpR/pOR6rL4bKYlxzHQi+0L8PMrQ9m/roiEWqL0HpMj
	Fgff+auIbwHmEjeJnO/gPcjRThy2p7U1eyFW2KiYzDRKMmndZ4Y0sVupo+jOPZKs
	6nImmyVCwwSSGdTEFELP/Umlho13ihak7j8bycaXIAJYyr/EYnnjIC/ihgHEgDAc
	O9gCsA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c9u1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:03:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6fbaso16064545ad.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760652223; x=1761257023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hy4oakQHnBC57FbFZ/RDt9wr7jDjpQ0QoQIdKdfku5U=;
        b=E21gHYoRK1VZzFa+x+Blo+jEPEB813ADSHZrKMW24j9jsJCPUStgT+T+KvO3zyXaLd
         ljoWvgGV+PYt26K9vJMkYst9gIwp/e3zFTMZgRbTx4okT3ROVG+rz0w1aJZnON5/ehc5
         2EtlIrlWycwzS98OeZkNGo91wjuzZcGMIXn2GXk1uYAlDxZ05ixvmQRTmJiRKR6LELUY
         KxnBiw3dhIVWIw+pN42+6u95pibQTTc3HR/CIZCsS4H8VofdglpOtcvJhrS65q7AZe7o
         DxMZNBLrxDJHQ8L6TquKZfvKpdgqvlVwpUaYc179sEeAAvFWurNQpUkgHrFz+w2Hk/Vu
         M7ig==
X-Forwarded-Encrypted: i=1; AJvYcCXus3IKTvJI8bFMFJBL+fvFFbPRLe5tEzL5jFgAVl444aOwPGPz8KPvlDIoJ17sX+B251XiWdzDY3gp@vger.kernel.org
X-Gm-Message-State: AOJu0YwIVNHclzZZB+nNOIYu4YdI+CQTvxWXObN5xMotVntGn0bK/rOI
	aQuaE01oKlAydjWpsz3hEZpDMExCJpfS8KF0YLF7LDUlFgFtb6m+NxMmsOlsyoBotea18jl/FCR
	7vJKJzYKStd2o2zGuN9d3MfG80DSBiA5ZoRdcN4FoX40HeKMfZIhZGwk1zDMX771G
X-Gm-Gg: ASbGncuv2c7lxowgClhbbZ0gGHHhPp8zbJwwWCliwr73KwFHaYpOrBTLzoRTT0E7uPh
	7aJPMwwlp3WBitHIRoVRRn0VtUy5lGuPhItN56wTUsNRCDj//StD1InG8uCAXjUJqvAmJCCdM8J
	VUhAmQ3w0Ha5F+o2aIhkdcwy68mWl09Q5MTNFW6Scuew80C9ga0svjuGjbKRONPuXkxkztD3u9S
	tr7cNE3U8n7FaOO9TaSWt5VKByGulTQveNVrXYEJIQ+9i3y+T3KKaASLjhb0vh42nhgn3HjIHkE
	CiZEdE3FEXzwJuHbc0I6KfekAfa8IxTzIN3s9ZERk1UQKWoxLFrrpb24vLq1BU1vASZXa/V33/k
	ktXj7uhECEWT5Ei1VYf/krvvLIQrJITmc7Yb96hPmCOlXnXbzFcvqNw==
X-Received: by 2002:a17:902:e841:b0:290:c902:759 with SMTP id d9443c01a7336-290ccab6c0amr11702725ad.51.1760652223252;
        Thu, 16 Oct 2025 15:03:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdlNyditaaAKOFd3CyrSvZAeteR0a/ircCtUxjXi9qCn2mN27imlOzHsdxn+P/3lQNSL8XVg==
X-Received: by 2002:a17:902:e841:b0:290:c902:759 with SMTP id d9443c01a7336-290ccab6c0amr11702295ad.51.1760652222695;
        Thu, 16 Oct 2025 15:03:42 -0700 (PDT)
Received: from [10.62.37.19] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2909934b0b5sm41340775ad.38.2025.10.16.15.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 15:03:42 -0700 (PDT)
Message-ID: <1d300d0f-97c7-4538-9b14-4216f8762a1e@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 15:03:40 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] media: qcom: camss: csid: Add support for CSID
 1080
To: Bryan O'Donoghue <bod@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-5-f5745ba2dff9@oss.qualcomm.com>
 <5f0e081c-30f6-4ff9-b8d2-2af0d87efd23@kernel.org>
 <16def16e-fead-4d32-812c-5672773ef3bb@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <16def16e-fead-4d32-812c-5672773ef3bb@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YHfgVMTcgXfzMUApErRSsHpBsueMjrH0
X-Proofpoint-ORIG-GUID: YHfgVMTcgXfzMUApErRSsHpBsueMjrH0
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f16bc0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=_bdMYa0xl-006hGExtMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX4s4la2KKQx6A
 g2pE7Pe4PHxqcpThj5H45CD9FhtNYJRUSqX8bPHcqoxBZ0zwBy92kk5VRhuGH1lU1tcTelAZyvR
 s8FYKZYpXZ/dOp7JlF4DOrvVM878CIRUg9fgsutHwV7xxRi9gSOAd3gegWf6xGpKDyrUhoJjoWa
 r8ZASEV1nCH58drYP+v08mwH9X7ku6PDICMfd5ySrqf/z8EL+cHIy8u7ljkJ+miRxvlaLClir86
 lISP17BfcBpAb41iG42ImdJRCGJzclQ2icUns1dbOkBHRR1Iqenx90WgMIk20Z4VE3wERAdQghD
 v52cxRhZxzAFg6Ah0pIVNbi1vt1ApBonXUhF0MeWqD7vqnB2751bfqjxgBlvp1UTfuG3sLPO6Y/
 huA+Awm0+Earen6dP7xR/4WnPI6q0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022


On 10/16/2025 3:18 AM, Bryan O'Donoghue wrote:
> On 16/10/2025 11:04, Bryan O'Donoghue wrote:
>> drivers/media/platform/qcom/camss/camss-csid-gen3.c: csid- 
>>  >reg_update &= ~CSID_RUP_AUP_RDI(port_id);
>> drivers/media/platform/qcom/camss/camss-csid-gen3.c: csid- 
>>  >reg_update |= CSID_RUP_AUP_RDI(port_id);
>>
>> and this in your code
>>
>>
>> λ ~/Development/qualcomm/qlt-kernel/ linux-stable/master-reviews- 
>> oct15-25* grep aup_update drivers/media/platform/qcom/camss/*
>>
>> drivers/media/platform/qcom/camss/camss-csid-1080.c:static void 
>> __csid_aup_update(struct csid_device *csid, int port_id)
>> drivers/media/platform/qcom/camss/camss-csid-1080.c: csid->aup_update 
>> |= AUP_RDIN << port_id;
>
> And now that I see the code side-by-side - also please use the 
> established macros and/or write a new macro to follow the established 
> pattern.
>
> There's virtually no good argument to replicate a bit shift or twiddle 
> - that can be functionally decomposed and encapsulated in one place 
> and subsequently reused.
>
> ---
> bod
>
Hi @Bryan, sure. Both are essentially shift + twiddle, just that in this 
patch, both are happening in one place. Where as in gen3, the shift is 
happening inside the macro. The other difference is that on Kaanapali, 
RUP and AUP update registers are separated and hence need to be handled 
separately. But I understand your point about the consistency. We will 
modify the 1080 macros to be consistent with gen3. OR we can add two 
macros commonly in csid.h that takes both the base bit (RDI0) offset 
within those registers and also the port ID to return a value with the 
bit set, just that gen3 file will have to call them separately from 
within "csid_subdev_reg_update". Please let us know if you would like 
this. Thanks.

