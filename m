Return-Path: <devicetree+bounces-278345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FRvJAlzvWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:17:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E61282DD2C8
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14C1031D2CE0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF6139B483;
	Fri, 20 Mar 2026 16:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ga8pZdjv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I+96vdDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D64F3C1988
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774022942; cv=none; b=AgDl1yyZpKHO4XAZXg8IpZGiM0g6VSMBmZplmYioBaQ9O++hgsvfG6VWPlFU1mcX0AH3CDN4n7jU+dsJVbIYXDw5Rvq0WFNoB9ILuaWj5IBEXi0AZ+SUEBxbpENMvwDzy6d6+srgK2q01NdXEntFeyjx75PNVgTQr+yJCTKkHnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774022942; c=relaxed/simple;
	bh=3MyUBD78giZRFdZI5eY5P4Afct6NIXZljsU8gNgUXRw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=My9lwcql77zrObunBYFsPE9j6JH7lqW+NCUtQUbQRRZ894KkKXhSLvRS2JNEh+CK22EJEVv+dxtT2UeMYJiEzWlThGXgqVcktPBZlIKIyJYhvM4ln4eMR0foOgHODmNCaUxpw9146kuh/iUIXr5Z+Vca8mt6DDAzC9uOzeSLvNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ga8pZdjv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I+96vdDo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KDbcFl1191335
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fV71a7gjTb6A4TU9Ni1s4ntEZ1N5ACGLkGmyO0wTkU0=; b=ga8pZdjvJAhqzGoQ
	D3AUx27dqm4V0TZaQOLNm2Eojb4G84wCiSwU39No3Ic4mO0d8qwig4sp+n4lT19d
	UW46aevQJXoH+QBO531Sb3x53B8czFFa88YJot8gtjnYG+X2vfD1CKKx20DNhPHA
	Yvtg4bEUcfYPSlVygE2Umy6zbUcRnrlhfXLb9UYwhXalf07pyy24RTlxvjPCi9zt
	DmV8jkzY7mCF9l34SdhIcFEQlVRktikKSwp9MzxvkijVOanfi9VD3oF0Sq/eXxZI
	hpzWeIoX0vzfM/fBlpFMlw5OWgz6wZ3lqF3yPc7KRv7OIKGsQChEIJ3Wgv9xzCXz
	hjdGVQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0pvhtx1v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:09:00 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5662a21d35bso7445674e0c.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774022939; x=1774627739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fV71a7gjTb6A4TU9Ni1s4ntEZ1N5ACGLkGmyO0wTkU0=;
        b=I+96vdDoS66snIAanPk4015Dn9NvHJJbOiNaqtVVuEYz32oVJ7OV3VyCE+dFbjC1Fa
         gBhrhYYaAwgfiAAyHqFQd1sAluplsr3GvXxtDgjipg3n4QxCx25fgkyUg4w1x4EqfgWt
         E2uePYW9spKMcTBOzKKpN41z4v5PS8g1MzWUFVZb4VQhGtV+nVGaRaTje9XNA5p6d5wB
         0itau2E7jSOFpivuWUNP29JBrtkq8YihgzFB6z3isnvRUGem9X7ckKzLuwMP7eLtuM3K
         ybm6mTmWnRDUtkoQ8ZNwAWs0+ozDoO1jglhV5buTQp8qOBRPwVLRbooYj5Nv3HERuK5r
         VKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774022939; x=1774627739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fV71a7gjTb6A4TU9Ni1s4ntEZ1N5ACGLkGmyO0wTkU0=;
        b=AcYLkF1muTHgElUTbAMB9bdMr7hL3rHvKa39ZIkOCVxOw8PZAD7z/jpUSC0PWt1ZPG
         sqvdNNT3eV7Y44/goRF5kOF46a3Fv7fgymf6hg2aQVKpplJgkJhjpAU1TEL/zyC8WTqI
         ojkUPfxoXAa26GillCwvyp8eZIG1XOxN6ztLF120zT2Ul+L0QY/3IQCk0+Rf1Ktd9+9K
         9xRp6pFGn/dnkBhNFWbz4Kf/AxGLlkbz4Zz6YVVUt84Wj0bV/gYHLySvEP/70cF/0gYQ
         IdonfeIX3DZg4/wp+e8p+h7E3tUcSqfYnpzJBVuxEJBZjb1PUHomT2uVoLiMRoOjjH/Q
         q4pg==
X-Forwarded-Encrypted: i=1; AJvYcCW3G2l6xtmPQN2wILJlPUEb48L3Bii7OjMQ4QYckfV/Us2VmY+kN1UEZFE/M0d2vav7MKEu/D9xpEwB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/ahZd0eANMtfgG/Cp+zLsEB3DZG1oA94XxvKi1IKxHI3xdmfl
	wX0yqHPI+VcMDv3jbsKFKzU33HYKnXu7JOEm/TXUmye8Dq5LLZFTTccPwNk1L0xBTl78QjEdbWB
	bv+d6K6UodRubAwPU9GzzLNhxHtv2feFiIe5VQmLfDFmJwaI51AUNyTDl1sAwhDwV
