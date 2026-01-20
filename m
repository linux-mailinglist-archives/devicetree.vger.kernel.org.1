Return-Path: <devicetree+bounces-257332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M/vNoxUcGlvXQAAu9opvQ
	(envelope-from <devicetree+bounces-257332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:22:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0B950F75
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 57A325AAE94
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9DE4421A08;
	Tue, 20 Jan 2026 11:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PXZiebJB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hMyXnHVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BFF3EFD31
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768908487; cv=none; b=AVgowLcRB9clBoK0ROg6YVaMBLQ5myEDNPiHGj8k4oTBqLHtR59aG68Skqj4P5zm9kdbaZqQ9UwH4UylqYPJQI0ehjM0fROQKj6EJEnDik4bVlQDpiTOAhK66uC9pYBs1o9Wa1NYEQCfEBQSlvc22io8OwbJ8vKHqj97jqgqaSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768908487; c=relaxed/simple;
	bh=BRBNZEi5TzluQhOnS2NYRZrKZF7kq4ossJ34s/ubsds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a/lxJ/d6ki//XCLqnLJKoGp4AUlBwdVQUHw0VbN6cyrYy1C6GYJUd8I+W0Kue5wUIyvFTa29oPsza6xnOI3XdisfudmYnSodLUnWlB0HBC7cgUDNZ7s3cDntc9WgSuYC3IcQZCfElTfbKwSC83o3QIz4kGycH4aiLXQhvBe4g9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PXZiebJB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hMyXnHVB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K6i2jg428879
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:28:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	itmmRqDI4ImIlzpi8az2PkbI5s0BpmyVrPAtG4YRNO4=; b=PXZiebJBH5bCvDUL
	yLmyEyj1iNzSmFQb/Mf313RBXdXk9o1s+wnVN9n3GMz7fURLKUs7qfUpsBa4QlPq
	Lws+Cydj+3L1XU+Q/wv/GGD0o1vytdDP4KPu6sKoGE+6K2qrYstpkv03guTFnBkZ
	lqTZsMlEN1FUdB41CD05rH38HuVyEhAzUxVw+tWhRZcng4s/AcdGpP35825HZ8aW
	bk6PcBDTSFNRVOUjfVn/zu9gPFi1lp/XOGVMCXh1eDsISplGoZ5ryL+VnLFdIpBO
	2sDMvSyrEtOj6MSyfUaH9hjA7zr5VkeLaeHNT8bNKwoqDZpWf+uxKQ0WtA8c2Vol
	8Vc9XA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4ps0u96-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:28:03 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34cc8bf226cso5226730a91.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768908483; x=1769513283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=itmmRqDI4ImIlzpi8az2PkbI5s0BpmyVrPAtG4YRNO4=;
        b=hMyXnHVBagZmMYuM4nXSy5tzv6gfmPMl2xoG3Bjx/6xecRMRRKkwjlYvXifjsxzoGn
         SPUeWaiX7odnT+MJdUyeWaRzKZgeE6biLh4UDKEGyMdG/+ysWiZ3IkN7J/OyQCyW3fbi
         2KPc3rbd1KVdfA2PKegh6e4ERsQRMbg0QM+161Vt+dEqrZ4Qy9okUofxfiSjfALNIVmi
         PoEgtHmcVtN1M7EItZtKdA196T35NdtPwZSrCPSbVlSc3uAZKcUDUxEM17ZPSNSoyscO
         XtThVOqz3FTliRG2E2fwX3tW0I3391lKhp+8DF8W3hq9WJrkQN6YAtNQsbUdqf3hpHr1
         yVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768908483; x=1769513283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=itmmRqDI4ImIlzpi8az2PkbI5s0BpmyVrPAtG4YRNO4=;
        b=ckrAjQzrNU062HLF1I2dHwu3qdepssyOvy6EYBTpgQUladJN2BuVfXIOM3iSBnaUHz
         mYr162LogwlyxAcmJKUBchdZ+92Joru7O9SMjsK/BxYmRXaiwUOiYdkOHMwK1wyMwmbu
         bbZwL29KZDuyDsLfGkUj76OUVNLKf+WbPVgqmApe+NiT3R63GgHqIfQAhOWuH4bfiUNI
         oziFzpTtF0J0U4EqBcHaTirtHVLrnSWMhvM5HUvxUb7G3ZpkstY6YPHGAwTdrs2DJPPM
         PEZ3h4hYPqz+tGaVhgCDxAORAx5CGAzoF9D8alsIF12m9Od9rqhe3UDGh2O1ZwQFwD7p
         BPGw==
X-Forwarded-Encrypted: i=1; AJvYcCVUd312KS05+8ass774yi8y/XplQCI2SD8RBcbuBEfwxK88YlgZQaTkftcZcqwOb+3OV817idHCGQ6N@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd3aQxaOziyuV1RyZvZjanWXf3EVYZNyscApYHB3GYaMA3oQKe
	AklHS5ai1e2PxPZ58D39BpjDcAo3pCaBB/wW7brPSGC2xDtOlwjw53wqWhapYwCeJPS8Fkdi6Pe
	8doUjexN8ShBcEZkTxzhB2IW+8WnBop2WH8sCTelgUto6s3btSXftbnn+3ORvjiTW
X-Gm-Gg: AY/fxX6Dx3jfeE3fX0O8bf7k9IzOcJXK6tM2daOqoFXC9rb/V8KR9kc6UbSUcpurtod
	J+ytNZCevYid3N2UWZSaKoDl8gS1c82Uo1v54mHtSZ/W582GWU/RsXvnXChELtmdKCf6rVgBrHx
	krG9gK3WpFrbNY+m7o9ScfJtMqWoWNz6NWuyalj7G2ugVLAY4kOWtORVhw823Z6ghyPn+VAv9ev
	zo4Etoqt+B7Y/1uvk9XR/mGEN5tS6NtgJ+cu2RkRigSJJk/4CJQiHQQ6RdPsNITgt5yFnjzQERq
	1SbnfxCgFfYA56dGteU980dtSVc5X6IQ4q7uMvlztn42C6KTGjPnx4NW89KCPPLoZlbsOv5G+ML
	CC7s9Pydl6FnriZau3or+duRytUyzZLc=
X-Received: by 2002:a05:6a20:1590:b0:387:5ded:994a with SMTP id adf61e73a8af0-38dfe77232bmr12008325637.60.1768908483015;
        Tue, 20 Jan 2026 03:28:03 -0800 (PST)
X-Received: by 2002:a05:6a20:1590:b0:387:5ded:994a with SMTP id adf61e73a8af0-38dfe77232bmr12008307637.60.1768908482513;
        Tue, 20 Jan 2026 03:28:02 -0800 (PST)
Received: from [192.168.1.7] ([106.222.229.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm120207135ad.23.2026.01.20.03.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 03:28:02 -0800 (PST)
Message-ID: <f10ade51-b29f-45cc-9895-d66a319ab26c@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 16:55:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
 <d8c24f26-3ee7-4966-a11b-1e2afcad93cd@oss.qualcomm.com>
 <908b64f1-f6ac-4c5e-9c72-1174cba62017@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <908b64f1-f6ac-4c5e-9c72-1174cba62017@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7ooBvnOmYYj9NaZGSlfsWNQM_M6KJLFp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA5MyBTYWx0ZWRfXyVyisdXWUyTG
 6O/mgighu/5y85K2jNIOPVCn+oiYCMvJs1Zj9MhWdwCdFWWoyZ1RjRY4Lru76EQvo/+S09cnxWE
 zZnneIcyqRX+BCCefzneN1MkizXz6pHe68m/WOE4jx6cfs8Swzqwft3OfXlwvWeGvGKpIFwr5NJ
 MDlqGZGyn0BhpNiHEP1VpRh9r/Bo612XKHsXGyKwfuCdFjm/63xVlihmcq87Vy43QxPOaEBQ0M0
 0KWQkLWhuDxXfpPS5YF6ZWTA4CfWSDBAKgmgUGqA6TXxnsjHSdQ00stIRU3yJIjWyn/lwAIbDAf
 oLikE6hHrpXqdb0/+H97MTB+VpGy1r1JTRaqOZyWT0p9MShitA77JkWEKp5tDNA41GZnJELWcRE
 5GravD3Guxt0cBNL/YkYBq3rw7POHshtazoc3Jpn3KOvMzrDxw4RdDpdJVLfFDbH2mIbmo7hddJ
 H7OfSfQyTdo1HYzIYEw==
X-Authority-Analysis: v=2.4 cv=PdfyRyhd c=1 sm=1 tr=0 ts=696f66c4 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=dP73N8aTmtjQGoAWXS14bA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ykpOodS9uqumO8t-MrQA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 7ooBvnOmYYj9NaZGSlfsWNQM_M6KJLFp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200093
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,kernel.org];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257332-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3E0B950F75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/2026 3:44 PM, Konrad Dybcio wrote:
> On 1/19/26 8:00 PM, Akhil P Oommen wrote:
>> On 12/11/2025 12:32 AM, Jagadeesh Kona wrote:
>>> Add the cpucp mailbox, sram and SCMI nodes required to enable
>>> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
>>>
>>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>>
>> Just curious, does this patch enable thermal mitigation for CPU clusters
>> too?
> 
> If nothing changed, we have lets-not-explode type mitigations via LMH,
> but lets-not-burn-the-user would require a skin temp sensor to be
> wired up, which then could be used to enable some cooling action

In some chipsets, I have noticed that the gpu cooling device throttles
GPU to the lowest OPP even with not-so-heavy GPU workloads, making it
unusable-ly slow. My hypothesis was that it was due to unmitigated CPU
temperature tripping up GPU Tsens.

So, I am wondering if there are any additional CPU cooling related
changes required to get a reasonable overall performance under thermal
constraints.

-Akhil.

> 
> Konrad


