Return-Path: <devicetree+bounces-277067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MjAA9NtumnRWQIAu9opvQ
	(envelope-from <devicetree+bounces-277067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:18:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8164A2B8CE0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A96C1301E9B0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4ED38CFE6;
	Wed, 18 Mar 2026 09:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kT6Qve4G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ioHrCbK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAADC38F65C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773825384; cv=none; b=OyC6t3VURqMUfQOOtUhF/7ESe5JSKUaWg2ldUcWUIUNkMZuEH1zJEqp0xACiS+4DkwxWHNlTFkehckYYM79X74kSlW66GhpVTZNcKXzhf0wpmi2uNk021E6jZVxgKPP0gAFogZW3PEybGRVLvyB2HHU6bc8P5OMsK3FJ7J+r9Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773825384; c=relaxed/simple;
	bh=gG8YpPBJWHTKKOsywTFckQWTjFllfY00ZZmBdj+bCE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jj66AB9PlStiV/on+oR1/t6vYsHWZq6Yk0WYyt+KZo+l9K2AWGKONEY1jG9qhq7AimNGA6SGuGWwULUfd7njpFDbmhUOe4Ny2DbIUBbePyxlDKX9oR5WTvtOj+mziIuCas/bhI7Ti0f+5zxSJJ35jF0vV7JI3wKLzj5Cmg3G0jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kT6Qve4G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ioHrCbK/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZPAT2878329
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:16:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WBO1GQf6amTvBiVYZDCx47wmVjgPF6ImMey27b4pnBw=; b=kT6Qve4GPxrZI4ic
	hSKqSHVYc6HLS4/zHWccCNR/6lGw+YmPacmil95xKsg8yrcb6HzC2nD7cKAP6BQn
	WMLjPyEVCTWZNi4qOEgZN++Fxwt0afM96UtNfvEbdErK1n0/a+Hio5CNQ+2yvFjf
	u9SaxV0UBOzn6Hhe9BlHOIskwAfKoa+zVzLqgwVehbuedOFYumgmY9ErrTGRBgq2
	OQ/dL7zFDv55cUicu7+SMlwdC1hpzkCvDS6Incn/PxfgoAYGnwWN6PN1j2fUfXde
	0lIDEG2gVM82AJlSB3LngONeM0at83s3+NFr5DnuDHahcQeDlXgdeXRT9TVTrEf4
	42hWuw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr0s3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:16:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b04db6c138so9784905ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773825382; x=1774430182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WBO1GQf6amTvBiVYZDCx47wmVjgPF6ImMey27b4pnBw=;
        b=ioHrCbK/50Fg7Wn0TSV3PZEDl9BhZkFlStiV5rSjeZWRqUZoRU1anDiZ1J9W4KogMq
         nhzYyNIRJCniQLlfxtNIcSDUmYLeoLKpyjpgzw5xd4EK2/+vFUBTU3ylsyGAXtIU6dMF
         3dYun1IanzibcGaexcD4qXar6JVw3RhruyYcRDxvo8mCNHTAMz1okuIMMbrcTeRfi27r
         JRFtRrzV4WYSdiD7nMeuyIl4qSNGhc/dGhWhyU4Chcn6KJih6qexS3opLyZF0i6saiZG
         SEj6VQymfa0p4jcnnQbJwJ6nQ3sLhCIAj2aY6o8Z9ugv26oJKMcIZS0tZKoye0NZnzqd
         tbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773825382; x=1774430182;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WBO1GQf6amTvBiVYZDCx47wmVjgPF6ImMey27b4pnBw=;
        b=D8sRV4UbdeX73jeAUVyMUlW/pbtoN6b48j5QDhV9E65EM9N2lz0xzQedkPGwG8OU7G
         hbb1Y21ehdt47fxzFm9zMj3XvG5K7qFAM6KosV+Fu4tPUQn9HtRL3N1MMwTV6Tdw7KFV
         gtpRrQnEial2bDCd6vm4KmPY+8p7Uhyj4ERb3B80O9es9ReXjjkecbG92/DFlbf8kQWW
         FJewE4/r8+ukeF+s7wWqIHvhbM1B1MTfm4Vj8zOLYj0X9B2kN3RVtZV7tUaHDqOKEVgt
         6rI1hASCpoQmU7RQp/wMRHVwZUQQjIn6wI7e7nySOqpABEIT06xCrvqHIEePLFVzrLG5
         4m/w==
X-Forwarded-Encrypted: i=1; AJvYcCXGIO5FitilFPCibpUkyD/t/wBxc444tcfsfs7HUKVM9QQA++1nEK2MMBpi/eBqtqCtVMzLyYmKZvCq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4kCvLJwyOMpLuOUeZOKBJjft6nRCvFZF7Lp1Embidk+hCO2T0
	GnCA7HTkjV227AKhZtGiE05C0yxKkUI9T2mks0Who/TgibzTTg0P6vJJEiO4ruBlALnrjHlbovX
	4aOUu2P0F/LIAAGDQAXKy+ODZ63ocX3iPZR3cvTbD15R4RE01zRMmDgKiO5Fu3NKa
X-Gm-Gg: ATEYQzyxFyguye+o8aM4yskw37iLSYdeOlzJI/05mVsphhaTxvrCpfXJoi6bAHhAZv+
	fAUZiDjZGnLLjUG20FoFoJwyM6R2JzRAfaNxPZIcsWpuXue3tsOwLtghyPQsznrRd6i/ucXogZS
	TtsFnjjnv60Q/Zy35TwRdXRHsyWWiGGFImjp1z3qZKNiNxGjlgMmBcrRJ3Vi4T+ygBECqhe56e+
	TCSrq0VGIbi8ysMYkWu3zGMLNNxxUCNVnRliR36Uukm1i2OUeSQkGvZnePE0SuH4Wk4z0SSQdsS
	NH6e3+BleGidR8aWrWutxYalcvwGo878RlHMFSJM1HoQnULu7rf+wo1vFehy9N20dAH01QyhPhG
	0k8bNL+2LCR8OTEWkg3oZK5unt8vs4SUt397SZiDHDSiR47fYZtsbNA==
X-Received: by 2002:a17:903:1b0f:b0:2ae:5426:da49 with SMTP id d9443c01a7336-2b06e3e106dmr31483565ad.34.1773825382337;
        Wed, 18 Mar 2026 02:16:22 -0700 (PDT)
X-Received: by 2002:a17:903:1b0f:b0:2ae:5426:da49 with SMTP id d9443c01a7336-2b06e3e106dmr31483145ad.34.1773825381818;
        Wed, 18 Mar 2026 02:16:21 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f1245sm24693345ad.46.2026.03.18.02.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:16:21 -0700 (PDT)
Message-ID: <9d9a8381-e174-72ef-6e69-1b26de07da67@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 14:46:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm8650: correct Iris corners for
 the MXC rail
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-5-32a393c25dda@oss.qualcomm.com>
 <8dd814c0-039e-c8aa-2588-9c1edbadaf47@oss.qualcomm.com>
 <scsvyc7vb3lnk6mktwltdac5bkynvrzd4jrx7dwceeesbqnhrh@clz7d5e3igkk>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <scsvyc7vb3lnk6mktwltdac5bkynvrzd4jrx7dwceeesbqnhrh@clz7d5e3igkk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba6d67 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=BSPgCQzljRD-_oUiieYA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: LXgQCYqExT0T7sQIgMBekcQLEbqwL8dM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3OCBTYWx0ZWRfX5ZdzaZOlo54X
 +6bvNghe5Iu5WSGgxsaBRU2MfNzHJaOw/cLy9UC2wRFvff7WN5Om1Hzv6dpk+q1QrvX/OR46OYp
 bGJipeT0nUFzIUY9UMvOJAFSK0lApm8X2hn/BNmsoeMRGy6vbNZ+1fIEBmTLc+ajA2P0imKhmHr
 Knc3wErN42bUjdWjyG2qd0AxWYRpHhz+8T5K+s8G+Ch+AgM1HikHFCl7XLmqpDE3s1qEGtplOTC
 SGfYu4PwwUvLkCL9wqgUt2dlFGYkcwGBy/N7hTNhwiQAPHXzB0+QS29SrPa5rNsOWQ7Pn8WeOzi
 1h4mDXZtfhjcToVA3eZ4EUi3C/sCWQEB2z/LtaEDGFv1jeUPWWDL2zbQPTe/ilSUGfYXgZyCqpj
 ejXjtO/9MnWRAOTye3CoO7TiWqRFIwxLf5i3va1SMuZETVd3a9cg5KWDphm2a+danXwZ18H3m1l
 We06RMaUu5UGZfD+nPA==
X-Proofpoint-GUID: LXgQCYqExT0T7sQIgMBekcQLEbqwL8dM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180078
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277067-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8164A2B8CE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 12:32 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 18, 2026 at 10:54:07AM +0530, Dikshita Agarwal wrote:
>>
>>
>> On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
>>> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
>>> match the PLL corners on the MXC rail. Correct the performance corners
>>> for the MXC rail following the PLL documentation.
>>>
>>> Fixes: 56cf5ad39a55 ("arm64: dts: qcom: sm8650: add iris DT node")
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 ++++----
>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> index 357e43b90740..9437360ea215 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> @@ -5236,13 +5236,13 @@ opp-196000000 {
>>>  
>>>  				opp-300000000 {
>>>  					opp-hz = /bits/ 64 <300000000>;
>>
>> I see in the document that this level value should be 280000000, could you
>> pls check and update accordingly.
> 
> I cross-checked, the table for SM8650 lists 300 MHz here.

Ack.

Thanks,
Dikshita
> 
>>
>>> -					required-opps = <&rpmhpd_opp_low_svs>,
>>> +					required-opps = <&rpmhpd_opp_svs>,
>>>  							<&rpmhpd_opp_low_svs>;
>>>  				};
>>>  
>>>  				opp-380000000 {
>>>  					opp-hz = /bits/ 64 <380000000>;
>>> -					required-opps = <&rpmhpd_opp_svs>,
>>> +					required-opps = <&rpmhpd_opp_svs_l1>,
>>>  							<&rpmhpd_opp_svs>;
>>>  				};
>>>  
>>> @@ -5254,13 +5254,13 @@ opp-435000000 {
>>>  
>>>  				opp-480000000 {
>>>  					opp-hz = /bits/ 64 <480000000>;
>>> -					required-opps = <&rpmhpd_opp_nom>,
>>> +					required-opps = <&rpmhpd_opp_svs_l1>,
>>>  							<&rpmhpd_opp_nom>;
>>>  				};
>>>  
>>>  				opp-533333334 {
>>>  					opp-hz = /bits/ 64 <533333334>;
>>> -					required-opps = <&rpmhpd_opp_turbo>,
>>> +					required-opps = <&rpmhpd_opp_svs_l1>,
>>>  							<&rpmhpd_opp_turbo>;
>>>  				};
>>>  			};
>>>
>>
>> with above comment addressed.
>>
>> Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
>>
>> Thanks,
>> Dikshita
> 

