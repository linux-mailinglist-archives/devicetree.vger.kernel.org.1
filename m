Return-Path: <devicetree+bounces-277910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCboDfopvGn4twIAu9opvQ
	(envelope-from <devicetree+bounces-277910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:53:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B32FC2CF2B7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5261303A09B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23A0DDC3;
	Thu, 19 Mar 2026 16:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F8fs0SV6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aSU7WfPT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE013EB7FE
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938907; cv=none; b=rTj7YKQNqEg24lieGdVzeb1JdcfvCvwVFHLO3UE7cyIFR3WDpFUxkrh1wBXniRHkK34vkv9SGTCHDgNPi6gOz/e+J9Hvt7gxgkYAi+EsQXjPti56w++hXKv4/PYo8lhal2lmQ6FdJ0t4BQiUK6mMlAy6A6AMYxO+Y+/DTrEW2mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938907; c=relaxed/simple;
	bh=y/FraABuP9xNep/gjS+RJwSyPYFQAXxr68yqhYesgH0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=SzapubClg2s7wu/PDlPsBP7NnXOUjwr7py3v/6p4eLxL1Rqsjs4ccjda8Hdlc563dZ8KONMYbq/tIKDSVMx8jMGgIoCZyjDE7jhHBs4WJFWoqJhncEWUmYDHeTufNOnD2P62XHovtnY58gQzGDexWmGlzVQeoqlBz+dXgXEl9CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F8fs0SV6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aSU7WfPT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JEs5l81027199
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:48:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r2PcFpzfVHrVpmqpZbpK84XpjUUsLQoulukuZRGaWSI=; b=F8fs0SV6AdGCTMqs
	pZEP50JBY+BQ29KlpzupTEXn7aD2OMXx7O18U0SFlRrO3x/iCCETvAoOkbd8M2Js
	JEzj1EZEDV6OcL5Y8v882zQ9Bq0H6bWmUGkcSNPtnoN/LDTJLsLaLbMQJuI33SAd
	Glcjlqx1K7hWtqb/8jkOVVjgHTx+kAXDfMrClFx5WUFcfQ+o6bpQaIRmT59F5WuJ
	uxNKBlg4rxNiP9A1Di+yWEIhitt6DLioH/p6pWBDb4YCLTBWAdpYOiE0X00OABVv
	8tlO6rcwbky3ZBd57Dmzeh6k0qpoEEYdMOdjV0sqsA+2ZEXeBWVioHruEXjN8RUD
	wAQDWA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0032m5ms-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:48:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b04db6c138so15437025ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773938901; x=1774543701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r2PcFpzfVHrVpmqpZbpK84XpjUUsLQoulukuZRGaWSI=;
        b=aSU7WfPTTX4YlAb2/wO6Fe5LCf9cmGe0bwEY+gTgq2fofjAcIMVSotaQznlYVU2Kkk
         gkrm2jAt5pVoizeHuTzac/wmv+eoLUoRVf1E5vFEl2jcTc+k17wCYG2lZiZ4K3wrGZf2
         GCGkGxdd4MN4Tk1xVpR+OYOefGGMqMk3/RxSPIMlQ+h2eMJIyJmxSCeYVTWkI9n8oYvj
         QKq7MS5QGn0ltfJXU7bNNPGel42ZqC+UYYOOAgLsU+ICWu9ZkC9wYF46Co6jH+BrLfln
         FNaNw5+8UAXRK6W2873fhucGK9MeeBDTAtpEw9UrwHapzoe1o5UfEDMbNpJqrOhwVuMP
         bt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773938901; x=1774543701;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r2PcFpzfVHrVpmqpZbpK84XpjUUsLQoulukuZRGaWSI=;
        b=XnxW5neFabB1e31zBoPCLn77FeSR+2EC0VyZXFMGR7Hh4d3JWcYdG10tAK173Jdlj+
         82/mUQaLUWZaz5NBwgqm3G84DVjbO451ucEMGigd3fJcOLImmYinCdaKzonHFP5HAL9N
         sysVicSylIKFQf/b+7GnyWb3uJYIftV0HxP/0Dbi0GQZZd2nDJg+SjVV3YjQO4WMBBg4
         PCYanWE7r5a2zuh1UPbUs7fbRV5KNua8heCafdMgBh4xWe5OK6Tj0c0Vc7UCqHQ7eIym
         Pn85RFwd9adXQcjjZ180Lmtc04wcoLbZFWRgjgF0rcVK/Fu+SZib5S+aQ8V+BXbTA//x
         J+fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdS1k56iO+vOyjV71UIQKx0e6dEVSjxkrRfZS3RvqGV9Eh5nFibMGss/qPHqkCqZsp8oM8BJo7yrQJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyN14lNkVDMaOhQK+Kw5RH9pmOK2s8/xm/4YWWY/oK0XV/0+Cjz
	Pj+gkONPNqHdjBmLuTxc8ZZtjcdVkhUSbxt1hI0a0coEAtyGD+fOqLnpwq9PDer85GSpW/vXSWp
	aHdpNOP0oPetnZZrVsTrjTxE9GZ/aGBzDP6xgYpU/aR+I4UkH4Jols1+pQCTt6s3p
X-Gm-Gg: ATEYQzyTohlgT6BhyyXRilCmL4v+txyuMygLAQIIB3Ls8/TBNook5iCn2YJcOBYf1bc
	1l5WshI176CPIAa4crYeI6dkrAaObzqiHyRde+5prnW04mCBAMmos2XaHhqiKQ9mh9A8SixtGhR
	aFBzr9n5pHTIqZgq2cBzBkQNUIsnLXkZKR9mNjF20eMlUoS6VoP1KlwDLT2qLW8douJ6LNktTRE
	LevsXzkXBB8LucRyFeOy9WeaGHMAM3GPqUc2uot9cKelWdMNhi8pjes1m8LNmcZLpgG0g4rbR3s
	5/Se+y2jIYqa4/uPlJp/Nj52KInubJ78e8T0JmZnqmey817iXYnR0C1Yc068QFp6IK43OT712wQ
	UiA4lb8X/Pd1nMhsBZ07lpG1uNuQhuSJCHkViLU4/ZfPUyZpbdmYIvsx1ag==
X-Received: by 2002:a17:902:ef08:b0:2b0:6621:cedd with SMTP id d9443c01a7336-2b06e4319d3mr88268385ad.49.1773938901000;
        Thu, 19 Mar 2026 09:48:21 -0700 (PDT)
X-Received: by 2002:a17:902:ef08:b0:2b0:6621:cedd with SMTP id d9443c01a7336-2b06e4319d3mr88268155ad.49.1773938900520;
        Thu, 19 Mar 2026 09:48:20 -0700 (PDT)
Received: from [192.168.0.8] ([49.207.203.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e608a66sm61607595ad.61.2026.03.19.09.48.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 09:48:20 -0700 (PDT)
Message-ID: <4a839c38-1534-4e57-852e-452876b521c1@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 22:18:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: Add glymur BWMONs
From: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com
References: <20260302-glymur_bwmon_dt-v1-1-f4939d75bd47@oss.qualcomm.com>
 <fcd9de7f-b65f-4a30-a74b-57bdd690422f@oss.qualcomm.com>
 <2d6d813b-b2e7-408c-bf58-86d25859bb40@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <2d6d813b-b2e7-408c-bf58-86d25859bb40@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: r6_pR1o4Hg_0ANzH7pzU03xBemuk_tNe
X-Proofpoint-GUID: r6_pR1o4Hg_0ANzH7pzU03xBemuk_tNe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEzNCBTYWx0ZWRfX9jKWyxUixnkR
 lqcUMhH7GvEzls12Yu4YTKcK0iv6ioMC/TtX7fjdqpcSFATPYcJccpp0WfwMrxowRMmmbT7qvw9
 NOcIWPJRwgkqlwFuEXh4j+iHXLpQ9oKfrYaZko9YKVROnYFUw6a0jHt9A1Rmmuj2l9hfi6XP9Kt
 bamiO1EdQ2vcpMNMsQPP9Hwzynncs/dRiGC4BfVjRf0M4ecNEhdiLPjY9mlpCsNjdstgoy8XbiU
 uKJZC3B6Akd4oDI6UaxAsLJVQ0aMFu1ghUB+72ENfLnaJjy12Utr6UYwSDGu5wxQBEXJYDT/Vuv
 MTmlwSadE1Yz9SJQ/DafQtqW5PD4YCvyav1DCo3HXcFaBwC1IUP1sfxZT5Wjsz6391qDdrWqqE2
 8uqo4NuT+zwvcsX1/xeaOA3CaxuC521t6GKPxWjRaejYOlKXNFbg6IoXib/OR/a7BUErl1s53qm
 YCFSOnottVkawkhojIA==
X-Authority-Analysis: v=2.4 cv=WO9yn3sR c=1 sm=1 tr=0 ts=69bc28d6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=x8mJkLzaWX5SuAxYKO6kdw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=gSO6LVZMiFxkKTxjkA4A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 impostorscore=0
 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190134
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277910-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,100c400:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pragnesh.papaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B32FC2CF2B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/3/2026 5:52 PM, Pragnesh Papaniya wrote:
> 
> 
> On 3/2/2026 6:27 PM, Konrad Dybcio wrote:
>> On 3/2/26 12:46 PM, Pragnesh Papaniya wrote:
>>> Add the CPU BWMON nodes for glymur SoCs.
>>>
>>> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>> Signed-off-by: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 87 ++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 87 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> index e269cec7942c..fd947b1a17dd 100644
>>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>> @@ -2264,6 +2264,93 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>>>  			};
>>>  		};
>>>  
>>> +		/* cluster0 */
>>> +		bwmon_cluster0: pmu@100c400 {
>>> +			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
>>> +			reg = <0x0 0x0100c400 0x0 0x600>;
>>> +
>>> +			interrupts = <GIC_SPI 903 IRQ_TYPE_LEVEL_HIGH>;
>>> +
>>> +			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
>>> +
>>> +			operating-points-v2 = <&cpu_bwmon_opp_table>;
>>> +
>>> +			cpu_bwmon_opp_table: opp-table {
>>> +				compatible = "operating-points-v2";
>>> +
>>> +				opp-0 {
>>> +					opp-peak-kBps = <800000>;
>>> +				};
>>
>> Can these values remain unchanged vs hamoa? Glymur has more memory
>> channels (as reflected in the icc driver) so the values send to rpmh
>> will be a third lower
>>
>> Similarly, hamoa has roughly the same values as kona, which has half
>> the channels
>>
>> Konrad
> opp-peak-kBps is proportional to bus_width and is calculated as follows:
>  
> opp-peak-kBps = (Hz * node_bus_width)/ 1000
>  
> All the existing targets do the same, since bcm_aggregate() in 
> bcm-voter.c divides max_peak with buswidth.
> 
> -Pragnesh
Ping

-Pragnesh

