Return-Path: <devicetree+bounces-272016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGJnNpyzqmkhVgEAu9opvQ
	(envelope-from <devicetree+bounces-272016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:59:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D6621F63B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D1C730F43B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514D6382286;
	Fri,  6 Mar 2026 10:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K3RwZmmu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gMZY7vOC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE173806C9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772794479; cv=none; b=hVY23QKnP9Zw+bBHQAXg3b6+9gqBoym+hv2XXDMxXytn/fBjBuCia5a9l+g2Fbo+qhwGXf61+ZLR4jMxUbFO8e9qp4Sv+97yxX/jNWhNB2UHYvk9PoiA+9odfAtUHJL+31Cy7IDyLvg8RF4Lq6lgvppfCx8xi/exZCahTAoom9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772794479; c=relaxed/simple;
	bh=D1oR+MW5ly/+rf/6gV2gNte3878vf4od9GUDyycgZzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iuapxGXZozzHXFMxNYzJDifivcm6zCgwK2yyFOWpdfZ6Y7MGLb8FRMkY2vDzYTQylylbSj5V69y6CibYk+c2XrZDud+9xszU67TWKrqWT+5jkVA71uqtWSyudUNy2K+CLmyCtaG+GpacMU7QFQM06sjEsnVJGbPxQQMDT6wJDac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K3RwZmmu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gMZY7vOC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626ALA0n2327563
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 10:54:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Plo1iJxoloBgGUTF5xs0s8C96//M6hBOe1ddtjPmAWw=; b=K3RwZmmuwKD2EH+w
	w06GAo0gLxqbYKrImFFjYXgSLqj7erT0vJm1CPs/uFcWTbC6tNjGcjOspfaWYuf3
	QXLEX7MoIoVpGpijVYEuNS6Di1x04EClQEi4adhE0zl/dN1mDKSFskSh0SWpGz+9
	wsR/hbFDH+KFvDzMonLF03tYL7ePaRHluSeUPB/6YuJlZ6ltzxgzAfqG/WDfeRM5
	s/NmhQluqwGp5jEuC57IlOGHJ4HhreaDVcgjPAk+sUpEgFJwFPf0KTtqeKRuna6y
	dJKXuLRo3mO+et0zaZ6mvdUGK9/MgVY50P96cpd4qMJAOY0ZXHuJM5/HaODKe6JJ
	BXh7Sg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqg09tsqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 10:54:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b0d938dso5815736485a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772794476; x=1773399276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Plo1iJxoloBgGUTF5xs0s8C96//M6hBOe1ddtjPmAWw=;
        b=gMZY7vOC2zlNmgY3ZGVcpyEYOSEeahz86EL8LoKFuv5GX8DshpWI7A1+Y6UMhlFTKg
         e8M7O/FlqoArCyL22/BIQyjAVZKQ7OZ8bEiRgWkUmZX71Ryz32JmzXry0yJWkEwrVh92
         4WCch/GorsGOlGvtSia3aNMxU0vJzfKM6Au/RWs6mP5VN5WNbY7ROYZR6I8i8p6Fy3hW
         t8uWF0gqWnU5gb7W24W2e2yWdFjLii1riaYsJlCGMhC7SP/Lfw0gz3rdIetx1XU3srlG
         t13NntSjjOJjC0yTUpv6QwgLxKZ0iZZbszDG0y2FH0V1tTOB8z7BZtUYBV9/7T8vvh0A
         Ry9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772794476; x=1773399276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Plo1iJxoloBgGUTF5xs0s8C96//M6hBOe1ddtjPmAWw=;
        b=e8ZWnj5hlBq2TUVC/DbIxGA7Wgiueown1fDb/LtpPlyavVYN/m32/zqMI+a+sGx9co
         N3XSykElr9gnN/WZOo+BjTLsFtM+pT7LPrJacHmT3A8wAuvcM8YA6Gt70bwDk75zDrGM
         6NnACFe5wl0I/xsoSP15wUAZpJknspNTbq6O84uDd362bbgqNuek6c+ZnWXYqzuT0Rxv
         FWWnxSOMQnjUB0PuKo6qMIFeu4g7Zs/os72kV9P4XovIss40ytbqJ2gbHcu5BZja0OeT
         WzTecCwl6DBCv5Wl3YMH80Clk4U2CqBpRNB7KyKRf+8KRMltrFaf5FKhB68J4Pkex+gF
         3A6w==
X-Forwarded-Encrypted: i=1; AJvYcCVJ6mTAmA/VbYoBAKfHssTvHLG16SiwhYkWT8RRXQg2qDDXoCv/5ErfXVwaHW29uSRWtIpsi8lsfUhn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuh35oskliipIM4xzXnpqquZeI8CwoM77IvV8dup2PL3UnCr/e
	6LAFVtjpsc1dc1eIknG8fgP5cJsP6leP2Z4zVfkwGcVnV0sAObzK2wbj+R7AsZOTlTNpq7br7i3
	TpgOE2Nv18R/tdajPJzR0Y2MaVj36KDcNdK24bsOvw7Yd3hUb2a+5OaWp4f/9S83y
X-Gm-Gg: ATEYQzz0ZUWReLHmWWWa5G+YGmxo79NKPFW0FbbiFX3kPssQMW1ES/r5Zg8taCsyO28
	J/EXx0hRd8qMUnTsxr4jeI50I+Iq5ZbF2N3WD7FpGEv2Q2UlqVbduLnLWz9IOwniqG6A4ZTA9FN
	70G28CvqgErtL8kp+1+HqFN47l6cqYhDjqMf7jg2tg1Do9dJcPcbqOT+np5IZVUOKFUoML8WGEE
	WAKuML1lJ06wWvLrppX9Jkv8HfIhX3on8aMmGz+pzT+WFUYUVWPY6dbmx6OPXMd9bw1mlvmMSAG
	Wr8E8CVI3OTCqoezqXlkZU2ghfXclIStDw7SuDV2JM6FChGgAwpiW0mcjJO0mhCoDu0ebGLCtgB
	TldsZmcocwRZxPdYzkLwolANJCsbp9rnVvpAVpn9Jh+2ujIhA
X-Received: by 2002:a05:620a:29c5:b0:8ca:4392:c20d with SMTP id af79cd13be357-8cd6d505f23mr197924985a.80.1772794476448;
        Fri, 06 Mar 2026 02:54:36 -0800 (PST)
X-Received: by 2002:a05:620a:29c5:b0:8ca:4392:c20d with SMTP id af79cd13be357-8cd6d505f23mr197923185a.80.1772794476004;
        Fri, 06 Mar 2026 02:54:36 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dadac2a7sm3137054f8f.15.2026.03.06.02.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:54:34 -0800 (PST)
Message-ID: <23434dcf-5f45-4d16-95fb-a13021331de6@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/14] ASoC: qcom: q6dsp: few fixes and enhancements
To: Richard Acayan <mailingradian@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mohammad.rafi.shaik@oss.qualcomm.com,
        linux-sound@vger.kernel.org, lgirdwood@gmail.com, perex@perex.cz,
        tiwai@suse.com, johan@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
 <aamJwMvex4aF6eah@rdacayan>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <aamJwMvex4aF6eah@rdacayan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xL3Iy1rAu5ODXA5o2tmRSkb29EFEl1Sx
