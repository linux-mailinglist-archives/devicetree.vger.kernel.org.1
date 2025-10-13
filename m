Return-Path: <devicetree+bounces-225922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D6ABD24C4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:30:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E2E23A2277
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275172FD7D0;
	Mon, 13 Oct 2025 09:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XvzWtq70"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBEA2FD1C5
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760347797; cv=none; b=jr2iCCjr4fXEO+9vTrIVNYKjf4xT5lSdtb8TMjKbE7pqWSHpsCSJ04A+/rpD5bZZmZL+cqKtAOD9Xrhorshsfb0p/L+oZpdFRNDUhPyRXKRDUVDe4hqH5p5795WLWV3cZaLTxWoKR9oXV66tsBnTWtmKvkUarBBQvZIRBrYuWuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760347797; c=relaxed/simple;
	bh=vP0PLgMT4WwbLdCQf3igzkCMShp8qEBYq3eJHshGHkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rtx0FNyV0VMsQhwl2ZqYkmLJm4XJCJIGy5IDOIH6hHjmYlMAdnW0PYQSfQtihu0K78/dU7GtH+k8xkOmauVyNwEiitbC3p8raH4g13Qh8EmFAUbqx3fabNVZLjsnZhMfvj6sTEXE16IFCEd5cl58tvGxtsXl7glOeBZqxrzcjdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XvzWtq70; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nEb6000954
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:29:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4cquzd84x/mL+NX5HhV6P5OClJ1tqgADwhpjra3SGp8=; b=XvzWtq70PExzhEGL
	y8gyMkojEIaqMXV0jj1wEdvnvJTuhTKAVpCRI+Cr5OyFEIjghWouwmK4N81YxDeV
	Bd8W9kTk07aOewhrgL6Ss3X+8Wmp1719erMZeFXFaJ0gqqjJ9b7OtP1mndRt1227
	9RxZTxnVheqWeHOijLcd45TMKz0RF9KIxkFwN1099c5MKpexYKAfHWefki8RKpzM
	flrJKMPA9zFzzGE2KSM0hZm6dLn1kAUfe7HkTj42cwLF0/GRL6RxKvcPzUTYkwdr
	t0h0LLDFyPPCDT9vL4/IK08CduY+9vyqdqTne1Vpn0cB6NV93/KPt3V2Lywsguj9
	FVaANg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8v312-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:29:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269af520712so84987755ad.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760347794; x=1760952594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4cquzd84x/mL+NX5HhV6P5OClJ1tqgADwhpjra3SGp8=;
        b=ZgDqFKUQzHoI4lI3oVfQRPN47YUXxyGn03sC6luhjE+YoCWYfh1bQ/c6yxLeTj16jm
         Z3jK2UlNRHCwg0GraqMYpwj0SDnvCCccNLPMhvNJHnV+pUTnEoEVaaPke492SgtgUxgK
         ylRsN3WPy3hDxyrI+6Ys3vOPBSriRlLG0Tbdmt6oN5ZZKPrTUKCZuOuv4K4SoyEgrMvy
         pux3Vy8BfeLYXl8yqF3DUf/M2LedABcKXVyMJ7YAx5DE5OwogqTQhYqkkl04q9jFCGmo
         ws3NE2MX2S7uYTgrrL2Va6iYswcn6grtwaBZPjZlvRTqAhlj0ONxnERfgKrwGroBs1SM
         mWsg==
X-Forwarded-Encrypted: i=1; AJvYcCVf5j5H9koEyGps6VfFDSK33FiJ5bpXAquZY67/6Ly2vAUsORaomj0Vr2a0yc3DIq8HmyK4u0CfQry9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3S4gHVkRsRthxb6zc3xU24pkOnrrd9C5jFA+ms278AjP+B1iD
	cHHVGlW8foXjQOzhZARExqE399K/eF7FvY9xif8DXCCXmO78v5N/AxuLqv5tfVL9Ugbm79z9Lsh
	pvwI8hzRiFKHSXh28br0NlVY8EiBEiOOo0g60XbdrAmExAMpJvWW3qG9LeIHT8CF3
X-Gm-Gg: ASbGncv6olX3zS8H18R++G04GkV95XyuN7ZEmIi7nLNWpBURODhnk7HFUEOtNJQZTS5
	RRqYn3fhEZOpSovAPNPx2vtrA9G7lhHm/rqBB/5DKtd8/lmkWC6tX5+0k18KFKHXN0owDV1s5RA
	tDk5Z0dA5Nq0sbyUo+sSE6cCr3gVP/+SO+bCGdjz2KId0KPt4KOGCV3b2ogAnhFGWwOFrs2F5oM
	qFL4VYwVoMWGUAlvuALOCQ+scAx8jl7BfsZXfQDuFR5sz0mqo4ClyKcaK9NQEv1sMDEcjMF2Rb/
	ZmwXeidYRFZxV33FezU7x+WS35O8Z4xStlOvH3vDuAzpzqaedr3RAcxNAOtYDYKl
X-Received: by 2002:a17:902:e550:b0:268:15f:8358 with SMTP id d9443c01a7336-29027402ca0mr255190335ad.42.1760347793648;
        Mon, 13 Oct 2025 02:29:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6UhW3l3Ne3sRJ9hvwI6/6HGpjAZcOesXR6ipfc4QNItSwXOe+IG2CS2vgrhNw4PDOAOyXSw==
