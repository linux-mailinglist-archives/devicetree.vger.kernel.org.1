Return-Path: <devicetree+bounces-224450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77207BC3E9E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:49:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF1819E1979
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEEE02F3C1D;
	Wed,  8 Oct 2025 08:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k2UcBihO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C2315278E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759913340; cv=none; b=LMcNt+M/HshWqpr1etGzo8AlSYsnMzsSSdlaeyLS4Kd7lff3HEtQJT9tT1qXqEpv6LPfD9j/NiPTGjaNBl36hPAr61alB6fWme7Eg1EpOXxAv9RYIQsn0O3So38h9ARaFsMHNmHBmYDFxw7ZQWhOBBkaQKVRav2sn6DmLJUJS3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759913340; c=relaxed/simple;
	bh=7BfBSZDHZvPKSGJGNS64jbWWiaNwxlYfIpEdJGGrQ1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BvCJWate+fImZQgn+RYPsXbHG2uLHcXIFIdLTd34B29vtBRBMgdxb9S0GPIL6JNuIgQ0+uEkAlj914jAJMgJVcJiFjSZE3MfIn88bht/fsRT9HzXPY8i+0RIDhWEtxB8UB1rnG4sv7IDu6DTbZpZD24B9FxXfHIx8dGF4ZmD9zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k2UcBihO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987afFC024387
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 08:48:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G8wKJs7k8BdJDa4iq/XFnFxcY6LibnKFgudA7DP6ZS0=; b=k2UcBihO4PqnesT3
	sSz1/2a3iHudoAPCGKDARqi9bfhATtseXK0z2QUEiMqOdkDKEHm3xtR8Fpb4VgHp
	KHGYJNHejTCAkPLgzVinwzaZLeY7VdST4aflq6iJimvJCzHZRvndwoViGGaSMB6k
	qUEvQ8s2IB4J8QPX1CTe+cQHKUa/CxqbJpJvijFmWuaRL9u2j02YjNfj7mUBIOIX
	HWF/x7NudT25g75tp4RU7+/oHfJXq2tlWrIm37Oy+Qp1HqW1AfWdXlD6E/RaY9zU
	BBqlypWjLALsagUyeRTwoqpx9UqaaqPjTgrGynsZ6M3byrZCD8qMJdY+/tg9iaqT
	+gp+uA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n4wkta83-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 08:48:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e6d173e2a2so9396651cf.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:48:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759913337; x=1760518137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G8wKJs7k8BdJDa4iq/XFnFxcY6LibnKFgudA7DP6ZS0=;
        b=mZ71emZ4phYbhSyJQrYYf0HrX2wWW3G2LI6V6wrRkg6ji5BF3bhNUTM/HuL3NjcaLZ
         Qvfrbc/OjaA26zFaaRpNcVdLDQPK3Wl/vaueonAONDBgLiAcCoWmpyLdfxo4A1tVDD8b
         kCuMO597mVvv+8JprlJtac2eFU2YLeXuvGPLKYgnwnWP0Zo7BjZokl9cvsrmhBOm3tg+
         AgFujMFt0h91kaqSiLVcKtIJcRd+a+6ShGj+9isDXJpfsll8HX4WBlF7INDmTH9T8YOT
         NPFIXzW+WcLozAf4M+Ql/Fx5XzLeDPUqjGqCqk5sqJys1uqLprap3oqMs7o2WuNwQXTH
         Ct5A==
X-Gm-Message-State: AOJu0YxUnWT5fwi6F1Tjr2kcUbHsDydSKQQ5KyuWwUqGet+S69mawm+L
	gh0s8Cy7MK7lJiykISbJAr1KppwfJbJyHi17uo36xRDPwIA/XuEeXZeM97uxhmTyn2in0lR4tez
	fAGjnl9djvCiIFN+Z5ZV4VpT0m5f8if/3gxV5cC+QH0L3WU5O+ct1HHhC683GSj2G
X-Gm-Gg: ASbGncvK+JOBTgtSWtHh2K8HW+V0vBhn1OBDF9I4pDaTW8R5GmeTfZbUwHXgsWVN4SY
	hxTvMaM0ZCaxkDRUuA9GIJHSlh4CeygvWEBlwEBPUENE1qsxgu8Dtjprmr66e97UtHG8go4+Unv
	DV8bURB3TsjPXVaLUcV8M+enMLOD+Os18MTKnHBMJ16lDKY1D6NRoiq2e9nO+u0lpkstMD+3ZPd
	H4hIkS8Ykjc3uYHL3oeSN0q34L92GMmrXKwi4EPy57fgf0M55LmgdzlgfoqXoW5joVuHuZq9pdl
	VZZyPe7MWY+ARgXw+oc00nvXuhInbeAYbR4tQSBDIMlMziblN97OK8C1le9wZ24btGr37YkmEaS
	+UBmpT3eY3ig9bYQzekFn7tT3lCs=
