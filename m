Return-Path: <devicetree+bounces-242678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A475BC8DD29
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:44:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 299E03433C9
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5267F32ABC4;
	Thu, 27 Nov 2025 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dVGqWZCf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="APZwDp5J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7E432ABCE
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764240238; cv=none; b=kdAz8DllkM73nNeLzNcNvUfhtpK2onIIeeq+IhYCLF8vCZbv45sEIGlAbAP6zvX5JDpf4re5w/FM85JE4nev3tYsFuet2hTUYBd3EtFD6qUZ55Ho664JCsoEas/IrCLDBDYjtmur6CTGrzpubz407s0av1OOCUMuWChuKZEKc/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764240238; c=relaxed/simple;
	bh=xFLy5qe4yQ1PTBlKEffYi0M1RhCzj1BiytfiqnYQdC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s370dI0rvxNSjSi4CYtPoapDk+/LMhnbSsTfR4EtZrbdAwlJl/Zv5QIb4Ske+fSorZbq62AmcksmKnJJ63XjJui3eHzXFpXvJdB2bAxrAlba29TtZzm3IKqLAuBVbT4i8gg+T+n410zV1F8nR/Go78i+g8kG/z0PJFkHUs2wS/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dVGqWZCf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=APZwDp5J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR5gsMO2855082
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:43:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xFLy5qe4yQ1PTBlKEffYi0M1RhCzj1BiytfiqnYQdC4=; b=dVGqWZCf4nr0FWl8
	6iE+EVUpTYlg7GADtMFsrxvLkFwCIJ2fZNvH+X6YyKfXdVajBX9qsBfxJQRpfYE2
	KGjyloSLPh4v4tU/k4hspEUR1mm1ecKQmsGl2pK0Qqaq9sOO410O8thTw6o6Wcz9
	+GgkLmHO3GneS+U5cqe88KzWvwvUqzHOQm+BEr0WIp0fFRqDMND86B4S+G3qYsu5
	pRYL+2LrRAnshOYhszCA5ChuDvI9HlVudW5w7PUW6fzrsMkKu4sx3xru7K8vY5D1
	a0UqTHG8TB7tdhp04jVDKy06xEsWvsmSA/cNo0Cqu55mYwgEhTJ9z6VXpTE5avvm
	WXJJwQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap4vhan4h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:43:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b29f90f9fdso19353985a.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764240234; x=1764845034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xFLy5qe4yQ1PTBlKEffYi0M1RhCzj1BiytfiqnYQdC4=;
        b=APZwDp5J5olqPsW2Et0/wQZqYHlUSWYYfgUcW+201lKfMHWtqriVfmrgWMicipH5gW
         4oxjLu3OkgMHbBABes0YkGtJo2h+R1QeU3OtwrKr1xafQtIE5zgizvh6k9RbG7xxHad3
         ZnZ72te+yfPf/SgwdhDWpeoqXEB8w1qxv7O18q0BsUkB57cGUEjphKCXqT6neVIq2CzT
         K+S5D6MuEx+egMn5MUwfexp1EGul2TeKU2kKRbEGsuReKYKXZmrDyKIg1m0f9ioxU7sR
         V6Yd3w8wH26GcA7vf3ipTRfCV8+u4ssgCidNnLFkZGB34tCHKdNPSt0GN1oPBqRbxtkw
         Dc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764240234; x=1764845034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFLy5qe4yQ1PTBlKEffYi0M1RhCzj1BiytfiqnYQdC4=;
        b=e0jBjUYzWea5u+WmIRuhVrDFjObxwOBgDFa5YrjmMnpHbipo+1brxPdZEQwDFcIHbf
         EZTPfcIKwzqz3f3epFxWEUoKYDfzgs30JHw+HZiZYyiJVvbahLBMnBt3ifzmInQGvbEh
         x0mLdnOiKeVRblzx6AvV0FRW0CoaNvyCCoRpQv31vmKQOKg95VtfEmtjqefzOYjUTQO8
         Vih5uehOghSfyJh1npVhHsZNm2RAxGCtTnmnJUgsTLxYiRiz3yOh5Fk3suRqMQSn+09Q
         KrI8ep8khZmMCRO42cMaJrcAcSxg5JHyuGOcZ/ZUuzZj1BVxgLJIH6aA3sd/442grW6i
         6TPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyNUEIWxrS/WsgOjxCFBvoJe1D6IUcOY2tDqr/BHcH853WXOfwUQqsK+1s5fgW/SHXceL4cMoj2Xce@vger.kernel.org
