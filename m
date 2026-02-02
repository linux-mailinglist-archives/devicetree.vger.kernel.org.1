Return-Path: <devicetree+bounces-261697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPX0BiptgGmV8AIAu9opvQ
	(envelope-from <devicetree+bounces-261697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:23:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B07EDCA12C
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:23:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0802230055A1
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB812D3225;
	Mon,  2 Feb 2026 09:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PfDQ4Ajo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UaSnrIix"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76092D23B6
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770024231; cv=none; b=hUAAaoAyQtkuQ+0l/HR+Aqg6FXSXHBSvQUuBIlEjHr4nPBUQ1vagSM1b1QNzWvkFr9VEv7oJOWP9uzVytvtEY8qR3N5QrmPh7XEBpnnF6GhPeTrBDTFfsmYB1ihLOCFonX37hgqZUscvesQqd7jSQp+SmBd3stMiea9YpqCVmmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770024231; c=relaxed/simple;
	bh=GP1bzcxe+EHY5KGVtdvpPDNoR47aRz3nIOAhWoOyfg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fzOlP0MVT9KXPZzAJ5PQNyxUSDjZa0L4q7o8nvv0ffMrEcFPuejH/lDDQSaLmj7RBufpC72tSN4CfRjUpIHKVXc7fru0PsAtLzAqsRGcKKwoqlnKlT9/7NahX9YsuWQT87qmJkmvF0eU6sL3kCFlisbNPRlUxgVrV0Q6zP8tKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PfDQ4Ajo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UaSnrIix; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61285GIf1870630
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 09:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WBlp5DSD/AnyI1Z7oqwHn0hcX8LuXJktWOU+gIC22Ac=; b=PfDQ4AjoLu+D8LOQ
	YFCyWemC8wNLzAAfJZ0tlvPkP5XukQC4eJ/Zo0sJOOc3EdM2TIXmEiagVci1Xa0g
	j12S64EoFOwdezdLo3D7caqyGX7Ys/ONXxMUFkPx+kJ/Y5k4AT9OiFO0oJIcN77e
	18Y6Dp8oP7+vxttL+3dCbCbfKcyOhK4MmDYaVTRCdGDpHH8tDtkFFNEz1e/FnyaY
	YnBlKnVcEhdP1e2/hggeZG5Lmwx9Jw+e38ZGNkCjKOO4oU7KITv6pQNTAs8VFvv3
	qbsui77efS9THivzb4XUWrhwsAjv8hK4e2QEX2BtsHOB95vNAtYaxXJSbspqtQ1u
	6c/iDg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avnmuh5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:23:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a182d4e1so71173985a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 01:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770024228; x=1770629028; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WBlp5DSD/AnyI1Z7oqwHn0hcX8LuXJktWOU+gIC22Ac=;
        b=UaSnrIix7OqLuGZFYAL98CCcg/xSk5kAzMz6pGpI3QIIfXCheYYlQx083wmn2i8FyL
         +ZOX4NgO1nr/noEmUtW1IBDfB6YQF5NbsGKnTLjzVgqNj8W0n/kV8mnsHBN9RuNilYrZ
         fYIEGeOEsDD6evUrBcCcueMjqnbCLi6tKLoRWX4nI6+4dswYLC5HZUlLIM60LX5K22/G
         Ez2u4P3CgSkd4hBdiZyY81XqPG6UGzmLrt7A4BfMei8lBxh/FJFU9HIvGJ3qaDr4w1sA
         H/5D3lYBC94OtKlJ2/t+5N+zNGymVsZv97tw0BydDPSxsl3DI+/I7XwnnRa2C/Ec+cWg
         SwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770024228; x=1770629028;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WBlp5DSD/AnyI1Z7oqwHn0hcX8LuXJktWOU+gIC22Ac=;
        b=d9OUI9wW1eN8dHuUF4Tv3KoqnkfchC/6gYgJop2tEmhn6JL6idyzsXmWZP12+/GNSj
         WdtB7HV9Zh2Q5va0Xe1uw6GJikXMpW623WgDq7Jzrolna3q6mbys7ZoP8jNiDgrnuULW
         CYAislRigZ/xqEek9sNAMKMgo4CQczQDteGbwwvIyFcbDdvu0OT8L7jYCI52Jdzav2ko
         ZGLeQ9J138+VMZpx9FCOdJdLxIwx7oeO6STDhIiU8fGZuKqBU3RNXSFYELjhDo7QjofR
         1T5dY54d44po3VTOb6/Agn4JMzKe5enbka5fq7PiJXK/ERYDiL1Nw7aSxrwAXsKoYJ7g
         R7rg==
X-Forwarded-Encrypted: i=1; AJvYcCWOiAT5OEVpCix/B+QiTN/Jyz9iTL7GAAbOdXFAGBD3CfrSJDuaufe647Lr5P+8vNaxwIXf11ETjSMc@vger.kernel.org
X-Gm-Message-State: AOJu0YyGkLgmGn/lybW3hsPXgXvwij+mlf1R2peJ5LxaDYu8jVvGhiSt
	LswLKeYiu7xFSaGpPXm0ee3cD1rZYL8UzA3pi3/MMguKL3/wJrdhiRMA5Uc/GRronCbOmrmo543
	rmcJJpRmZ0Y3WEi9BiDVIm3hUF7LN9iaE5JV+QRzT6yhoLELa+CM3icH8/2hqeLnI
X-Gm-Gg: AZuq6aJoSCmsmNtIYPuUPKn0Q28DttH7jboOYvhnSpoHS1TTmt25nmwYJE+uzW0aiHe
	2MqIkpRjTrZoDvos+Qykca88/re5TRHsGOC6xGUN/mORPwZ3Ky+PZkezHucol9PfBt7etBA70WI
	w/GV6jhiEIeOOe1GaiDnK62hve96U7OqH4O0FoTVUrR3XVMZuvQNHDb30sXfJ5mkTYhHFpa5KKE
	S6VulMlRI2yaE1H0p+l/8z/pjGaW7AT1KVvXQ+G9Bp/ib7hDUN5pUa3oaYfAWMHsWpzyTSFnSEq
	nHV8FM7CkOQD5CwmTDZJbDovvgEbl8NpCY8kjJVkYLAVkkigH6vDuaEnBPOC5JXYTV+skj+34dE
	oQlf0xqaPL8Uq+AziH65/9y5JRudz00cQkjS9xcEYT7TVfpijobBvM/nppiTlNe7T9BQ=
X-Received: by 2002:a05:620a:7011:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c9eb277e82mr1106098785a.4.1770024227992;
        Mon, 02 Feb 2026 01:23:47 -0800 (PST)
X-Received: by 2002:a05:620a:7011:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c9eb277e82mr1106096285a.4.1770024227449;
        Mon, 02 Feb 2026 01:23:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed6besm846724866b.60.2026.02.02.01.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 01:23:46 -0800 (PST)
Message-ID: <13e311fb-1298-422c-8859-1b08201743ab@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 10:23:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <20260128-enable-ufs-ice-clock-scaling-v4-2-260141e8fce6@oss.qualcomm.com>
 <20260128-daft-seriema-of-promotion-c50eb5@quoll>
 <aYBE/VljJTUNx3LK@hu-arakshit-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aYBE/VljJTUNx3LK@hu-arakshit-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: njXeR6ZEisHFKMo6xLnYs_c9fZABZGqe
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=69806d24 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DrWC0EScB-dhYuGCIpMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: njXeR6ZEisHFKMo6xLnYs_c9fZABZGqe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4MCBTYWx0ZWRfXy6tjbIu+HI2n
 0oGjopmY3Uis8mJaxNL+ugE6E5Frqbl3eaDmEektupww56plyavKh+KOqAvvG8JXBaTuI6uwFHI
 maze61n9y/abLbGLv+BHC84ZQD+ldqz/OZPSCr91HPHBt1jf4Jip4cJb6iqDOHyTmqQdHKWcYV/
 CILTVXj3nuEMmkM9x2cLEjWCDqp9f8EuZGo+1+xKJ6Y5paSEzhq5rJf8uRzkgVoZijAyD5NU8bQ
 14ZUUtEgYXQH8H3F238sVzjzc2SqCnMdphP/5ehsxUDMGaQDsEhH5TYcKDDjh9JEFPdvtLcHzXY
 kxuadhafQQqaFdMGrD+zFegMaxhbVvppTdWiefXjh5/MdMO+EaKmrVXpZpn3j4UVr/ZZkw/2skI
 /kIoD4jaXp1/jzVWi1imrPsDZSw60xITH1zcUDGUQL7pQnIdaWKM04bzmyGv6z07jR8SCx52nsF
 E7JNRGXebelvrQldXEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261697-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B07EDCA12C
X-Rspamd-Action: no action

On 2/2/26 7:32 AM, Abhinaba Rakshit wrote:
> On Wed, Jan 28, 2026 at 12:04:26PM +0100, Krzysztof Kozlowski wrote:
>> On Wed, Jan 28, 2026 at 02:16:41PM +0530, Abhinaba Rakshit wrote:
>>>  	struct qcom_ice *engine;
>>> +	struct dev_pm_opp *opp;
>>> +	int err;
>>> +	unsigned long rate;
>>>  
>>>  	if (!qcom_scm_is_available())
>>>  		return ERR_PTR(-EPROBE_DEFER);
>>> @@ -584,6 +651,46 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
>>>  	if (IS_ERR(engine->core_clk))
>>>  		return ERR_CAST(engine->core_clk);
>>>  
>>> +	/* Register the OPP table only when ICE is described as a standalone
>>
>> This is not netdev...
> 
> Okay, if I understand it correct, its not conventional to use of_device_is_compatible
> outside netdev subsystem. Will update as mentioned below.

In Linux

/*
 * This style of comments is generally preferred

unless

/* You're contributing to netdev for weird legacy reasons
 * that nobody seems to understand

Konrad


