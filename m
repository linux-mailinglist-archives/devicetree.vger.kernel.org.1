Return-Path: <devicetree+bounces-188339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C48AE38B5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72D4C3A75DA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 08:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A7C22FAF8;
	Mon, 23 Jun 2025 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W/4hIKQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10621230BC8
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750668106; cv=none; b=JVHARYDoaVJ0YvYmOdkYSoxYHY07ku521FvfZp+yor6b5EHRe76Y+R8njQO0UTK7T6sz2lYTx9mamcpi1QCCGfMUz7dVCWFpYHOzJaGiJd2Q7u5EGWnN9tnxaQwaoX2mbtabWZTFTBOn97F+JmDJm6zF2XHYd70eIf6rpZHgBQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750668106; c=relaxed/simple;
	bh=Jbl9mEakLSLX4ZhoXwPqE10b06YGuEgYmXp7JI8CvTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UMjdaC+qTA7WbQCxIUnLaUGnZBi0o3CgnfKJQ9vfuzuGsIMimtXPhsWKknoSUORWyS9+MHNZvR/Wd3/sYN3fCe7+Sa8noIKQPf3szi149lDoBxePkhd2VY7aYMprln4IGdCEiBZiPo3L8kOIyJAaDssuAi2V1Fi9/oQKwtGDZS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W/4hIKQJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N8LhYM006106
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tNGZoLuw9rglXq0NnsHbRKxL10Zk8yg3rB0wbfAxHGY=; b=W/4hIKQJf/pPD/6S
	URW4yFyBrHhTUaT1ak3PmWRvvOl9iBDc7mXQANUjrK61t+vXbVRUUzx/eOA7tQzz
	+xgFvXquiyhi5U1Ty5JdhRaPzgs6gAxrOpqoY0D+MGqyvRUeeruNVVST47N1XxCj
	nBZGmh+r9ceJ25MH0h4uGe08oC8l+IDxTC2nsXF3Kvcq7FmcjkPglXPTMaAHQEAJ
	Pra/d0xPIiEDQpU/NcnZTYdHyjMwQ9aVZ+/EQXKrAgd51gE44bPQhY9ybPaQqn3Z
	vGrn3opAArGDDymBWQrZTj75t6jbX7IcHt7DvD8dm2EpwBrEpSqGBc91ciYDz3qB
	RLRsmw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bg81jf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:41:43 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748e6457567so2676697b3a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 01:41:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750668102; x=1751272902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tNGZoLuw9rglXq0NnsHbRKxL10Zk8yg3rB0wbfAxHGY=;
        b=MsZLnbu/USikg2yGpjE3uh6reSO+TgzkUsHDZK7Sj2cco+IyvVEMvXRfkmE3MW8Yge
         4FROPvyXwTjbkP9I8PUPjEcXEH5V6ByqKgMhYLtlhwMdF+6EaqFhv25DGAo3EpN5tV7L
         Zauy5zo7x3P5e3pvCBn+rEPcJIkbEmJ9q72+QPJC1Tc6hZI/RrvRjvShJlCZqMp04/Dp
         L08N1pNPZ4Pswbj214llctz3v3lOhtpMjnBi2YGduaVM87upe4yojCd9w9Dd6FYtwy0R
         bEC70eEZsLbwHbnzCPv1o/GQRUtrVN/OukG0zKkQwZRkGdYiLQC0hjNJWsAwWZ4DKPP8
         6HZA==
X-Forwarded-Encrypted: i=1; AJvYcCUxDW/+tFJ2E055X1je/KuhgXdzbSMHjP4cvgLw5tWxJmP7tPG813GrTOWRVzsSW0kPyVdYMrZutiuw@vger.kernel.org
X-Gm-Message-State: AOJu0YxqG/U6aYTS86FpqGxngDWUwqYrPNLUm4yjveLhDAV2mgW1W3lr
	4KDCMntWNkGsRvOXxNDtCyX7U8uoPtcQCmxLyo1o38FYBld9sPNvb//weVPQrkgcn7yZ2S9euBj
	gUZ/1A+craabLaP/RWSoBUTFRbbNU73WMyZixUZbsjhchXd06zjOBflaN9cSPnFDu
