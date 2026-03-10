Return-Path: <devicetree+bounces-273563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLS5I0oqsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:27:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0BD251ED9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 915663420C2C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082093A3807;
	Tue, 10 Mar 2026 13:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jLekqKG4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eF7DT9Iw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2233A16BD
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149769; cv=none; b=cBYOJqJFMkYkHFBvOwJKG/So1NadzMDPTknJ+3NbXPCBR5Z/4cqo0GxjLngqvwarpL5lmptJYvtOzXNv8qhN6U4mfxLhQYD54M60vnpphHHH3hX6//CCvFKDIPoIdeSRTt5P0KpqtIWuXD8t58cYBwzQ+up2htbclXQ9ZiJ3sBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149769; c=relaxed/simple;
	bh=277pKrIDrs76CZq48Yh4zgSSt+jc3oZQDYzx+5K8jC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a7PJZ9rWft1NFseMjBY5vRjeKRt404YEjhStKLdrJ1bVVDAuUnwyb/30X4/IP4SwTS4ofzHeEqDwB8hDZceZqs6r+lkvGKvVj212dAoctFleSx2H8miiShFJ78dFviuUPz2q2irM0EmGm0fElmtocxwLHsNXZ5b9MGXICG4ajWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jLekqKG4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eF7DT9Iw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACanGe2862598
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:36:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xWqbb8uPepvchj4jn7YlIAuPZbvV9QQCXdRgoNJbfC0=; b=jLekqKG4ahzYrvXX
	b9408YBiCWpstABQAV1kFtO95RlQI4vFIPzhTf5kAGlN+veHec4TiRi1ptZW6aRY
	d5Eg1OBZJRg0bxugg3az/ilFt9eLqEGm8YtiKBY1+JSZQyVfB5MklWGfMk79QiUj
	XYNm5g4xwoj1OEhABVZWw/ZYjzDdyuF0F6pauqDSNdYYaBG3CeelV/qZBJqelCrV
	pdYM5e2KeG0hp5plaPK2juW6Mn/U3JhrP3RDXLgP4y9wqFHcFNM3oN54baJQWU7z
	ypL1ByK/PHfcrY/wmCbflokHlmuxCmmz1Z2nNCEefI8tHWPzQNjBbcBJ22Npd4FX
	UheLtQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cte3w9hxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:36:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd8e89d19bso114389485a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149767; x=1773754567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWqbb8uPepvchj4jn7YlIAuPZbvV9QQCXdRgoNJbfC0=;
        b=eF7DT9IwKfnMLCNcjwezTnZOWYUDde4omHhrTShOTy4GCNKEgJOekkT9+x60bFYhw7
         wCMa+ydTQInjXcT9RWvjHxdALc8cLBAgY6pBLfMFCcHKegaOkZrJKPvU3n1JmRbO9eg2
         Xj1i5pRfXbk4uQhKACcbjcJTiL23bGAXhX2tIgxRCPXiPW3dHiNrcP1HrU6YM26eQdel
         ReD9NHFhoh9dhJsBv8vVQ1bFbhTIP6HHvCmRXOytWTfZO7uNLs1hob2ZfcEpusmdn51T
         +azYTqJOAB8Ghh8a3SVDOV/Pd5GLqbJR5Gm2COgkbFDwf/VmTyIL0eg2O5R/3VDl4key
         987Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149767; x=1773754567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWqbb8uPepvchj4jn7YlIAuPZbvV9QQCXdRgoNJbfC0=;
        b=CaJ80U4hikDINTIrbE+nmlqVwItQvAxYmArugd6OScyje9NmTjbqHHRdCDibl2TYpp
         8BWskp4CHUfzEsG9Oz+K3DLQBEnmQsqZ2MGEjleP4NMlTZqeKdSm+wBTSVeCurHDRbOd
         LJ+Fvu+cj7aXToXSyhLQNCBooturFog8cPjAKEvjcyubNYSQnH+r1m1mvG0gDU62SM+I
         WJ+4XbNTOel1ZIP1ryxggMMvYbS0qcsp3wrzcqEpyXBS0sJ8StvbHzo/MAtvCo7mnlzw
         jcrxYXdXoIu6jXDyG8LQD1DWiLBhIm8nX0ADP1vgRvWTPH0a3WaWj61R/Vw4a+61JLF8
         L2EA==
X-Forwarded-Encrypted: i=1; AJvYcCWOh09xyl7icM7ndju2bS1TyiDUIw++MPJPnXGLsHLtoVlMGPCNkHpAxBKLMGjhTysmPY4cKp9YD8ke@vger.kernel.org
X-Gm-Message-State: AOJu0YxdRwwYydxxMe54yGUowlT4NGOPqaUtnOKYpBZNJbUy5bN0Cx2G
	7BA+3mOXhokiYGBFnYAW2YlfYjZw3nTM2LkQirdrlel3xnPUKC+qiAxcg7s8UzdEPno2kCpIor1
	2Lh+Yh9vJc9CZN5tbiEOnLckgWQ3BSa1JK8ocZ7auVTF/wyNQ9oY+VK1iiiz2la1t
