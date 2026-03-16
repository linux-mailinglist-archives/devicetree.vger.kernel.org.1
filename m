Return-Path: <devicetree+bounces-275925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yC3TGAWJt2n8SAEAu9opvQ
	(envelope-from <devicetree+bounces-275925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:37:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F0E294A15
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52DBA301A72D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C9233A9F8;
	Mon, 16 Mar 2026 04:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N6tbnXyk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JZMsceFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C559F33A71B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773635825; cv=none; b=SsfhodVTF4bdwXgOyxATCKLrmjPHIERAKRjgDtBN9EDLFbg0JjBki+8uMIr3665fyw+X2l70a81D65EHYidyRr3bt109tf3BA7lp+/WXLMkSGBtSf2rovSogRekysNxw5MdMDp5YWMqFulH3kmcDfxsr9msO2f3XcsdZO5Z6kUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773635825; c=relaxed/simple;
	bh=MHq/ggIuD0G5x/JV496CxH1JIPSrNVnxRjHwwItF7vA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=roF9ixaxzp0OxrsplpEwNU41ky2khyS/E01B74voxp3pUPkvhW8QQLbapjhQeZuGYb9r+WyTUx8eo9aHdKmRV2zwi6qwZZOQC8BUFFZHhvQifYB/iQr1Af0d5SAwBQt+31ffLT6B9+GZglgFl9Q11zUu3RknoRLJuMmYxOPeQc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N6tbnXyk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JZMsceFw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FNkdcX1861532
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cFbjsbqI85gZSU8iBFCvyTzG3Zqip4n2ZD1U7wtutak=; b=N6tbnXykl6a2Sevb
	bF/Qe3vdsX4kGt+aJeIgiSkgQ/zSFhrx3vFnXydpVwh4oe/VO1KuV3zplsG6AMgF
	1PDi0+2ARUaBCkfk5YUO3fAiPfSMW3hRPliEMZJkMXX+o0tZDyNry5r7AOJ88XuC
	kCxqQ8a7c/h47I9Yogbd1tOmqWt6FbhLrSP+ZolOk2HpuYH7c7wNJR4aE7Q/tGO+
	a876g8BcPdFpT4BGYsNjCPZk+ZFmqDSIffCHSaXHrVjwB3An+jg1xHPs2iND5TP0
	a42bccpU91b2XyvxuarkLBi8/6Zq5GcJglegjE8dL38O/BwPrmftsEXkyu6/Pk5l
	iqcwDw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xm5xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:37:02 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35a0998a441so27756244a91.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 21:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773635821; x=1774240621; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cFbjsbqI85gZSU8iBFCvyTzG3Zqip4n2ZD1U7wtutak=;
        b=JZMsceFwTKaGPeoJ6VQNV/CTxAMda5d4QJd4h04TL8WX7fz6L8trfG5U1pxJA6T5FR
         s36AvEhjsmn1nvCP+lBeRwv4EJ+CZ3APTZcpTZYaFSDk5jWIMqj5n1GgqQQQZEIADJmN
         sj3HUFHoMBes5kSxnt2gJNZf0Bq6hSP4LPAVOoj2z2gQyAd0XYcC4LLM6Zg4DC5ZtoUT
         uXekoPBNHGOjIK1WjuKXaFJzqa7ahAsUAFCoHn8tmJHr2P69kX/2wCeTtW9oCAC3Mt4I
         6JDmonU1zIdIqB+ZyPHsngLRNL9InusE0R+Sjt4ksBmr2EgK9YuOommryaElu1XEFWSu
         76CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773635821; x=1774240621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFbjsbqI85gZSU8iBFCvyTzG3Zqip4n2ZD1U7wtutak=;
        b=muE2OQTzfFv6oi+jmEasURBL75ChBIV5zl1fnfVz6AY38Lb3+vxh+vrkJrxEjdSay/
         YNlr+r9VaEdeW6+b0SIalaAZGXuIBDG3ZSQDX8UQHbKqiYAtPRZlinUkpLfFO/EXgJfe
         71XW/NccYat+d1NRd12loqLWx/PMElVJZkTar0JdoiC6nruk8Ln3jJIvi8EwuqYXP+/J
         fsIkYzjuwjLT36L6l0mkKc7Eli4+UxuFBSqt44IoPJJzrX98ncQMt+YUK8noBctLn8ft
         oEMzQfRLBqDshT+XX41IYl0STMbgy6FFjOrTpEvlIJEKHPiVX3JCnSs6E663a6ccIf7+
         4CZA==
X-Forwarded-Encrypted: i=1; AJvYcCUZq5vndgm/L7GEH9iPuzsgRim8vuZ/SyPbwVBipJa+l5/n1tKnywns+8pJOlEpHygmyEk7fZHbx4M/@vger.kernel.org
X-Gm-Message-State: AOJu0YyxuOFG+1Js6o0xPCs9yMAiKOAPgW0AjA4H0Bu8hNEx5ddiHek2
	CtyKq4SXLmbKOj0V8W0TDT+Ie3UpnQdmbu0mMD0D4miavrdM0lQUw6/u+hBKbLoE8eXcJvbnAWH
	NjtVbnC+BRJDb7gxc/ZDC7EJ7Ufy26Zje0HsOj9Lx8fFwuIbA+T+0EZYmjnQPhfAd
X-Gm-Gg: ATEYQzy4x2aQaia3RXXidcu+PJmcckHlJkL5qxAjWvamgmRpdgS6I417FIiZcNu5suP
	Zwcz0Ta1ptNnwEGd95v8SblkOYS1aq+6EuN5axZ60EJxwHV2Jec7fjLJAZCSr3m0iMNrS9vr3uQ
	IoVIgdR0R9s2fO8fSKmjF/B9mGmGpFM5kFXORvZdk4U0yO+/sKoMkTq+D4cotEBOmFvFeIR89oO
	C3Mlj83SgY5HgB6qM5fYnPZkKTzc/J9ldjGrX3RX6d6Fy4U8FDzuMyuHv3kAYH5JcHLFq2HuNO0
	cY0hG0YBaYi3heRoKugGA3ihcRr00wI1xabiKqNrJIRqLbVI9QU6/jGFNvDdVtSVHnkySYonwWC
	VBfTwfKQGIzPHUxSIqyIhC7iaFpMH1xj0+vigtyeMwWWMIHxwu2w=
X-Received: by 2002:a05:6a20:a125:b0:398:87ae:5967 with SMTP id adf61e73a8af0-398eca1175fmr10536861637.4.1773635820712;
        Sun, 15 Mar 2026 21:37:00 -0700 (PDT)
X-Received: by 2002:a05:6a20:a125:b0:398:87ae:5967 with SMTP id adf61e73a8af0-398eca1175fmr10536841637.4.1773635820271;
        Sun, 15 Mar 2026 21:37:00 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7401588ecesm2989834a12.32.2026.03.15.21.36.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 21:36:59 -0700 (PDT)
Message-ID: <191a3b8f-7309-4561-ae40-3c187becc32e@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:06:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: x1e80100: Add deepest idle state
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-4-760c8593ce50@oss.qualcomm.com>
 <20260313-accomplished-unnatural-rhino-59ccbe@quoll>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <20260313-accomplished-unnatural-rhino-59ccbe@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAzMyBTYWx0ZWRfX/Ez/qyanBafP
 5Ee0iFwZcyipDmmhAB0/xJFX8bY9T1NhQOs5/lvVzbQgYF6Ll2jErFJX883VjlML2JrHO1vlK/i
 2MHr2GJ/EOpvHRAHIULMg90VYxrOnotdaH7Rnt7L6/Z7pp0ABBdslx2Tb09yPfna1b1UP1KwTuF
 s2k8XrbpPTl4rtLJ5z1RHfHksrrI19+CNDvYbuyYzWIVQUO7vbcLnGYppaZHnEp4fJfbFa38Gxc
 GGoF3Z3LqL/xUyT5zUi3TIjx3YH3O9PYC7dfArt19faRxh3O9zeofiT6+0qH2cI6XuijpN59h51
 WFAdjKCASL/vIChMCmAOGrt7M+7xU9F//ecoPWfvagECliXP3KjnPIKJhKXNHHGzajhW2rFuXfm
 S0xEa9xRqrp34yusp2z5NrTNJ+dQkBiDlRzDGbKr4kljPwRmVXQyTKO9Vync99Nf1Hdy4ai7S//
 3WX7Vyr9aEk3XQGe0sA==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b788ee cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=qAycWwI3HuNM5PRzo7QA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: E5osWphXgQ4-MjUpn2fOs4MstRY66V31
X-Proofpoint-GUID: E5osWphXgQ4-MjUpn2fOs4MstRY66V31
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160033
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-275925-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,b220000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8F0E294A15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 7:27 PM, Krzysztof Kozlowski wrote:
> On Thu, Mar 12, 2026 at 09:26:38PM +0530, Maulik Shah wrote:
>> Add deepest idle state along with pdc config reg to make GPIO IRQs work
>> as wakeup capable interrupts in deepest idle state.
>>
...
...
>>  
>>  		pdc: interrupt-controller@b220000 {
>>  			compatible = "qcom,x1e80100-pdc", "qcom,pdc";
>> -			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
>> -
>> +			reg = <0 0x0b220000 0 0x30000>,
>> +			      <0 0x174000f0 0 0x64>,
>> +			      <0 0x0b2045e8 0 0x4>;
> 
> One register is not device's address space.
> 

I can move this one register as #define in driver in v2, SCM API is the only use
for this reg.

Thanks,
Maulik