X-Gm-Message-State: AOJu0YzOTxbQ8xeyM3G53YUa1E1NpUptHaX23x6BBL6jDLuxuGw7ieKb
	05fysz2jyAdBsng8CdymB2IfoEiaAU+02/Dn6TOr5Cwh7cKT9Wyrb83+hUkNl+VOrNWZo4E58po
	tkaz1tjvimlblbIHDToKAkXNXIalM7TIyeZoq3wEqTefgvWkJptJsD8tvNdzlnpdc
X-Gm-Gg: ASbGncuuS5NUtVCUEThxSjO66oY/1zWSFZCQpVSIb6WBtm3+yjYZt23pOOXmuTvLPfh
	BtXToJJ2fcQTX3uoTjTZ7tmD5OD3jLY52yW8pzrHXp1nkbMc+h7uNtlCYvqxOS8g0euuYPYWPIP
	XWLUPLOjU5aTL8MwBdqjfOcXyLvmFAEif7nIr2e0pd7Uv5DPMRyWb/x89jUo1irf6o9HPNVUKd/
	hjKOD0AHlumETdkXfuWGjC0/oxKAzSirN3mQA3BJQQBOWgDStOPj628o5kdAT5hpb+niswKI856
	DgnNbL12jk39ragKo4pentErnGP24QrAyBzIL6HzdfYnmx9CgkljubNkauB32cvJiXOi4zjZgmO
	EtL1Jl5IE+CkK2JTUiatVbBk/UFjlm19ebaKMm0csSLnRzZ5f4qoNZzRHHNMN2QRNESw=
X-Received: by 2002:a05:622a:5c6:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee5883a523mr245990401cf.2.1764240234066;
        Thu, 27 Nov 2025 02:43:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAOBv6a4l07YqKcdeibRnYAIOdHT5/pAgI/gn4xMd5q8VvFNZKwml5c8mGskRvKTeQ9o6jPw==
X-Received: by 2002:a05:622a:5c6:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee5883a523mr245990231cf.2.1764240233639;
        Thu, 27 Nov 2025 02:43:53 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751051313sm1194722a12.28.2025.11.27.02.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:43:53 -0800 (PST)
Message-ID: <2099b101-5159-4739-baa2-03f2adfdcb0e@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 11:43:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] soc: qcom: llcc-qcom: Add support for Glymur
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
 <20251125-glymur_llcc_enablement-v2-3-75a10be51d74@oss.qualcomm.com>
 <80c26f33-aaee-44f2-ab7f-767467423396@oss.qualcomm.com>
 <19ebab89-e0f2-425a-a95d-01637f324170@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <19ebab89-e0f2-425a-a95d-01637f324170@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3OCBTYWx0ZWRfXx1XIHTSHgy5x
 DTrNMHUFKavWqoKtHae1WVdK2msBnwbIq+gGqTqnJzn31R8J0LX2c1Xvpczrez5nJyPu1s7KeLU
 XXLFGWEUXUkhfNL+ZcSqbcHiTxTkmRkf15P35TiP7VESfSEztlhv7JMKDx0asU3z4fWJG7YHdL+
 W+joPkWPYvRiKxURTBxiPuFQZFPYbY57qRew6jlz1QA17xRkhafefjTAfddU9dSOPXry9h3L44H
 bs1P0dvINFfmRKVoIWL9cB82lTL1TiNXYxPtADKTgeRsIhDjK456J3GqPZTrHeRHdJ9CCWwM9+y
 LKKXBrjJW0qQo0EWux7mCdaPbZNSA+UC7qfvjhAybL1ISOUG3j6fDBEbgtarOt7K0XbsNDbOBQT
 6d+lPASFjp9o6EQCYi75zvq/GCgZtA==
X-Proofpoint-ORIG-GUID: uZeiUgrHZ6F5skl6WoNjJp2W5eoxx6vw
X-Proofpoint-GUID: uZeiUgrHZ6F5skl6WoNjJp2W5eoxx6vw
X-Authority-Analysis: v=2.4 cv=Lt6fC3dc c=1 sm=1 tr=0 ts=69282b6a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sGm28_-GvG3fCMEtpFcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270078

On 11/27/25 11:37 AM, Pankaj Patil wrote:
> On 11/27/2025 3:52 PM, Konrad Dybcio wrote:
>> On 11/25/25 10:16 AM, Pankaj Patil wrote:
>>> Add system cache table(SCT) and configs for Glymur SoC
>>> Updated the list of usecase id's to enable additional clients for Glymur
>>>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>> What happened to my tag? :(
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Konrad
> The commit was updated since I squashed the patch for enabling additional
> usecase id's.
> That makes the tag obsolete?

I would say it's closer to "fix a typo vs last revision" than to
"rewrite meaningful logic"

Konrad

