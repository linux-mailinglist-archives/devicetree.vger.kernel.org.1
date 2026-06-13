Return-Path: <devicetree+bounces-311355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mLbULeZ/LWr0gwQAu9opvQ
	(envelope-from <devicetree+bounces-311355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:05:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 218BC67F073
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:05:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=W6od5oQw;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=eQpoqaQT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311355-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311355-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45EBC3013A60
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 16:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB003318B83;
	Sat, 13 Jun 2026 16:05:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4BE13C9C4
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:05:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781366750; cv=none; b=GfjLULsYqGH4TLWfIqUZoR4hxMgJSL6bQ2ASdqLsYnmMdYsRKEZl6ElsSvKj/fo8LxOIPrSSftVKvTO3fuIMVgEqTI1uScF12p9tUIfA4/2XEOfCVPqUpa+jwxFwpVklVpaVvGrB/8TheW4SMJkMdXK5N/VX4uWpEBSSbMUtztI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781366750; c=relaxed/simple;
	bh=72D22HdfA2Mfr0S3539bTipfEwN1sdj39kEryra1F4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JkIEeC2rUnLd0w14LoEKTGiH1vxif1CWMd0bqwFEad+G372eTHtedWKqSQSVQnlLx4m5F25c9RUeJkASZiAqw8F9WHwGkxmy7QKTGAbLPlIMde1/f9roYZygQE8xWtZABLMELie7fAxL8Qtg9SblJJsINkLHGNwm1JxqM0iJtFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W6od5oQw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eQpoqaQT; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65DFBFhA3228951
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:05:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JVzOrnJKRjzMeifTNqRhK3qhiUza8HAzmOtwxvlJb78=; b=W6od5oQwMU02OF/v
	I8QL+apXnkNTikLqgvVsEo4kNLL+Sh4NSbGuixPUhVvlXQjwjiWeZrDOmdSB1wey
	4oTJ+CF2p3NxzuAonOeENsIQIyLUF1sU/Q/lYHf1E9kkBSv+jJIdHLoNHE8+6oZ7
	yimJZgtZjxbyWgyPc2BN6GEcc+FpuoNXAF8BO5t+UoYeM7b3deJJwBQzdki78JDK
	sBbSCmZpWMxoWhGe2tDxhIpacE9MsIk+ZDgg/rouVQn8pcKGw+tv2MwlflUJfHAQ
	c9x1Nz7eAmBpN7RsQBP5lfExthpx/IdZxtE+R/rZfU63GeepSWL/wrX/n5CPgMJX
	TwrtOQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ery7u1fhg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:05:48 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-96395e5f46cso1774591241.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 09:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781366748; x=1781971548; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JVzOrnJKRjzMeifTNqRhK3qhiUza8HAzmOtwxvlJb78=;
        b=eQpoqaQTnjOHp5m+aPa+DGgZqtaEB1CD/eyzUP/lZV+kI81FdhaT0+Yy8q+VlJghbV
         n2D9WG4yCPLTZXHPw5D9fZMVOK+Xv1OW4GIhJqObsjvgkU9+BlOGAlTqGpQkGDeoZsVz
         Syo52wWiKPu/zUA+0aIlzGPFtR3fQ6Z3dDFMizIfF5Nuuy/ujWbSWFbXyBQzee7qddLc
         ijT2A0oGKxoU/9VCZpM5IlxPRgXUyRU/FnH6+2/RU6KW5O2F6nFf/RwB77MnZgWbp3jl
         bP7TtSmMWtNF5TX902d5M9VhPb296vsHdL056apv1+NyvKzICE5NYcTxQSJ5IruG/rOi
         +Hvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781366748; x=1781971548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JVzOrnJKRjzMeifTNqRhK3qhiUza8HAzmOtwxvlJb78=;
        b=Njqy6Wm+Z7QZAgww/xK83qvyaqk7WtFhvFLOEjrwBM63GW8dAXQb2IMzHG6GODYgWy
         gOKItrr8JfE49TgtUv9jGe2nY2HC23jTprzr8gG0EfjU9KdyIdfEmwe0B4q3BeYTPnh3
         uX9wPfDNXmnnnwgKeez7cyrK1oyd/pduh7XNs2XBFVbGwxrMS9pCYb0n5TAzpJGX8lSF
         /ghACVi+AlKK9nUmw5NUw6b28b+s4TDFr2i3C2ScYAPfrNZDHM5dQZ8Kw1DEYhz4sQGW
         /1PCCL00npzxXiff//FMJkrWG1K03nrEZ1/rzkf9+kv07S/EnNfnZsLrWRD4I8zcU5uy
         tEQA==
X-Forwarded-Encrypted: i=1; AFNElJ98IBXVy/qtiuA3gJ1wwvcQsI2k0QWaJijWzQdi1hPBT2ajjUtYgbtUoI7X4Qjf5p6g4KcIUL5qo6H/@vger.kernel.org
X-Gm-Message-State: AOJu0YxRT1jpFcJq6IzCWOsskoBF3P7r3umA+/n0XVEOcQA+XimHvMKQ
	/AGzvfyC/3cWpbvVAWxjOTcZpNUhhLhipm5MCjstg1+xFXxLO/ZTrlEjKQ0A+r4OMtAn1x7+IXf
	YwAEZjkqE+7B0lut45lVzFPJPZAZ16iV+4OpoVSg4aD/7MZ8NyvNAwfpaxff4RDF3
X-Gm-Gg: Acq92OFhUwtfFRUi6MTuaaWLPF2RTCL1AsRThMHCyY5T5K7DQghyi2vAemQyDmVLDER
	czRJV3AwYhl8ZT5UBkQlKxe4IDpz4ue2rm7Iil3U+Xq+gs79cvoLPfR+8q76VDY1L0VKAQD9tmJ
	f4c9zrxnEFLkV37gJYlSnPZXDp2mI+f6ZkpLnkUXmrvu4O1twU6wzStnskm5BY3P50P4lnAKZRv
	x80NCNwaA+RYuOdMN1PVLWoU2S3BWsniWm6nk4dcQf8NT7pFYt7m7vk+xUck2BrpzNkEV8iSU9Y
	VEGIfirF/x7g+GN4XOlfOI0BX2IstDv5JIRvdD5C/oVmx1Kxozu2kLnhRS90EvV+2aoFupG3iC+
	CybO7dU7PVNwvXIB4u3JlJ6aZQIuTPG2gjXu/9R7Lc2Tt896oW45qsQ==
X-Received: by 2002:a05:6102:26c2:b0:6f0:3c5b:ce7a with SMTP id ada2fe7eead31-71f6020ef9amr2450161137.17.1781366747880;
        Sat, 13 Jun 2026 09:05:47 -0700 (PDT)
X-Received: by 2002:a05:6102:26c2:b0:6f0:3c5b:ce7a with SMTP id ada2fe7eead31-71f6020ef9amr2450118137.17.1781366747482;
        Sat, 13 Jun 2026 09:05:47 -0700 (PDT)
Received: from [192.168.1.73] ([92.247.57.178])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb7b6d9b7sm225827766b.41.2026.06.13.09.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jun 2026 09:05:45 -0700 (PDT)
Message-ID: <2a0fc1ce-2f19-4268-8117-cd90b512312a@oss.qualcomm.com>
Date: Sat, 13 Jun 2026 19:05:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: sm8550: Add JPEG encoder node
To: Bryan O'Donoghue <bod@kernel.org>, linux-media@vger.kernel.org
Cc: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260612194417.1737009-1-atanas.filipov@oss.qualcomm.com>
 <eY8-IbmZdQzKJEghATTeVJerci7KPVBImWk85jbXw_LZ14uTj2j55zx7DEhdyu6218wQrolFoVbRWTaL3QQjNw==@protonmail.internalid>
 <20260612194417.1737009-3-atanas.filipov@oss.qualcomm.com>
 <2ad008a6-bf67-4854-906a-bd2ba395cfba@kernel.org>
Content-Language: en-US
From: Atanas Filipov <atanas.filipov@oss.qualcomm.com>
In-Reply-To: <2ad008a6-bf67-4854-906a-bd2ba395cfba@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=F8BnsKhN c=1 sm=1 tr=0 ts=6a2d7fdc cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=ybD9qRDIDfZaXNPQ7Ca20A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=tmeW4gvYBjuJ3Vz3oecA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: z4W4OLfw1aRHw9cmGMlDBmwoJRwh8Frr
X-Proofpoint-ORIG-GUID: z4W4OLfw1aRHw9cmGMlDBmwoJRwh8Frr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEzMDE2NyBTYWx0ZWRfX1Bp9+NITXCin
 q8K3yyolPhDLJ+gwC46qsbmDiqv2xF0ZYIcfu4SWMijGWnBm3EYYX6W00S0la2AYWda2fbmqBGR
 7X6JME0EvacMq5FSbPgB/mJzK7r6kIfmdJeSB3SX9F1slKOvjkDjqILmOkmUZFDKDWT6XXCe0RT
 AKwx28CWCcH93dyK4TUj5lY0f4DpSfgKBagy1O8NiCZlBcDbZ5FxhcGSOMh+ZENUSF64chsZE3m
 LWIcPlItr268pSBbvlCmWMgdDRdZRoht1cUQLqJnRoPGLp5yHI5ZC4rWj+0Y0tqIzaMIs6lAUyS
 i5Fov+SAoaO1T7Tno6BMAWIBulH3+DQVMNly1CpQzbcV13miRQ0LROLb2ElkQNq+ad5moZ/AKAE
 rW/1Nm+WqL+eTml+WDzEjmO+9RuqS3o5vth2zrMjgWce3j02IXYRCXhetZvq6tP8xl2PuXOPXFf
 rm9SvnQGCm+QGtg+pNA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEzMDE2NyBTYWx0ZWRfX66VoyT1CjCnl
 PtveE2b3260gLnmwJZbmpwjPUrd+KPoKFQ2/6DDIhz1UiaZSVWFqZ44x9QgtO4seaS0xBXnatlj
 p8mRzyWxYjHlzmSYP7F/MjjzVmdoULE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-13_03,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606130167
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311355-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[atanas.filipov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:bod@kernel.org,m:linux-media@vger.kernel.org,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atanas.filipov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 218BC67F073

Checked.  The MMCX/MXC dependency is covered transitively — camcc
itself declares:

   power-domains = <&rpmhpd RPMHPD_MMCX>, <&rpmhpd RPMHPD_MXC>;

CAM_CC_TITAN_TOP_GDSC is a subdomain of camcc, so the RPMh votes are
enforced before any consumer is powered on.

This matches the pattern used by every other single-GDSC camera node
in the upstream tree (cci0/1/2 on sm8250, sm8550, sm8650) — none of
them list MMCX/MXC directly.  No change needed.

afilipov

On 6/13/2026 2:52 AM, Bryan O'Donoghue wrote:
> On 12/06/2026 20:44, Atanas Filipov wrote:
>> +            power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> 
> This almost certainly should contain MMCX and MXC too.
> 
> Please check.
> 
> ---
> bod


