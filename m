Return-Path: <devicetree+bounces-315224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LLF5BajJO2qUdAgAu9opvQ
	(envelope-from <devicetree+bounces-315224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:12:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B12776BE03E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:12:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=a9UWfaQt;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=fmLH2P4t;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315224-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315224-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2FBE3034B14
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 12:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C53535F8C5;
	Wed, 24 Jun 2026 12:10:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24680258EF3
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:10:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782303036; cv=none; b=KiEW+l03+xyV3GZcjoG84dZ1KqLBrXrJqwD9UVgrBIDHs8FhujtHHusbAFtGMcFvAgrXsbj9PldiSk8EnF9G3QMr7v7cPClr4YXm+K/AC7LzITTVYO5R0EWBSjq7gB6RJHqeu17SWnz4rCnS0lEe6byZj/+qS6Xb76FgkkZoygI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782303036; c=relaxed/simple;
	bh=n9GH3JGrjjpag4qBC8sKecKKNO6oBKW3R7zNxpSrvPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gktoUimR210deQVkJB2cjCLuqw1GYgmtBOZM69zAZALm+g3rtzOCCLRO50Ld8Oj2fMWJuWI5gKHIyAV5Q87zy2uX7pOckCB3Pb19TBhm+i46AmE711DdRFpHa6/7v74nq/A8Wa3j/u0x+HNwgs7pmBWNU3qMUBqKVClTb0gB2Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a9UWfaQt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fmLH2P4t; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANUvM3167315
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:10:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vfbD7q2L1GT/3biLgsy0N9Xrr0lBiD9+yf39VEcsAhE=; b=a9UWfaQtRAZMIIJS
	RON1CxmLT1Dl3Y6WVDlTfrthk9bx9OiDIlCVWWrP7eE0OxHPeKMqIZIkysqyZRlO
	jW47b+OYNZ66JZ8YX9u3vNlpFDTlTGdvatDVek3vqIgIFlceWvmbQC1sKoa8SL3d
	kc2ILgcbRULxDrRKFShMFTXb764LkMrYQiF2BQpEKBaQLCbkfEe/taYukPpZJC9g
	IOD7oFO7KP9t+x611PAQ9DE+5R29HjwEmJ+kdg5B2mKIqZQgfF7dU01vk0QtOTfs
	tI1lBsX4UxC3Pzodz2aMaSJzvYvpurqJPUuqRRbqRE0w12YV0//GRzwzbZ51QMpb
	lo7EGw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0996hfex-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 12:10:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5176891d0a9so1733851cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 05:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782303032; x=1782907832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vfbD7q2L1GT/3biLgsy0N9Xrr0lBiD9+yf39VEcsAhE=;
        b=fmLH2P4tvetp1s+3SPh3iDuKBnJ0CIezcHJDPefYSL5JVGF979hcDaMksbaIN4xptm
         BQcp62wfLjT+vvobLieuizIgmhHabkUH5P6EIbSXmSQ7Z+0wdWSHdR6Ky/8MIcdCnVY0
         Qald6S95++aMgJiUlwMVj7JICSTUSn3mIJt6kThYViJQ9XvNyiY1d3zDCLHcwb1pFIMo
         lMjt/L7OzloPorm0ntp/Mj2p4D8lrJSn/ThrwdBKJtPjkrQuDkh7ThIWJHuYHL+5es1q
         ARi+7kRyBpF3WUBdi5yumLseSs5TINTgxgQ/+ebz5hLNPPZqEPL2nQecjc80TUcOJGwa
         APtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782303032; x=1782907832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vfbD7q2L1GT/3biLgsy0N9Xrr0lBiD9+yf39VEcsAhE=;
        b=nkBiLGFmYK9MLyhXHEBOw57+llEdubSbzJ6VFUxOHcoMqY57Go8BFo3FHlgUMFo9Qi
         eQHkNOKLBVcJK2TNKk+uuBiFWa3VgD7vFVMH8pQstHyWw8K4h4xyUJaMgVODAgnCvLg9
         BPdsBzxbZHAjcPGhVQeHrAPLkDXYf6Aein+cdW1E60zV/XveDxnHFSAHRWz/PYgWlUCV
         aUDyQqpQkR6U08Zowy7H6tWLQlQpsk9tn+11NbJ83bWsG2RP5GroyohklFDXRlmBZJoR
         jLv1MVSQGPFaIbpNQ70ML9VtV781lYhdfD+Fd45z3ubfNC1ZIhTTxihYG5ccjRMeMnft
         BJLg==
X-Forwarded-Encrypted: i=1; AFNElJ8C3vz6uRvUW72jHrtxdoWmud+355dxKOF91J0d66XsLADPjyUrbLaFNgdxdHMtY2zq5i0oLQI6YlJW@vger.kernel.org
X-Gm-Message-State: AOJu0YzWjoNWxxNX6hiDqsCDStAUWDP8C/aNC9gGAEf+9CePd5lPw+0g
	LoMUyBFzr32c+4a9yp7mONojU6VSxjhJhdJWBWmZ7i4j8aBZKzQbv2RMn9ZWYXGR2HaJwvLYhyc
	MwkHmCFLZYV74pEZvWTw/KEyqVYVpurV/gtXX5SsVCDvGmw9/kWs/MVI67m6x8KBq
X-Gm-Gg: AfdE7clOen7XJcJ4xkbhCJwEN7sIZWQxCeo/OHzi2AD1e9gS6brHyiYZmR/csIpf7Fo
	XaVjKdUB+libpV9pDR+M82+iNRNzVe9+jnjAblHoV14upg/AJaPT1XTQ5jM7MFxpL8pT/tkbQsc
	NGsKgU0p0DskK2Qvcvods3/fnsGkiYXHsAEXNNiwQV9h4xisv3a9QHF3jK59L6PczkW6u0g6udQ
	j8m37vwz9ocjFF9MPuzrd4Gqty2OsZ1b0dqWT++IxlUgh3oYsolrcQrnSVAayMu4JVuq5FC7MkD
	qx9biUbXxjknu3BDMGeM2YeCF6D4WD3GiUzcgpwZmMSER6yLejQE7rxZ1YwyTl2ZZTNZJghsTU6
	v3GTpjb+sy9KxOvaNj9lPENFh2vdt65w1PIk=
X-Received: by 2002:ac8:5812:0:b0:519:9efb:56f6 with SMTP id d75a77b69052e-51a4f4db870mr84855811cf.7.1782303032215;
        Wed, 24 Jun 2026 05:10:32 -0700 (PDT)
X-Received: by 2002:ac8:5812:0:b0:519:9efb:56f6 with SMTP id d75a77b69052e-51a4f4db870mr84855321cf.7.1782303031590;
        Wed, 24 Jun 2026 05:10:31 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5b304722sm639573066b.0.2026.06.24.05.10.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 05:10:30 -0700 (PDT)
Message-ID: <34408f18-0d1b-4828-a0ce-feb54f536ef2@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 14:10:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: Add HONOR MagicBook Art 14
 device tree
To: Konstantin Shabanov <mail@etehtsea.me>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <593b7024-e986-484d-8837-17f08990575e@oss.qualcomm.com>
 <20260620173833.17728-1-mail@etehtsea.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260620173833.17728-1-mail@etehtsea.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZouwymZA0OMZXxw4xmoZMgtzOcNqfPTS
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDA5OSBTYWx0ZWRfX2cLCk/lg0xrA
 IwannIU7eePnkpMnAcjzJcKLit6oePJOaxmsJmskspSgwh/dshciUiIbaci6gmNDwxD2lUa2tsZ
 Yvu5GP4tLknwySCozbvOYNU/tUR9iDM=
X-Proofpoint-ORIG-GUID: ZouwymZA0OMZXxw4xmoZMgtzOcNqfPTS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDA5OSBTYWx0ZWRfX57cLUSxBS4SR
 WY9yDhbG+xDgNmzsA9g26ftMt+oBYK9Uqw6fVnY1FNVieGSVzGdWXzXduchnYo0mHgmgBY9aHH/
 PhnjjO6A8mg/ettUkp3mMKTDWXtFwE1CYdtwnAxzPufIveQiG8NHDgVUkWqqMs5FQFn9/KNIiKn
 N6Ppo1VZWq0D6IP3LOQ79jBnBiYbgVrd6MpN5yM2R7ft8y5MMmRPgzrH3JklSlN+KPKdmSewtbG
 /XC/9T8L7Evr7a5W+kUaYNZ4hlwxpzwhleEaXhX5WksoZlgyZqMOgneZ9PTe7v4TIFImI93HewO
 wIXmr8TicxyDLUGPMBLDTO1E5fUaNrI5OlqxdJwqDiITXHeDmw1IcXjJKH3MqWG8YRuuI0q/IpD
 8Qvhou6GxrqXA0rO+7M3Z7LnPISwiQ==
X-Authority-Analysis: v=2.4 cv=Tv/WQjXh c=1 sm=1 tr=0 ts=6a3bc939 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=HS6WGF8TgoXg7XbOFtoA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606240099
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315224-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:mail@etehtsea.me,m:andersson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B12776BE03E

On 6/20/26 7:38 PM, Konstantin Shabanov wrote:
> On Tue, 16 Jun 2026 14:37:13 +0200 Konrad Dybcio wrote:
>>> +/* MP0 goes to the USB-A port(USB3) and FPC */
>>
>> "MP0" refers to the first USB3+USB2 port on the multiport controller.
>> Is there a hub inbetween? Should we describe it? Do we know if VBUS on
>> the USB-A port is controllable?
> 
> Unfortunately, I couldn't find any documentation for this laptop, and
> all I can tell is that the USB-A port seems to work and the FPC is
> recognized:
> 
> Bus 005 Device 002: ID 10a5:9924 FPC FPC L:2407 FW:3334147

OK, if it works, it works

Konrad

