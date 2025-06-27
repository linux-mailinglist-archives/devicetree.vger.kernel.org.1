Return-Path: <devicetree+bounces-190170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E14AEAE55
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BB181BC6C9B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 05:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D482C1DEFE8;
	Fri, 27 Jun 2025 05:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N8RdC4uU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457A51DE2BF
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751000874; cv=none; b=R7CnmOz823V0lc86PmoH7CZ6fp4bUFnWMn94qwljBUO4uXlZUH5SxWm4vOZMILJsJGyZ57xSELcW0cXoqamkyyUOf+O/c+wM7dYmqoBnslXPaEGpiB7yUM/18bkuFXUPN4BesLmzzooOdYMI5vZQug+5LHJYq0LpHr5TAQ4pfq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751000874; c=relaxed/simple;
	bh=lfx4w5PLHzZtl7g7tKnMoL691KQ07239Cuv6LeDipmA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tnLjJB9DcSPA3JnmIuFVubFlPQjDM7HFYXVWm2Tu/qUE2xEj2U16+VnylevX7ytwjLh5rBnmU75IxelP5q7+38tspuo1DA5PBOGqAcyUQ/9ZHkpSuHCNNpCHIuboZ+VzU71tklkIpnb5YOqyrKmi8nyZLekMQruiMQEqo+6GdzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N8RdC4uU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55R4DCPF014518
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:07:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FgNJiyaML1WffY5YxWh2k0JTtZoKYshdhU1UyOu/WNk=; b=N8RdC4uUoPcQYbEH
	RJ68G/R/v9vvefr/8tzEZueF4Y/33jrudWfm47/MnKeohnUCe7mG1xq1Wk01kydp
	wBYzZSYLJLKAuEro+dSotPR+zpsJV8cvQNFFRzmdrAyiSaErYw5KfPEWFcubzSuW
	2520ueZPaBRzOBY9ot8sT0yBuonp+DDPBseCjs1iBfsQwKvyaKG/ILr10QyboaCV
	mEhvbOnyzeSDtNdP7YoyNy7Ai5iO62K7D3OXL9WIUnOUUkZTv96WUKwKNIDcn+fg
	45R5b09nK3WokgEAGuerdrTXxO0FNMVCueBbv3WvSEtltQOnTE9Y6lGmRb4RfcTd
	ikmGeQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm24484-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:07:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-235089528a0so24552725ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 22:07:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751000870; x=1751605670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FgNJiyaML1WffY5YxWh2k0JTtZoKYshdhU1UyOu/WNk=;
        b=m5kjeuweF+ybWMDW12mv2e7TCJTsuYy4MEAqKRfND4/cOxUQRK8mEItlON0Ks/hW21
         A7vu4SuoPpB1DTFFmsDe8hEk2Ywv5Durcn8HwR+zRoNzGKv4hSfOwpRgXTgxlpK1LCHB
         funD3OCNGSPIjqIX5l5cJ1nUB48u3RqR676Q2c7svhW3R76KqcYP0Winj3H2XrUZAhgx
         geDu3NdR9fAimm4YOyIalEwF1+z3YG35wg875FyDDjqZDQFSHWBUrSggy6VE7ygNpKKX
         9SlWoeLTGcPuqwvZQ98aSwBl/JqspVWH4Wa9Hag6a7UgER4o1blPcLOEyeTUWHdmiiVJ
         krRw==
X-Forwarded-Encrypted: i=1; AJvYcCWJtD1s4otmaNcP7LLNktMgv0IrfOdlLFFCMl+cTqhax4BuwMMDJJmHYGLs2Ba94BodxFbgQHblTORD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx9k1PcevMe/aKuudPrnkuRiJVNW15S3eL++yOqeaQX50Aeet4
	xNBYmjPKreEFKM7ecODt8lFXK5AiJlhXdn3XekznQ348IYZt+Zsx1razoEAsN3FfPITf4t0rYbf
	LM7gBAMzKwOnJ+m8qkSHM4Qt0DN/jw4CqmfIcXwh1vToEZig25oLZ6FsF+1/MnczU
