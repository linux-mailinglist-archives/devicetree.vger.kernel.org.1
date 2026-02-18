Return-Path: <devicetree+bounces-266381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OI9AfeXlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:44:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A32115599B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22544301E218
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1F62F547F;
	Wed, 18 Feb 2026 10:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ODVjSFAS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AFpfrgQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BD52FF661
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771411414; cv=none; b=NM3XoHBZ9/JXR2kdzF61d2Tz9ahphgvyTX0dCEP2Kz11B8/QOEsU5k30ErcmWJBbx/4ogvKFrtZeMnGQseA1Zj+cFC7bHx7XnMrz7+0Ne6cjhDXKgXKKRSLf+Q/ejDT+H6CswO3Pu+CVmdZ/b5+wIhjGbvb3DfYKDtoyHZ2umTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771411414; c=relaxed/simple;
	bh=D5PuiqO/91rIVNDff5jRcTs+ajANu1jYnoJNwvfoI8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gn4EuJJwL3rWta9rDls0jEVmNgDVYWBU+FXKiBV1iXQwclc5+DFYn77tBGOigJ1H5cRJbGhNxZ57TFOCF17nmCgfTWYRhi4MU8vK1tIK3IGRklXzjh91uExjs77VLjWMqZZIl6Z/p++JCAJuKcPp/7IftZkF4nr7iOeK1ve6Jqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ODVjSFAS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AFpfrgQO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HN6W0U414097
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/K9qMcG2yk7ypInqx+ToR5R0n4WUUNj4WA446Yj7zw0=; b=ODVjSFAS4V2VxGNs
	TJnMVGgQeTR2lZxpbtkXIBE2cv5Y2Hc09sTRjoLP8oRBl4aw7aGR2W2RVaVEO4xo
	IJuSCtYjTR371+q42HztyK2sFT30+0KRjdPk7dGBks8AyzkyUdO2BD7hNNHWEJgk
	uKFSPmK0PWkr7u/ltDfI/BdZLakrVYh6EtmHq4LPWJkhz+A6OShwrY6iFHSBA6Hs
	XdObIMS2X6kkFWov8UZKdG+5MnuM8/zovvUcscOTum3gxThMtia7CFpHl+SARpFk
	cLIKsGIT3rteTCoE/sGaXx6cGhD/gdFBYH5yzhOSIgC4RtA4b7yd/PF2Qqy2XJ2F
	YfJgdw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd1q6sfeb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89547ddf32bso39955556d6.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771411411; x=1772016211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/K9qMcG2yk7ypInqx+ToR5R0n4WUUNj4WA446Yj7zw0=;
        b=AFpfrgQOCccWY5LJO5f5B8jQvllEfTjidAOwgQy9Uxl39W/PH6rxwMRJtydt+NJIFn
         Ewi1aEQVLJNXf2BamsZO5+gsX7llSQWHgTmFvGRd/RPt8yhC85uBcBrNP79Y+iRL7B6R
         nMWiUCBkLgLzi3RAhoqpI013UAuyUVcRCHdQ2BTJNPr4P83il1n03LK7rdIrLQpLgvXn
         V2byp2NHIAssBfXz3+YSgw0yH0FG4/tkZd3HGOTq/hhQI1FBzFFCZzN71Had7cyy/HTN
         mkgA5HmhnK0ENrCzh8gU9q9EMW2oDCcY5FYklzkkEi5VCilHP5Prq6CPxfQN/IESVqWg
         mqsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771411411; x=1772016211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/K9qMcG2yk7ypInqx+ToR5R0n4WUUNj4WA446Yj7zw0=;
        b=qkQgBf6cEZusBtok9C+fb6PaJgMAshMJui+DhhUEGbxjBkxWzWsISjAzt5SxpXHWed
         +J13HEp5N4q7cfJTFuSLwmxbJ3O/XvF7nSgshfpRO+puK6MyNv0Tj+/+yRgofStsnYM8
         /rgce8dZha68yq13H/XWdFpSlaLXP6aZvTVML/uoeympNHqo+Dz6j9VwE+P4TAQHqiit
         UcM3DTwwgbFqk9JFwG9RGtqfNzxb9FwYtQlbD89vIQkjlEpexDNliaiur5QpALsB2HVk
         7nSKDHT5O2lXtPnnMAvxMYZvOB5/n+yLp74KrS6QL78Xlx0FxDZS0vbEXqWHQqRup0T4
         1E5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWqpOE+v5pps1uCHA5cNT45a9MHpuZOAaD2Zk1JfiALm20F85mMDbOENKqxbnFSK+BWPl1IIlP4D8xx@vger.kernel.org
