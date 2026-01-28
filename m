Return-Path: <devicetree+bounces-260226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHdYHXnDeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:06:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 842D79E039
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A65F300D46B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900B83358CD;
	Wed, 28 Jan 2026 08:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mifdXvZI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yhf/i5RV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3506F27F73A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587574; cv=none; b=U33DEuArOJcKdFx3UopDjCPIgA4jywX7wl+bObRJxJFyb3k2IBhVh/qKH5t6i3OeU+VrrsN3kUjD6aQjQfijUTuhvtBVHT8IGb5Yy4Sljp0/3pOO+wIANj7FJofe6foP7NAvBE3nXcQ3qHZaGV9WMTt6HG1AlXfER8McMtKrL7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587574; c=relaxed/simple;
	bh=fySWa2YPX+zY7WKT8GRxXSqY8amUG/E8RcBOrRuwtV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l3oAc0/p4Zb18teVIEHmyujoq/McHljaoVE0GdDXd4kfmM1ReBfg1+2INGgUM4lE7TcgBoMm7xs1B3vPL3dIVaoY4FUT/Nr9MyiZsX2KtB93wpmSGTmQbpIM/ZtiyZTdzHhlK9Fj5JYm1grVYOsaggYEWWcBJT7QG9TyrYhzfCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mifdXvZI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yhf/i5RV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3X3ev2728736
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:06:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Y/4AduHygOOr/US0JTx0tGB3z9DY7O4M+3RFP1ask4=; b=mifdXvZIYWE52xAQ
	PmsTx5deIpdYsR/rNxxdJ9Sj6vzGBI2S9HurbN8sljxVdYdzIwLUK80fyb/iKK0k
	ayt5orAwL4S9tOjn/u6nM1KelAkhsU8uVZj2zkfJmTMhA2pg2azj5Dh993DTpnJ0
	DOvkh/LcRjNGK3tuaK+thOL8E2W/+3l/YP5PeKI1AwfgvFbEtFRcaomSzxXFlhM+
	N99VLKg1SJSkhGgJoO4W1KxuAsUZNmL3tLHzZx43ps4PJ7KGfAsz7lWf9QMzwRGW
	pbf3jXXcUzjyygkTkbtZl3k+2DHRXb9hyRrjjIFLUMFWdf60R4EEkafZBv7IldRB
	Avg5Ig==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanagrqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:06:12 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6187bdadcdso3778477a12.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769587571; x=1770192371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Y/4AduHygOOr/US0JTx0tGB3z9DY7O4M+3RFP1ask4=;
        b=Yhf/i5RVpL/cn7XytbGEy462bBp54gCS3vKYnfW2Vlt3duasoBLyQGG1wTJa7eeKfD
         Pu+HQ+Eic1SBT5iUsvIXg54m+ghppDWLNyuFwEYK4gJtvpVo7lIxrbrz5Ad6Rys4crQx
         wJxITqwPR0abmtto7vz2EcrUpxv6urC3pi6qE6xcbF1oi56ftnGYaR9qvv4U/cvdQX7r
         so2JyTu6jaEemu53QqvPArIZByvHrk9I3d8a/hi5rmzuFe7ur3f12SrE3yo4JK0x2Gx6
         7fsB7JiqCNm7dVC4lyzyRyVcOVp9nMRumRS4ylfMEQAtwzWKygJdfcx/WikT5XjVNxtP
         siDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769587571; x=1770192371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Y/4AduHygOOr/US0JTx0tGB3z9DY7O4M+3RFP1ask4=;
        b=ZztWCkhwsIx13bMGMdcgctpn8uKbhJRI+D+JhLZomg02vBD4UFTpGwa1NRVsvboJRI
         Hw9yUsVcw/xf3W31fcDtwMR2/zmdJkC84meVrTfkhjOC5UaKPEHGipQeLzJ551kwO03I
         B7J2SxI4Yf0fRAI14HbVr4gMnX8+JWkL4JiO8RENItIvjXb3O9sda2dLxtyq0Etz3ddq
         HRV7jpnJu9ehTOGl61v4cktSj+tzZCY1dLmSnREO4oWiXCS6yE1ka4Omkw6SBrPOJRIq
         Hm9BAN5kGdhuqyeToitCbycTlO5trAXFgg/o17+LuVeB8wHK9dYb2dAtUL3uQenKSmma
         A7Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVH3HgAfzRNRWe0Zzd6Ml8SG52tb5TJEnrh2SFdOv76XKQkTq9jhCUNoaU1HLOqsNQFMlMDeKNg/Xbu@vger.kernel.org
X-Gm-Message-State: AOJu0YxxlSavgzHCF0rRQsskvXpEwxAwm86DCfi+Q8/DSL+9UPiuk1li
	dKowwwQZtcfR00p+i4YsK8t/CF2dkJE8G1WEXjSjlHoiob24cNpw65IFS9qoH84cNCqWZs8Y8Rf
	WYsmpjShd51l8lHhlqCReov/1YkdJkX8ctQlYfj96fYxsGJJrbUY1eKKQtArwE0t2
X-Gm-Gg: AZuq6aKs0L+X9rcOjujG/2j5msYYcTzFLkZa8Q1+mmRpAk1DB33BlglOveVkZJuJuN4
	ljx1kLqswW442u5LXYTqWt322OlNhII4LY0oFk9RRrFER/AG+W/y+FP8nOQILlRSc2bpDW/Owe3
	0A41Fk8doLIlFdrKgIozpIHbHYguNOpl9DEfLe72uMs+11o5EyJA6P8X049U1dgmxuNPXrqclXb
	cprPYmNL1ZLsvil4I/4VNfbvLwDp8Sf1Vd0SgL+W9PxtbBt4BlhBJQd5ZpiXOFEhlLTviO7NltK
	x8vyIrswFjWIV9tTXiw45hpoLGjvR4E84zGVZ8h3JYTdNQfJ4nlqYxVhUE3TwUgekLC13XQf/wN
	Bbm7sW2i9O3nevmRh1m0YKeg9Gh3wz0wG49BIBqH+D1nxo9iWJrLqOc6HPujJgjm2USkm
