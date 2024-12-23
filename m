Return-Path: <devicetree+bounces-133550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BD29FAE45
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADFAA7A1E92
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F45E1A0AFB;
	Mon, 23 Dec 2024 12:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jmjy5cee"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B125188A0C
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734956748; cv=none; b=R3NQpr937J71sUkwGpITosxm5djxZssBenkCbE5fw/+LZPzXn4pCCptusV897vX2wSH/UrJlk6YJx8QqRQkQnx0xPGpADGyzCFCH5gVVuKLu3zNoIEiS1M0nvqfbAY8F+q6rdKfJto8NV17qsu8I4wIB2mwUxCfzIYIezU3WRSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734956748; c=relaxed/simple;
	bh=ReaC04ITKmTodYzDVaIPQrtdrMdag/ELzd93QOyuA0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c8JkVyU+CptC7Y5hhPRmdogN9MDjJ0jTP1SSif/mqA4CeCtXdGVKDfUoWbIey7pc4z4CMzooIEioDDVAJ+zG5raAz8S1scI7uB3zGUMSfxS8328IsPOtzpDJTkccJLBzweq1csIzSDwbYlim396k6AhSH18BD64OB3Sg/R+Di/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jmjy5cee; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN9moAS031210
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lJTG3d8h/GzZP5K7t9m8wozO9qvrOv9LdJ2eFyJhqDk=; b=jmjy5ceeHff9KDuC
	nYASnShlKPzIOHrEjcQmT3/Ss/4iu07D1ykoNvDtBGgTrjQc8bmIaKsyXeKT5Kh0
	EMVOCVf3v0ChEsv5Q7gnj7KEdlYWpX6KdHHHsyt/GdvJs28D1yrTH4Gf29xJFpNJ
	V6zl9oDo0xDW4s50F6HdL0156pCRUpWg2w8rLOoiI0Y1OFP4Qikwu80APgLOmTez
	0Cf+cXTDJCdO8ZNyUe1ITav+SPmaIzIgPuBITaHnVxL3QjGF+bCrXXu/bgxixnyc
	zsrpavFCiX+eUKnP52eIgguQuOb7pKeCRzvyekhDRV8bVjj6JS31evw3bZJsJt/F
	pRW7RQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q5jb8a3e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:25:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b704c982eeso23215685a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 04:25:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734956745; x=1735561545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lJTG3d8h/GzZP5K7t9m8wozO9qvrOv9LdJ2eFyJhqDk=;
        b=UL2TF2gO2c+4vNwSqYJyQPJdx4nl5LjIRKuHcLtSvzmHBPPT1P832JcsATGVrsO18e
         IKEtH/3vMYo1rva5d1q1SRKCkCKFdxnvVMyi6ceWGPfMwiu+cZLvl2adM/v3hzW7t/dR
         3EgaMC6pX5C5Wlk/i3lq0BOaLmIoyTiWW3G7aodRDQwrnzlfqy1981yiCh+OXWXir6VE
         h3at1jwU0X9RXdF1J8rc65SgqWmv3gNdrPC03qtrzdmN+QpZfelgBU/2UIYudc10f9Bu
         gCxhCFPX8TCotABXy7QavBWnAUF0LgQc45ZNGhjhK9IvKP5Hz6dv41KD1MQ53j2tCnpQ
         RR4w==
X-Forwarded-Encrypted: i=1; AJvYcCVTR7pVZzAT7KPqz9XABno9sbp0OBc5EG8DQL6MN5L9rMMRnLVD2pD06G0xACVZudxIgHSiwTIq0o3X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+ct7tDXU1cQ3gU/z5mLnMEmB1CXPi3hKXuDxrmjQMWK2JRPhG
	KVQFc6mYn2nve3gHHAnsYHnwE6nnytUVKALf/XPSVZhbmwRCSaYwxVlYqWC0H6t/wheIsFGx7C+
	c2K0h7ia2whXvpSvnF2bKqxiLc3cODZ79E/8W5QfLNxCpwqg3ER8FQGkSKxph
X-Gm-Gg: ASbGncsrrH08qy8NcAYRYHS2SkDk1gpR+xyPIuGOB9kC2XuOHBac1VfcYLXaGN0h0Ba
	nGyZM631hmAJA4LJxDvdNJmsgGiGyzn/0Y55oGGuH8sRAfweVXq9LPL36Ei45AqQxsFBJDn1wOX
	ZAH/tXoTB1gnEHVkdVSNC0M5bo2kd264QzGYC//iWr8kmTVo9qYQ8gkJ486FIRYeZMJvMgQkpt2
	y0c+iDQ/TLkFWEuZtJzpJd77LcCJMteGj73p/aHui/28lMw5DSmIImHcHyTBfM6/oT7PA8Ddtef
	oo/lTdZRZYpg4TxJEQUg7fxO2O+yZZ2ejbo=
X-Received: by 2002:a05:620a:17a0:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b9ba71292cmr694696585a.3.1734956744956;
        Mon, 23 Dec 2024 04:25:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvH7MjKRKijK2Zv7liE63n6rmSLQiDM0OPJS8wiiqI3SV81/roybBXe8FyfKHAlSA155Btpg==
X-Received: by 2002:a05:620a:17a0:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b9ba71292cmr694695185a.3.1734956744552;
        Mon, 23 Dec 2024 04:25:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f900sm4859279a12.53.2024.12.23.04.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 04:25:42 -0800 (PST)
Message-ID: <d9c9cb80-0331-4cf0-9988-15f571d4cf7c@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 13:25:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E
 Go (sc8280xp)
To: Pengyu Luo <mitltlatltl@gmail.com>, johan+linaro@kernel.org,
        konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, gty0622@gmail.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org
References: <d46f0ad4-4319-496f-9093-54bb5a000875@oss.qualcomm.com>
 <20241221075718.466570-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241221075718.466570-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2AduBhlwuTQ2812u-MWGkvswh0ynLSxQ
X-Proofpoint-ORIG-GUID: 2AduBhlwuTQ2812u-MWGkvswh0ynLSxQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=813
 priorityscore=1501 mlxscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412230111

On 21.12.2024 8:57 AM, Pengyu Luo wrote:
> Messing up, reply again to fix thread.
> 
> On Sat, Dec 21, 2024 at 5:14 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 20.12.2024 5:05 PM, Pengyu Luo wrote:
>>
> 
> [...]
> 
>>> +     chosen {
>>> +             #address-cells = <2>;
>>> +             #size-cells = <2>;
>>> +             ranges;
>>> +
>>> +             framebuffer0: framebuffer@c6200000 {
>>> +                     compatible = "simple-framebuffer";
>>> +                     reg = <0x0 0xc6200000 0x0 0x02400000>;
>>> +                     width = <1600>;
>>> +                     height = <2560>;
>>> +                     stride = <(1600 * 4)>;
>>> +                     format = "a8r8g8b8";
>>> +             };
>>> +     };
>>
>> I still don't understand why efifb doesn't work for you.
>>
> 
> In v1, you asked me

Ahh sorry, I churn through a lot of emails and sometimes forget things.

> 
>> Very very weird. Are you booting with clk_ignore_unused pd_ignore_unused
>> in kernel cmdline?
> 
> I said yes, as Johan suggested in here (see [1]). I am adding Johan.
> 
>> Could you share your .config file?
> 
> Here please, https://pastebin.com/UKew61ZC

All the things one would expect for efifb to show up seem to be there.

Maybe try earlycon=efifb video=efifb?

Konrad

