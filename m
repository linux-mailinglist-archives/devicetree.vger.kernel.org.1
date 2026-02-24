Return-Path: <devicetree+bounces-267835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOZAHz2MnWn5QQQAu9opvQ
	(envelope-from <devicetree+bounces-267835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:32:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D69AF18650D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D3B630056E8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6C537D132;
	Tue, 24 Feb 2026 11:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DF03rBkY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VSyK084a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B164A37C10B
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771932486; cv=none; b=jYL8C+orGL27wVzfnMZmyCRzjQzIxB6yavObyVZodRMStOu2neTyKhAVl9Qgt5YcJxbnZGpjhjIh28fukPPT2lKzF1zgcM0pNlniYwI1vmVBQG0NSxPErQiSzNfw9zyYqDRrXIysN1lmnx8NtnjmTI1BtBk+pAzxHsy9NrLAhqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771932486; c=relaxed/simple;
	bh=Kke3tNYzY/p8Z8MnBRLYILdDIXMtufHi00/zJVWlmIA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qEDBImVlP1TtIa1/kMgjjAw/wZ0AfPSNzTjic8yIcnBPp1MUQMeud1NpgkAiKcaVepk8cvm8syxdZBwEihthURwD5WEltHW4aMKmDFewxjjCRnplV9ZTxj5UYE0H/ZZ5ZT+H188lzMCa6ZdpWi4Oj0fIX+dcNl0VZgz/Ibs5ras=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DF03rBkY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VSyK084a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFVVd2560561
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:28:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tldt2vxdb/j7diXSGcWaW4T39hoY50fjs8hYeXvGavc=; b=DF03rBkYdlpHf8lD
	VLHi65qBGC6PvAaXaYPRQxBiL/TAMHLZTXyzN+ofkPqYgAOznfnNQTwQEfWYbESx
	I7AemICEmJb6HxbqZgYqOfs3gJlhAsts3bdkZH4rjj8cvKGLXumb/Pe/ubdHgFcf
	WhTey0D5nywlYpeqbIXyLYL37QhGVPEsMOgO1CFWtKCFihlG+ZghPhDJapEmB5h1
	PL1uqFQeMrEh3a3NoLC/mmxhUhblMbzpV5oWGkvKZjytoAyRbOGMqO8LtKQlXbXc
	b9WJ/7nQz5l0H2qTpvhJt5QHhsLC7o1V4ORI+ZkHjiDF0b6vreqx7SqnswuabPDR
	eKiLUg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4e397m3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:28:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c7177d4ab4so544528385a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771932484; x=1772537284; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tldt2vxdb/j7diXSGcWaW4T39hoY50fjs8hYeXvGavc=;
        b=VSyK084azX5dhGbq/vufvIzTMl+j5/US97lADStI40KsdUmC9mBBjF4LaFZlDPbd9T
         3PvUb99f92qbynnMSPCNDVYzn71YG1FDFKgUz6KneYfAh7h2YYeO/EQRUjrCZTf2pG7w
         AG8MpvT2uCA9NHfYwQQS7k3i4Ot1s3pHtcJgXbx0FQfLf+P6Csht5hI/pnrErhzISrvd
         7nOmxClGylNT0QH6pNv/Z+KPXQFAbDkyyUDY9XCDxEZ2hZKNdS3zUJpuJ5swojO/YSej
         OxqdqTfgtKulX+dku2FvR9HW7Tn2ZMzsmFiupgbkcUy9Z8sV2hjBDICVjhnQEy4EGMGN
         u40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771932484; x=1772537284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tldt2vxdb/j7diXSGcWaW4T39hoY50fjs8hYeXvGavc=;
        b=Ckk2kX1d2Fh6ckvNUiEy6CKHw+dAS+5cKl7mbg8Z6S8ZFe42DOydEJzYimNY142Iyy
         hIi60FIrIIRViT5U4YgEMUOdn/ZVROn3+XG3/e6en8WU+/ySxuE6jDbq56vnibXaYJkL
         VljeVLbxrxWkFKvRD50EtSA/mZBkyVgk68ep+uqeTe2pRUZLGgRgZJJ/lPHe8BfT2/5w
         uZeTuDIm9z2SU1j0Hf8JpA6K0dkQIjjRKwXGV0y+merusU7LrKGj0JhKx/ELOJrS5oUr
         vMX6FuOTIfxLk2EaJb+SYa2KAr03LCPbbnLi1+TP4I9u9Hr/vtP+MIhqErxwfkdXlCcZ
         CSRA==
X-Forwarded-Encrypted: i=1; AJvYcCUVd1FLTsq2TCJXz8F7U55wGXFvYuz3H1ya2rHgEjz4CdELxN4GgP2Ike5wly9qbpnG8p72VppHYnbk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8Y/0Rb83s7H7qTf2hiE2eWpqu91mSJBneRHSid95fVj7ai4tI
	iWh8iDfNguwc5wJVkwifDZVMhCsS1pFHJR8UTsLwMnRhYpI/2EvNmMjs6Hh0EInH+U42RH0MhLu
	ZXz/Xqt/sXYgSW1Z1BJmojVH9ZftJIq30DcnqignSvIlhgOfa/qIJ7DDiW/1lUZAC
X-Gm-Gg: AZuq6aJQvX5/g4FX66wmCMFcF3+91Id7ZCrigp3Lq/M/bNcxUNOwDRrGt+JZxzCc57w
	coT+cVYZtDDQdJGcJerCQmihgwgbrDz6WXn5SOHRHGUDeUKW6KF1yK3+KhfexUOLht3OKYGRJLl
	v+F6P1klIQ9Z067B/otm6Y8PZGMesIf1d8eKe/BSsR0qcRgsMQs146k/KVZEeAi+0JLQwUbBhQv
	hodaZFizhGYQn1QdcmxoeFkyGAyPlnbtiZNPhm7ZOLyG2m77hxwcLwkerOi1agl2e5UXg3Wq6NT
	5rTPdiEhGATuFJJzzalrUi18abzAnVeCZsVIHS77kw1yo9Co1PBnhC3ShsFgSdgXuels8J0dGk5
	ynFpeEppY6pRMG2TEiBm7qxsXWfXJCxrEem48mjORDDSB3QHp4tXtz4GGJY2MVU3QgPO/Tk+rg8
	6XrtI=
X-Received: by 2002:a05:620a:298a:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb8ca1e9b0mr1136539385a.4.1771932483956;
        Tue, 24 Feb 2026 03:28:03 -0800 (PST)
X-Received: by 2002:a05:620a:298a:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb8ca1e9b0mr1136537985a.4.1771932483484;
        Tue, 24 Feb 2026 03:28:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eaba2d966sm3497148a12.23.2026.02.24.03.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 03:28:03 -0800 (PST)
Message-ID: <5a86ca7b-9356-4241-a09d-47d37fbc3a18@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 12:28:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: Rudraksha Gupta <guptarud@gmail.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        beomho.seo@samsung.com, jcsing.lee@samsung.com,
        linux-input@vger.kernel.org, nick.reitemeyer@web.de
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
 <1e74b956-a45a-4d3e-b7fa-e4d5dc0390db@gmail.com>
 <97d9d942-236c-4f8a-902e-0ad2ab684a76@oss.qualcomm.com>
 <1ebc2e1b-f1aa-4559-90a0-feb628d5bfe1@gmail.com>
 <aZvPUn2RxUHDahfO@google.com>
 <41b4f4c1-f0c3-4ce7-8267-039bb77ea953@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <41b4f4c1-f0c3-4ce7-8267-039bb77ea953@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=UtFu9uwB c=1 sm=1 tr=0 ts=699d8b44 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=9-nzwwa_gMk14nhaKgAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: kROQflcrLbu4hJBCvhtbfdE3Bc3LhFeu
X-Proofpoint-ORIG-GUID: kROQflcrLbu4hJBCvhtbfdE3Bc3LhFeu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA5MSBTYWx0ZWRfX9WC9+1O9cHY8
 sfQcxJTybgXHOtKcacEPlduHpVs1i+jD/SN4BLenIuuIs6tqiTXLON37RXLEAuNBUGnZTtEKvYk
 Se6vLA3joWmE1a+qs1sE0h4Vjx1D3jlpJ3Xu5oLkvmEZreKlNaILnMTVNsdh8KfsyZSpobXvp2f
 Vyg+CvG6MTdQqMl3yXqUhHgk32sGCs1m2YfNHiAD+eDYMK4DSHBy56IB0RWSO8mj7D7h6Md2nEz
 fJ3M0163OP9R+U6E9fch6vLvgD6QKlrNBPCH8Z734HQjpn7Wv4NtGzTCSWWvW8//TzI5YEWMQPi
 +8yCfHvdLQzMoH7gbZLT4ytS0M0IWxVIP82KzqRTk4bp0uGMdnTrlvCf/4978Rdpbgq2vdOPcg6
 xLECzJs+nSJ6Of3x11JJTZFV+zKioJVse8CwOEJoVIw+Nld5Xn760Fi238LKuLdT8frG5voDFf8
 KUQjvhHPQNOltLFGVIA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,samsung.com,web.de];
	TAGGED_FROM(0.00)[bounces-267835-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D69AF18650D
X-Rspamd-Action: no action

On 2/24/26 2:00 AM, Rudraksha Gupta wrote:
> 
> On 2/22/26 19:54, Dmitry Torokhov wrote:
>> Hi Rudraksha,
>>
>> On Thu, Feb 19, 2026 at 08:33:43PM -0800, Rudraksha Gupta wrote:
>>> Hello all,
>>>
>>>
>>> Top posting for once (context below).
>>>
>>> Not too sure what the next steps are to get the tm2 touchkey in. Should I
>>> resend the patch, contact someone else that can help provide guidance, or
>>> something else?
>>>
>>>
>>> Adding Dmitry Torokhov (official maintainer) and Nick Reitemeyer (person who
>>> introduced this variant).
>> Sorry, I am not sure what the question is... It seems that you made the
>> driver work without any additional changes?
> 
> I believe this patch is blocked on Konrad's comment:
> 
>> This driver mentions a register called CYPRESS_MODULE_VER - maybe
> it could help confirm the model?
> 
> 
> This was in response to me saying that the "coreriver,tc360-touchkey" tm2 variant works as is on my device, but I can't tell for sure if this is actually the variant that is on my device. There isn't really any documentation for how this peripheral works and I was primarily relying on others in this thread to provide details to confirm that this is the actual variant being used.
> 
> If I'm mistaken that this is a blocker, please let me know.

That was a suggestion - if we're not able to find out, then we're not
able to find out!

Konrad

