Return-Path: <devicetree+bounces-249468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48ECDBF18
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 827003005EA7
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DFE330B34;
	Wed, 24 Dec 2025 10:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SjZSYxdt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O3vcEA2v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC5D32AADC
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766571107; cv=none; b=Usbzyf0mzk8oxdufqGdkryZ+mCpVKCdN6LYIuKK99eGz7j29SfBVw/H2w/0g96zjdOR5nRaLXEcIhn5xQsyM85d3i5lyKlVH725IRcSwVQhug53MM++16hVqqc8Jw6T2jyFefQEePHn27qRPW5Pr0gPI40O+NmlbwTjRsGTvGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766571107; c=relaxed/simple;
	bh=0+LzigftUlRjypYE7eKHbXMl8C6YbFGHAlET3r9jYMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uMzrka9gatFZoWXZT4MCfcyeewOQuI4Kw9VFH8is60SQHST64+kDTlJVRI0CPsgW/91+Lpp9pPn+Ioh7/0jcV3tRuizNm9PwZGickfsNmitkzmfhaAsb8F3uSV5hZLB0d3coc2KFf9KwgRZoh2DBWiwehyzFTseVUdJWvbvUrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SjZSYxdt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O3vcEA2v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7g4rK1056769
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:11:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Svub1lU8ZSgyZ0FEnwysVHAmS9UtLZzdyHUW+Tohk6E=; b=SjZSYxdt2qoOIAnh
	sPT/EtoFzR/AwExHlaMqaGu92FAjXvr4mI/r4uIFkGszTaRob3AZ65FxNpZmSx+B
	3zraQBeYRFFTb5xW2K4U8xyfKGiAp6NxTxyKmBv0jmmQJ09FEVR64SJxBdhhy9sl
	WCiJ5FiweTQixePBqHVC+J1POROYTAWLRCTUa6/99utOu7pdlfCOThZzLn3BdLn6
	6BQK18B6FA7PT/LjV6H7Ch5smKCsJk9D3N5z/hYMHLNaLOizMdS7n5HFn9+1x6q8
	xMu0W+z/wm3q+vhcUwb8SDsC1H06QMqda5bEkzaPeHGZ0jClBtj0LNMvJZ7QbLc3
	GljtdQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v24e5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:11:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f1f69eec6so73129675ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766571105; x=1767175905; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Svub1lU8ZSgyZ0FEnwysVHAmS9UtLZzdyHUW+Tohk6E=;
        b=O3vcEA2viZ3YgUK9+c0aWZ/HMJMkoqpIY97uhD0jaFrbC1AX7AEFlrgJYdsNDBAJ3x
         iJHyK4Hw/CTSwucY6NX9pgen0TtpkyKUwSLKs/4vDaCcEf/Uu4Odb3aYQy84G0OoG5fc
         yxAp3cU35xViShPa6QP8nWTOOBsMWRw/pFPwJjVwHhBKNCESdBO6xbUslzXzsUKYYxUg
         vvEO3I5LLNPnzNaAWuP6E/neyqRSQlE+D73kZ5mAcjE0bTSE4BWbWEBwUR/lZhwJA8hD
         nUP85/DCThNJlxJJcYFQum1KvY5ZvazX657dRqdRkuph7ATOonMmEH0aPEHQAtNOa8Hr
         7e5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766571105; x=1767175905;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Svub1lU8ZSgyZ0FEnwysVHAmS9UtLZzdyHUW+Tohk6E=;
        b=vYiU2vhkNsPEeWcC/lvkWFSbfuPF9LE8LuVImLlRmT8Rn+yePJdo9zLzVHoxIA/gBI
         d8RIAy2bQbWuzLkE3zSZ874RynWdODmwYNkTtGZfvXf2HTg+hU6QW+4so26othFfwbad
         b5mdPaOtx0ckIXUvING4IGbs71sBaOlINDhtBakKXpqZLnR/8ndrgaPC4d9wCJJIrmTT
         mY+mwoFv3cYO3wgNCs6dDz3USwNmAaCObnGLmXzIPj1EUqO5ygGuSNJc6DGqRmPBQJHa
         MP94r2MxiZk+edtL+P1icyE0+yITk/MwJ47Ssxafqp5T/0HYcgTzd2IwxAuFkFaImIUu
         eQIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfYmC5cBO5o1BmPK6ee1dPHktRXOlGUTA1gAUyDt/GOGLTqNmPA/IGWOtp7h4/yWvNnFKTfYVTpKxl@vger.kernel.org
X-Gm-Message-State: AOJu0YxgC0kR5ZY0UOflaHfGxt/Ky4HejxdwIiaongMZq4GJsQxOFyjT
	pbQ/tojp1fLRiObSyZ23+uJ4bzWdejUxW1g0wKyY1VwYLTBCkeSBOamQIvK8kIx5cTs5YK2ARmb
	Enyc5Dsz1cX/1+sWFvLIcYA+Y/W6nR94p7cJ21hu38HELFJe8mMYWE1STxv63Bo/B
