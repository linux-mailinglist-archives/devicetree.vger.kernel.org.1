Return-Path: <devicetree+bounces-261721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPROFTV8gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:28:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128FCAE66
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3F39300BE1A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C455130C60B;
	Mon,  2 Feb 2026 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qw7sb/0r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g9KfRx/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5F52701CB
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027386; cv=none; b=sRpEu73o7a05dJM+DFJtDQE0EFThOLhMkJZWkHnKkvRI1LlF7FwVKJ0iDzUKCe7W/7FY3GsbCHbP4DbK6/iQZyYQTDHpVeefuuww0f4b5Lhi38Sp1E4KTpJ9+skLwjrNKkkPhR45Qd25qVLd1NNdrbVJp+54bTlZL0GSYTzxoUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027386; c=relaxed/simple;
	bh=UGR0pbSiMwJMoCLH0/VjKOOJ+kx6tbM1ebts5IHb9QY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KY4FrUfALXo6UUSKLdCePKMnbM/B96jnSLCxGyD32r2pjjO1ORpkQID8oo/pwnk9z2PRYzcGByX6zUnWa9TLEhwriMb8BcdkBzw6zLtS9PoOrowVSH+EZLmeKb+IJIdInGNk0bfDiG0AXa8bJtya2oohggHZ0+ePJDcwJR5UIyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qw7sb/0r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g9KfRx/5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6128DXIv719499
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:16:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M0ynAAGMGXymsfhu1/mPnfieZ/fw+zwbgNsbpGrKCfc=; b=Qw7sb/0rce9f7zDO
	FGabQ0LLUkYrNY40peWecMw+w/f2g5/DCzuA5XWznng5VSs6T4O4AHTPTkXy3mHk
	wE+3pj3HObw31vADOe1uHj7aZnB//UmmE2wFsul6aOE6sbTp/VwvTVLSvnps9a6x
	LO5hUJqnTh4nJjf5dnXpu751XNCWgX8EBP3jcW/XTkuE4QY08+bXsx3JZjIbPVSL
	oo3jk+4QLLKzGf6OoGzoBezuGguMrkYtwnIIwlBWspaZzf2wPO06NWWIs5NWPqcd
	UhTFCo85PNPp7CfTLn/D159CXtjbJbs5oSchpH/vHDcc6d5u8FnI1uydagZCzIXA
	83gJ0Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1arecyhv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:16:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c536c9d2f7so116464785a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770027384; x=1770632184; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M0ynAAGMGXymsfhu1/mPnfieZ/fw+zwbgNsbpGrKCfc=;
        b=g9KfRx/5xpXgb1AGXilxX15nOs48kV/bDddc/PXayqtHRalvUSNO81xeqk/VWdzH1l
         XU+DDmzwxesFPVKxXFnXQuEe41YC88atp9FHNTcub2PA0msRTT+r/ZzQ8vKKgZtjLXjJ
         K030gNLzAVACD/RAsfTExI/M6jM4SQHGhkHZ93EBTKAswy+OnlZwCL9xeXXllMv+OHVo
         dbCUmbLn9k4gZjJ0FhUOGtZXUSloFxd1Hl1NSSTXuzljP7foxe8vzsfy8CDFc3AXBtBt
         LUFl0ddkO0IopT13H0sl1WQxjMVzs95+HxZj1HSe51UwQPW4U3TZPKUNVX0JqM9AanIY
         yh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027384; x=1770632184;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0ynAAGMGXymsfhu1/mPnfieZ/fw+zwbgNsbpGrKCfc=;
        b=gOK1Ct5ZykWbgtOuU5tcwJemwktWRQWicMXyOMRwK5ACcRUhpUtSDWnwIPQ7BQG7U6
         2rROhyG1yMjIFgkcWfcIEn8vmAq6QU4qFYIxUNU2mj03hf2imF0oOMDCBM+MpK7jrXtr
         PhSWGjI4j6bMv1Ut9IKo4gr5oJha47fTDg3qBu3Ri/dKYrUyMHaQA+UXF2ki0P+nwHBg
         JFc6WkBQJzannGYXmmIaCV1ocwvgNiUB9YaSww3UItQuqueK4axoxACiiQj5WTU2Co+0
         3ZRbJI00BPollbiLeBx6UdSAIFZwaTPhC46Ty0g0wqG0IViCB7LeQfKTMZVb8fg7xANi
         NQVw==
X-Forwarded-Encrypted: i=1; AJvYcCUmTiO+qveQVQ/D7X09DY5btMb35n64htal3OedRMgWSxo7weVdTJ7jwIt0Kq2nGY6rY7QDvqdF36nl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3RqNJAGFDZO7nSLzqHwodd8MJQLH3JpqSbIQ3oR2F8ZtesADr
	63UU8tCjJvRoFFBb6M9fPRTgFP7pPda2Thl2Mfa8FsqJXR3Mrd+rwWU3JV0LBedZC7RlKPXiN5p
	lX1pH101zhysSc1Sq2znHTnTJSg3T/PBTyk/aLNk88i1LFhrAP/WgbXfOonx+lmZa
