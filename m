Return-Path: <devicetree+bounces-190133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ADDAEAAFA
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:55:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DCB21C43FB0
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7793C22A4E5;
	Thu, 26 Jun 2025 23:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ifkrKlJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063C2264D9
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750982086; cv=none; b=B87dB0OAMfvluCB8ZZuAmyxngDWb3q7gBAbG1pSrptB3GIEgtRM/cBpJ4B4WoWSFYhilRACRyQnA3eux3ulb93JuPKC7vMfQPl9pylwhf+lU6ayXwToIag6MH+EKvfQCXFKfe1Ek0b5WLjqJwRKOuNKFMRe9nUm7VaocTSngme4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750982086; c=relaxed/simple;
	bh=GC3TC7GMidiRgphKPIXpKkHkR9sTB5CRS+p+N4xN+eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KUOm2b3DDiQo/sLQOKuTvQbzonD5iVsfrx5mvd8u5t4Wo2jNrJBzU0BuVcyRMwsVxvA0yGpczsS/JlrA9+qzG2dKnJGI6LHDNjNI8pFI5xK9eTJhTnVUkGQ9eOtBIp1ivraHCtpQSvIcGMWTww5VFxm8M5yZLuVD+yxFAhIGC3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ifkrKlJ7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QJNeDm031055
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:54:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fbs4KYNHfJ3NP9WQooBIb3Q8R1VU/MYQIjF+jTKXYVU=; b=ifkrKlJ74yLUM0WX
	G9aGxzH9Q2H2nceFb3l3kaJ1Dq9K6LtOqlLp10EOPUUvWC/KXfVIHLs+ouV29Bms
	sMB8PlAt79Km50zaZjCFf08mgZ9vK50uMZxlswPciPYMX5DCODQfkDN6Fvxo5cFv
	sZnmhud0F1cSwRwUZj1jOnucwCB/pC4BvknUudi3ZUrsx5QGZawpgUa5yWFCc7LZ
	DhMFP8EeynXP4WnwJCVVhNmXSqUpNydFkpHZQno7MvqQTOsGIxJ4XyJWHZ6sl6gz
	90QZ83zC3EY7HURzPJOd0g8F/TSAdW9wuYrZpjkjj9r8S2CY8onZ2C7ewRnGSgUm
	8tckAg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4x5pm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:54:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d094e04aa4so39173785a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750982083; x=1751586883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fbs4KYNHfJ3NP9WQooBIb3Q8R1VU/MYQIjF+jTKXYVU=;
        b=roOe/g07ioqDoRtjhiPiIUD1ihAVihb7QXlauEEhGcSucf07z5/t/iUP6gtoEsRTBK
         tcUDy6P6KDxnMBYbuHQJCRacBnYIc1PePZJpWS3mPjRpP2vcX2Withd2/PahGnSzCR74
         xD7a9VVcjuC1GRrp/XOBg9cvKV61/TuGNewULiQu3A3yWPi39qC+KnH89HpwC3iZ4e79
         3mMcNEgRpQOjVVSO2v/eP0DV2pvYMziSxRUg+w7hnmzUF406PNFtCOiaChk28R2WK97g
         wlG05ksDl4Rkiex4dHVYBW4tEIJhoSNKeqwaYQCqF/VGngo6RwmgAloeeWQHv4ze2YQP
         G6Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWn6gHs7W1IhGWJhv+lpaFQVMj0GIsvbROJhzeSUbaGVI02RHS3kKysr8vRsBkLm0s2bAOFzjDfKLr2@vger.kernel.org
X-Gm-Message-State: AOJu0YwtA6zwhLMLu9MmAqlUSBAnByAxI4ahr0f+ffplpZ+C6upoCp3f
	63yCOMeO3jNdoCah301vX77CJxUu5z20gTM2Qq6QohFjMA/IX3e9dtvxQg8WE92NvH1oEi716U/
	asfR01RNsbjO40FDKs68TLf1X36hbWrgTZgq0rAh27yGfUBMYTiN/+H4NofnkDGnK