X-Gm-Gg: ASbGnctm5GUmUCHuPKLqgI2dbN0+mKZBHO0dLc+loi2gOH+Or5py588LcF9znFZj6PR
	xgncYgah+6KHzmqW5VjEp9xDsFu5EMyxvbrcaXYCx7JrYu8oiO+Sp+Ejln+xzkII8cHkLqCMxzc
	MQE1bF9qK+TebAz05u04Dk4pcIaXQ8ZKSdsPqfp4ElJTZFhTBT+ex6vQJWRzZJ0k8qUQxkzv7Pw
	on4Xf3a+5RcQ42RD/NdVljgYfl+HGI2/TmeObP2+/C9ITrWJZaU5JdKQwFLg3xsfCQD6jiAAwpS
	6tIhagtO4HPYw3OTW+OTK5ELCOt1Wh7egfxPXlonEEmz766ExugKmtXfJRZc
X-Received: by 2002:a05:6a20:7484:b0:21f:53e4:1919 with SMTP id adf61e73a8af0-220291769c2mr19504191637.3.1750668102416;
        Mon, 23 Jun 2025 01:41:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoOzdK61MC4UC9PSvUuZZFZ1mPlOBgCQkBVTbQyU+iDFdKfnbBjKZLhRChtXt2Hb8DDc3hdg==
X-Received: by 2002:a05:6a20:7484:b0:21f:53e4:1919 with SMTP id adf61e73a8af0-220291769c2mr19504161637.3.1750668102041;
        Mon, 23 Jun 2025 01:41:42 -0700 (PDT)
Received: from [10.218.21.68] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74933e6d117sm3431544b3a.53.2025.06.23.01.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 01:41:41 -0700 (PDT)
Message-ID: <dba9c6db-12aa-4522-9873-0e27f96bf523@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 14:11:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios
 for shared line
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250620103012.360794-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <3ddf2df5-4591-421e-bfc2-50c7d3ca526d@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <3ddf2df5-4591-421e-bfc2-50c7d3ca526d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 9BATuK1ohsdhZMlmhWn9J2wSCG26p9yg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA1MSBTYWx0ZWRfX06YY1Oi9qp2R
 z0SjvTgexx/PgIYD6WOnWlGLmcqbxMfd8c9UdtE4Ir60Y6ATixK2N+GuglWzKFA1qlaPHRO0d+U
 5E4hwqmZpO0GI5l0wOys39aVYGqyG+ALqbRxQFi7HftWLmyB1gQcbsZGHDNL0j5OSFRYrpuLl+h
 oK6w5IsK70W0XgAF72F/ZcF1/MASg97iDQYT1H9BBAyF4N5LnL4O+rxG8hA2gBSs0Acy1lgYt4Y
 TiqGqiFD4BSCJRvRX3n2MvOvDOv+oINsIGPlKIzbn/G6AaRnbpCnWo/vWRwiuxwRu8v6uG0+7Cq
 JPFusRQ8600Wi8SSUKzcOScaqlHY+qlLwd0RqHT5JprnfRC3LtsEUHfjOuHchAg3StaJnkhb2Zx
 bPHfHQgot7logXXxO3EtH8CRYIGrGFtOoXuhsTHsW2QrsnECuY7BYsJbhV7Ggva72WTRCcN7
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=68591347 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=Te_N3oLfps8sEPozdqUA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 9BATuK1ohsdhZMlmhWn9J2wSCG26p9yg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=862 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230051



On 6/23/2025 1:33 PM, Krzysztof Kozlowski wrote:
> On 20/06/2025 12:30, Mohammad Rafi Shaik wrote:
>> On Qualcomm platforms, like QCS6490-RB3Gen2 and QCM6490-IDP, the
>> WSA884x speakers share SD_N GPIOs between two speakers, thus
> 
> You copied everything from my commit 26c8a435fce6 ... even device name.
> Please don't blindly copy, but check what you are actually pasting.
> 
Ack, Sorry about that

Will take care and update the proper commit message.

Thanks & Regards,
Rafi.

> Best regards,
> Krzysztof


