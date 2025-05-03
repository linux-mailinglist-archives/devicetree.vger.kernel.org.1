Return-Path: <devicetree+bounces-173306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88154AA8060
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 13:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE0B217B613
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 11:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F6571EB189;
	Sat,  3 May 2025 11:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pAG4AY+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E381E7C12
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 11:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746271069; cv=none; b=bsCAE5G58wcZHV/6Nzq+TA/Hm37GsH7lG7j8fSlRiwDjh7yNCK1y0esYop8qWzHsmwWvO2LEp9dwyUhWY1kNZOe1BMMNOo9CLAj9OrTbrR72dUa5QQAuJzZEszyvQkY8PuIxutUXUrFrWY6w4BPO1i91j5k1avwehVqPwt9ys6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746271069; c=relaxed/simple;
	bh=osPDfcecZqVOsBKtOG/9K12hOUEbQ3zRaBPBK4271XY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KWcHbexLgtcBNf2dwLueNTJgB2ESInRvSpBX4RXH0usweW91+GKDuvKjeUKtUjQpGhnveb9Hgj7X8geYC3yM71NnG9eTbOl6SCrODO9VPuajgd5yZPi8wO3ccABZjO5RbkMMhnZFtdnugy0cq+rwQmYTTMvqWKfUstc3oS3T110=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pAG4AY+F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5434cXl8027197
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 11:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wyCrKhEc3d77syMYDxLeKe5vR94keERW1gwgMtjT8+Q=; b=pAG4AY+FuNhNdA6F
	hAXgDOJwRW6pD8F9mWi8SqhV0bW4f0SZA1GnbxWMyjaoUky4PkcaPm1Kmu+1eJ+c
	gRQv2lgFjXWBVH/pQOvbXu3vOp9dZglbOUTx9vDTzWIjbigFSnqeTL14AUVPNbOL
	2s7hU7kNpwPowHiQnRJh2eUqVegJUaCIeS0hkyB6OUiwFLVv3Rswk+O0KJKVskjd
	1IH6qtijqeJfZjVruXBnng5KlMrIWE5OQnG9zqdHJNYOxbGV8/QH3KH6qabkSNSr
	8ng9iSmaLmaBVA7x0PzYzR3enCtHa6j3Xl1CAOzePuNc+JCe0ZVBjEK6TgmFoUHS
	LaQIMw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dafg0jg6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 11:17:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ecf6a05e9dso2120776d6.2
        for <devicetree@vger.kernel.org>; Sat, 03 May 2025 04:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746271049; x=1746875849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wyCrKhEc3d77syMYDxLeKe5vR94keERW1gwgMtjT8+Q=;
        b=Dhk8fYq5V9z8enBSktqEiwPZKfTzCoH9rSRRMQ14Owyogl/W8R9ibR5Iqjnard7IyV
         yK1xwG+kKV0P0nqteYqiu4e4tGBvRQUOedJqKcSeHy13Tk2acvYSAWpojOmMs39mkqnF
         KwEWlzweOt3Z7E/xp4vpAbji/T1uonm9kDGUanu7m6uiSLGqXkVH+0oeXH/wrAmR6Gvz
         IWv9Jsc3c0XzRXnYwIqAJA9EikifS9pkNnOZOJuD2e8Pa7MFVnEqeHUOzr1fboZwgFlc
         oRgOHVxmkyNx6DPzUoD/Bn/sX/7yQXWlte2w3QZEhVJHAhr9XPKQVkjwhsFOGAw+IXKE
         mbRg==
X-Forwarded-Encrypted: i=1; AJvYcCU26vnTWuc2wqjXNZA2czN5gt4t25CURLMLmfHmclhu5J+vz/szzm6OsexWFrBt8ddXfH/L3JBYIGUH@vger.kernel.org
X-Gm-Message-State: AOJu0YzSm9I9r3aZSYh47Jh4879cwbwWtmYHVaSYAPlH97ur2q/ucgfR
	M1FwarN3A23fzy0UVQrNM/OnPHLuVge6z/HQBAgCRsOaqXymVq2gzEEn9IUJxJr1e5DkXPHYh/E
	A3PcxeWC4ShRatJunZM8ZzPQIWjMlJcULtNFzfNIfiAf5MxPkshjkI0ZkuIo1