X-Gm-Gg: ATEYQzzAe59//Nw1yqnCA6hBERaDV/UN5Samfze82m9Q74+bcZ3xghfIn0U0NHSIXxj
	pFlJneAmTqrXPhX+f8E9rtxTqaXv96Gs1bjVbXcGVPqf3DmrFIDlM/cark4qOKUFappF0GToh+5
	DoMprLGQqVuyvb8pwiyzGvZYA5gyV/CysL5fWN63LjxkRVra1k78gF40S9zWPlhtMJzPhcAKCq1
	OQCvtQ4ZZfxGWikBnpF4VtoiMVIPZk4QclVIiQP5GnVE1C5fEg8oRwujrPd32OF7wCx91AaqnuX
	JEo1zG637SOd7uWk2y6rz5VmRPX6sDQewC45vW9N+k1O9AxrkZwCbOFLsBqrWDY5TWw/7wGXEqO
	mCnHYBVkP0LQH72p9oGrcjp+1ovRTwrG2ZytJDDfFZfmxoLV9zJRPc5itQOc5rCtMfHVFOBmVey
	GEdCU=
X-Received: by 2002:a05:620a:1a1b:b0:8cd:85e1:e1fe with SMTP id af79cd13be357-8cd85e1e798mr822715785a.10.1773149766846;
        Tue, 10 Mar 2026 06:36:06 -0700 (PDT)
X-Received: by 2002:a05:620a:1a1b:b0:8cd:85e1:e1fe with SMTP id af79cd13be357-8cd85e1e798mr822708685a.10.1773149766029;
        Tue, 10 Mar 2026 06:36:06 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f15d56fsm490516866b.56.2026.03.10.06.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:36:05 -0700 (PDT)
Message-ID: <c883cc2f-f9e2-4b2a-a716-b6ad916bc004@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:36:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
 <20260224-eliza-base-dt-v1-2-54e8e3a5fe43@oss.qualcomm.com>
 <521fcb9d-6538-430a-910e-0e4e9df2c693@oss.qualcomm.com>
 <1e58955c-3e79-4503-8670-85e689bf8acb@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1e58955c-3e79-4503-8670-85e689bf8acb@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExOCBTYWx0ZWRfX2mZAHBswjir8
 rDpE7f8HF5V+8drl7gozxpBM6+Dw/7U1Jv/4p3X9lYv2T1OhIHPapXYVnS7n++hNarLXPGUY7Zi
 eBG7W9it6YqhjkBgIgVf73g5m5vv3cGLp/ZoX/96RFjWIWMsathBdkCvm3AXW9dzAPE0Rso+jYh
 /eRP0JiZouhWQtcU/tbGzqLZbV6F0pSvp87aw2yqopGZd+iF4iuZfbE6WWqwG0dYNem9GnOqoDs
 vxSg5m6A0+wmrgtJeB4Vez3Z9M9r4yGbRxAHwELJ31iBlyDA0Cq6/eMA0HfVwtHczJe1bg1txNJ
 M+1dyER0h62PB3xScl/ai94S13L05NrmzRPr8Dhl1AvVlfmWaeytl/47vnJH6Y1wHmTU5aB4jw5
 qRgj2MKtmvrRSZOHrXN28n7/jfjfy2Icb1fNekcShJ5I2fYDgNDRIzEHzxUaRRMkV0PO40oGhOu
 uolwtIRtTdK/clOcm2Q==
X-Authority-Analysis: v=2.4 cv=GtFPO01C c=1 sm=1 tr=0 ts=69b01e48 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=XyimcDP3rFlkA3yigAYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: MZI81C0ey5QaHubIQpPsqlJ6zQEJY3k-
X-Proofpoint-GUID: MZI81C0ey5QaHubIQpPsqlJ6zQEJY3k-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100118
X-Rspamd-Queue-Id: EA0BD251ED9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,arm.com:url];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273563-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/26 10:02 AM, Krzysztof Kozlowski wrote:
> On 24/02/2026 14:06, Konrad Dybcio wrote:
>> On 2/24/26 1:13 PM, Abel Vesa wrote:
>>> Introduce the initial support for the Qualcomm Eliza SoC.
>>> It is a high-tier SoC designed for mobile platforms.
>>>
>>> The initial submission enables support for:
>>> - CPU nodes with cpufreq and cpuidle support
>>> - Global Clock Controller (GCC)
>>> - Resource State Coordinator (RSC) with clock controller & genpd provider
>>> - Interrupt controller
>>> - Power Domain Controller (PDC)
>>> - Vendor specific SMMU
>>> - SPMI bus arbiter
>>> - Top Control and Status Register (TCSR)
>>> - Top Level Mode Multiplexer (TLMM)
>>> - Debug UART
>>> - Reserved memory nodes
>>> - Interconnect providers
>>> - System timer
>>> - UFS
>>>
>>> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +		cpu-map {
>>> +			cluster0 {
>>> +				core0 {
>>> +					cpu = <&cpu0>;
>>
>> The values of the MPIDR register (also present in 'reg' of CPU nodes)
>> suggest all these CPUs form a single logical cluster
> 
> For reference:
> 
> Data presented by firmware lies and different, e.g. fixed, firmware will
> give you different results. All resources I found (several of them -
> multiple docs, Block diagram from datasheet) say these are separate
> clusters, so this is the topology we should be using currently.

FWIW we discussed *MIDR*_EL1 (i.e. ""CPU ID"") with regards to the firmware
lying. M*P*IDR represents the position of the core within the topology, and
many, many recent Arm platforms have been reporting a single big cluster
because of:

https://developer.arm.com/documentation/100453/0401/The-DynamIQ-Shared-Unit/About-the-DSU

We tended to agree with that and you'll notice almost all recent platforms
have all the cores in a single cluster. I don't know if it was the right
decision, I believe all these years no one cared to check/benchmark the
impact that makes (if any)

Konrad

