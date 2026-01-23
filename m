Return-Path: <devicetree+bounces-258810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LhKAAU/c2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:27:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FD67349F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 611D33037D55
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27203334C1B;
	Fri, 23 Jan 2026 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfAXlj21";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gsmyerfT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEE7337692
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160374; cv=none; b=LMZ3E/sEeAG3gFCxXRtvDV8U4UzbegBWmhRdgj5uxNkQCqFpdGeCeugukFD6CR8EWlsdqx8Wa5YCLmS5BKqhvHFfzxr8lNqII++XgtgDgCzvPfww8KXiJl2qFxKCAVhMGgNmYKvpk4MMIm6MuoYBzbSkQgMnu6qMn63jnG/6I+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160374; c=relaxed/simple;
	bh=ZymD45HnA1Wj/EjCUHn4EAtDCmuZZ40XWkQeZWRpHuc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9OAaf5heNrPCC/gucvAhQNgaakjzvnSUfGAt8zoXiVAnWI13KA34hCGlgOaT4GaRdp1rlhDhays9n4NaS+/EfEjDveNChibzxm6nlgn7BdRt23HoUVqvGQfHxrQ8Wx2K/xHsoOwj8stydd+xliNx3wHUODaMAogvRRLe287rSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfAXlj21; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gsmyerfT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6x1bS2916546
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:26:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	szx+1GRX6XbUl0ZWii2s6yevGzmPsLcdlC5e68ikQgY=; b=gfAXlj21SyBBq/Xe
	rcFWjQVcNHGGa3F7SuhqZaQ+A+A556dyYev/qE5/Zu3DlQxGHy80QnvYyWL8WOeK
	DnV/7uXk5P8ordqyGnzEYjVOTxtEjJk/m51BZMBhzLQuqwFg8o1cgPn92jsPC5vG
	Lh3Ef55aGrmTCsGqKumopMgBJGGcc5q+hDrOavekJvfVHxZjZDpOFFvbsjqLeGzy
	+yS7nrtpo1iJqRcbfe0TzDazpF71Y/t98j25gL6eoOCuvTC1UfS0hvmw/atrVx9d
	NBAK6zYOeNteUNjTeUynDRqJGOKC6GrrGremvgDscdsAAZPCp5wgfqqQDNiAzwxN
	UScdOg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buvs1t0fq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:26:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6de73fab8so48807885a.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769160368; x=1769765168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szx+1GRX6XbUl0ZWii2s6yevGzmPsLcdlC5e68ikQgY=;
        b=gsmyerfTCwLIn5RjDJZdKdX9yMmKw1onRVejvy/xhHy3U1BjA5Eiw56p1DUR5ieQak
         06b45mRPLlm/d/LDd8bbI6jkWw8y5SUYfcnA4OH6dc831jlsznQeHaGGSJ0eAvRIKMcg
         mMQi8mf1UhE96mDLvmxftpeGM3ygUUhjgZWwIdh/OKnc1HkLfecYy+I6kGToST32+NxK
         w0DQu+enLDhgLJPRoyupoEWPjGzapWZWKN1erzip8G8DNcyVXUwlh7mgSMZIbQNIxeTB
         N33c9/8Upq6gcK1ZlU35A+jveFccALrRrnjlWnPnEnZnVmGCDQLKVscft50S2xYJjzkq
         HedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769160368; x=1769765168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=szx+1GRX6XbUl0ZWii2s6yevGzmPsLcdlC5e68ikQgY=;
        b=rzNGK3pv9vbfBojI8tpGwRNo6j9DjLG9qFgEmTK4O7Kjbw2AGtXOHz+R8nj0oMb6Kk
         /YCwxdT/d54fikvH+OqZDAJVgSGoZEuxWo4JLGZgNdK54I2IT/bwsSZMB7oY8HPdAM4E
         Sx64ajK0w1rKOg6cmXlkOjJQHeADM5/KgkkPf4trZ+kfJ9nl1of0XrN/efbnDQvxFJIQ
         0m0ngo78Gg2cO6O9cev6wAvTDbyYsat+Ptvj978EE/dTEEThnYV8BxPXLHALaO10/5QD
         +hIx82kTk8Do1Uj7A1kAiOu+INcJJj7Vyn6FtyudKbVzddSLpbCzPHHA9BFE3aF3+Oy2
         QQgw==
X-Forwarded-Encrypted: i=1; AJvYcCWy8Iqxwgg3casvX8/KWnfQFBxm1CSzEK44+MC5Tody/MEtHDi4VN5BZrwyT6nUL7jkdyWQ+onySt95@vger.kernel.org
X-Gm-Message-State: AOJu0YzhpcV1yGPe08FwFc8bYYiWiIcZ3jRhcqdDsMt98k57iwCHq2tE
	HjAyr4dO1GYJpJ5EWx9zyZTIvdtIlHrBEjpkbJ3x7g8wd8D5IOkOE+bCG5A2l846wE0UZpPp6Ip
	sh0WlN9Z3fGM9VOQcH3KLuQ0CWAOAaGr637I/6PJtLQJnCzq5+WGYwvJaqynRPvFT