X-Gm-Message-State: AOJu0YwWfBOz5nPx3hlRZcOgM3b13InDBd6bvbcz9HvNyls/XyFHBuTb
	QiV6JnS13Wto6mZF3eLQYUe07ZPa+zcm44Zri3Xm86ptKWsavNYd95K/QD8v7gyvLDJEL/15tGs
	NwSsZRqY+qeqA01lccVLc1ZzafnBJPkBb+aq9FekCrtN9SyVF8YJgiTSrw1rVPje+
X-Gm-Gg: AZuq6aIfOE8dM7DePXgmsT7DbgQi4B6ikB5HkekqkwQ/qz556R9Te9n2IX4qIenAqyG
	0w7wtt5UtVDZi1y1N2cKaq7vnRL/ijXOQFl4KDiqUjgu4QEXyf8jN9Tppk/jzAoVvTXXWlPSrBy
	Cys2+EvXD5n4BrPV3cPyU0X6OjxVoDuULaOp2xgMg5FcH1ylZ8CFbeTRmJpwTe3OgrdwaV7USl+
	DWXkLuM9HEqbWEO+IbHgyDcwJYBzDkFK2ubsTEIY04zNhVaPkWqTTkIlTvr6KuGt4p7mzDUC1fR
	OXtzC6Fgc/AQnvngmCx79SAyhD0RFSK0f/3iHcBYBez05GICZD6VR91zLdecU+tSr3pg82omXqW
	aa0+4twgV4vWVpu2aCC6QoeFiA9F4rR4XeREOTmikZLWv2qIEqzWoAtAlW0GmUJkYVJ/Ya6BndN
	p0sqk=
X-Received: by 2002:a05:6214:6105:b0:895:1c9a:25fd with SMTP id 6a1803df08f44-897347f7c0cmr163251036d6.8.1771411411485;
        Wed, 18 Feb 2026 02:43:31 -0800 (PST)
X-Received: by 2002:a05:6214:6105:b0:895:1c9a:25fd with SMTP id 6a1803df08f44-897347f7c0cmr163250896d6.8.1771411411087;
        Wed, 18 Feb 2026 02:43:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fcaab2e0dsm433138266b.18.2026.02.18.02.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:43:30 -0800 (PST)
Message-ID: <1511d067-6ee5-4be2-83c0-31775564a4c8@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 11:43:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
 <97af21d5-7457-4dc1-bd47-2e34e6df094e@oss.qualcomm.com>
 <ee1a1fa2-89df-4d8b-898e-9a4a50e1df6f@oss.qualcomm.com>
 <5c17f64e-5125-4365-b986-8c058cee292f@oss.qualcomm.com>
 <544be6af-fe02-425c-9457-4101f5dee80f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <544be6af-fe02-425c-9457-4101f5dee80f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=K60v3iWI c=1 sm=1 tr=0 ts=699597d4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=-urqcF4WjNzwnZZbpCoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: rC3ArX7Lq1r6K9g4wosC0e0TBHcXqlqf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA5NSBTYWx0ZWRfX305kDhsmYe4u
 B0NYkq65VHa7UdVBKrPDHI8WdfdFOAf2S7kORrwMhlxyPsqK4zwIBPGJ8vqhTz3hjAWWdoOPmIF
 OYLC5vrv4xBNpteqAg7ggqY0S7qWEpwSM59IsEFB0jtRBxg94x0q0HgSYh52IpLbjAeWZ++c0/I
 Tu2lTZDGj1MGqxFKnJKwtEZiiAUiVtYUHf98GpTsRy+goezuwwGinKZs5VJ8kia5qcRI/qNido8
 dJqaBFB7Xtte2osJaQMYWUl+QHlOPmjJSrpPKYbOW2xm17ddekKg3dPLN8bRWXnxRX2XZkFwx5E
 IfYODhjyOdXOZeQPbxtdWXa34s3HpeUtgPEDuT5zQh9cWc3GYnQUj/7JFeE///1+ewz1zuYJsq9
 Y66QdilOLBNwSHE+sLBz31w5PSmBlPeBVDXNbHoT+9ctwKov5Mu+W8qEQBInnrIqM3H6jk6X5aC
 3SuiIki6iFTpmSM4bnQ==
