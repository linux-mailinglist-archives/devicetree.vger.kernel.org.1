Return-Path: <devicetree+bounces-260423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBOaGYoOemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:26:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A43A219A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AFF83028349
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1891352FA3;
	Wed, 28 Jan 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ra7rFaDp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ms9vVsE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6978F352C3A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606673; cv=none; b=hjM5cFfQS8qmKtmHVKJa6sEPzqJsnnyG+oqgh7oq7nlIC/+3x6MHoB8Xn1CrS6cfw5gob6Ki+0j98nGDWLIcCVWgfOTcrjVxja8CtPbUejNCQpVLeR0Tjx5mRczaHOY7vhQNctLZGR3D1ogUGFmA/CbeaAIyJTSKjuJ4bReZW7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606673; c=relaxed/simple;
	bh=Omi5BjCO4qkDNEvTvNMBrUsInpLgszEdTvIias9GihU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D29RpvCXzTIL8Ure0hqpRGyp9uYJK6G0BPvUi680yToxCjVjgCypsNxuHf6rgvZ+P1xZdHOGsgWETZvKh4bVADe7zucZk/mbERhNZQeGJ/pMEVt3OXw5NBEWbgEIEVVlHmlKD0iH+rgbdwL0s9jWEOax9GmlktP3VhT2xZuRPhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ra7rFaDp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ms9vVsE0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S929Tm320331
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HGQVG4xcx+6+SxQxQ4mTHwrM8cVKiP1MO8hpzcUPWew=; b=Ra7rFaDp+zOz4OC2
	62/SYb/2BMjRDOPDvJVmUV+mjyA/eTcbO35SmhN4WLgbCfXGOgF/aTV82jGXIjdX
	UJXoxEYRLQMv4pION1uX+wVhT0F2wR9Y02SJdOUraDVnk7hTWFG4s4apMOmkOiDx
	ZwMGRpMvBhrsKCbrJer6HfT5/wOEicqToHdisTbiP96S/BX1JAZW7lltdk0RRrB6
	dqlWAhQ54VI33bvryP5fi+VDO3VNoyEnOwk9xeAJQkxc4U5CE+t7ENLuoZIIdmoC
	C0x/hv2V7izL2FBX+A/xUmvf2QVAQipY4fpIwY2qG17198hW6OxmMrubdTuRLauf
	o3MNRQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjtw6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:24:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e518fb75so103240185a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769606671; x=1770211471; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HGQVG4xcx+6+SxQxQ4mTHwrM8cVKiP1MO8hpzcUPWew=;
        b=Ms9vVsE0AZ2rtNMYSxp9qMOLIPrDLE2iri19MKWcryy5sMUFYHb121eyOaKnmbK1m4
         AI+F2tZrB5XTks/c4I8V6tzT1vXqRDnDog175cxgu4NWhNaNTnBAVcpZWa3DA3uc88Gr
         jjeW+VBk93mjiEuiY1JhkRbgCJVzxpVdNBRYNmmNQM+TzpXYvJAKI8O1a4/elP5FylRM
         kWyruae1m5aHGWVz7V80KgO7FT/uaTDQra8vGpOj72lzG0WWNvwdCBT/s70zvu8nggYv
         tL9cQLoX7YtsfjFQzcMy38xNdnGugYUPEck7GKwzQR0ceqM5u/C93oUJrDntIxpi4W2+
         RDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606671; x=1770211471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGQVG4xcx+6+SxQxQ4mTHwrM8cVKiP1MO8hpzcUPWew=;
        b=irjXjF7LVqBnIWIm3E04URAkS+5amKhMH5PRBORi+djMV4bJYckglAc3xweNlpxmlJ
         yO8T4H+IKAvaAUprmuwrSLuYQslWiz9esejUscLm0fi2qowoKnuKnd+W3IhhDFNSah+M
         wICyradxTrhV1fXl2uyqeUQg+hpVPLkADBwyTzauszEGfPJepDomswWfl7BRWwkWVg89
         596cVf4ARkUH98lO+/LJXWlqR1nFzo93eSETbqhhd9lt8Jf8xQVD4mO+f1yu+d8jWXgK
         UNOIf9e8T75DNcyhxsnXy+IPB5CLO2Kkhz506cdWBK4QjiQrt0dUxNtwnW3rIuYazRtw
         kCwA==
