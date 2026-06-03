Return-Path: <devicetree+bounces-306501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2DfrCoSfIGqk5wAAu9opvQ
	(envelope-from <devicetree+bounces-306501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 23:41:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EC163B6D1
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 23:41:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="Nv/bb9gh";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=VvEnLTJv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306501-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306501-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7098301CA65
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 21:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8244A13A2;
	Wed,  3 Jun 2026 21:37:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F744921A6
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 21:37:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780522673; cv=none; b=O4UwnSNDcehFVfLrY2R3jn7/H3AjE/uXQbzN3uZHW8vS8DkLfVQXW1FFvGOtaVBm6fRi3aePlLDVNIRpo7jBdJXPOolmXLxzGm4DuyW8uNcpNPZrS2MXWcDFiObKfUgRO3OsIFGRRw054JR3o4bLVXhrydF9UBYsEabXnLJgQok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780522673; c=relaxed/simple;
	bh=cci6z7n0a1zGKgEm96nflDnX7klcKdSu6EEGpSG5uBc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jbeOGhtZg4c/RmuxeEsQ5FTovHUKZaPMEHARyV3wp7hA74+QyIAlaEqMI3vstS/KR8hrnQPEN73cfF0lQJFO8cPBAgvg8nOTB2KNa0j3y/PSnQAwKz4vu0iFTyqfEbiBDMy/r60M7DwpaV0ysFbFFSBFfNN5OUd+W4ASC96qQkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nv/bb9gh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VvEnLTJv; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653L1IQQ1957281
	for <devicetree@vger.kernel.org>; Wed, 3 Jun 2026 21:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=; b=Nv/bb9ghc9cikK7l
	E130v2DD27zRgpRnmm249nFZzH3yg4O+SjhjjT//gbjT7mlGDWd+jbt1FmV5gz2H
	NelIqjrSv8pS/9D1GsHzLdpDertm/chS+zI/JxskJEw8xbrnBzHq70YMyFuBqZ3u
	rr0fG4OiyptWxyj3w7xA11oV/PhWpPhyUH4YZIiYW7npDccxAxgL11rBPHxChyra
	tFTMQIonUlxhCEEB5fH6/G3Iczq4cI9OASPbNyb52a5Lek+HPG4mUt4EZhvmZt5e
	A3FnxDQqO7AZZHZmSsiz1rnX8Ri4Gy/b0nkQLbyyEyOKNdIpe6hopFSFNLW1Xh2B
	2jbSXA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejfqc3hwh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 21:37:50 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-304ea1eea05so17764965eec.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 14:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780522670; x=1781127470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=;
        b=VvEnLTJvb61rx9o7eRPy94zq3evA8GxC1ZSzTrmWgAl9TeFv7maQFpj3itq5yaXvfK
         exyojP2w8UPNSUBtMv4n1f3zVvaHEel7jTBp5EK6Dg5wsx2XE2pDHJSd1TplQTyOp9gb
         SikZvigly8bHN6ch3cm09fhygpBDfh06Z8kU2se4GrcE3FLQdJv2kEZ1O3iMBpij42GL
         5R9jvnys57vGh6PmrucdUnQiHlfmpx+9I/E0R9PTR4RgNnPhl30XJo6OwPUQZd6hhifT
         z0jRwa1OK8LQb1SI/ncl5hS2cHJNks3eEIgXhLokBLgCHBDoo0vq+YnSlO2JfCSBsWye
         Plaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780522670; x=1781127470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8u/3tgEfqqg/P4YRpc9c8Z/hbvNV5upjexngb80EYHs=;
        b=SKG+bddVgMddSfTJbpgE0KwCav1+m6Hzt5UA3JjEiNmJVLeTSwyqmWlnvSCQ28H8JP
         o+10dOYvGvCbWwYDPe9+IZtYaOeZfPRS37Xm6cvVnNlPiJw379ojXuZMYYX7Lbe2ewxL
         G2K9+YJoagf9YlL1ZXJk4f48WNrMnSUYgO+mDOgrTz2xkDQxfQvuee6SgpxJjceFMC84
         pAQKdWbshV367WBWkWSYHb2u7IczRAhe1CVo3bDYoPASFeg1h4jQEdFF7U3ctTZiryhE
         HPfwfU/EufYA1Uulg6qs2G93sXbrodPX6UXLpH2epwvulGgN937Xhbst2caGAEXeRR+h
         Cfuw==
X-Forwarded-Encrypted: i=1; AFNElJ920nzWHWVZSFYDzdA1p+cMTmCPec+qvuZ3godJEzITjyV53K8Eaj0EWzCoVZCBQ/MyHA7moTbKJayM@vger.kernel.org
X-Gm-Message-State: AOJu0YyOlvTCvAkFCjLvEC1c/4inkMQK3sPPFrnsDl7cwIp1EdFE+ckd
	lkdJl4fCEb+wm6FaBx+QmuRCXE30UiM0lNe4RiDmIecVNaHo1LX9nD6EYFOr5kWO9DDgAkzazjt
	Cw8EG3HEIz/dBszkBz0lnLdQWiHHWqsTeeL/JEme9yPaU8PWL/wV1q+ICdREcGIOJ
X-Gm-Gg: Acq92OHi6aSWxZoXV+zfmAYiw59OPO4qNBto0PfZFnCZSm1yuUH79bwbZeon89G3VO5
	ypBOPazGOPsWojWZIabhHKrc7iVwVRwijqv30AK0hldJk+Q9u8Vq6GhUGxXaB8UCshhd4jkJn4m
	OZmu/OXkmsCjVRdNFkSp6+G/rfZptIh/WEducFCxGUj4UQYj/J4ngr1ngJJDsdVWZorpPU29p4I
	fhHpMwjLSMzKp8qfrxtnA7qNeQdNqqO4r9Kfux3riXpRbmEYImNgPmBdJdkO8xlsc4K76YFY9CB
	MBCAJo/p3AqDwDDmwrP8bOBtEk+jzAE5/PpeFFY5PwE3QsIZNQl5wPr23mmCG3omc+detIbty3g
	uUubU4x09lkK74LON5UnevpHR2UFkGwq2SlEecLxM+zepSrXPbhRP7l3P+oS30xy2zXTICEhb3D
	eHHZ4vMUt5Fgc=
X-Received: by 2002:a05:7300:aca5:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-3074fc6ed0dmr2667483eec.29.1780522669970;
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
X-Received: by 2002:a05:7300:aca5:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-3074fc6ed0dmr2667461eec.29.1780522669474;
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
Received: from [10.62.37.26] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074dcad34esm4837604eec.11.2026.06.03.14.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 14:37:49 -0700 (PDT)
Message-ID: <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 14:37:48 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xA4DTUeB_gF8J16lTFB-k8fAJyxpaEkV
X-Proofpoint-ORIG-GUID: xA4DTUeB_gF8J16lTFB-k8fAJyxpaEkV
X-Authority-Analysis: v=2.4 cv=e602j6p/ c=1 sm=1 tr=0 ts=6a209eae cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=DMLOElT0OXlkgAQsb38A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIxMCBTYWx0ZWRfX9LDzj5UCgRvr
 qr6jSPlWwzDShoC5kBlcCWPqDds3tzfPKMTZer8JrtPu8RJXkzD3pzeNgk+FCjh5rMZlmRnBot5
 WEoZ7svOBSEZNEVmlmiPfJSlyIj+BcKR6HZyDWfcEE9XpLM2gkSyn6BINFBE+tG4ZV0to2nSjWH
 jOMiGceToSHz1gf6JcSbAgQv4YdKhKgwVAszJAyye8cWq21XrKl3orukyPqJn33XZbAr45rkL6B
 hhz+wsNew4ck7T3ktVaAsxVX1zM170I44NlgPOEZPN+voOxm2PJpy1kJgXtiCy+KxUWcVfFPacW
 n1KkgMTNEzS5Klf9SKDh8o6+b2jIbfrXkJHg63AyJY94yHk1JyQoXorkA4v0ElpwTMnjM798hPl
 VJ2DuUUKVFU8W73UZXnV6D5/6WJvyMeBsaevHnj6jKmBNGi/+WtUwl++oD8Is/GHVKENQ4zM2D9
 2V5RgA6iHbVM3HgZfFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030210
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306501-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
	FORGED_SENDER(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:bryan.odonoghue@linaro.org,m:dmitry.baryshkov@oss.qualcomm.com,m:vladimir.zapolskiy@linaro.org,m:vkoul@kernel.org,m:kishon@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:bod@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88EC163B6D1



On 6/3/2026 5:57 AM, Bryan O'Donoghue wrote:
> On 03/06/2026 13:40, Dmitry Baryshkov wrote:
>>> Are you sure about that ?
>> Yes.
>>
>>> ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
>>> CLK_LN of some description.
>> Split configurations explicitly use other lanes for clocks. E.g. check
>> the RB5 Navigation schematics, CAM0B connector.
> 
> Can you please check:
> 
> CSI_3PHASE_COMMON.CSI_COMMON_CTRL5
> 
> 0 LN0_PWRDN_B Lane 0
> ...
> 7 LNCK_PWRDN_B Clock Lane
> 
> ... just a badly name field
> 
> CSI_2PHASE_CTRL10
> 
> Bit[2] = IS_CLKLANE
> 
> Right so CSI_2PHASE_CTRL10 controls lane mode, indeed. Thanks for checking.
I can check this with the HW team. Although the SWI has this knob, there 
may be some limitations to use any lane as the clk lane. AFAIK, only two 
specific lanes are clk capable in DPHY mode.>
> ---
> bod
> 

Thanks,
Vijay.