X-Received: by 2002:a05:6a00:cd3:b0:81f:4a0c:c584 with SMTP id d2e1a72fcca58-823691608cfmr4740770b3a.1.1769587571369;
        Wed, 28 Jan 2026 00:06:11 -0800 (PST)
X-Received: by 2002:a05:6a00:cd3:b0:81f:4a0c:c584 with SMTP id d2e1a72fcca58-823691608cfmr4740725b3a.1.1769587570872;
        Wed, 28 Jan 2026 00:06:10 -0800 (PST)
Received: from [10.133.33.20] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c54febsm1762607b3a.59.2026.01.28.00.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 00:06:10 -0800 (PST)
Message-ID: <8e13cfba-5bc1-4588-aa79-6cf13d35dba9@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 16:06:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 ath-current 0/2] wifi: ath11k: add usecase firmware
 handling based on device compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jonas.gorski@gmail.com
References: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
 <74176aab-03d4-4095-890d-7ef1739b914b@oss.qualcomm.com>
 <32845805-5758-4c35-8818-ebccbfd9546a@kernel.org>
Content-Language: en-US
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
In-Reply-To: <32845805-5758-4c35-8818-ebccbfd9546a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6Mx30HxV5vTC46-N7AXsF80Vi2ug3QuP
X-Proofpoint-ORIG-GUID: 6Mx30HxV5vTC46-N7AXsF80Vi2ug3QuP
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=6979c374 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=b4L-3lD8CPRiJR5BZnEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2NSBTYWx0ZWRfX6QWUlPd1YCFI
 qJtXLEp4lIIoL91a7cwkVhEdYseyHARyie92x8i6nFk0ste3E9lufSPorvdBn+kascBvgWYOmZG
 fO1dO3wWuAhEDAbp+bOKWqRfqE1cDpppMYOyTm1waRPsFRoAQBJV+ivSIOu3YGHcPfydWlzfsfg
 4znKaKLD0Qq5EikICEgK0peWIlg0iIVC91NXSNzFfQRO3tmRxh8gVuaD1pvl8d5D456ZJwURN5O
 SXzlE9xmFFF8Q1c0pYd0zHpxuSMZ6af2lZ9ZxKGodcNecRcf0kqnvt8Eln+ZYpXgM1onz3xY1xZ
 Ix+JVz+zSnUmMOtaJmG3jFMU8TTFYH+HegN7HOkz6EcST73wC/sLfJEr4KZhvOBpgaLT2ouiPYK
 AHE6yTOrcqCJXIlbZ32vJWGnPRO1YZXpgdZzWIX+zLZ/lidLVw6lLInGDY7JE2JCixO4/orQiJz
 RFWUjsEpHjtPMcCcs2Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260226-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miaoqing.pan@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 842D79E039
X-Rspamd-Action: no action



On 1/28/2026 4:01 PM, Krzysztof Kozlowski wrote:
> On 27/01/2026 18:31, Jeff Johnson wrote:
>> On 1/21/2026 1:50 AM, Miaoqing Pan wrote:
>>> The 'firmware-name' property was introduced to allow end-users and
>>> integrators to select use-case-specific firmware for the WCN6855.
>>> But for M.2 WLAN chips, there is no suitable DTS node to specify
>>> the 'firmware-name' property. In addition, assigning firmware for
>>> the M.2 PCIe interface causes chips that do not use use-case-specific
>>> firmware to fail. Therefore, abandoning the approach of specifying
>>> firmware in DTS. As an alternative, propose a static lookup table
>>> mapping device compatible to firmware names.
>>>
>>> ---
>>> v2:
>>> - Drops `firmware-name` from completely.
>>> - Updates the commit message to clearly state that the property is
>>>    obsolete and the change is ABI-breaking but safe for upstream.
>>> v3:
>>>   - Deprecate 'firmware-name' property instead of obsolete.
>>>   - Keep the ABI backwards compatible.
>>> v4:
>>>   - Use of_machine_is_compatible() to simplify the code.
>>>   - Add back Acked-by tag.
>>> ---
>>>
>>> Miaoqing Pan (2):
>>>    wifi: ath11k: add usecase firmware handling based on device compatible
>>>    dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name'
>>>      property
>>>
>>>   .../net/wireless/qcom,ath11k-pci.yaml         |  1 +
>>>   drivers/net/wireless/ath/ath11k/core.c        | 27 +++++++++++++++++++
>>>   drivers/net/wireless/ath/ath11k/core.h        |  4 +++
>>>   3 files changed, 32 insertions(+)
>>>
>>>
>>> base-commit: d8e1f4a193101a72235416f189b01131a57e26e9
>>
>> Krzysztof,
>> Since you previously NAKed this series, can you confirm that your review
>> comments have been addressed?
> 
> 
> Binding looks fine, but I did not check the driver.
> 
> Best regards,
> Krzysztof

The driver has retained compatibility with the firmware-name.

static inline const char *ath11k_scan_state_str(enum ath11k_scan_state 
state)
  {
@@ -1346,6 +1347,9 @@ static inline void 
ath11k_core_create_firmware_path(struct ath11k_base *ab,

  	of_property_read_string(ab->dev->of_node, "firmware-name", &fw_name); 
//here

+	if (!fw_name)
+		fw_name = ath11k_core_get_usecase_firmware(ab);
+