X-Received: by 2002:a17:902:e550:b0:268:15f:8358 with SMTP id d9443c01a7336-29027402ca0mr255190105ad.42.1760347793167;
        Mon, 13 Oct 2025 02:29:53 -0700 (PDT)
Received: from [10.217.199.21] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f3de4asm128166335ad.92.2025.10.13.02.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 02:29:52 -0700 (PDT)
Message-ID: <7a62a8e4-9c67-4772-8687-9741a48e733e@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 14:59:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/24] arm64: dts: qcom: glymur: Add cpu idle states
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-5-24b601bbecc0@oss.qualcomm.com>
 <2055e6a8-dace-4ee9-a74b-0e3bf2d58fb7@oss.qualcomm.com>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <2055e6a8-dace-4ee9-a74b-0e3bf2d58fb7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ur5GIsbpaO27DzSJCs7eo7OFs0XTCIe9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXx9Th2k4x1pHp
 fezHMyL4iJXbbzGrusULU5MUEFjGX3/kPfx3eC75VOgyHJQ6wnE2LJ7FbOqHJNTmxvsHzOgOjMB
 5KW1HR1CS4O/uPh/emwAzObbO+yrYU+UrQ9wFblL5CHJIZpgYaBx8n6yL3uxuvT61uzhz6xLc+i
 JwTx4kP3T1bsCcbi/UyzFtQYB8dgxCfne3omCKRkmoMy2cKW64097zmkbb8wMZBpNRrkccMjC68
 eJLYNnwsoU1dtvYpuzqcP8HlATVpLb8IE4AceOk+rOeGFRapsR07hFR/ej4W9nOuKdl9lUQ6h4k
 75lh2yiK05s75fw3Qq3NqArFCG5A9yiMfBw1msh/CKLQkk5LizeGV9C26T0AThAXSxOm00Ako3g
 /EwaUf7aMUMozCEfMOufRAtjdaoQIA==
X-Proofpoint-GUID: Ur5GIsbpaO27DzSJCs7eo7OFs0XTCIe9
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecc692 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=49XlnRG1adklC0iOWOYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1011 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 9/25/2025 3:55 PM, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>> From: Maulik Shah <maulik.shah@oss.qualcomm.com>
>>
>> Add CPU power domains
> 
> The commit message could say something about what kind of states
> are being added, what their impact on the running system is, etc..

This will be squashed with cpus node.
> 
> [...]
> 
>> +		idle-states {
>> +			entry-method = "psci";
>> +
>> +			CLUSTER0_C4: cpu-sleep-0 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x00000004>;
>> +				entry-latency-us = <180>;
>> +				exit-latency-us = <320>;
>> +				min-residency-us = <1000>;
>> +			};
>> +
>> +			CLUSTER1_C4: cpu-sleep-1 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x00000004>;
>> +				entry-latency-us = <180>;
>> +				exit-latency-us = <320>;
>> +				min-residency-us = <1000>;
>> +			};
>> +
>> +			CLUSTER2_C4: cpu-sleep-2 {
>> +				compatible = "arm,idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x00000004>;
>> +				entry-latency-us = <180>;
>> +				exit-latency-us = <320>;
>> +				min-residency-us = <1000>;
>> +			};
> 
> All three are identical (should they be?), just call it CPU_C4 and de-
> duplicate it (unless the framework would read that as "all CPUs in the
> system must sleep at the same time" which I don't know if it would)

Updated to call cpu_c4, cluster_cl5 and domain_ss3 (inline with SM8750).

> 
>> +
>> +			cluster0_cl5: cluster-sleep-0 {
>> +				compatible = "domain-idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x01000054>;
>> +				entry-latency-us = <2000>;
>> +				exit-latency-us = <2000>;
>> +				min-residency-us = <9000>;
>> +			};
>> +
>> +			cluster1_cl5: cluster-sleep-1 {
>> +				compatible = "domain-idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x01000054>;
>> +				entry-latency-us = <2000>;
>> +				exit-latency-us = <2000>;
>> +				min-residency-us = <9000>;
>> +			};
>> +
>> +			cluster2_cl5: cluster-sleep-2 {
>> +				compatible = "domain-idle-state";
>> +				idle-state-name = "ret";
>> +				arm,psci-suspend-param = <0x01000054>;
>> +				entry-latency-us = <2000>;
>> +				exit-latency-us = <2000>;
>> +				min-residency-us = <9000>;
>> +			};
> 
> ditto

Updated in next revision.

> 
>> +
>> +			APSS_OFF: cluster-ss3 {
> 
> labels must be lowercase

Updated in next revision.

> 
>> +				compatible = "domain-idle-state";
>> +				idle-state-name = "apps-pc";
>> +				entry-latency-us = <2800>;
>> +				exit-latency-us = <4400>;
>> +				min-residency-us = <10150>;
>> +				arm,psci-suspend-param = <0x0200C354>;
> 
> lowercase hex, please
> 
> also, this node oddly puts arm,psci-suspend-param at a different place,
> please align it with the prvious ones

Both updated in next revision.

> 
> [...]
> 
>> +		CLUSTER3_PD: power-domain-cpu-cluster3 {
> 
> "SYSTEM_PD"?

Updated in next revision.

>> +			#power-domain-cells = <0>;
>> +			domain-idle-states = <&APSS_OFF>;
> 
> Does it make sense to include some shallower idle states?

Shallower idle states for cluster (CL4) and system (SS1) did not give benefits for power/performance.

Thanks,
Maulik

> 
> Konrad

