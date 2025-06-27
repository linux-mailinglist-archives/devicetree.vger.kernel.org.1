Return-Path: <devicetree+bounces-190343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E627CAEB7A5
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9273172031
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988692C08C9;
	Fri, 27 Jun 2025 12:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+4QH8Yj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB60298248
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027209; cv=none; b=t58J4nvHe4gwouJGYbG47pj9Mr3Kg2hgbb8dw1SKtXWHdNp/+/NGPeqnhTXxnH1z0HRX4RMk+U1zlqC57B1TihiinLMNhHsgwS3iRI9/AaAjv0FRWHcClGFzNB2onZSlTFmTtgm8LC0j0y5c7P45GRHPHpL7PKvkoCyDipCE304=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027209; c=relaxed/simple;
	bh=uvLf0GSmDfBqWnfb8F3nJPftkgEoswcxXdrp9fik/Dc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NAIMht9yH2oYAn9PaKEt8yT6U+6ElliOx+w2wCqvKORTHf/JJxN4SeZWD/tg08p1Wu7uNO/iwIbAjZR6MuOR9RZ5nyoVNIA0LbFuNB5SOC9mZJLYoAowjZ9hb16QhHM+kLg36HxQoeRf4Pk1yrYcS2XearhusLaE+45HwsnAXRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+4QH8Yj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBgZD1029158
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YW3xJyw4MXHu9B0GBzc5gHoDvKGTsk+fsKdR1a1sIbA=; b=O+4QH8YjgyPItHjb
	u8d63KLj9Wxt0oJLsOq+kn5tLQxNBXLp1EZRjfpWs3BlP+TqGIwvSU8XygJ5yyFX
	ChFVIz6cafe0XdrC6HHiWqALXr4Zt7bdhx37EMErB0JXSXBc6EpKRcaajgw3Xyhx
	hO7VnbClwmiEz/eX0TELvbDeGwSXb8Oo6iEat2o3v1lS1sKGONLqWtoFz1bF/pQS
	mQ/tj6+OkwiokbEFbir3jUeVakc1+HmqNdJl0DkdMRRsm8T3ZZU7NLSEL5vs7GoI
	MMYSmW+OrbvVvBkAOB1iiZn0LUi4LIB7FqxSfjVNcwfSsM658NIbRQcpBcOU3cCJ
	0KystA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47hkpbhfqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:26:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd202ecf82so3179396d6.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:26:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751027206; x=1751632006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YW3xJyw4MXHu9B0GBzc5gHoDvKGTsk+fsKdR1a1sIbA=;
        b=UKRQdY7KiXaz8AOOrjQnbd3CwLxl9jnKFS/simuddUdschqufgzXS9pS+tP+7LLV0a
         LcRl4CvYGVcuz0o/i9Mg4D87AxGMNITxIgpbCnNqbW7lK9p+l3v5perXbWsjK2sKnUHp
         95RKiqe/1J03zWp+yu2U/HJQZj39PkjCxQ9JZ4haABybvuu+KePR0AYMy0MwTIrObwcX
         C2n7Ae3KIQunKwOF6yHUxCNxL/PoMmPy3PbG1Yf5mM3Js19gRC1lI98gMYBn2m2TdbWT
         Fleq2oo/pPcWpt2N76672hWxj8ggIGpsBoStzz1BYbgO7vV0yr4KF2i8agjSqJP8UrjU
         avUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe1tsZKt4t0Wma3Wrgfc8Z+cuGcB625kr728m7iIX2cRYAg29/sehhUJ7oWCbR4hxOixtQKUjbyWAb@vger.kernel.org
X-Gm-Message-State: AOJu0YyoNevmuWtjmAH1i6MTUWAUlJ7U+nvN6DgvmMyP791TFi3pZTVK
	fe9LA1b/ykRdpBYfcFiRXqGY8EOneaavffMD104fSsCw1yiPVFGnjrPF7XceQhCzvfhJ9t29bZC
	UX97iQThoTNXvpWbkaJOq8nvbc6Bdkl52BR3EX4TJGbb9VP43EQ+VZrk4HsW+qfTG
X-Gm-Gg: ASbGncsNfMYJ3oNTGbQRxwCqNf4hrCvWnhJwlQ9DIRljqIXKEU5P7Evf8s+nOljxnFi
	SZ01+maQy7T3zukmUYe/9MC92Oymac3FF2bvwF1458NI5S3PvMMG7NlENgdqnMNU9SfKhPZONLl
	IH7fyr+0QR/5wHI0uEsOdO2yZO6gHKauUgGJl68WJeODvfaDkpT0zFNzV/IZEN+ZfIS1RkyV1uW
	2VL54aPM/KrQwSdr3ST2MiBRO2xR2MDLGyeUnFJMDdKSBQZnkYpyUSTLqkGDAjnNkZr3NtEv642
	4syA0fiS47BVY3sTRbNzCBeUFkQx/RMK08u05HJh+c2ITw+uGUKUBOESwHMRPNgjY2/PN1Z0vTV
	U0S4=