X-Authority-Analysis: v=2.4 cv=b/u/I9Gx c=1 sm=1 tr=0 ts=69aab26d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=Ta5eXiB5pPAQ62dtjbQA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: xL3Iy1rAu5ODXA5o2tmRSkb29EFEl1Sx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDEwNCBTYWx0ZWRfX2HF6q7tJWQeX
 e+Bh0rhhqAHfDvFJ8VW7qwdOnEFH41qBH+f4CUJCZ0YfHPcW6n1AR9B0wKA6HvW2dOOw1npCMZ2
 h97cA9BxfcyOq4brTyHPHwLWgR8m34BLYBIWeYjlZQ/yUUY9jg8aHqw1LWh5p4JNVd+gsLq8z/H
 H4+TpXSuTD278whFaF0KCiha1IEo/73AWzLPN55A89mbvgif91GIk6GTD4MK8mHmlWLhGNx45o1
 r1gf+8SIYJQWRO73ASS/H2OedDoOzMpEZSXO9IWO4rsDRjH66SqWALaYNvUJXagFLkyyMR7n/zq
 8XVLLJMKxhkSuYzrMraxQTbJWYLmBTslGlU5d4n8JlROCh5UI4uuyMNxGUiIw98v10AosWb0A1o
 sMD2AGjyI/Cy9oEb9GbpqnbST7E+2YAEw+/RmuNz5aGqY7iNlB/Cyp2aGrLLTqwkqRqFhC91k4h
 MrvVd40A67D0Hq5giag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060104
X-Rspamd-Queue-Id: 71D6621F63B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272016-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 1:48 PM, Richard Acayan wrote:
> On Wed, Mar 04, 2026 at 01:06:58PM +0000, Srinivas Kandagatla wrote:
>> This patchset contains few fixes for the bugs hit during testing with
>> Monza EVK platform
>> - around array out of bounds access on dai ids which keep extending but
>>   the drivers seems to have hardcoded some numbers, fix this and clean
>> the mess up
>> - fix few issues discovered while trying to shut down dsp.
>> - flooding rpmsg with write requests due to not resetting queue pointer,
>>   fix this resetting the pointer in trigger stop.
>> - possible multiple graph opens which can result in open failures.
>>
>> Apart from this few new enhancements to the dsp side
>> - add new LPI MI2S and senary dai entries
> 
> Is the LPI MI2S on Q6AFE? I don't see the AFE port ID.
I think the older SOCs did not have this I guess,

> 
> It sounds different from INT_MI2S so I can rebase my patches to depend
> on this series.
That would be wonderful
Sending out v4 soon!

--srini