X-Forwarded-Encrypted: i=1; AJvYcCXWu+J0G3rGXkQzuybX8SBJf+2f+NuHlZKHju4WzPR1RTqc0tuMpZiOcquWnEk0pfMkQTL4HPOZXkIi@vger.kernel.org
X-Gm-Message-State: AOJu0Yxudjil73//7oiulDG+ZW3RrfJ12V/MPl21BS+7CjS33jjflfJ9
	h9WAIGLi49AOEgseOWDa2GBfN9JWlSnszHgY8vFdajZJbcbWvxh1/7iQci9hF2BE0ifVe8FChuA
	eFp7GwDuISzrujwj3PyBRXWpHgvIVZ8uOwZ4+/WqT+w0AqLtsz/eesHGQ76oVoxlS
X-Gm-Gg: AZuq6aK1NvwrUdqSERQpeQqJz7iWz/LFW/5mtZLX5pkhwAuGNr3vuqkJyazS75yB/Dh
	W3XNxIcf1nN+xJFQXMq0m+V1Mr1JJgOOqj4F5317BHwZLYfZLcIjNXN2nsafz/JrNmLnkQedF8Q
	UYHYAlEAFqptI6ryyWmkvxknDZ9kx4KaBNdIBSv3kVjQy+F96Bhe5M4KqxF2sTjp1vJ5GEHQoLu
	JJXhvlJHo3A8Dpi8V2rZ8m387SeGRpaOlrU28LuiwjOmWVE1KW2UuF5xazz2aV5+63dS9zjs7d/
	8DVn5GRAtOO4dzgpH8J/2kqjIFBxABTGnySr8xrjLmdMLBlcAGoJF5ZO+ly85U1rSScIqunPyVe
	mN5M/z+hAJrkgoakCBIvYX++k70WvI+EXb+VR7Cj1ls2tS6+4cpt9Vv4ZyZHtA63qiYc=
X-Received: by 2002:a05:620a:1997:b0:8c7:1156:efe9 with SMTP id af79cd13be357-8c71ae4c755mr9895185a.11.1769606670645;
        Wed, 28 Jan 2026 05:24:30 -0800 (PST)
X-Received: by 2002:a05:620a:1997:b0:8c7:1156:efe9 with SMTP id af79cd13be357-8c71ae4c755mr9892085a.11.1769606669907;
        Wed, 28 Jan 2026 05:24:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4256a92sm1554914a12.5.2026.01.28.05.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:24:29 -0800 (PST)
Message-ID: <9980751b-3069-4a77-bc4c-0d5ce42305f6@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 14:24:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Alexey Minnekhanov <alexeymin@minlexx.ru>
Cc: Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-4-morf3089@gmail.com>
 <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
 <ac83f41e-08ad-4ffe-9f0e-02f8256af65c@minlexx.ru>
 <f8097212-6388-4c4c-8f5d-a91df99a18c5@oss.qualcomm.com>
 <e6bcf45e-9eef-4660-8630-a7be1cbca61d@minlexx.ru>
 <kfjw3opjwwndocxqqjn4ya7sy575kpgo7otulsxqotznl5ctro@ewdaumkmstdk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <kfjw3opjwwndocxqqjn4ya7sy575kpgo7otulsxqotznl5ctro@ewdaumkmstdk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDExMCBTYWx0ZWRfX/JNUyeJDeQ3G
 VxS9WfnHNNWiBepFhNxhOa0dGQsTZ5u+c5+JLQ0Ph/64YvcgAmzyTYASO9MPclgQnyig6AiPmez
 Zj4YaoL2f2b6bA0g1UBC+cpNa19Dcc8hKu15IvR1ddfkGyBxQffG0Ur3bT+ZWk/3sSngegQ+Eer
 OY3vB00C98RxPvQWO/SURIcMGosl/j4MulyELdDTEGMjp8IH4sSqb6zkcBcETVUzGc8BZNPgPhn
 ghyFMXpVzzM40VyAeOD+7TsA1sveWWg1AA7JGLdfe75Fh0Id+OwB3mpux5D+PbWU4Js8Fzmhag1
 z8/I7537Zme8rr9+JNrjWq8o4nIVyM1wsLFPTH0h6WZS0K1nLtrwov5EZC7+QAs4+rnun+lflNU
 3GB41HEYxIJpbwc284nvAEYaLR3GIwaru2xFb8RDTJRVshTutCk+TU7AWSUpjM1VLPAHPC0+dAX
 0+GMgtfbhLHYyKAszRg==
