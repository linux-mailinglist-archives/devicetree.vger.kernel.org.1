Return-Path: <devicetree+bounces-159055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3EBA6966C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 18:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B3187AAA31
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 17:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2822A1F09B0;
	Wed, 19 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lhCoWHCX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F491BEF7E
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742405333; cv=none; b=ET34ZgqUcpRrbwAuYPS9irDamK9ZCohSoPvdqr8bLAZ7YvzA/TnXFAEjAPoGhG7R6KSnOmYpJvVVZPKMo/Jge8gpyHY0Z6NBk6jkqwsqJTY4rRNaAGpTwLg7aZeh4JTVmi3J+NV7GxgRGAc7kCeIFCdqJ4DgyiRnfd97p+xX7bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742405333; c=relaxed/simple;
	bh=CWK+EArxHVvZhO9jSHqbQevs+LkkMH0t7GTRwoUCTc4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uKBbG1tXK8QbvEahMS6hBg+M2X5x8AZg3FvG5zmMjeOxCPyltYrAWpbVlx9MeXgLfcjkeyxYgX37bVJaB5eWy8qciG8dB/YpQxd0gF1b5qwN4Q1ru8arcRUmd2JEGN6W+RVswp9A5TSYRusdHC4AWp+jidnu+N6poQNVca+uD+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lhCoWHCX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JE0lus009864
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:28:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vdbmtSFf9LsX0Hod50MXJ8Rpn1iGHT3/np5G+JKs7cU=; b=lhCoWHCX7qe+rVwX
	LqmV72JQOzvBnoG3aA8+g2N42668uUZSOLOtRgALRFXBdKuvzlehaeBL87CfUU2R
	9uV/p/CyV9n3uO+k43dNmm7407EQLpHQNDRofDYbfAa68XUJocbik36mmzVKfOLf
	dCz+XQIIBUz9smyQpuu0neKfMGend9fneY5Wie95bq/uYbzWpWqmOZmR3U1l/fuy
	dU2YRsc1lHIGw+Qo08MN3uBZ1uUezWZr3kjrCcPxU9/FcATI890F4qbCatEMrwri
	dcXLSIQ1yhr4BxpgXr+ToFKYV8NFpM43LoqCwljc93jZ20TZ3d8vqSoCgdQAMSEs
	uVi+PQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxkcuv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 17:28:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eb07043f12so7418486d6.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742405329; x=1743010129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vdbmtSFf9LsX0Hod50MXJ8Rpn1iGHT3/np5G+JKs7cU=;
        b=DaIsPdRlyEls7WSMwGPQtsy960NE5PV6MOgDefWXwaNhYHxYKYji8Etrm6uSuttxX6
         4CL6R6IaNGPgJixzkB5snGVxOzZhULwqBZsbDZLDkk/JVEfE+joGxgpVW4KCOGsCEIg1
         5nG6N9hSDxNrUrS+o3l8IvPgraQkrMD/IbLl9OPSVizbW7PZqb0OmY2hm2Vn5S7Bl2ro
         qdTSU0nB78G644mCv9uk98InVN+X63pDnpENKsw7RIGODQqgps1TreiteHK1ZGaKW0ny
         omh1UEZ+AMKzn9gMDHokARIj8aTcUH/Kq4snyDjmZqKbglQW8E4rTtVY17wPYzvowNfv
         /Qzg==
X-Forwarded-Encrypted: i=1; AJvYcCWQKefgFDsvjee6Pw04gayHDloIX+stc77XQkmaCswbzv/4ScMQb83Ag8sxLyLTBd/zFXzYjYnVEKyn@vger.kernel.org
X-Gm-Message-State: AOJu0YwsDbue3OkSjeZ3g7gyxqDNzJP+egXs/VQRuDvdIWzViW6W8JaC
	FAsPou4S8FXSxCLzBU1JPXioq19o360D67e6rgPGqdcqk9jUWfIacdCYz/z8gCvg/dInIx2eyhD
	WuB1gthzoRMmbCkwjLuQtqRTqdBwgwtU1PXWFughU9H2IHJRETUTBqLXCZrKb