X-Received: by 2002:ac8:7d01:0:b0:4d7:f9bc:2057 with SMTP id d75a77b69052e-4e6eabf42dfmr24908641cf.0.1759913336811;
        Wed, 08 Oct 2025 01:48:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsCSe7n0ysQoCqxTpSE7/nf5Ci/mBlv5y0BJyPNF55pdASGC5ln6HklotZH+fpGWKqoE/HYw==
X-Received: by 2002:ac8:7d01:0:b0:4d7:f9bc:2057 with SMTP id d75a77b69052e-4e6eabf42dfmr24908391cf.0.1759913336234;
        Wed, 08 Oct 2025 01:48:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788110de2sm14260231a12.35.2025.10.08.01.48.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:48:55 -0700 (PDT)
Message-ID: <39d07bf1-cead-449f-85c8-4651e5296cd8@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 10:48:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: r0q: enable hardware clocks
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-5-ghatto404@gmail.com>
 <d16e8c07-6c10-4c91-9bbe-a260f0497d29@oss.qualcomm.com>
 <99D0B281-03A5-447E-A6BF-892C99829D0B@gmail.com>
 <c21a408b-ec4f-4de8-a9b6-ca25410ace6a@oss.qualcomm.com>
 <CC2BFAA0-7E61-4D91-B369-88EC9AD4A315@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CC2BFAA0-7E61-4D91-B369-88EC9AD4A315@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDExNyBTYWx0ZWRfX1d/FYWSxU4xI
 Qu785TZLJHOWgJwHHTpUvFO5R1PWqn+GWDdVV2RJ9ckyKxKhvvyq2GcqR/dbLMvgT15RLVEEUvj
 F803/8h+n5/7tQgPwiP8C3QVo8aH12fpn3Ca2BrWvXqzLkamhbOOuJP8uN/zLKmH3SZfPPKGr+I
 ycrTleS2X+bTLCr7KJrv2hMk8Ryzw53l37AH3PSDD+eChv1WIp0qOp4MWUsI1EbMQrY8bsIodgm
 aDksDUcbXTuDOkcFhwHYnv+XujHHmMBd7ZmrG7iy446PVkBdIAaSXV2+7oYPPZd2f1usCficxrF
 ZpJt7Xas6rZqjBQHCHJ9Y3o+IueZ21x5HfBpdpmAQWHU1iQTl7oRye3twVtSexWLmbud8mHVDpc
 UB+cdI1Os3CInzu+tq5a37mj4GnXGA==
X-Authority-Analysis: v=2.4 cv=BP2+bVQG c=1 sm=1 tr=0 ts=68e6257a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=wKFhJIuLoAScDjwq2nEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: sygfJeY3nAC4VGjIjITzOPkNfssarHzn
X-Proofpoint-ORIG-GUID: sygfJeY3nAC4VGjIjITzOPkNfssarHzn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070117

On 10/6/25 5:49 PM, Eric Gonçalves wrote:
> 
> 
> On October 6, 2025 9:31:42 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 10/5/25 5:50 AM, Eric Gonçalves wrote:
>>>
>>>
>>> On September 25, 2025 10:09:48 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>>>> On 9/20/25 3:46 AM, Eric Gonçalves wrote:
>>>>> Enable the real-time clocks found in R0Q board.
>>>>>
>>>>> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 15 +++++++++++++++
>>>>>  1 file changed, 15 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>>>> index c1b0b21c0ec5..c088f1acf6ea 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>>>> @@ -225,6 +225,21 @@ vol_up_n: vol-up-n-state {
>>>>>  	};
>>>>>  };
>>>>>  
>>>>> +&pmk8350_rtc {
>>>>> +	nvmem-cells = <&rtc_offset>;
>>>>> +	nvmem-cell-names = "offset";
>>>>> +
>>>>> +	status = "okay";
>>>>> +};
>>>>> +
>>>>> +&pmk8350_sdam_2 {
>>>>> +	status = "okay";
>>>>> +
>>>>> +	rtc_offset: rtc-offset@bc {
>>>>
>>>> Is this an offset you took from somewhere downstream?
>>>>
>>>> Generally you *really don't want to* poke at random SDAM cells,
>>>> as they contain a lot of important settings (incl. battery/charging)
>>> From another sm8450 device, I'm sure it's okay.
>>
>> That as an argument alone doesn't sound convincing to me, since vendors
>> also sometimes repurpose unused-by-Qualcomm SDAM cells
>>
>> I actually found a data source internally and this cell you're trying
>> to use is reserved for PBS (see drivers/soc/qcom/qcom-pbs.c), meaning
>> you already fell into this trap..
> Interesting, in this case then why does rtc still work? And
> how can I find the real cell? It's not in downstream DT.

Well if nothing accesses that cell between your last write and your first
read, it will of course work, because SDAM is just a means of storage

As for downstream/Android, it does not use SDAM at all

Konrad