X-Gm-Gg: AY/fxX4p/n8C+8trmgDzcYNw0Nx6bbDq79qtqDRU91TNuq5CMrIDUmG4n5XI5Lrqe9Q
	OSyCojVoLulhHfwyQQYut3A6B7hzAy8tdgxsf30DVtyzAmONFk/6nzD+GrtFp8Iuc62zqhKn9NC
	i1cALC/3dj96+H4YLNfThHc37hFtWJ97rFjkiahuNQFRu8uwuAPz4hoyvm8wh/G+xLdHFaul+oo
	WmwJAoFQsYIMw+c91s0MEtTzGk4WyLzdegdQb9kp+owgi2IbXKyUm0kLqyMGllSCLIHmR7z/oxE
	Yg2YY46vvT76ZkNAzFmYT/m8CKSIEl9y6iTs77EBCJCv+BEBxZg3txj/cm9UqMZBEeaQ3+ptZ3D
	ZxeaP8vbX+3srVQwLyTiwhN1hp2QibgozMQnzs41h2Q==
X-Received: by 2002:a17:903:2cd:b0:2a0:e532:242e with SMTP id d9443c01a7336-2a2f220dd7bmr160503185ad.11.1766571104928;
        Wed, 24 Dec 2025 02:11:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPP9Ip+0lDlRJOgiICxJKR2lJuGko3g+A/N9Bn0a9iSgphrPC7hgQ2nkVu84feaV3gcN9RWg==
X-Received: by 2002:a17:903:2cd:b0:2a0:e532:242e with SMTP id d9443c01a7336-2a2f220dd7bmr160502985ad.11.1766571104446;
        Wed, 24 Dec 2025 02:11:44 -0800 (PST)
Received: from [192.168.1.11] ([106.222.232.236])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66bd3sm151171405ad.1.2025.12.24.02.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 02:11:44 -0800 (PST)
Message-ID: <a0df9078-f05e-40bc-a708-cd03eb86839f@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 15:41:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 8/8] arm64: dts: qcom: Enable cdsp qmi tmd devices for
 monaco
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-9-gaurav.kohli@oss.qualcomm.com>
 <2ce05668-e4b1-4943-aebd-9ba57f4c8363@kernel.org>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <2ce05668-e4b1-4943-aebd-9ba57f4c8363@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4NyBTYWx0ZWRfX1nCzVq/3qswS
 x/I59YYUwL4xKVzSY/+24J4Vz14MW1uuIGLQWUTG7pZ05rWKFBDFHCDyvMGSl7d4Dialq5fBNNN
 iSsVJTxh2r3BuLmHpmeoLL92tEcneuuaecEOQJKmvYQXCNCsSBVJs2T8tQdc6MGZePIJGA8RATi
 7C+JotY+y8NpyGci/RBqXpTidHD3WolCWlZGFRFZ/itDOmiQSbAUHo+LwmAGThYqsuJWCada6WV
 scF5MrJnwm5l3K8hG5m4lqI31C1jytORZAiwbaM4GOYkuVrqdggUY7hMBS4zzJM1E5V8wHyJ9f6
 0Cmd/XpbYONIQaHyDOM/SLIyizo6q4RTymYH4nCyrz5TTV0vULh84msiK6PQE0KsWmXejwVBOW3
 QLx6fQxv3YsUGEC4SFeD68qGi+sUVf2phWs6Rej0ZHnIUC+cOwg8KmO/1E+PScxkzBQWGd7wwjy
 fhzpWThZ/alXl8hRtXw==
X-Proofpoint-ORIG-GUID: c69ed06OkaKlBXSz1FTy1Sd0GQITn-cS
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bbc61 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=pk+8NuH2X28N4C0eta/h1Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JG_C0qjW1QYSyXvylJMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: c69ed06OkaKlBXSz1FTy1Sd0GQITn-cS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240087


On 12/24/2025 2:28 PM, Krzysztof Kozlowski wrote:
> On 23/12/2025 13:32, Gaurav Kohli wrote:
>> Enable cdsp cooling devices and thermal zone cooling map bindings
>> for cdsp.
>>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/monaco.dtsi | 92 ++++++++++++++++++++++++++++
>>   1 file changed, 92 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
>> index 985e37bf4876..1fe148ec5cf7 100644
>> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
>> @@ -6217,6 +6217,14 @@ compute-cb@4 {
>>   					};
>>   				};
>>   			};
>> +
>> +			cooling {
>> +				compatible = "qcom,qmi-cooling-cdsp";
>> +					cdsp_sw: cdsp_sw {
> Another LLM generated snippet or just mistake?


All this is manual code, will fix this.


>
> Best regards,
> Krzysztof

