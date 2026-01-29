Return-Path: <devicetree+bounces-260826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLf4GOU6e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:48:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D39AF122
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF7A33053BA5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25633815E7;
	Thu, 29 Jan 2026 10:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UPf8U0Tq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J5oxp5ZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7334E3815FC
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769682853; cv=none; b=kKjMUPttJyr88RgcidLDQGOFEnjIUh81jbDAPsSFj7cxJW9Mc9PPtazGr3jl9n09SfOe/k6CUKrRM8GzjrOe6Mm+VMNQ+c253Dq1+7X3nyMT3Dwxv6ebdhl3QvsRfqb+geLSCPpc1oHu3BhewXWMA4sGbMbRcs2yzXcu3Bar8I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769682853; c=relaxed/simple;
	bh=w44ZOIJsPmpOgos90Cy/aKrYmssdsVHy+CxXGHDHKCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CdwGeh93Q4MwdIeRxfVQFwZOw4nOYOtaIfcYAkC0bkcaWldCeuS2fldreYHs+nfSvJFOSwUCseAkUG5xo08FyCJODtPsuxJl46MbfDF6fI6fw3lzxCNSCYiYpYNOu8Nwyk0OTxSWxoNdguR35sexR3RT0fXsaxR85Dq/K5qM/Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UPf8U0Tq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J5oxp5ZG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAKspa3674364
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:34:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/43B7at/Dk1ip77DPF6jNa20MsFqaIcdx7O2FLBl3tE=; b=UPf8U0TqvNIALVKX
	mVDMHdgRI8RDKWqrCp3wZ8ZDdRNKR7MaWqGNJTZQULHd/sSmSCWSUnLS1vvZmbx0
	VHaBTr2lJQzWlnIrnqzctQTSlg2l5jVJzgRvXmn7BFGApQlbKoEE8JjBxb02/7bV
	wEv3Ea5wDVSC/qEczMJZ2T8YV50eVS5a3iG8smB8QngDIaacRd3jRwttwLwJ/VBX
	0Q4Co3dvdGBzRgEGNKaa2W9zUKvqw2A+l5leWNCbQVO4o8ixdC1trWuTqI2KWR4E
	kOtFswL7BxpN6WPOqKS+7WHPzbX0J1kJMqJmEA4fbSq4AeDX8iBbFP/whknFTXJu
	RtYUGA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05q7g18w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:34:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2fdf3a190so13921885a.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769682851; x=1770287651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/43B7at/Dk1ip77DPF6jNa20MsFqaIcdx7O2FLBl3tE=;
        b=J5oxp5ZGFyszPa3BGLC1bTtZuKQ4djc6bCI43N4oTym3FQVRVFuX/yiGgaCdvWTkqL
         7uaOkhWcKVjB/kyHLpLAN/mX04XPeWmSymITcpU2PqyIXQB6fPTlno1k3sQiZrZfPbsg
         fjrISDJe+ulzQPeusNEh4MbKbhcd9kJUNsqeFBbFBTNrz6U6uSvjMncbRFRNj4cxyaDB
         0PEx33UGBykUUP+fZx1WFaIPtX2tqKtC+0diZLSuqCqy+yhmLiaFvl67DhIgQd4Rv2uO
         vfdt0d/Lnyl3Qkd3ZPkkUNL+tKnBY6oqDB/D0+5HBsCFVwmuWFJHJqu1/JliZkYDgPQE
         OGjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769682851; x=1770287651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/43B7at/Dk1ip77DPF6jNa20MsFqaIcdx7O2FLBl3tE=;
        b=Iapyfx3qrk08dt3LyyNMs0bdwdJTUojqyOgTNbnf6NEg7/Y731pu9MIaiwyO+jVfiq
         +DfhENatBei2jRC7Zxs0ul1zkn5NzA6BGdsU1v5ivMXxa8rK3K5DMuTqBBIEPWJgXzqj
         SrzpM6YhWInfa9X7zB7D5fIhetHE3eho0UslmXIOxiXmzd6YZjk4pSv8Ne5MRf/anedS
         nzNAMMrRpZh6LuyQWziHll0uxri9uMOpFgAYCkcZ28PdKpyTnBly8NtwKKkS4OSsYi+W
         t3OXuwRozIqajDawRBjzQZg/snRdtzBjZHu6q2ENTrBL8IYaDh9uV1PeV2JrqkA++DmZ
         eP1w==
