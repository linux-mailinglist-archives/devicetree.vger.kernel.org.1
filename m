Return-Path: <devicetree+bounces-266497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNYFOi4BlmlHYAIAu9opvQ
	(envelope-from <devicetree+bounces-266497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:13:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A55015897F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A7D283006824
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46B8346A05;
	Wed, 18 Feb 2026 18:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gTLTC/7f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VcfuAgsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7A6346A15
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438376; cv=none; b=n/A7I45GHD+OsYg3VATewzeQwl/8juW3uha3ZyoeUTURqWEUIB1brnecl0ESQi2slctHAFD0FXlB9e/wM+kEd9Uqd0+5lBEWL17sSFKGQAvyv1X9DolYtfDvRCCPNn2HjKnjWmmnOWr+DJBvdHnRNILKqppPox1HFdhFLi+I2Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438376; c=relaxed/simple;
	bh=EGCHzAodjFoZy8zwIYBG26zhK2m8hl6yb7/jmJpKo5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GBQqfgM8yKQUXrKX9wlCKE4lTF5Ru9albMZRar70ONxJZtnS8sQBKXXfg7QEeR8HGvsqrz31jnJVDLsQzWHBRiALDahphYenwY9Ca3jilM5REJrOXvkSBt83w+wrKnpq3JV8CE3tzNa/duc8EDpk5/XjeESjSRKI3Iq/jgUOAm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gTLTC/7f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VcfuAgsp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61II9Qcc3379848
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0qxYicnhNGlFLcggiQLI77gWH/Wu7rKIhhyFeimRe+0=; b=gTLTC/7fQg/PpnEg
	r4+FYne+wtNRoFdRMRBBrB8WmbJQXoxjckho7MPclKtEVybhzONWam5DnUD8tvo6
	oaeK9MtZd6//hb0M0GRm42Ew6gvIINmJbn0BaWIgtr+iUmY6gE/RwkfK9guh/WiB
	k0y2RcyZtBCaJ4oG4QIVqAM8F+zBZRrfaIx/6UtA5yNN5gW+3E+2lPqUPZyTmvO1
	G5jwPEenrFxgZrCOfFila1OG3wRsga0EertXx5Hr4Ai5wPhf/tDKEgA2Pi103lwF
	xqxWD6J23IEJonr4Jh59jde69iE+BBera4+oicBkR0FM8ZuEYEJjsVytEAku8L4v
	/+vqUw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccxnykbef-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:12:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3545dbb7f14so60429a91.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771438374; x=1772043174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0qxYicnhNGlFLcggiQLI77gWH/Wu7rKIhhyFeimRe+0=;
        b=VcfuAgspV7dauuXX0eUbQDF9Z9IpN3gpDqXDWjmzmkGgVP1BiVo5IhPE/twkEowLJX
         fzNUBi7oxaGCRx7opzmm+WSvgKQ53hjZzAiiUJMGcIjRH/LjYI7O7lRVMgk3KaGUUGJn
         jOtitTdS63timTR4MGQ2zklqKBRKp2D34zg9NvMaVvcaUfPa0WQWWnuR4nUNWVzC6AVL
         Xe+zuN9hlnJ1xGxLcx9u/v4NAgC0vltQO6qiqGmaT2e3xj7mOnUIR7J8yNheSY7JRr/o
         iDuNNSPuva1DA42+E/ZnFDuW12C4BSswvL3q1qixku9aIokOQqlVMrKxJ/N1OfPw5OkP
         JBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771438374; x=1772043174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0qxYicnhNGlFLcggiQLI77gWH/Wu7rKIhhyFeimRe+0=;
        b=ZMNbdxMCyj4iXaxUTZqJPxkJBLbqsGBs69Mc/wre0w6J3LXSz5D7afmEoCq+r/QT/u
         HNIArKW+ajSOR6o2qr4VnsIHD6tdCCb+2J3qhKmrUSAKBCkvyR8LXsAcGdj5iwXrR281
         tBuGhZP+tTJbZJWe2ZF8W3+Rh+Kw04eQL8tU5FkmIpoMDpxU+S26P2uonrDlVXZ8tH5A
         dO5iys1ZHVVVxJ+ryJNDcLF2OFP2Vsxesd3Oq5wOBWMtRQkRzzjmGrtNFipcloFVbf9P
         B7JcUPd/4uNshAE6PTJ7sxc3sbrL3S2HufUeijxwCYe6Fql4qp38ruqKjHktlaAlyXBh
         z3JA==
X-Forwarded-Encrypted: i=1; AJvYcCXxTd3Wf6GSNiX644FgSqrf5PGrB9lvhpkXsoVWYLmgRRZZbL3z129RECMOPGGY+0105JYfO1h30KiJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3DEcANIkA4Fui1yuxzw9FvVT2gZ6nmlXRDGzsCtTO9OXfcsrr
	8HltpEH+Y7wQTidNUQ9mDV4heZtY8vf2aV1WW3JuZahLMoK9j6Mzxw7fuM9PeacVx/ycgXyY+Q8
	T72RJMu4BcPWojGy3U+QOPa1gqUFk2DyYs2kiecbe2ncdbSERlbe5C3EIKTB3ftYo
X-Gm-Gg: AZuq6aIVppz9qSunXBHR+oGWj72gUgX+g5Xg1B1ZVoVrUAjEzJ+wSX2sV+Qk5iyS/Nr
	kePxs9s7LsTi77Jpt9s87A5K0c3AGXGebBnx1pLMvRig+hhiYZPpfBsoLv/HevVa57xQRHgEyZx
	1wglWtlL/o2NfXwDSij+7yXsAp6stUM2ADQpnJExMDybPmHCBOWLQo3KcOL44RJwiuZ098rnmyH
	JUyTfM4lFUlw5Snp607edDzCfW9WR3M4RRjztXbvOaOP58aVgeXLJRu3oHB8gaSAbSCah2gWkUv
	3u+lH1CoCQXS44y81hS1rA5WweNmeQs+AIU44bSlaHz9depmqkR3uKz6TXCrzTqq8X5CfKrAIMC
	V54VaLRKj6nZnt/oDacdZiVbKE83lyVHI5TTPFl78AXEH9LqQCWk=
X-Received: by 2002:a17:90b:1348:b0:341:c964:126c with SMTP id 98e67ed59e1d1-3589380276emr130933a91.34.1771438374186;
        Wed, 18 Feb 2026 10:12:54 -0800 (PST)
X-Received: by 2002:a17:90b:1348:b0:341:c964:126c with SMTP id 98e67ed59e1d1-3589380276emr130915a91.34.1771438373715;
        Wed, 18 Feb 2026 10:12:53 -0800 (PST)
Received: from [192.168.29.32] ([49.43.224.102])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35887899158sm1783264a91.5.2026.02.18.10.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 10:12:53 -0800 (PST)
Message-ID: <0c7a4fef-e7c6-43d9-83ca-65a182a33adf@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 23:42:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add CAMSS support for SM6350
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260213-sm6350-camss-v3-0-30a845b0b7cc@fairphone.com>
 <c83ce76a-1c83-40eb-9c67-d26b7e6f68f3@oss.qualcomm.com>
 <caa870e2-3795-40bc-9f0e-c93e313c8c6e@oss.qualcomm.com>
 <124c661b-db25-466a-a163-99ca336a3e70@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <124c661b-db25-466a-a163-99ca336a3e70@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: bpC4DKU3GYDCL-5tJb8DJZteQmehdx67
X-Authority-Analysis: v=2.4 cv=Do5bOW/+ c=1 sm=1 tr=0 ts=69960126 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=8ET0PZbB28S/dExBzKx22g==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=BC0RzjFpySZ26J9PUKwA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: bpC4DKU3GYDCL-5tJb8DJZteQmehdx67
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE1NSBTYWx0ZWRfX4c++WINqquu2
 Y2VYO/pbojGEm2c6hOvAaYamlBtBOFgZybsS+tKX0Sc5o/JG5sOhtk784YwJHC51LxmB5M/te0U
 /o5DjyTwQyxtCwoQ3+YWLaDbBK40b4BIUE5PLQGygdOfa7RiF5M7rgip8QExVhRxcQ+mUojlXlG
 Pd/DGZiNCuurLB6GeTcC4KgicrjYpTMFR90+7kO58BZrB/V7dMak6Yb0SDQ0jsMu5kMPDsf2FI9
 Ee3DSXyubW0Z/K0k/j+rjAtbGDLSHyKOCrFAkXGa/8VhqP+JEeTqwT2G2Ohi71dfGr8ejaGPQ8U
 Lyde9ZEyxRHmI/MgF4AP+wbKlAt+tJJCZPF+8iHwEBKSOPfZEy6ER1V7gdaDjAyztZHZ3KCy4Os
 jL6olGZWYLHgYc+c5B851JpSUWqZn3/qLQ1dA45NN5QSjAwAmFnMzZqRUh1we8UyhCK8W8ThHPh
 1xaT05IUZHaiOChqzNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180155
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266497-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,fairphone.com,kernel.org,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8A55015897F
X-Rspamd-Action: no action



On 17-02-2026 05:31 pm, Konrad Dybcio wrote:
> On 2/17/26 12:56 PM, Imran Shaik wrote:
>>
>>
>> On 16-02-2026 04:34 pm, Konrad Dybcio wrote:
>>> On 2/13/26 2:15 PM, Luca Weiss wrote:
>>>> Add bindings, driver and dts to support the Camera Subsystem on the
>>>> SM6350 SoC.
>>>>
>>>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>>>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>>>> far as I can tell.
>>>>
>>>> Though when stopping the camera stream, the following clock warning
>>>> appears in dmesg. But it does not interfere with any functionality,
>>>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>>>> while the clock is on, and 'off' while it's off.
>>>>
>>>> Any suggestion how to fix this, is appreciated.
>>>>
>>>> [ 5738.590980] ------------[ cut here ]------------
>>>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
>>>
>>> FWIW 845 has .halt_check = BRANCH_VOTED here, which translates into
>>> 'dont check the state at disable', this one has BRANCH_HALT (i.e. spin
>>> and keep checking the hw state)
>>>
>>> +Taniya would BRANCH_VOTED be fitting for 6350 too? ^
>>>
>>
>> The parent RCG of this clock is under NoC control, and seems like there is no vote on the NoC while disabling this clock, hence this issue is observed.
>>
>> The BRANCH_HALT_VOTED/BRANCH_HALT_SKIP should help, or if the NoC voting is removed after the clock disable then also this issue should be resolved.
> 
> This is very useful, thanks for the insight!
> 
> Is any of these solutions specifically preferred from your side?
> 
> Konrad

 From clock controllers side we can use the BRANCH_HALT_SKIP as this 
covers both enable/disable scenarios. But this needs to be checked 
further from consumer driver side as well to handle the NoC voting 
properly.

Thanks,
Imran