X-Gm-Gg: ASbGncsMQPhz4sR5kKGAzc32tNGQM2VzGk2Fo/smrF/p70aBZ5iozmvAkW8QnW2g4FQ
	HSAJARhsVFIDYaMspp3AiioNvv/gd8Q6/VBjwYbJmE+ZJ+nKu7K9vb3xkVcPpD5Lr/nqUeDGkb0
	E1UY1ub7CUg8SHxYMiBKKn0KYqwVaIEd2l3S2kGqhKrdFrG7mLedAPc+VqYywil8y/imhw2jF1/
	HjCM8+8d82L9Xh1MBMTIAXVQPcFu77Q1c64IblS8nCH9SnfSNU7WA/Q4H+YPcExKnIOFVAU2wiP
	9uwqU7bTej14SN1g7p/qkJLDYxOHYkGi4qYpegZuYa5414aei7gwoWRM4JW5zhVqDx8=
X-Received: by 2002:a05:622a:2cd:b0:474:efa8:3607 with SMTP id d75a77b69052e-48c30d83db9mr29110291cf.1.1746271049026;
        Sat, 03 May 2025 04:17:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsRcL4YTCQDoV6ZBGi3Z/iVL1bqcsqXiphj3Oul4isaynD9De8sYSJHbL7Ynpk4VynGPsXYQ==
X-Received: by 2002:a05:622a:2cd:b0:474:efa8:3607 with SMTP id d75a77b69052e-48c30d83db9mr29110181cf.1.1746271048650;
        Sat, 03 May 2025 04:17:28 -0700 (PDT)
Received: from [192.168.65.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c024asm178441566b.117.2025.05.03.04.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 May 2025 04:17:28 -0700 (PDT)
Message-ID: <c55d718f-00fa-442a-b67b-9a678556a2a7@oss.qualcomm.com>
Date: Sat, 3 May 2025 13:17:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/9] soc: qcom: geni-se: Add support to load QUP SE
 Firmware via Linux subsystem
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
        broonie@kernel.or, konradybcio@kernel.org, johan+linaro@kernel.org,
        dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20250303124349.3474185-1-quic_vdadhani@quicinc.com>
 <20250303124349.3474185-7-quic_vdadhani@quicinc.com>
 <2kmnhxj3je366livo67btpbmjiyeyx4q23of42ng4co6xngemj@kitsdtqepgce>
 <e0916f4b-d2be-46a7-889f-2eebd12b74d0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e0916f4b-d2be-46a7-889f-2eebd12b74d0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: nxG01ZSwXW_mZemdkKUP076geg4icz6M
X-Proofpoint-ORIG-GUID: nxG01ZSwXW_mZemdkKUP076geg4icz6M
X-Authority-Analysis: v=2.4 cv=atqyCTZV c=1 sm=1 tr=0 ts=6815fb5a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=dnXBaztP67eYbQVX14EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDEwMSBTYWx0ZWRfX7hgleRn50HGZ
 4pw6/qQfr/B519FNU2v3eQpT3aCbzsG0uGSjLM/uu4RWjZ1/s6l4QkShasybU0vjSrJCWvBjQ0P
 s2tjdgaHa4tFdejDgDTpR4wEvifYshzmc7J/lowWTBS7wqYb+/Susl5LP/3YQxc5KJOYR6PMRle
 YcNkunU9tKDsLMNyvBAe8Xnm/9lnNTNWrCoAyu/ndebSyNwG+V2OA+0XZbBMHyOSOLkWcMWNBpN
 PMLHohL98mrs52J7Kump8IHYK+7oMChPg7TW6YndbpPuSDMdEhLovxPHJfgGKFtvvrZc+N1DKUp
 ksFnL9DnrebdXQx5cToDCW/Zjye2/bcN/PVC7igeUKuM0XS4IC1mZpt+ZRpD7yfqbvuk8MaZnAY
 4ROExHeR4wYhrPj4QrWUFFAmg3pIXmMXHywN99zuMyv6aToBbFNYnzGUIVg98NiPmhnMyE/s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0 adultscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030101

On 5/3/25 1:11 PM, Viken Dadhaniya wrote:
> 
> 
> On 3/6/2025 4:57 AM, Bjorn Andersson wrote:
>> On Mon, Mar 03, 2025 at 06:13:46PM +0530, Viken Dadhaniya wrote:
>>> Load the firmware to QUP SE based on the 'firmware-name' property specified

[...]

>>> +    u32 magic;
>>
>> What endian is that u32? Please be specific.
> 
> I didn't understand your comment. Could you please help me understand what is required here?

External data can be of different endianness than the running OS.
This should either be __le32 or __be32.

Konrad

