Return-Path: <devicetree+bounces-264227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G7+EI23imnrNAAAu9opvQ
	(envelope-from <devicetree+bounces-264227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:43:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B928116E6A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 885613013782
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C2A32AADF;
	Tue, 10 Feb 2026 04:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPQTcqBJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Eu3JNKAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF13191F94
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770698632; cv=none; b=Kfoqyj20av3QjCxZ34BTLIzOc/a117HPL0bYo1oXEAbl4B2qRe9gK44K+msYfiqgRDWzBXNAKpDwM098NHeU7TfFZzn73NtC8U+WXJ58E94d8p/GitPWK4AMbUTGj8OfJu0k+BV3GIJtSJHnpbOiqxniJvz1AJuQueMOvxDb3VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770698632; c=relaxed/simple;
	bh=aj74Wd3UJnJv+wwSk8MgS1eKBotWRY6d/HxNi3I9tB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rwDeo9q4kAEjFhGm/Qm7veKxh6pmWEZjs6gSyD2Q/nHu5SdEvyde1aFAzwJzFMakaEuy1Rzxk5m2z9hXjiZoSren8J9y4XS7hf2FRP8PKmVQskU2fHHhE7lV4yPSt/egpvqk5rYXQlpsbwrcPogiXcKiwgderkWVPi79BR1OJNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPQTcqBJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Eu3JNKAS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619MmLAn1419398
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:43:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W6+8G8nl7MvNRnkLAsupqS5Bp1YCcMpqIVPQTLqfTM4=; b=iPQTcqBJL0qnbgyn
	m59pQ8Jm1ADzMnjbn7b/OWN0JG/6Mh/ET1Em9T/rpcUhryEDCtXe5PddvuRex1Vd
	L1EQCYCl7TvXX1Xk+fChjBT1cQJbF8OE70xwcN4meseGxydsyfzJBfqca3+hEfxb
	sWrpqI7W1F5gOgx2/0/4C+bU17tc8DKZl68No0wPGW+CkIRvGkV9xoFkfhJxxY41
	vu62Wx2W/x4ia7GomygC84e0dQhObF5xGVeMr9dmZvxc0AjZ15NsuhMTYzi7icOD
	S/iRBaBlXVzdEi+TkRQilJrk2BrhOLN7X5AeEK7XH3/30C0zROaDvSm2lpIaO0DD
	Taf2Pw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvrxmy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:43:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aae0d40a47so70552865ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770698629; x=1771303429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W6+8G8nl7MvNRnkLAsupqS5Bp1YCcMpqIVPQTLqfTM4=;
        b=Eu3JNKASCKr2ekpUq6v8V0aczYekafkK1pwvn+w8IB5D2GN5fFEKcXN5LnnwudiyRi
         zB4a7YSAY0lgymLJG7aCLgiNase3ct6Xep3RqkVbbWNv6vwUFTHPdKPEIBrHx+5TCGbL
         rmhvPwO1xdIUh9h1bKrKrQGeEXlBe8eDm6BVCjf9MTm070mDtGdHWnKx6IFnmVyf1WLS
         +42mpa/st2eYQrRjvhttn5jO5wYeRwmMAJovMsjk9uqtuNiXy1p9v4Fq6G6iv2hz2eoH
         OaXtHMVxQIJNQgr4D0gnczcAnCFmGoSXWFGshIIFJnbqUh5HbgC82wFubqX56E2j/Sts
         fJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770698629; x=1771303429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W6+8G8nl7MvNRnkLAsupqS5Bp1YCcMpqIVPQTLqfTM4=;
        b=qazvBm/HHB8EMUkOEkLWQq4kJEapfhHf1PIve+e3iy1yizTjFTq/htM8kM6pmrObnb
         28aADIwZ0vc8inoonhsjR5pjsMqaEfLFkJK+rwaS/GTGUAHsVAukWZuaWnlxbaL26Dkq
         ++n3Orfd8N458geOK9d67W+XjrGoY9e6w71KbNN82Vsmj1X+mHEYCyaPGX8FLIQnIpNc
         ZRLhSBeCM24NB7BrAePXFWJ8agzlR6YD8itpSQLtnYXy94yLcx8Ys4iaykdYzK3ygGiU
         RHpajFxsvZWTkmrduroyPMU7Om7PwjLbVgEqvZaUsQFBXXUKc6j+1c9GV+wlIt9pXjPb
         EeSw==
X-Forwarded-Encrypted: i=1; AJvYcCU2S154TxnST+4Pm460bbw5CBvqNKBbXL+5KXGAFUvXbt9oogAUe5Zaxw9mDAHVju8L5wrTjmPc+AiY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy47/O73Y1noPfp2j3V4KFsYDveJZox+NLM/H9RTAUGksN0FjtO
	FFM+0KzKaH8Kg/d2sfY9Apl5+c/Fy+yV0524b4mBCmoO5W86JBmNUJDCJt9K9PBtBOxvAJF+POP
	wCxlKtcksWWyHcduPnevr9jgZOmsY9as9/eQJF7u7S5Mth7RgwaUf56aqx3uBdmsP
X-Gm-Gg: AZuq6aKCMAOyiRLkjI6rxXouAokCd0C1G/QPNa8JXIADAqmDJORLkW2cX1rgHdTviYt
	9gfhWrwzjuLvsw05cXhsHMq6LYEYw5v+VmXj7kt9Gme2LqZaA/mmIR4pOSJz/f/h1T+zvnzxZY1
	JF0YjvElVCYnEjHkyGbh5rIz1iqNvL4Z6ynmJCACv46Fo+/dfqmSDldAoQ30EiPCwGqs8RnQGC7
	WMXzDP3XZogo6wAdMRqcOAdPQ1g5aQlX0fuHMrLMLK+C4l8DyZY0s0KZpl0n3oM62ACv5tt95ac
	HynaO7ogt+cdH8s3IPNoB2TIFN7+DFxE12jwPU0STppizoprFekmVZqlM3/hAwHIHAS/AMey0lv
	beAQiCtUDb6mXTeWfw0FXLyzsvAGC4dEl3j+MQ4DdsZ2PVB+sqj5Q
X-Received: by 2002:a17:903:3d0e:b0:2a9:484c:ff19 with SMTP id d9443c01a7336-2a95194a492mr128522275ad.42.1770698629392;
        Mon, 09 Feb 2026 20:43:49 -0800 (PST)
X-Received: by 2002:a17:903:3d0e:b0:2a9:484c:ff19 with SMTP id d9443c01a7336-2a95194a492mr128522075ad.42.1770698628919;
        Mon, 09 Feb 2026 20:43:48 -0800 (PST)
Received: from [10.217.199.117] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c8b041sm117312205ad.34.2026.02.09.20.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 20:43:48 -0800 (PST)
Message-ID: <4454b03d-9e1d-42a9-a8e6-177e3848a366@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:13:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [[PATCH]] arm64: dts: qcom: hamoa: Enable cpufreq cooling devices
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128053208.3240189-1-gaurav.kohli@oss.qualcomm.com>
 <iq2cirb4axawir4a7yjm5okf32ptzwdrvovji7tp2hdzmui7qg@pidosokrykgi>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <iq2cirb4axawir4a7yjm5okf32ptzwdrvovji7tp2hdzmui7qg@pidosokrykgi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDAzNiBTYWx0ZWRfXwbSl+ljTs6Rd
 I0KSEwQlJWNmsgbneUP8e5B4O4QFyxM3w0gBzf6qb8FwVt2IyxsB6qgdbjvHJA7m1pGiY9ljXqo
 J1NHcRM+Sdb1JvcKMwGVbtREOAsxvpyjyry8QJvU5v8h0Rpb0vocZ5Hcv5C0zTRAun0eFn7fUGv
 jzbADvG7ebh86F0Crs5lC8lS7kHlPtgJybG+H5LXWmey5iAbewQ8qCeHspyrAE9MZMqrTaLruxI
 fikvVswd87EDgDsjalNxrzn4lekUft6eJd/gG/5FEfbz/N1MWrMXJy/V3MCz2C9kVMzkgALR0gn
 5IHm9qB5qz4TE750iO9MyP+lVZ8MXqPH4OTfScf07+KG/x0xxeDGiGvR+bzOfZRed1gw5ZtbcyD
 kz/2L6UIjKNQPvLDVAb/geDGCXzX3RE2o3DAwovJ4Azes+gwbEAIjqevxmZAhtfqZm8C8OAqzp0
 AeFJ+kQvRzx/p23aprw==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698ab786 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=uWovGTecX45KREATSWcA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 8AYp8NNA5sl0ZmAtzJhxY0GfqXxl2JsC
X-Proofpoint-GUID: 8AYp8NNA5sl0ZmAtzJhxY0GfqXxl2JsC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100036
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264227-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8B928116E6A
X-Rspamd-Action: no action



On 2/3/2026 11:21 AM, Manivannan Sadhasivam wrote:
> On Wed, Jan 28, 2026 at 11:02:08AM +0530, Gaurav Kohli wrote:
>> Add cooling-cells property to the CPU nodes to support cpufreq
>> cooling devices.
>>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> 
> FYI: I submitted the similar version back in October:
> https://lore.kernel.org/linux-arm-msm/20251015065703.9422-1-mani@kernel.org/
> 

Hi Mani,

thanks for sharing this link. Could you please respin your patch. So 
that it can get merged? we need this cpufreq support enabled.

> - Mani
> 
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index db65c392e618..799e405a9f87 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -75,6 +75,7 @@ cpu0: cpu@0 {
>>   			next-level-cache = <&l2_0>;
>>   			power-domains = <&cpu_pd0>, <&scmi_dvfs 0>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   
>>   			l2_0: l2-cache {
>>   				compatible = "cache";
>> @@ -91,6 +92,7 @@ cpu1: cpu@100 {
>>   			next-level-cache = <&l2_0>;
>>   			power-domains = <&cpu_pd1>, <&scmi_dvfs 0>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu2: cpu@200 {
>> @@ -101,6 +103,7 @@ cpu2: cpu@200 {
>>   			next-level-cache = <&l2_0>;
>>   			power-domains = <&cpu_pd2>, <&scmi_dvfs 0>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu3: cpu@300 {
>> @@ -111,6 +114,7 @@ cpu3: cpu@300 {
>>   			next-level-cache = <&l2_0>;
>>   			power-domains = <&cpu_pd3>, <&scmi_dvfs 0>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu4: cpu@10000 {
>> @@ -121,6 +125,7 @@ cpu4: cpu@10000 {
>>   			next-level-cache = <&l2_1>;
>>   			power-domains = <&cpu_pd4>, <&scmi_dvfs 1>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   
>>   			l2_1: l2-cache {
>>   				compatible = "cache";
>> @@ -137,6 +142,7 @@ cpu5: cpu@10100 {
>>   			next-level-cache = <&l2_1>;
>>   			power-domains = <&cpu_pd5>, <&scmi_dvfs 1>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu6: cpu@10200 {
>> @@ -147,6 +153,7 @@ cpu6: cpu@10200 {
>>   			next-level-cache = <&l2_1>;
>>   			power-domains = <&cpu_pd6>, <&scmi_dvfs 1>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu7: cpu@10300 {
>> @@ -157,6 +164,7 @@ cpu7: cpu@10300 {
>>   			next-level-cache = <&l2_1>;
>>   			power-domains = <&cpu_pd7>, <&scmi_dvfs 1>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu8: cpu@20000 {
>> @@ -167,6 +175,7 @@ cpu8: cpu@20000 {
>>   			next-level-cache = <&l2_2>;
>>   			power-domains = <&cpu_pd8>, <&scmi_dvfs 2>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   
>>   			l2_2: l2-cache {
>>   				compatible = "cache";
>> @@ -183,6 +192,7 @@ cpu9: cpu@20100 {
>>   			next-level-cache = <&l2_2>;
>>   			power-domains = <&cpu_pd9>, <&scmi_dvfs 2>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu10: cpu@20200 {
>> @@ -193,6 +203,7 @@ cpu10: cpu@20200 {
>>   			next-level-cache = <&l2_2>;
>>   			power-domains = <&cpu_pd10>, <&scmi_dvfs 2>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu11: cpu@20300 {
>> @@ -203,6 +214,7 @@ cpu11: cpu@20300 {
>>   			next-level-cache = <&l2_2>;
>>   			power-domains = <&cpu_pd11>, <&scmi_dvfs 2>;
>>   			power-domain-names = "psci", "perf";
>> +			#cooling-cells = <2>;
>>   		};
>>   
>>   		cpu-map {
>> -- 
>> 2.34.1
>>
> 


