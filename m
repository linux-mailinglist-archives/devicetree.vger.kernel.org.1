Return-Path: <devicetree+bounces-269821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HyTNDdApWm36gUAu9opvQ
	(envelope-from <devicetree+bounces-269821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:45:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAF21D41A9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 08:45:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CEFC3017019
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 07:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C465A3859F7;
	Mon,  2 Mar 2026 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IdfBxTNl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GUFlLULm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A96307AE3
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 07:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772437553; cv=none; b=p2XSgoLZMv8jOnFF7ZJSMSyv4CGfgCWCqBycrFXSnY+ZJWl3c4hK1oy9qarzlwUqKE2JGTfz7JGHfdoQ2QGyQqnJi0xCSDWmYzaPlMvzM9GWpVl5leFh8mAMusCHVx3hVLyjUYtk+vXV1ql7uxV12mbjXSLgc4XOtWlhDaZsAEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772437553; c=relaxed/simple;
	bh=ZXhMoIY/mByUSep8LfZAL5/GlLaEI2/1amRcCgonReo=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=rvuDVCVNQTGX//O4KHSbJ9It6GWUJ5Fe3fxekfkE9pOqFX79GpI3bPB6qHXTklLSbW4RDaBVqZOdYsivJHten1gk4vJptQbhn6LMNJ4td3kcL3JbfHWK5g0S+hBgwDqKmI+iodEg5TGfmp1t4x71XuEP/huYie7BOlyppyZ8nw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IdfBxTNl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GUFlLULm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621Mw6Ah2446112
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 07:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TvdWl2qshnFrh34xKMqFLyy9RImD0NVQXZ6JouBga2c=; b=IdfBxTNlSd2cDNkn
	R8QPD2LxwBvJmQO157JvOF/zRsQotEX2wJXAWBYlLe5EJbDWQAs7C+4VdgwJoGjb
	7lx3G0EgfKvp7aMKsm5DNJStrGfn32hIF0qed5KB8SReWWzzQJtnJZFPlIF1RhAc
	ZVSHo9I4cLXAOkAmtGzTjz9IjXVaBp5857dyIBMtAtdF1P4NQ+2H8mcAam0k44uM
	rqa9z1NaqVl8L7Fs2VFIugricbPppkK91KrRXbuIgpf9OP+K3UmBy08oSB0Y/pQx
	ZrPzic7z914PLo+/wQpBvi/Qy3eKNi/aoJI4MtpLDEs1PcNBODEpojovPdctZxI0
	RBhJPQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgq4mca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:45:51 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82743548918so3176961b3a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 23:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772437551; x=1773042351; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TvdWl2qshnFrh34xKMqFLyy9RImD0NVQXZ6JouBga2c=;
        b=GUFlLULm+kQqQCcmRCFJjhgaLw8hkbx8Yzo4OWtOqP+85UitocFdDB7p/PH4h1yGwD
         1444SBU1FbuRJYeoS8lMV8bhFNs1SjlMwwM71/M+Q7aq4ht8ZQOWyJM5f6TJd4T5PxVh
         a3nGSJA5khx5W1bI5MKjGU9KM6o4VPdjHxD1+dapapOvnYGX3Rce4aPuP0nLTcV4Eqah
         7/B2DoWnE8DOJEL/NaIgsOx97+Yheu2Ls/OS+0ApW96kJ0VwhaIN7X4jjdb310B57BPT
         W3FhF0tmDK7dTPmJ0OmIqmNo7hKrLTTx8kjxGXVg4DtR6rOWVEpUg/fw2JJdCo8jxZ53
         wq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772437551; x=1773042351;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TvdWl2qshnFrh34xKMqFLyy9RImD0NVQXZ6JouBga2c=;
        b=YVYBxH/mndm0fv+Pvn2hcr2MC8TyZjj/kN39DklSWJlOhb0qamKcFoVlaOp44ErbHF
         MzWMLbKjdlqjr6lVcVPP3RJDX6PStAuR9HJyGpu1U6+Hem99YUfjpfwu11AE4qZZoxrV
         FUKEH+B7vv86MpZI3QS74Rxm/bzGLuZK/Bi0JIH3n4xSIAt2YY82wv8J3J72xvcvRtMp
         NQmsYZ/Hd2RSoxgc+hL60eF6LbIpB14A3oIubcKEtWbLJ3wwZAjOwyNTUTsSQG0Gi2hn
         gQgpleW4As0SdPymREghMsucStpakedPPCe1kZduo82GWnLfYWT/DvNuLBuxKF5u7zcN
         2JVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6VnN7GWSm/bwKz7aiwm5sQfFGFNzS3ZHbRboIE3Ma9Tg1GTCaATvFAXwJo10wqiphd9kcF4IHmzLV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnj/8zby/5R3xpRTSQZoD6FKA33ImQSiwlGXp6VRNxwaKOOVC2
	QrDGBVvPdHK5ynh9J3Z2wcH8vOZ3I6EISiihBCMooDv8kGKu/citcna9NUiR9LA3RUgs+lf6veC
	iF1FAqKkw3xTX0rCVGnzCMKG/uX4MwDlyBqys9jlVB2VyPlyV8u9UpYZdz13xRhYL
X-Gm-Gg: ATEYQzzgmJghK39R1lZZ439P/jDYd2Inw6xQ+tqwzP7st9Falw/0L0+3+YFFppFo7aL
	PI1K3iKJLFyME5BI5OmYWXZjqISwK20m1TfS9EX50QXSJGieoiQf5j+puMrc98MpmAHaGy/KtFP
	Y8wojYuqQ3nFjKuC1I5je14s/wk49D4IhHuiNjiXRn+P6WvUbE8q/aZUyrNLSHF/YELGJByTlNv
	yS6MjuPGldQeWzWltVRP96XJdg4P/IgWYoMg1mxehER44CGUZdYag4JtEt64NkKhP1B9d0SOp/X
	HkLN4Q3wbSKmTd4vQtkOv0b+ERwI76YG4sYOK4pYkQXtIepFWRt6ZLKKTaaEoMCTk8+RIeEPCoa
	Dp82qcg0F/ImKtjR8KGzi+vgNZD/2x6BZstW2/1RGjBE/VKWTeQ==
X-Received: by 2002:a05:6a00:ad86:b0:827:282e:cb1d with SMTP id d2e1a72fcca58-8274da24aa9mr8591369b3a.66.1772437550553;
        Sun, 01 Mar 2026 23:45:50 -0800 (PST)
X-Received: by 2002:a05:6a00:ad86:b0:827:282e:cb1d with SMTP id d2e1a72fcca58-8274da24aa9mr8591346b3a.66.1772437550071;
        Sun, 01 Mar 2026 23:45:50 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d87e78sm14474046b3a.17.2026.03.01.23.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Mar 2026 23:45:49 -0800 (PST)
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
 <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
 <20260217-berserk-puma-of-focus-bcbe82@quoll>
 <e3ac0681-605d-c1df-e4f0-78a2c142fa66@oss.qualcomm.com>
 <21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <544925d0-cf32-6b2a-548e-d6f7cc517581@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:15:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tl905x0DFHQER6lalv2E9itcoIlrKpaA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA2NyBTYWx0ZWRfX3goofXZxjqFF
 mPb9qKDINM+adL6W0gznc4SUDGMNc9ZG6bO1A8Wyc9co6TsR3fLsDBUotrMdD5hszMdWLc2yNXK
 sTV0ddUsqPPfWWEI9AA183NZeD1FajT6CcnZ9q8QkpJHuz2QrYJ/dxwk56s+kJAqWS0efN4Qj6D
 p61UpCTtaO8IMJUgMdXI3MxFtoVwsilRTpG/BDHP/XAfqwcg9nB+lSL9bD//cls1njyx4ZMX2fS
 NNEj93ATPKav0g+uLo57yu8kD/1u0wbJdmxtbu9rCAz9RmoB1VgfXrQsLWzf1QI14rXBeZ4XKMs
 UgBEXCwiPF8IGcutCDFqkCmGoMX7VG8a9ze+7lk3QvKjFeymL/fWYF3j3dSHwVAaALZjvMDMOge
 OFWx5TSV89c3FYzcpv7kGmAxSUYgepvyhEFfXbr3eY7yZDMV0muKcJu9dQl4o3GEdTdU76T2CRf
 eLjDOi3G+wuwuhRwypw==
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a5402f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ySAB8p-ER1aEGw4GsmcA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: tl905x0DFHQER6lalv2E9itcoIlrKpaA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269821-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2CAF21D41A9
X-Rspamd-Action: no action



On 2/19/2026 1:57 PM, Krzysztof Kozlowski wrote:
> On 19/02/2026 06:38, Neeraj Soni wrote:
>>>>  
>>>> +  - if:
>>>> +      required:
>>>> +        - qcom,ice
>>>> +    then:
>>>> +      properties:
>>>> +        reg-names:
>>>> +          not:
>>>> +            contains:
>>>> +              const: ice
>>>
>>> And reg is still 4? This is not correct syntax. You need to define
>>> proper and final constraints per each device. I would write example, but
>>> why... more things you could just ignore.
>>>
>> I had included changes for reg in v3:
>> https://lore.kernel.org/all/20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com/
>>
>> but those were not reviewed so i assume them to be incorrect and dropped it.
>> Will fix this in next patch and post.
>>
> Patch v3 was also not correct, because SDHCI v5 devices should have 1 or
> 2 entries, not 1-3 as previous patch said.
> 
This is not clear to me. Here:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n80
it says the entries should be 1-4 and there are no v5 specific constraints.
So i made it 1-3 while adding qcom-ice constraint.

> You need to embed the ifs:
> 
> 189   - if:
> 190       properties:
> 191         compatible:
> 192           contains:
> 193             enum:
> 194               - qcom,sdhci-msm-v4
> 195     then:
> 
> here you add one more if:
> 
Acked. Will add in next patch.

> 196       properties:
> 197         reg:
> 
> 
> 198           minItems: 2
> 199           items:
> 200             - description: Host controller register map
> 201             - description: SD Core register map
> 202             - description: CQE register map
> 203             - description: Inline Crypto Engine register map
> 204         reg-names:
> 205           minItems: 2
> 206           items:
> 207             - const: hc
> 208             - const: core
> 209             - const: cqhci
> 210             - const: ice
> 211     else:
> 
> and here as well.
> 
Acked. Will add in next patch.

> 212       properties:
> 213         reg:
> 214           minItems: 1
> 215           items:
> 216             - description: Host controller register map
> 217             - description: CQE register map
> 218             - description: Inline Crypto Engine register map
> 219         reg-names:
> 220           minItems: 1
> 221           items:
> 222             - const: hc
> 223             - const: cqhci
> 224             - const: ice
> 
> At least that's the simplest solution I see now.
> 
> Best regards,
> Krzysztof
> 
Regards,
Neeraj