X-Forwarded-Encrypted: i=1; AJvYcCVH1b5t/HsDD97s6vMxllpWFWfYqdZ8Cn1jF6svhErciqEzm7PgfNrfiW8D5AU6HesZrwO/p3aC3+uF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2OfsMJbWeWW1of8bmiilCxqR2zPVFKdlpK0hZeKBDdk26juWy
	EvlJNyO4s2jUV31XRHSvk0aGa1iatMcmNcI93QH+N0pPxyjuDFPYKifhY8E4+8yzsDmQ7AY2HqK
	kWD+CQ76w9xGSSqvlCs3a1+Ymlf2N1hU2vSkF5AsMZ2fpWQdph6GQOp0b8DiTi2gK
X-Gm-Gg: AZuq6aLPTwXMQkFQ4/t4oKmB5SmXj+Jrp7+LAGEFNRE1v/Siceri8pUZ7cRKUZLBSqF
	6SyB+8bFklQaf1i9tkwgkh5vBo9xOt+Mt7EjO1/Y397Tip4uEQzZGGI7sBOpcf6LR759wo0nygY
	DwHqt4X7PmOB1GN9z8BT1f9Yg4fiwx13CvWP6TcuzulTAgswArn+B7MDxZ6KG8uOgMKtgf0obIR
	7lo+jx3pKN/sKOAMVI9S0BLeP81Ye4JtMr1BL8/RXC/WqK+z/0YDBUe1vz42+c6DhysFwhVtxBd
	WGeXTCf4U7Q4ZnZlb70wu2MzgLrnEvTKMZd30+UzOHXhFQlABNDPUFPUnksxchpylWVt2je+NCh
	Rdvr9sydqbAck32B1lZ/2Dka+fPvI06EBaMdX3E2oHbrEcRb2NXrtXmhUCdG3QT1cTNE=
X-Received: by 2002:a05:620a:909:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8c71b40d0demr237888185a.9.1769682850777;
        Thu, 29 Jan 2026 02:34:10 -0800 (PST)
X-Received: by 2002:a05:620a:909:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8c71b40d0demr237887385a.9.1769682850334;
        Thu, 29 Jan 2026 02:34:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8df01b8d0fsm20843166b.39.2026.01.29.02.34.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 02:34:09 -0800 (PST)
Message-ID: <dc0b7245-de95-4db7-bf8f-815ba60d7adf@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 11:34:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top Level
 Mode Multiplexer
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij
 <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y1gEO_T14L44qpyI9srNrtV3dBS3Q1mT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA2OSBTYWx0ZWRfXyfHNjHK1mYkd
 KZoqvzllHjiKL7uKSqENUW2GifQVC6hq8vEr0IJcf/oNGNkajjTKN1bj6gHjOYUoejC7S8K7Jjc
 BvnlRVhn46CvYbE2DzqBpmG5YowgJZObeK88GiztJ9IrbRfHYBSP4+R/3SKZTsmQ+aCr04+A2eT
 coW3OHQbBD/Ks1G8EW3wFpB32/QCtNzHPKyipm57rGh51P03ccgG5LIpzi14sCN2pICFJpKGiGW
 f7EvKAA74uNhVf7dKVHkW6lFRPGBO8Hb9XT4EOY7IBLw4ihAwgN4RliSSziKsb2IHdRCTJL0wAK
 GcxRgfeCxAlS2hqN5u6/5zC83T2phoPY05TF9zbC4oyhdtCkWYGStxRNmY/jBDSbrxd4f4Qd524
 tHSi8MkCYBunMCohPIEM//pWDgChGxmb7qbDdsRW+JQNTNI3Wz4D259zPb6OQJSXgxHcI3kA5bq
 gW8DZF82Hupb37aEVfg==
X-Authority-Analysis: v=2.4 cv=donWylg4 c=1 sm=1 tr=0 ts=697b37a3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0R86I3TbNnukiGrDUXAA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: y1gEO_T14L44qpyI9srNrtV3dBS3Q1mT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260826-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: B7D39AF122
X-Rspamd-Action: no action

On 1/28/26 6:22 PM, Abel Vesa wrote:
> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
>> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
>>> Document the Top Level Mode Multiplexer on the Eliza Platform.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---

[...]

>>> +
>>> +  gpio-line-names:
>>> +    maxItems: 185
>>
>> 186, your first GPIO is 0 and last is 185.
> 
> Actually it is 0 through 184. The 185 is ufs reset.

The UFS reset also happens to be a GPIO..

Konrad

