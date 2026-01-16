Return-Path: <devicetree+bounces-256036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA14FD305E4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D004300874F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFCF376BE7;
	Fri, 16 Jan 2026 11:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G65dgMtl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DKZPwTkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E38E36D504
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768562889; cv=none; b=uyj+8jCgTO7v8/xv01QDkhmpQNXZzOZJMZdE2g2Uo+bkvcEj9zfrqOafKHZHZtTB5ZJOVS+5ofnoNguNt8ZbGtEDbl0aaHbDrLOJ4bHGz9psHlz2+ACBT72i9iApnDl8Dz2ZvJWPvp3rTec/NAS7j5MT+cBtHlNGKtl19pzUX8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768562889; c=relaxed/simple;
	bh=0utBFb8mqa8Nlq+uIrOaYId6hVjNADQWomDlQChWteI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q4GPf0MF2zZcrkSOsy4tkAC7DgrNJfXdGa3zmhqQKf7LAnLtiqz+cucQ4kslj65I0y6+VYzElB9yRkE1gwm0ke3yDIDPaWzu/KAaQaEX9M6DWGCaohpk3elMPnfzcN+yFq1ti933aWqJqq/NWq6xSLOMEn2YBN21g6CXPelfvMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G65dgMtl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DKZPwTkY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8M6GH4100795
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:28:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rqT8MD/WUeSfxRuizcbAkisgMvVNCMar3GwucXQStqE=; b=G65dgMtlpKJjzoMr
	sb2EwBgroIGgvbcR0G6WoOWrPrDY5+1I7lIbFWUf4pLbgLLkCS7gCYLJH9l3+Bx8
	gF3gdpQX5ALCv4B2CUtRqfcEjt4EtfWvnVFIBjfU7cRstmTx1UVytC1t+9n2ft/q
	zMuFUYTsFz67z34rUfxpGtvbW3xhpC1rclX8Xy6CKUZQfXpoMSDoh9VsVuv0XR33
	zUw3glwxFesp6biDYgdVnLzl7KoWYzpzNIgkDgDOjHV0ZDtge4sjW277d8SIdlE4
	QnKrhr/ZcPC8tSbghsFGDL5QTu8sFevWz0qDzSzKofVW1plIy82lgxujtLJdfL2n
	gGQ+5w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9751x7d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:28:02 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a090819ed1so13475905ad.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768562882; x=1769167682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rqT8MD/WUeSfxRuizcbAkisgMvVNCMar3GwucXQStqE=;
        b=DKZPwTkYB/BumA/z3eVn1GA8IWkxwKZ7iehhBf45RnnTUBjajI8sZyzTsSSM3JTGzB
         85zKlRHmLYnQKgIghU8OxGy8DoO8y6GQZx3jAkIUl04KN9+1xjdAiZ4O7lyZQEQZ5mJU
         VFFYVEk5W3ZvoukYeTxomJUY8YdJcM5xOWP2Q7AHALPWKlD1secvHq0CQj+GQjON3cfY
         qd8GYWoxyLTp1SSKiQlQd4F6D6Ecx+Mi84rd6616xntMFDMSOZUk9ueBiemfm2UJK6CP
         UIjkeHg8M5CrZwZGoVhTvg9qtQlDBkARIiO/SHt44HFRR+jB6UzPToo6wrmNgvZoqrDF
         z/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768562882; x=1769167682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rqT8MD/WUeSfxRuizcbAkisgMvVNCMar3GwucXQStqE=;
        b=ubTAAapmkR/BvYRIt3AHgRvZ9KVCoA9keghYLD7dWAgz0Gag337tQDrf9K4q5w0ogg
         ZWjey3WI8hgKYOV+Sf6JDGPXs8RoMu6JY5on7Wrt9UURqpo5WueIBRMi0+yMZKuioY/y
         OOhkwpV7eXPwyH6LAjbJ0V4oH+JUtnOj7ivtheuF419urk/8typZFbhHAgnjGEoYQPHz
         69fIQF/UiNteeEts+UTtwQyCfpoHtpqzi8c6ilvJaDaiif5JxxcWnDHnpceNWv+xPkvc
         WicTJp/ASvyLuwG0dcws6Hhh4yF0e+ScgtaPs2cVHBkIfLK4ajzdTXPXlD5HQxmokkmO
         jHYA==
X-Forwarded-Encrypted: i=1; AJvYcCXVcqTUczXQqG5pSrQWgOxHJ1x2j4zG0EwZ18qg0GZGcq7jeIxsk9Y7lfRweyzITDsTK5MvUIQ4+VpH@vger.kernel.org
X-Gm-Message-State: AOJu0YzVyXKqFDj+fqwKQab2RALFfxT7wjpzL9r5P08a72IK+zKY7INV
	wF0HwsVZZ0rFCN5EClgIwuAxYzfrCI8GHcLKc+vPwyegsKSfr1Eb+ptWaMAzuWNxP+VWgJbytXG
	pnwc/ibzsSPE/bGV5Kquhpzd9wtcWuEKPmeDF6Mfl10lOlRjTHJdE7knE1XNq2FCZ