X-Gm-Gg: AZuq6aLki2AdsIp63qLG8S1RojyJ/uZbUKCoMeSFOJcdXPrhle/kOwDTjrJsrTtM8cY
	6XgxZ9Qn1H+xEEEhMRdfwnVqLZLH33Yv3FxB/EIDFJdjIDsgPkS8gyu04DezGB+t8lHyF4TXRYD
	ZnWgyS2G940NlhQ12cTxRxvu9jYGJPf1n13jqF7jMaSDC/tVoB94V6PHo7NQgtmHS7VF/7LN9Fs
	nNyVKOUE1J5x2s83dB5lAoQD7aS8A/LEZpZzxk7VyC8KbVFGbHceMeKzng5KDRcINEJCCxpdt+S
	MG9bgKZJImEq4+csENwacCrf0J3l6yiRuLNDyQvwi4MPK5kt6xpFyM302qyimAET8YskNDoqpCh
	10cAtiMWIz43VqlEKf2qnvSyspLvQJ3ShGC/SoQLi/G/3kB/rjrnai5z+DPHNER1y6Dc=
X-Received: by 2002:a05:620a:31a4:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8c9eb25aa3amr1055640785a.1.1770027383614;
        Mon, 02 Feb 2026 02:16:23 -0800 (PST)
X-Received: by 2002:a05:620a:31a4:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8c9eb25aa3amr1055639285a.1.1770027383143;
        Mon, 02 Feb 2026 02:16:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46abea5sm7601946a12.31.2026.02.02.02.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:16:22 -0800 (PST)
Message-ID: <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:16:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
 <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=69807978 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7qjKt6vscxvWZOHtmVAA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 5o8lQo-Q8tU57ZXuuU5QQSJTuRriupTd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfXyGWs6cQ5W5hy
 Ia8cPuvXGiAnxBZunLDQJARKEZ2yNLZstEkd/3aU3yfQJv4K10dzXwyf7KCUfI4W2KzonzD+WvG
 m5Lgx0O2yyreISokF2Td2B4qA7qARusE9yQ/gN8d7OWr7xRRoBsH5xSAKg5IrR419U8gF2YYaCt
 ebEvpBzv9iMNotH56T4blZIFClFX0ffGDsKhE4Q8yyeJfj5JBDpzLp9UaRfT7clzBLsx1FrFg8v
 0qp6BmkOUQW3aAj/7/82IME4WRr1xlpaoK1+cRsO0Qqwleb+NupY6115VYU9oPA08jwIOVAZiET
 ijnNj0ZFREPcOKWPI9Mm2NV/9/cdCgTyiMxbEOGvvpFnZIz0GVQc4hkdc6Szxe/UOAsp7Wp/9XK
 4+UAZ1g11DlVD5D3/lVqT7l/gTh7/RxpLLUz2bndrCAEVR6c6xVUJ2XHyDs5sMSexCbYtmVQiru
 YDHmTsL+duRf5UySQ+g==
X-Proofpoint-ORIG-GUID: 5o8lQo-Q8tU57ZXuuU5QQSJTuRriupTd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261721-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8128FCAE66
X-Rspamd-Action: no action

On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
> On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
>> On 1/29/26 1:13 AM, Sibi Sankar wrote:
>>> Enable ADSP and CDSP on Glymur CRD board.
>>>
>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> index 0899214465ac..0eed4faa8b07 100644
>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>> @@ -487,6 +487,20 @@ &pon_resin {
>>>  	status = "okay";
>>>  };
>>>  
>>> +&remoteproc_adsp {
>>> +	firmware-name = "qcom/glymur/adsp.mbn",
>>> +			"qcom/glymur/adsp_dtb.mbn";
>>> +
>>> +	status = "okay";
>>> +};
>>> +
>>> +&remoteproc_cdsp {
>>> +	firmware-name = "qcom/glymur/cdsp.mbn",
>>> +			"qcom/glymur/cdsp_dtb.mbn";
>>> +
>>> +	status = "okay";
>>> +};
>>
>> Please make sure it gets to L-F (only Kaanapali is there right now)
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
> but the firmware in linux-firmware is (now) targeting IoT devices,
> should we use WoA-like names for firmware on Glymur CRD instead
> (qcadsp-something.mbn). It would match what was done for the SC8280XP
> CRD.

I think it's simply time to stop pretending the firmware is generic
(some fw simply isn't and some fw may come from different/incompatible
branchpoints) and include a board name in the path

Konrad