X-Proofpoint-ORIG-GUID: hZ0j6JcIHyepwG5CyBaJvFNF1_8iI04I
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=697a0e0f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=m0eAP4nZOtSxBN3eE1AA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: hZ0j6JcIHyepwG5CyBaJvFNF1_8iI04I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280110
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,ixit.cz];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260423-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C3A43A219A
X-Rspamd-Action: no action

On 1/25/26 12:10 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 23, 2026 at 11:11:50PM +0300, Alexey Minnekhanov wrote:
>> On 23.01.2026 12:26, Konrad Dybcio wrote:
>>> On 1/22/26 5:44 PM, Alexey Minnekhanov wrote:
>>>> On 21.01.2026 14:27, Konrad Dybcio wrote:
>>>>> On 1/20/26 7:00 PM, Gianluca Boiano wrote:
>>>>>> Fix regulator configurations to ensure stable operation:
>>>>>> - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
>>>>>>     PLL operation
>>>>>
>>>>> The driver needs to be fixed instead, as it should perform a
>>>>> regulator_set_load()
>>>>
>>>>
>>>> Also change done by me in [1] with more detailed explanation:
>>>>
>>>> Since the commit f05ab10 ("arm64: dts: qcom: sdm660-lavender:
>>>> Add missing USB phy supply") previously untouched by Linux regulator
>>>> l10a is now used, but it exposed a bug from initial porting: when
>>>> booting with USB cable inserted, or booting without cable and
>>>> inserting it later, board reboots.
>>>
>>> FYI this shouldn't be required with the upstream driver, I don't think
>>> the core calls .set_load(0) and RPM isn't notified of a current
>>> requirement change unless that happens (qcom_smd-regulator.c)
>>>
>>> In the power grid, I see (current values representing the peak):
>>>
>>> -- USB2
>>> VDDA (3.1 V - vdda-phy-dpdm-supply) - 60mA
>>> VDDA (1.8 V - vdda-pll-supply) - 30mA
>>>
>>> VDD (?) - 11.4 mA
>>> VDDA_DVDD (?) - 35 mA
>>>
>>> -- USB3
>>> VDDA (1.8 V) - 14 mA
>>> VDDA_CORE - 68.6 mA
>>>
>>> +Dmitry poked at 660 in the past
>>>
>>> Konrad
>>>
>>
>> This is not needed e.g on sdm630-sony-nile-pioneer, it's booting fine
>> without system-load with USB cable inserted. Maybe IFC board doesn't
>> require this too. Seems to be xiaomi specific thing again?
>>
>> Alternative is to not touch L10A regulator (comment out vdda-pll-supply
>> from qusb2phy0 node and face the "phy@c012000: 'vdda-pll-supply' is a
>> required property" dtbs-check error again. Which we don't want to do of
>> course. And schematics say that vreg_l10a_1p8 is connected to at least:
>> VDD_USB1_HS_1P8, VDD_USB2_HS_1P8, QFPROM_PRG, VDDA_APC1_CS_1P8, VDD_PLL2_1,
>> VDD_PLL2_2.
> 
> It might be that there is an issue because of it being used for APC1
> too. I don't observe any issues on my IFC6560 board (where it is also
> connected to APC1).

Wait, what? The same line going to external ports and the CPU supply!?

> I'd suggest adding a dummy fixed regulator node as L10A and documenting
> that it is not to be touched by Linux on this device). We do this for
> some other "system" regulators on other devices.

I think that system-load may be fitting, but it needs a comment

Konrad