X-Gm-Gg: AZuq6aLJsRJOQ/v5bf25L/wXiZvh5XrI2jv60YlnoAM5DVxbWWfRL0TTMbXVGa8Wkqb
	ZO9+cQZyLu/UhYGNp3hs4DLpexIwW6pLkN3g6lehG2/PeSdL4oFPYFop/ZomfvGsy9o6lpDoNPB
	IBtZz8IdeUa0gZU+sB4GydYoLwidQTbX7+7ErL0sSIxGFsS+dswp3a2DQ+C4MNZgxxE7WsGu2fe
	U/ygTAhEK1P5dQw4/FpX/KLPqjtcWswwlbHXZGkij6DlUtxClVWyGcIzJCahaRfJ8BspbNmLZdl
	2NKfV23o28ZLevXXXIQq/aZoySQjBPoP14UF5eIUado1TveBU4vUnAZJO7L9XuF24QCcvT9nP/A
	1kTFHrMRu7Unceyxl5K/FRh84M6PstqovDnylSRStPa/4Msi1BNbNF1aW46XwRc7GYu4=
X-Received: by 2002:a05:620a:45a2:b0:8c5:33bf:524c with SMTP id af79cd13be357-8c6e2e1d328mr200642885a.6.1769160368429;
        Fri, 23 Jan 2026 01:26:08 -0800 (PST)
X-Received: by 2002:a05:620a:45a2:b0:8c5:33bf:524c with SMTP id af79cd13be357-8c6e2e1d328mr200641885a.6.1769160367935;
        Fri, 23 Jan 2026 01:26:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b954d3dsm759623a12.23.2026.01.23.01.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 01:26:06 -0800 (PST)
Message-ID: <f8097212-6388-4c4c-8f5d-a91df99a18c5@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 10:26:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Alexey Minnekhanov <alexeymin@minlexx.ru>,
        Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-4-morf3089@gmail.com>
 <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
 <ac83f41e-08ad-4ffe-9f0e-02f8256af65c@minlexx.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ac83f41e-08ad-4ffe-9f0e-02f8256af65c@minlexx.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: pJ87tWbPDJuEGEcxt0uiNF6Y9c3fmk_j
X-Proofpoint-ORIG-GUID: pJ87tWbPDJuEGEcxt0uiNF6Y9c3fmk_j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA3NCBTYWx0ZWRfX70HC0CuIEL6a
 Q2GajQdI4leNhzB5/gt6FmjQIXC5FRZlo5OdPGxqMDnvlMsdgNqfWW9aVfCWO1WkHtLp9OpzBbf
 uuSif49IqdqtjEEKBDIGeSyOCfob73B9UZtiNUe/eJDqBAMd4X5HgRUCq8knnYHIm8MM33y3zX4
 d9GqKKuDveep4vORMo1w0zs7Qf+99dvz9MOrfCHAucylooH7PpQESd1XJ5IX/kVPx/hyieSF3/s
 TgMzzcdqFev+xGrj8Y+Fh4ksTMZykdjmjZV0LvCLBSwoEvDqqVq9jSl7M4cafYWSXgq5K11wME0
 F73CHHCLDzGhNSOmp1OApnrO6hDW/EpbvgKLXH5r1Ib05m+IIiYcEntczZ+DD9yll4vIx47gh4u
 GLZaZRR1twJZUCBB4hTC5Td6PjW7jutED1Oj2la5IKyAdWT2ds5lX4eZs+b1QTSAfb/hHi1j9J1
 ryNniTD4En+WxTPz0gQ==
X-Authority-Analysis: v=2.4 cv=faSgCkQF c=1 sm=1 tr=0 ts=69733eb1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=FKD-OoraEu4ia8LkOS8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_01,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230074
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[minlexx.ru,gmail.com,vger.kernel.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-258810-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 73FD67349F
X-Rspamd-Action: no action

On 1/22/26 5:44 PM, Alexey Minnekhanov wrote:
> On 21.01.2026 14:27, Konrad Dybcio wrote:
>> On 1/20/26 7:00 PM, Gianluca Boiano wrote:
>>> Fix regulator configurations to ensure stable operation:
>>> - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
>>>    PLL operation
>>
>> The driver needs to be fixed instead, as it should perform a
>> regulator_set_load()
> 
> 
> Also change done by me in [1] with more detailed explanation:
> 
> Since the commit f05ab10 ("arm64: dts: qcom: sdm660-lavender:
> Add missing USB phy supply") previously untouched by Linux regulator
> l10a is now used, but it exposed a bug from initial porting: when
> booting with USB cable inserted, or booting without cable and
> inserting it later, board reboots.

FYI this shouldn't be required with the upstream driver, I don't think
the core calls .set_load(0) and RPM isn't notified of a current
requirement change unless that happens (qcom_smd-regulator.c)

In the power grid, I see (current values representing the peak):

-- USB2
VDDA (3.1 V - vdda-phy-dpdm-supply) - 60mA
VDDA (1.8 V - vdda-pll-supply) - 30mA

VDD (?) - 11.4 mA
VDDA_DVDD (?) - 35 mA

-- USB3
VDDA (1.8 V) - 14 mA
VDDA_CORE - 68.6 mA

+Dmitry poked at 660 in the past

Konrad