X-Proofpoint-ORIG-GUID: rC3ArX7Lq1r6K9g4wosC0e0TBHcXqlqf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266381-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A32115599B
X-Rspamd-Action: no action

On 2/18/26 11:00 AM, Sushrut Shree Trivedi wrote:
> 
> On 2/16/2026 4:58 PM, Konrad Dybcio wrote:
>> On 2/15/26 3:19 PM, Sushrut Shree Trivedi wrote:
>>> On 2/12/2026 5:16 PM, Konrad Dybcio wrote:
>>>> On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
>>>>> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
>>>>> in cascade to the first TC9563 switch via the former's downstream port.
>>>>>
>>>>> Two embedded Ethernet devices are present on one of the downstream
>>>>> ports of this second switch as well. All the ports present in the
>>>>> node represent the downstream ports and embedded endpoints.
>>>>>
>>>>> The second TC9563 is powered up via the same LDO regulators as the first
>>>>> one, and these can be controlled via two GPIOs, which are already present
>>>>> as fixed regulators. This TC9563 can also be configured through I2C.
>>>>>
>>>>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>>>>> ---
>>>>> +&pcie1 {
>>>>> +    iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
>>>>> +            <0x100 &apps_smmu 0x1c81 0x1>,
>>>>> +            <0x208 &apps_smmu 0x1c84 0x1>,
>>>>> +            <0x210 &apps_smmu 0x1c85 0x1>,
>>>>> +            <0x218 &apps_smmu 0x1c86 0x1>,
>>>>> +            <0x300 &apps_smmu 0x1c87 0x1>,
>>>>> +            <0x408 &apps_smmu 0x1c90 0x1>,
>>>>> +            <0x410 &apps_smmu 0x1c91 0x1>,
>>>>> +            <0x418 &apps_smmu 0x1c92 0x1>,
>>>>> +            <0x500 &apps_smmu 0x1c93 0x1>,
>>>>> +            <0x600 &apps_smmu 0x1c94 0x1>,
>>>>> +            <0x700 &apps_smmu 0x1c95 0x1>,
>>>>> +            <0x701 &apps_smmu 0x1c96 0x1>,
>>>>> +            <0x800 &apps_smmu 0x1c97 0x1>,
>>>>> +            <0x900 &apps_smmu 0x1c98 0x1>,
>>>>> +            <0x901 &apps_smmu 0x1c99 0x1>;
>>>> This map is not just an extension of the existing one - is that
>>>> intentional?
>>> Yeah, I created a new map just for readability. Should I instead just add new mappings
>>> and keep the older core-kit map intact ?
>> Quite frankly, I don't know. I that against the "base" it's missing:
>>
>> 0x400
>> 0x501
>>
>> so presumably the second DSP and an endpoint for the primary switch's
>> ethernet port?
> Since PCIe enumeration happens in a Depth-First Search manner, bus numbers
> 3 to 7 are alloted to the cascade switch connected to DSP1 of primary switch.
> Bus no.'s 8 and 9 are alloted to DSP2 endpoint and embedded ethernet EP
> respectively, on the primary switch.
> 
> So, in the cascade hierarchy, bus no. 4 is alloted to Cascade switch DSP's.
> There is no DSP with device no. 0 so BDF 0x400 doesn't exist and is
> omitted. For the same reason, BDF 0x200 on the primary switch is also
> not mapped.
> 
> BDF 0x501 in single switch case maps to the ethernet EP. In cascade,
> that EP is being mapped to 0x901.

OK, this is very useful to know, thank you

Konrad