X-Gm-Gg: ATEYQzxmPnvsjiykgDrbMCTqH4kYr/Djvg/IfuSEaHc3q5cHVJWfMe79pIGFGeKtKPS
	NzwbO57jkR7ISl6pYB9GD0Z9R1HJF7vjHwRP7XwGElYNvIGUtEps/cazz+t36pCfGupZeolx0Ci
	NIES6SGx+otz4IDiWCvb22GaSKrNCOMbNvHvgXDmm6F3HEe1aesiiecIahFA015QKZlu+XeUxDq
	ST2+ygW5Oa4osDd4OE2ozyK7eler1ftDmrufiub0F7bcpqBtJbgw5WxpAhw+hWUYd2Ucyz5RGyV
	jVL7FQwXtzhDebMDaKdaCK9MpKH/Jev2X275TAApPcO0APxDl4chsD+OJs4xwjv4Q781k897mPS
	OzE8GHs0fZA9XBOHLF34DbuRk/+3rbc6UDQK/W1EuCa9mFryYmIpALPzm/NIlvZ7AKluaANnjLQ
	GdmYn+h/QN
X-Received: by 2002:a05:6122:4fa2:b0:56c:d5cd:1e7c with SMTP id 71dfb90a1353d-56cde3385d6mr2070362e0c.5.1774022939248;
        Fri, 20 Mar 2026 09:08:59 -0700 (PDT)
X-Received: by 2002:a05:6122:4fa2:b0:56c:d5cd:1e7c with SMTP id 71dfb90a1353d-56cde3385d6mr2070317e0c.5.1774022938851;
        Fri, 20 Mar 2026 09:08:58 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:ae20:597c:99b8:d161? ([2a05:6e02:1041:c10:ae20:597c:99b8:d161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b6471a297sm7991764f8f.37.2026.03.20.09.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 09:08:58 -0700 (PDT)
Message-ID: <6f4b27c5-074e-403a-90b8-fe7ef3a993b5@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 17:08:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] hwmon: Add Qualcomm PMIC BCL hardware monitor driver
To: Guenter Roeck <linux@roeck-us.net>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-2-7b426f0b77a1@oss.qualcomm.com>
 <ab1fSWx7pqlSANph@mai.linaro.org>
 <a922cf55-ebe7-4256-b3bb-cc732e45e1ff@roeck-us.net>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <a922cf55-ebe7-4256-b3bb-cc732e45e1ff@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=F95at6hN c=1 sm=1 tr=0 ts=69bd711c cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=mvinU2Bdfd4mQl_lFVsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: NhjYzFrXq_Y5YN8L0HOkYUdiuDYeL1D6
X-Proofpoint-ORIG-GUID: NhjYzFrXq_Y5YN8L0HOkYUdiuDYeL1D6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDEyOSBTYWx0ZWRfX0lKKqrjHRoeS
 x6YXBVpkhOdRAiPf2+COGwxVpOS6v4/aQoSoROPSfV8FwCHv3sCvLvQzYKuMwC8aA1GNKPXsy4v
 Y3Tlz0iQkHXhVPp15MH9ckTgECcqT/fbxUr7Pzu/FvZYqG7Nei504pxqRkjg27Lfk4M0JyYH7Fm
 ZPyMCJs6cYnCvl56JD4LynXQQscbSIXBKGkT4El8m3JH3e21gE03NQDTZVZ4kpPs6ezB5MeSDBn
 WmHaKwwxHmUExvHBIqvTnH1qRpEwAnyEP3jYDApnxn3vSynwPzZKoxOnHXpRp/ylgq8v/sz1W3H
 /0PuN+COJdJ7IKDDwEkrwG+9Vdlel3lx5nsBXYwmefSp+pCYi17GSvnZNMQiq3gmNu/nWO4k4IB
 XcWtWT6u+iemr3x7Rx0t68kV7RonpzXgQ9wZTiEaBgUoWTWBD21M8Dd1HXUIdPhF8lOw6GKs0FM
 2qS8GvqGfuh7x2+KxvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200129
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278345-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E61282DD2C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Guenter,

On 3/20/26 16:22, Guenter Roeck wrote:
> On 3/20/26 07:52, Daniel Lezcano wrote:

[ ... ]

>>> +
>>> +ADD_BCL_HWMON_ALARM_MAPS(in, min, lcrit);
>>> +ADD_BCL_HWMON_ALARM_MAPS(curr, max, crit);
>>> +
>>> +/* Interrupt names for each alarm level */
>>> +static const char * const bcl_int_names[ALARM_MAX] = {
>>> +    [LVL0] = "bcl-max-min",
>>> +    [LVL1] = "bcl-critical",
>>> +};
>>
>> IIUC there are three levels of alarms but the hwmon only has max/min
>> and critical. Would it make sense to do adaptative min / max ? So when
> 
> hwmon has lcrit, min, max, and crit alarms for all sensor types, plus
> an additional _cap_alarm for power attributes and _emergency_alarm
> for temperature attributes. There is also a generic _alarm attribute
> for each sensor, which is supposed to be used if the specific alarm
> type is not known.
> 
> What exactly are the three levels of alarms ?

Manaf can give more clarifications, but it is like we have yellow, 
orange and red alarms. So there is an additional alarm comparing to what 
is available in hwmon. The proposed driver maps orange and red alarms, 
respectively to bcl-max and bcl-critical.

I'm just asking if it is important to have this 'yellow' alarm ? And as 
there is a missing alarm to describe it in hwmon, how can we use it ?

