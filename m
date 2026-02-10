Return-Path: <devicetree+bounces-264436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOv5NDw5i2neRgAAu9opvQ
	(envelope-from <devicetree+bounces-264436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:57:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1ED11B9CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A51B3002B6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEA1329E6D;
	Tue, 10 Feb 2026 13:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dA+JJVfx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TB2eUi9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787BF30E0CC
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731601; cv=none; b=XFWFgTlsbKtdd1Bn3gXRQJ7YYqw8Q/9ivHTleCzuw0qZ/L60v4zYVDucGVm/4l98tZRNpoZuY9zNkdhlDlCsdaLE7R2GnLNAadqwFtikqakfdx4Av+fMFzInI4iSqDEKonDHtJJKlRzThqsKNyyeBukohYR3F9GdfQ5BW8yUt7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731601; c=relaxed/simple;
	bh=erLQoruVgdG1tPtGnSYjEdMaQh7l+bORlfqid1duOSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NXM3vFXzg1bz8m4yzNrG4hDBrGAPbnSEHq10a+Pg7s9Zbo+n6clrSEs9uP0Fj/FKX3rmNxtMuzC8k6u8VfIGHcfVWFZpYYsbD8HWZ3jA9v+P5FlC+asGdpy+UlQrcXXUdGrSInGnQ5K2GoDj/WtLCWY4Z2BMAU10xNu9cwnA6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dA+JJVfx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TB2eUi9E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A72Q5G441443
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:53:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DmF4Gfu8XO9Rvxh6aUMFei3U16jyA5Bxui9UplFPhvs=; b=dA+JJVfxOU/pc2T/
	FCMosy2Uzx+iIQq26U2S9qKh9Sbi4B/2N4TuE3FzSRRE74FCTUNwXDsUnopEOZJJ
	Bk4B+AjdTZGDva8hklcZbFPfB8n9Dq0PTE+LhbnpsBDFmWm28HSQgfkFB+nN7wcm
	e9ElENDbS3m7e1PSg04sk/ott+l5frxFIJtwdujb3DVmpuBmJ0VIcnxUPoHiSDlX
	+v7QZ4sTIh850AIsNQeusPJCtjGaKT8y20QGP/GDKypBDOoS6a5Gx8Y3e5BTeHjv
	7TEKNppKN7BhHJrYVb4F7eahcZM9HsF/92jsq1sofDPOtBncWDyRq0x/p+7Ga7Wg
	bdNNiQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9jsyu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:53:19 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b6b9c1249fso4517682eec.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770731599; x=1771336399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DmF4Gfu8XO9Rvxh6aUMFei3U16jyA5Bxui9UplFPhvs=;
        b=TB2eUi9ECv4sgbedB1+8VcAR6ds7UFDy3pgTZ93R+fMqgzA9wlUABLlCD1K/9jUP+/
         Z0Anc7F0QRK+wN1SBKADKUyOTgIvoVtTN96VmgGOTakUVIGlqmQJBQSsOhz/224i982m
         hoMP6qSQGyyV7UhVRlFUsnaHu0P+5dvdxO0l8YD5DG1HH4m1tBIwWuGBityZkOn2s7BD
         dmU7zVoIOlelDpj5QgHUfe08wVmcigJiuhATVR2XxNah/HUy/6ROwiVpc08VhvOWQ6+N
         HZ+l2dS7vWyrbVQUIJOlucv6T/9vIj3AFipEAGbkaNnonccqKbJnFX2dMu/1Y/Wi7857
         Sv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770731599; x=1771336399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DmF4Gfu8XO9Rvxh6aUMFei3U16jyA5Bxui9UplFPhvs=;
        b=bUeNx9bX78+fYnQB39YDksTCPWDYY6tmsmLfHE1TSZdhzfo46c/xRBq+VAVDYKb2RM
         hECxROjYutP77wZYYY1/J5PuZrBqg3eqDtyxDPZ7wXaiUiTVjX7DPV73xJR8sXFJk76W
         QsLe7wcVcCJGeRlMmuA/D/u/14ksDuUgIF/rmgLe9oik/Xv90802aBF3SPgkjfkwqNWQ
         n94U8XWOO9hF8nUUVhbm9TZF4IP7uKcohb34KX8uv8RoJy3fPmkP8MHb/NfT4LzQ1+d2
         FzUaJGdWDf5b5fJghDaBMEBSwVZIm/5JTtz92uCtLZem3iug12ByiUXIYeWQ/aG+I4sC
         0Mbg==
X-Forwarded-Encrypted: i=1; AJvYcCW9ZzUAI/eQqr35fi5nMFpPfrGPX6FpeA6kSWYLa9U1ot0NE+ECRkDTmJA/qvjdmjzvQXM0SaK73mAL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkc4uOzkzm2fDsLIrkTqFpgP7o1wiiferjMitYraPwH/WCRJ6I
	Gp3lIcu42pwtFiBx6fcPmq9oD7DmTgNHz7H9Rt5aP53pnvkGk2Xsx7fryFVDiZy9F3CEZoWgoHU
	nFqhB/S4AONbCUrrx36/trNmh8v0bOdttF7na1D1X8+W4gitoHXALq+xBP54X5x2K
X-Gm-Gg: AZuq6aKjI1MiD4hSHL6BLuv5JYuUA0KL/qhvN41XQwCrfaicSVG1gMVo4wgaV2aX12j
	xAZpePY0UHhM06334T0ezJ1pq9eRXmtzGpgq1K3/hGOtGhVvjilqMkk21Fzsys0tqIuqqVZJCKo
	i/WRCnkCEKP6WYLd0h0XuXRz8JknaCOjwnvL5KKj7l9eOgH98k0MFZynaQ4L8iH+Ne0kPrTfgv7
	tpT69kGZ/h4N/cR4rYV9UhtFDnfoi7nq2Ecz0lIgaAQgm5kUJB1uR3BWWZorZ7QYmtEczHU1I+o
	KLwTp5vABwGgjV1Ew45I/y3oHMeQZtIBOQ0hL/CqvcH/RGhQfJcV4Ant3JrRTGcW1j31VVpYt23
	JPwcclk9Urt0rCyGxRQRJa1cvuhA2PfHMm+1BZk+3VQLdsk2d
X-Received: by 2002:a05:7300:572c:b0:2ae:55f0:f2be with SMTP id 5a478bee46e88-2b85683e423mr6864662eec.31.1770731598933;
        Tue, 10 Feb 2026 05:53:18 -0800 (PST)
X-Received: by 2002:a05:7300:572c:b0:2ae:55f0:f2be with SMTP id 5a478bee46e88-2b85683e423mr6864647eec.31.1770731598389;
        Tue, 10 Feb 2026 05:53:18 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c88cb4sm9295064eec.30.2026.02.10.05.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 05:53:18 -0800 (PST)
Message-ID: <dada4a44-f464-4325-9082-50029d6a4555@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 19:23:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
 <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
 <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com>
 <erc5u6hzofidlf54dsz7htta55o4xwgihgh4tu6mqkg2ijz3fo@6hd6q6iljrfq>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <erc5u6hzofidlf54dsz7htta55o4xwgihgh4tu6mqkg2ijz3fo@6hd6q6iljrfq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: d6-Z8LDi1-4NWyYahr7d_yhJ8-qIWb9K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDExNyBTYWx0ZWRfXx1Sobk8VKdJ5
 ZHJoJaU+2PH262XxdEIeMk8QUssjAXTAwhzFCB1zKjhKXpm0Fo5MegExwgfG0K9l3xc4caD5WmQ
 GzZCPcRbghHQm3Wk3r6oiqUDUkcu9QVZwoS50L1pkhkEIeUn18hCfnRjY+0p3FgOnZscR4MGPUq
 YAIukPcjsXqEAIrGisr/dIf406+kK0bYIRAaSGwmoxextnCGgLif2y8Tmeb9xynzbr2H9Lt6liG
 WbaQCeEuZAIEmbkJlNLQcpWiHaSA+Px72y1SbwYJ0oim0x2kOV5gt/pMzAR+RYHJwHGRmSilpa7
 NGEa7lh8AChmc/KFSxHYCHMWlb8AVXussVYj+t/7jkXEPJoLloXgteD65rKje6u17idoU1rcO50
 xsN1u6VRVUHK7gi5pmwNhJq9x+nO3yJee8Z2I8b03Sz9XSGp1Vrizp+1ryqX3fRbs5gE6Rla3Ox
 LVbsfRJDkzsaiN5/9nA==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b384f cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=UT5QHHMPRZfFomOLfS4A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: d6-Z8LDi1-4NWyYahr7d_yhJ8-qIWb9K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100117
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-264436-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,quicinc.com,vger.kernel.org,holtmann.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A1ED11B9CC
X-Rspamd-Action: no action



On 2/10/2026 5:46 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 10, 2026 at 05:41:13PM +0530, Vivek Sahu wrote:
>>
>> On 2/9/2026 5:04 PM, Bartosz Golaszewski wrote:
>>> On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
>>> <vivek.sahu@oss.qualcomm.com> said:
>>>> QCC2072 is a family of WiFi/BT connectivity chip.
>>>> It requires different firmware files and has different
>>>> configurations , so add it as a separate SoC type.
>>>>
>>>> Correct the sorting of other chipsets for better readability.
>>>>
>>>> The firmware for these chips has been recently added to the
>>>>       linux-firmware repository and will be a part of the upcoming
>>>>       release.
>>> Something is wrong with formatting here.
>>>
>>> I would personally split the sorting and support for the new model into two
>>> patches - without and with functional changes respectively - for easier review.
>>>
>>> Bartosz
>>
>> Yes, I'm now splitting this patch into 2 parts, one for sorting another one
>> for new model
>>
>> support. Please ignore this patch.
> 
> Please stop adding extra empty lines between (or fix your email client).
> 
>>
>> Sorting change has been raised with tittle "[PATCH v1] Bluetooth: qca:
>> Refactor code on
>>
>> the basis of chipset names". Please approve it at quickest so that we can
>> raise new model
>>
>> addition code changes on top of that.
> 
> 
> Why couldn't you send it as 2 patches in a single series?
> 
this change includes driver change and yaml change. In recent
bluetooth-next branch there is a new style of documentation of bindings
comes as "Split to separate schema". I need to re-modify my patch again
and compile. Splitting patch seems more convenient for code submission 
and addressing review comments.