X-Gm-Gg: AY/fxX6vllexIa0cc7L6ENoJKxP2p6Xjg/3AGn7afqVyj6i/hplo3ClrSjWq0bOVKS9
	l5mr5dLWEzylOGj7O00WTyJWBiTS+WxComTBMxhHdzFbfdRIhi4f8irD5UhknpRI12usrHkYayH
	oR/dSAW2c13Jwf+O55Nl+K0Dd8GJkJ/Ya2ThfWlljNat51ZWrtC4Xcyo7hAC2sRpTGmLmFYzXo4
	jPyDPY1QndPNTAsZ49ICw6chOOXAg77kKGOlZ/sF28JIst1BelMsUk9lBlMiUzeeuyHEmZYxglf
	yelDbLl2UXw358TSWkmRUikuhXemZv5rauNlKwhZ2WvUOdxJY9wS10LwDniq9TPTC8K1zpIb6zA
	toz9Wyg5ahdC6kbf4oF57Uw7N9RuEvnCOXxoI1RgNZPA=
X-Received: by 2002:a17:903:2ed0:b0:2a3:ee53:d201 with SMTP id d9443c01a7336-2a7174f8e23mr25051325ad.12.1768562881828;
        Fri, 16 Jan 2026 03:28:01 -0800 (PST)
X-Received: by 2002:a17:903:2ed0:b0:2a3:ee53:d201 with SMTP id d9443c01a7336-2a7174f8e23mr25051195ad.12.1768562881362;
        Fri, 16 Jan 2026 03:28:01 -0800 (PST)
Received: from [10.204.101.164] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa5besm19506575ad.15.2026.01.16.03.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 03:28:00 -0800 (PST)
Message-ID: <035e9f34-f28f-47fd-ac36-6277171b0e28@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 16:57:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] media: iris: Introduce vpu ops for vpu4 with
 necessary hooks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Abhinav Kumar <abhinav.kumar@linux.dev>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-6-8d11d840358a@oss.qualcomm.com>
 <54b29b03-4166-60d9-d553-d0e655749da4@oss.qualcomm.com>
 <98481299-4db3-41f3-a974-d9d0075d92e0@kernel.org>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <98481299-4db3-41f3-a974-d9d0075d92e0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA4MiBTYWx0ZWRfX1dytodbcyNbg
 ptn+PJQfB1YHLOKeSHYxCpWpvq5nVyYpeHfGTUEXhoUfpDjmJigE4tDPWaNNZMLz6MAmezbvRGY
 CyXy54xfk2RvCz/7TVKx+9/eBbhzkwT+eOStqgHFUwYnPdfvutU4QKHUVDSVwb4qX8Kl4tM75vl
 Gi8k2uRdxc8sonX3fqBg5KwpWKAbexeISlAuyMZnBX62y0ZWNGfV1bfZtYq/+NNY5YGASfwhIAF
 yFxWQ1eAspor1xosleT1y/gzWR6xIYQa26vHJGq7NELfa4SoNeaZKXMahb6SVvS4awm67V2os6m
 WOR58dQSlkW8RYZcH7jNwlySORUIZ50eMnWOGHIzwUY2PQJuQ9T27TTuUlRYaNw/j9C9NQq/spp
 sO5AQYIl0/X8A1IoQAWV8zmUqTdHNYEYu4Jb7VAjQr8pMRzhGMhibavMglQ2GR9TnchOK0Vq2Nd
 wZ0sU03zQoJfz1M7ZeA==
X-Authority-Analysis: v=2.4 cv=Sv6dKfO0 c=1 sm=1 tr=0 ts=696a20c2 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=StH3JvDaWCOc6R5yz7oA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: twtIB7pTvZfQzGkd5fuHw6qzq5OHtVlt
X-Proofpoint-ORIG-GUID: twtIB7pTvZfQzGkd5fuHw6qzq5OHtVlt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160082


On 1/16/2026 4:16 PM, Krzysztof Kozlowski wrote:
> On 16/01/2026 10:51, Dikshita Agarwal wrote:
>>
>>
>> On 12/10/2025 6:06 PM, Vikash Garodia wrote:
>>> Add power sequence for vpu4 by reusing from previous generation wherever
>>> possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
>>> earlier generation wherever feasible, like clock calculation in this
>>> case.
>>>
>>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>>   drivers/media/platform/qcom/iris/Makefile          |   1 +
>>>   .../platform/qcom/iris/iris_platform_common.h      |   7 +
>>>   drivers/media/platform/qcom/iris/iris_vpu4x.c      | 369 +++++++++++++++++++++
>>>   drivers/media/platform/qcom/iris/iris_vpu_common.h |   1 +
>>>   4 files changed, 378 insertions(+)
>>>
>>
>> Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> 
> 
> Thank you for reviewing this code. I would like to point that it took
> one month for Qualcomm to review this Qualcomm patch and in the same
> time Vikash is sending emails (more than one!) that Bryan does not
> review that fast as expected.

Firstly, the ask to Bryan have been to pull patches (not stressed on 
review part), infact, even fixes are waiting for merge window while they 
can easily go into RCs. This part of the process need some improvement.

I have also appreciated him when he pulled long series for initial codec 
enablement, i think you missed those part.

> 
> I do not find it acceptable approach to harass community reviewers that
> way. Even if you do it internally, not on the lists.
> 
> I think this review timeline is final argument for Vikash to stop
> pushing such narratives and complains, because your review is expected
> to be BEFORE the maintainer upper in the upstream flow.

My understanding is that, if maintainer raise patches, then its more of 
reviews from community and having RB tag from any of community member or 
no open comments implies the series is good to go.

This series is lying there for a month without any open comment, there 
is nothing pending here to pull them.

Regards,
Vikash
> 
> Best regards,
> Krzysztof


