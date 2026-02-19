Return-Path: <devicetree+bounces-266615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIE5IqbdlmlJpgIAu9opvQ
	(envelope-from <devicetree+bounces-266615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:53:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87A15D8E4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:53:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15228301A28C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CFD320CAD;
	Thu, 19 Feb 2026 09:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QKS//hH8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZzdU8R7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581073101DC
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771494810; cv=none; b=QID8N3zrPnpJUmk24NQ0a2TSBZ1mn+dqpbc4T6wzBwGO+wk+ttVAilnU4xqpYrHvJ5mbYCERH/4Atl9vId1PMACzoVJoSdqxxIXhs+6rgw1oRC75DMYFykepAc6z6bpCSdkqo7qXOAhidVWbszBkLnVlGmjzr3b2g0RCOOKC2f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771494810; c=relaxed/simple;
	bh=jyz8fGOPhJXs5M8u8EL9CPuvfnxX7XjzIftKRkztPqc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vno4NdYHfypBVmj9/7XKua82BmqLB+pFu0+Nv9gRNIFCdA02gA2EXlP/qdGLpM6iubzy119Krl52XxQ7+Ds5HyqMn2Fs8fVmz8kUKP3EAmTQiVl7ARCSmqTtYVPN3EoIQ2Ef8oP21t3P1+CTxnST5bUCYpX79RM3GaehXtg3ero=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QKS//hH8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZzdU8R7I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IKxgEO3133143
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:53:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+NuR4TSOxkAzQBRW+Uk49z7th0qef4OVsy9BAp4AlxU=; b=QKS//hH8ngbSjH5A
	D6Oo1jn84n3DIzoJDukdpaUYPSfs1CqP0eTjQpENmYDTKgtY7Bb9YKS2V7C+4R0j
	8fQe6KAklJTst1+AvdB3E3AS/VvuXHMH9TRhCy5/v6qojvV2QA3PuHEuInrkjiC8
	QnmPfsXCoyrjUxKAQ/ngOK2cp4VlZcliggAS402U32wT1XMFxKQhFinbOZiGO4e3
	L69bTOA64io5ZmbgBGjhoLjFkSH+GoKEczOLVWXg/8aqwvxNW45btSZFedGKL4Af
	MIEkvEl9Q2EMGNz4WsrQ4CPFZkOUTLMRYB+fxOHGxSw+By2FL77lbE8ZbgZwF7F6
	Fp+CMw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdmxvsjjx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:53:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ad4a8c1f5aso13538505ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771494808; x=1772099608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+NuR4TSOxkAzQBRW+Uk49z7th0qef4OVsy9BAp4AlxU=;
        b=ZzdU8R7I5eobZdMeNC113cePFUIcLw7k5imdIJNDiUEYws1+Iir06N1trCQv7iq6zE
         AarKuVVCYNbPNQLwCKVBmFlR85waZrjdV4m8QetPHMdy0ROIdStEZmtxb+XcfYiNw7rY
         TXjQVjBaeMedZ3RssBO3xuXPL2riLCM6IcfwExmrUiy1Cck+iwQXrLIoUr9AkU2kfWeB
         9IKleH+ktshXaKGEmwNs/Ae6zOifHDsBfSFNvQJbJfsr+zyTIEoF4uPnQIsCxANcRMtI
         evAOv8sw2E4fMvkC9GJ1rRrIFDasCJAQxal+mg0cdVL0Hu7ynm6kKBQrcw163oEC/HUb
         sh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771494808; x=1772099608;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NuR4TSOxkAzQBRW+Uk49z7th0qef4OVsy9BAp4AlxU=;
        b=wy3PZic/lfqM1cyk4aDNcl3kCWiCVbnQuedShVzsL1ShwzAyVYiB+QH9CJFGBUV81j
         mIxO5FkwnV//F8/OWKVN1l8F5i3qVMTf+KZG0gSp4gEWAnGAH9igRPJIhnDYJL133fIp
         /TiRvcTNwXPnRc38sC6MZADsVt+S/oG6BvUZDM/AH4vIjNzaPQj/9GiPCOQWUS1/J0vF
         gd3byszi+AcpBYrCW5IH13dLFakqhoWw+xbuFZZXlNhKaFXuJOSWfWLY8Bd/IxjODk8H
         gP7T42rTZAAhB39X49dke5vdVl3PzxYcMQSweTNI9VzliXKj9SMiNqA2o48JeW0ENiMh
         Fk0g==
X-Forwarded-Encrypted: i=1; AJvYcCUuJoj6u4J/2SeZ36Kn7XF+aaN/c3caY5ReHGwM+A94NmXQvK9/G+h1USWG/gy3+cWsnn8zL0Nrw1Dd@vger.kernel.org
X-Gm-Message-State: AOJu0YycE2uLsRnNqrCpKSAMrqsvR7QfahQZhTIWmROHsC6Lren+BXuS
	HDnykmD79CKvdV1Aw2edbE1BrCrGAo6qG4L0VDRV2+kXhU5eXPkhkIoZrqSlqB7gPtvHLWlAbvX
	QBNUCbG+mSVK51xT0O9sPjV6u0GnXHZhS8qEpATgoB7c79UPwxzFXluI4FKDkqpCBdp4aRWua
X-Gm-Gg: AZuq6aLsBw2znli/m7AgrKDLZvtjVbBxM/zp3w23S32o3czwLkNCk0l2SWq4qiGtiqO
	c5//3DUcacn6a3oUrL3YC2fc7XQHH++MjJivq7ZP4rjJfE9B2SDInSO0b6RnTSCT/JpYP1Ec++E
	GFisR3WWWQqITE8goS13JKv4cgzX4wwp6JRFWddxneN66OJ+XQ7ysCT0jCAa4ypZUR6XQJBuz3T
	Qp88Pn+9C1OKK7uL/2hArWUQPF2dTOPn5SiSWEi+kfwuyrINwMVPNCE9q8Kuq+V89oYIgpcSLo8
	75Cn8xHQsWf08Es2crdiHzjB/WrIFYVLXHu27vsJMBZpi7azA3ybkWFjGuzv7FEbTiZ/YKX3ROe
	+Tqa0+m6KzR6Je5CiDvlusgTOndPF4ZzffNfMxiDG2MBOpYh/
X-Received: by 2002:a17:903:2390:b0:2aa:d327:beff with SMTP id d9443c01a7336-2ad5f701d04mr14625625ad.6.1771494807254;
        Thu, 19 Feb 2026 01:53:27 -0800 (PST)
X-Received: by 2002:a17:903:2390:b0:2aa:d327:beff with SMTP id d9443c01a7336-2ad5f701d04mr14625315ad.6.1771494806808;
        Thu, 19 Feb 2026 01:53:26 -0800 (PST)
Received: from [10.92.198.80] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadca84sm158860315ad.70.2026.02.19.01.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:53:26 -0800 (PST)
Message-ID: <dc7fcaad-73f2-44a9-99c0-b0a13a856239@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 15:23:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8550: add OSM L3 node and cpu
 interconnect nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, webgeek1234@gmail.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260218-sm8550-ddr-bw-scaling-v2-0-43a2b6d47e70@gmail.com>
 <20260218-sm8550-ddr-bw-scaling-v2-2-43a2b6d47e70@gmail.com>
 <aa5f536a-41f2-47e7-b80c-8559c13a69b3@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <aa5f536a-41f2-47e7-b80c-8559c13a69b3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TzLZpD7pxWk40HSjJG15vK_JE_lal0XZ
X-Proofpoint-ORIG-GUID: TzLZpD7pxWk40HSjJG15vK_JE_lal0XZ
X-Authority-Analysis: v=2.4 cv=XpX3+FF9 c=1 sm=1 tr=0 ts=6996dd98 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=ICX6NJ6XWj8aWO6CY-EA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA5MCBTYWx0ZWRfX7Ps67BtF6Ccv
 1pA8UtxnL8tsSDsDCTz3riIz4n/AsfOQ7HyQalbi2dcd5hgjIDbr4b7PP5aB05nbwi5r928M46K
 y9vzqvM8gLq7XZVQ3lxOSFFhpgbY9/PZYa3vHLv1SmU+XBcf2KaPfCOR6ozpygW0SIcnZpHLU4f
 Djb1EEkRBGJ6Y8N6v6cEJrR6Q4Nvr53lLv0t+cNT2/AlBRBrILdx8aiokre/+0Cg9XdmmpfrVpg
 GKwrszNWd3ys+fzNojm3JOvqHtfNNcCWBTEoaVhAT/DTO2yQxA5S2+gQMInE2QgxzkvTn6o3ObM
 7zOrpbO3R5Oq5mmtNXqZWrzdPqE76CYgAXZTtJ+qMz4akm7fUCAMCGhh5cMhP8Xuu5tRRaFV7VL
 J/IxH5VuET6+1EAm6k5rw1vJiLj046Ib+q5+sBctZ2AOgVgujS0O3ErkIrfNLtXDgkIjz5SWNaG
 IDsk+KHvZ4kC04nWmJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266615-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3F87A15D8E4
X-Rspamd-Action: no action



On 19-02-2026 02:59 pm, Konrad Dybcio wrote:
> On 2/18/26 7:16 PM, Aaron Kling via B4 Relay wrote:
>> From: Aaron Kling <webgeek1234@gmail.com>
>>
>> Add the OSC L3 Cache controller node.
>>
>> Also add the interconnect entry for each cpu, with 3 different paths:
>> - CPU to Last Level Cache Controller (LLCC)
>> - Last Level Cache Controller (LLCC) to DDR
>> - L3 Cache from CPU to DDR interface
>>
>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>> ---
> 
> This should still be squashed with patch 3, as while you wire up the
> CPUs as interconnect consumers, they cast no vote, leading to the
> situation Krzysztof mentioned where the performance actually majorly
> goes *down*, since the icc core sees no users present and assumes it can
> send a zero-vote (which probably translates to F_MIN for the cache)
> 
> Konrad
> 

Yes, this is required to be squashed with patch 3.

If only the interconnects are there, without opp-table support, then the 
cpufreq driver probe will fail while adding the opp table, due to 
mismatch between opp-peak-kBps and paths count.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/opp/of.c#n779

Thanks,
Imran