X-Gm-Gg: ASbGncvbV2XxuWUmEM/CWuVRvlPQPJIgxuv9LYPkYr0Afumodd3dlXtpCZRrUtSB+ex
	f6eej7kJ1yB6/beFXEREwkuN7aUbDImKwkQNAQcDu6VW0eUicMX+VFcNi1AaWczRo05El8DH7bX
	XuM8IxkW4ORDhHgBrbvJulNTDcN9Kz0IEh1nQW8S8f1ZL5e5G5UMTGrftgnW61XTbNDp+EOj6/U
	vdvsfH/Kuw/mFJnsf0iwqyGLk/3s61OXl+DiOh5LOOnZ5ldszqOY7bYzd2QeRZr5XNlsuMoPzZ3
	EYCFgT4wfaooQ8S4jsfC10rvQQWe9F9CZbIg2Ce8an9EHweYdVo9+kM=
X-Received: by 2002:a17:903:3503:b0:232:609:86c9 with SMTP id d9443c01a7336-238e9e1cbd9mr82900045ad.9.1751000870560;
        Thu, 26 Jun 2025 22:07:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmFFD1sc3TnhJFATkK52HnmEtQ7bQJi41dupwVvYX6GFgmLB8KypB/A+WO5bcGBxSpG+UStw==
X-Received: by 2002:a17:903:3503:b0:232:609:86c9 with SMTP id d9443c01a7336-238e9e1cbd9mr82899635ad.9.1751000870063;
        Thu, 26 Jun 2025 22:07:50 -0700 (PDT)
Received: from [192.168.0.105] ([49.205.254.130])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb2e21a7sm7230315ad.4.2025.06.26.22.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 22:07:49 -0700 (PDT)
Message-ID: <595e5d07-67d4-4352-81fb-0e5cc9ed0bc5@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 10:37:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: qcs615: add missing dt property in
 QUP SEs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20250626102826.3422984-1-viken.dadhaniya@oss.qualcomm.com>
 <x3cmdir4lotf3yekbu3tsmts6idsvwygrp35opszmgabhpvdda@nlwrs5qojcml>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <x3cmdir4lotf3yekbu3tsmts6idsvwygrp35opszmgabhpvdda@nlwrs5qojcml>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685e2728 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=gik7yjij9jROcwxpePOrKg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=uL1e5Wp_dwoLeR8WhnsA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: wiiTNQf0kKRckoyGkwaQhIajmuKI6Ddx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDAzOCBTYWx0ZWRfX9FLP1V+zavp4
 PqwbEq6+yw1v75A+bGYVfxHIEq0ZOgX3aKPNYJ7ZzzhgxDkltZI8xYcbeA2emdjVNrRByrTKdOr
 PdWwVaI+Y9lg8j6+1xPGzBfSV3Qfb+F5JKIoG1rLItul0wNMKjH1I6npY3sCWuE+BNWaI9Oq0w2
 XrmjDa8vtxhGsm4+m1qxYkSxqoj8/0RNUKfUJImH/kEhhotU+7Kyc3ijBlRyup+plT3N0z5DHRs
 OT+F+cauVjWoDABjMKPsR42T1wUTiuTJImwW3n4YQQzgDCjJxX2y/96uZQiHgX+xmuQSuVqNI0r
 lo/bqe49f5e8yBtQUhh3WH13Bn16IAXF6cMJ/HlC7T2sDy1zmxXJHPUCouPyyUhrZ8WV1KMA5uV
 qgxJwU2Nwvo8javoHO2wVByw9Lq4pqc+WzfEBk9OzpiF8bfu1bWEFJ/7787eAc9qUfHejuWH
X-Proofpoint-ORIG-GUID: wiiTNQf0kKRckoyGkwaQhIajmuKI6Ddx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_01,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=615
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270038


On 6/26/2025 4:32 PM, Dmitry Baryshkov wrote:
> On Thu, Jun 26, 2025 at 03:58:26PM +0530, Viken Dadhaniya wrote:
>> Add the missing required-opps and operating-points-v2 properties to
>> several I2C, SPI, and UART nodes in the QUP SEs.
>>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
> Missing Fixes tag(s)
Sure, will add in next patch.