X-Received: by 2002:a05:620a:25cc:b0:7d3:ab3b:e477 with SMTP id af79cd13be357-7d4439e23f5mr154618285a.15.1751027205902;
        Fri, 27 Jun 2025 05:26:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/bh4wpr7MzQxlOHz+0jxOOse9nBDfqf6PABTa8SnfEnGAbDpv0Z1SKZKQLrLB1c23nS+QmQ==
X-Received: by 2002:a05:620a:25cc:b0:7d3:ab3b:e477 with SMTP id af79cd13be357-7d4439e23f5mr154616685a.15.1751027205192;
        Fri, 27 Jun 2025 05:26:45 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8319e706sm1467294a12.47.2025.06.27.05.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:26:43 -0700 (PDT)
Message-ID: <f55a057d-2cdd-411e-97b9-5ede1300a4e9@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 14:26:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] firmware; qcom: scm: enable QSEECOM on SC8280XP
 CRD
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Steev Klimaszewski <steev@kali.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-efi@vger.kernel.org
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
 <e5e3e8f1-4328-4929-825a-3d8e836cf072@oss.qualcomm.com>
 <95c46d39-5b4a-46dd-aa73-1b3b9bf81019@oss.qualcomm.com>
 <aF6NUeNLPrR5vqEf@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aF6NUeNLPrR5vqEf@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMyBTYWx0ZWRfXwezts9WrACiD
 SZ+6pU5/GLcGjNfWxsbpiBwBEg7q+Lph/B5uvGeARpYSm/IeERwi2rxjnXbxVZuMEce1/dBPdXO
 xuWSIiGjdpp1DijLtcHG/kQEAMWR2KOK9uv6ykH6xah/Ob6oSl6XnQtBegxkx8ZXFchCsUJIpjj
 FO5ivvYe9iou1fgmvMC3+svRUGwGGHbrN6x1OL95MWc+Z3V+YKTAhvEXj1+VKspzvS44jkAzbm2
 klG2Ddu6UlF2zvie9Ad++uH8Q2eYYvScDGV+KmFlZqDz1kAnvZWab791gzUAqIIhpejG1fX3dLR
 2rYhUON8XMOC9p6jXQUPZHjUDVhIN+/sEX+01H1G23JnHLIYhZ6gnGMTrA78DdwRM5Dij6VjLuw
 Pe4W3yiE5yPqJOv9eWDgIgweycMcSyP8b8D/5LrnA4+QdghYYzJz0ippp9OmVdjvV8hDjKEP
X-Proofpoint-GUID: wZo-vubT13ZI6o7e11m-UAyomGdlreot
X-Authority-Analysis: v=2.4 cv=AY2xH2XG c=1 sm=1 tr=0 ts=685e8e06 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=TYFmBxuQ-sYf0sw0Za0A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: wZo-vubT13ZI6o7e11m-UAyomGdlreot
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 impostorscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270103

On 6/27/25 2:23 PM, Johan Hovold wrote:
> On Fri, Jun 27, 2025 at 01:54:37AM +0200, Konrad Dybcio wrote:
>> On 6/27/25 1:34 AM, Konrad Dybcio wrote:
>>> On 6/25/25 12:53 AM, Dmitry Baryshkov wrote:
>>>> As reported by Johan, this platform also doesn't currently support
>>>> updating of the UEFI variables. In preparation to reworking match list
>>>> for QSEECOM mark this platform as supporting QSEECOM with R/O UEFI
>>>> variables.
>>>>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>> ---
>>>>  drivers/firmware/qcom/qcom_scm.c | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
>>>> index dbb77c3f69ddaa931e7faa73911207a83634bda1..27ef2497089e11b5a902d949de2e16b7443a2ca4 100644
>>>> --- a/drivers/firmware/qcom/qcom_scm.c
>>>> +++ b/drivers/firmware/qcom/qcom_scm.c
>>>> @@ -2005,6 +2005,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
>>>>  	{ .compatible = "microsoft,romulus13", },
>>>>  	{ .compatible = "microsoft,romulus15", },
>>>>  	{ .compatible = "qcom,sc8180x-primus" },
>>>> +	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },
>>>
>>> R/W works for me (tm).. the META version may be (inconclusive) 2605
>>
>> Looked at the wrong SoC META table.. the build date is 05/25/2023
> 
> Could be that my machine was not provisioned properly. Do you boot from
> UFS or NVMe?
> 
> My fw is also older: 01/10/2022.

The machine has UFS, NVME and SPINOR, however the boot log definitely says:

S - Boot Interface: SPI

Konrad