X-Gm-Gg: ASbGncuFz8HRLDoPie350lCkiJc8ewp3c08R+ADLfXnfo8Hdc3FC5rIiv7D4EW1wu/F
	bMIPe7GpHSnHQBHBJxd2jhvOotENoP/ki8sKq0+EQQidrqhqNN6ktFiq+0L98FH2a1P573DU6w+
	gWUfpC5+2YfsU6mG+SKDi1UjIcJcyYXMLKq/AtTt3K0rL6yezI1goVzyoJAyOWdk9tb6gQ7HGcU
	lUoMHWMNWHL8LgazXxrp1Jrn67SB6bPcI/6uITeNmVH64uD+gMq+KJACIZS+UXrmzNRCUGjTdVH
	Its+IlkgHAOpVwwqwwVC2DwKJ5gwPV0jiBiGO/+g1/0P8hJB6KCQYxsZ08CkoP6+j+uHM9wnOP9
	wDZQ=
X-Received: by 2002:a05:620a:17a0:b0:7d0:986d:963 with SMTP id af79cd13be357-7d4439a5ef4mr80104585a.9.1750982082613;
        Thu, 26 Jun 2025 16:54:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZvQe0I94SfbVb+8u+GjBJSQrO+fR99SDvM1ofMBXxhAK7dEqWNc0BrbxupoF6oexwLClKFQ==
X-Received: by 2002:a05:620a:17a0:b0:7d0:986d:963 with SMTP id af79cd13be357-7d4439a5ef4mr80100785a.9.1750982080321;
        Thu, 26 Jun 2025 16:54:40 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659efbsm17829066b.46.2025.06.26.16.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 16:54:39 -0700 (PDT)
Message-ID: <95c46d39-5b4a-46dd-aa73-1b3b9bf81019@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 01:54:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] firmware; qcom: scm: enable QSEECOM on SC8280XP
 CRD
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
 <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685dddc4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=qZF0ikmejsFuwZQdFt0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Q5VSQDih-Z0CLF3oz4A_EkhFdTj--YbI
X-Proofpoint-ORIG-GUID: Q5VSQDih-Z0CLF3oz4A_EkhFdTj--YbI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwNSBTYWx0ZWRfXzsv9BGp51kS2
 ZuXSl/Sdj25aAKEvfGrzDiLpX6kxcBcYcxMs9JKavWXOz3ZmKCge4+vCfyqKfSDCgTm3d9zXgdi
 oDiHHPdXACKgelVonb5tsalbkhlag7y4r3Nu2ycLjDhkjFpHxmfZpzSk6PZKHfr10fdCSZiEupr
 gln21EgKOWcz/nl0xzHkA3U3/Nqsfl9l5WwUaGePcKkKal7aSkRiZKqgmlaNrXrueTvu9HUQQGe
 xWzNASr7xYFUHHpQOL3DWIoNmVzPRyAoleYLMKb+J30h2/KzE+It/6RMnKwkQhSg+/s0jx+C4dY
 TwET4euHeOhz1vipJiQdk7kojjETiac1qp8n7x6DiqcNrDzWkoYr5UbmEqVGTE4pAAsLHHgrq0R
 X6XcSm8mP2Z4fIlH4imbGrYLmqK9xrPcQmmBbJ/Wpd5L803Px346eClDKR+V0UwY9DV6q8OB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260205

On 6/27/25 1:34 AM, Konrad Dybcio wrote:
> On 6/25/25 12:53 AM, Dmitry Baryshkov wrote:
>> As reported by Johan, this platform also doesn't currently support
>> updating of the UEFI variables. In preparation to reworking match list
>> for QSEECOM mark this platform as supporting QSEECOM with R/O UEFI
>> variables.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>  drivers/firmware/qcom/qcom_scm.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
>> index dbb77c3f69ddaa931e7faa73911207a83634bda1..27ef2497089e11b5a902d949de2e16b7443a2ca4 100644
>> --- a/drivers/firmware/qcom/qcom_scm.c
>> +++ b/drivers/firmware/qcom/qcom_scm.c
>> @@ -2005,6 +2005,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
>>  	{ .compatible = "microsoft,romulus13", },
>>  	{ .compatible = "microsoft,romulus15", },
>>  	{ .compatible = "qcom,sc8180x-primus" },
>> +	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },
> 
> R/W works for me (tm).. the META version may be (inconclusive) 2605

Looked at the wrong SoC META table.. the build date is 05/25/2023

Konrad