X-Gm-Gg: ASbGncsPQmi5xNbWyGQSINMaRFIxyIfiK9T4KBK4MJ0j5crt+yIniJrsTJuZIchbKiE
	roKLqKlFhnj18mQKQrvZ4u4EezU8pD54AxeIOhCWUwN+Ro0OF8nu5TF84+pGKYG5EcZJPN/vj/i
	SfQjOX9qpaIa01EQEntfdJrdoFOfpo+zk5v0pMMLK8j9N9J/bQoIwlqDc57lm5pJbgqUq/lJzU3
	G5taNrxniwgBj3Wd5uUkyVloSmn75VqP9JbzINSISdesVFHVA1S68FMYUMJjXuzBb6LCDRSwX7L
	gngGfJo4c9YZ4AmHaQkKSv5W2wQkGMT+6BAy32cRFcyRkLy7bhawv15eKUIKbAlAzg8L6A==
X-Received: by 2002:a05:6214:f0a:b0:6e8:fe16:4d42 with SMTP id 6a1803df08f44-6eb2b93945bmr16243116d6.1.1742405329518;
        Wed, 19 Mar 2025 10:28:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSxO9Ad8Gc8/z7Se2G1kFx5n0pPSkG+JyMNgf9vIXCx+1ZEU+MZgfslIX3i34qdI2GvBa3LQ==
X-Received: by 2002:a05:6214:f0a:b0:6e8:fe16:4d42 with SMTP id 6a1803df08f44-6eb2b93945bmr16242886d6.1.1742405329200;
        Wed, 19 Mar 2025 10:28:49 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3147e9bbbsm1060035466b.54.2025.03.19.10.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 10:28:48 -0700 (PDT)
Message-ID: <05e082b5-6ae3-4d25-af81-f2c3b664ad7b@oss.qualcomm.com>
Date: Wed, 19 Mar 2025 18:28:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sc7180: Add specific APPS RSC
 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-2-cb36882ea9cc@oss.qualcomm.com>
 <l4vd2xmrowmmtefieb4cbirq6ntkvnwbhtpxcyzwdeok2vgtt7@zqgqndumgecv>
 <881655b5-30c0-42f3-863f-5b6606a3e2cd@oss.qualcomm.com>
 <rg377etwxv3yupth3acak4ycthahi7sennm54sbah55yqj2qdk@vip4xxkbsp7n>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rg377etwxv3yupth3acak4ycthahi7sennm54sbah55yqj2qdk@vip4xxkbsp7n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67dafed2 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=rhAqBTIILTDuOorn4egA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: bixsxaupdAzmqirj2I1ZpMU2Il14uAZL
X-Proofpoint-GUID: bixsxaupdAzmqirj2I1ZpMU2Il14uAZL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_06,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=977 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503190117

On 3/19/25 6:25 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 19, 2025 at 03:14:42PM +0100, Konrad Dybcio wrote:
>> On 3/18/25 10:30 PM, Dmitry Baryshkov wrote:
>>> On Tue, Mar 18, 2025 at 07:35:15PM +0100, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> SC7180 comes in a couple firmware flavors, some of which don't support
>>>> PSCI in OSI mode. That prevents the power domain exepcted by the RSC
>>>> node from providing useful information on system power collapse.
>>>
>>> Is this behaviour specific to SC7180 or only to ChromeBooks? For example
>>> TCL Book 14 Go or ECS Liva QC710, would they also use this compat?
>>
>> The hardware and firmware representation of the RSC is identical, but
>> I wanted to alter the bindings required properties based on the specific
>> possibly-chrome platforms.
> 
> Should we instead have a separate compatible (?) for ChromeOS platforms
> only?

No, the RSC is exactly the same. Quite frankly, the expected power-domains
entry is just a way that's convenient to Linux to signal the platform going
off between the drivers

I don't think there is much to overthink here.

Konrad

