Return-Path: <devicetree+bounces-274478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMpmNaR3sml/MwAAu9opvQ
	(envelope-from <devicetree+bounces-274478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:21:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF2F26ED51
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:21:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 880173143114
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6448F283FC8;
	Thu, 12 Mar 2026 08:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bQxRmP7s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PJcrJSYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D3F31E85D
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773303624; cv=none; b=qThPnneG5oHqbVQw0Tj7NitpmkvvHKfJxF7kZKT1Bxx1xVX9kxtld3TOi+eUj7xJWec6qwSF0rfvEcetlz0JlFZimLUOrRgDwU4jAUn3sz5U+Di19SuuFhaleta4JO78MMwZ6NAK8NKgqgOqDTCDViwjqlUJBOHt2P9mCHCfCes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773303624; c=relaxed/simple;
	bh=YIP7f4qN579W55j3EttKa5ARTKr7JhLg8jg9J0KDXH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TUhbjUAgbTc51TD/ADbnxvhJ87PNwJUvCfxqYXDh0x+UiWIl5Mp41icvGbR0tDydnJOTeTR4pLo4XEM3WSnUKTYYV8es2wOCKL/j9A945pxf4rAOi7fL+Kev3uNlIhQL1BUa9Fzyy2yTNZZhT8W7HVxUGBsoEZ1YUVO8KW3h8Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bQxRmP7s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PJcrJSYZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMrNr3136622
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:20:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HRGNKoI3XzOmCahOVQOZ7Zt2GDZdozcsEjWlaOBsPyc=; b=bQxRmP7sHOBIQiGx
	AwAwvvBoxhZY6SSkOym0jsDg+aPLABTTu79uLrd0xRKDkm4RnVpBw0qXd+rTe0h6
	+2MlyhQhBKir2ygWMJnr8v4UddxF2j1vxOUH3WMItmw+Ng/Th48vEQBdKTQNWK+v
	y+asusuffH7bjIiwunJP/+pMfPWvfwShkKxeHP7dauBLkNWoguC2u5LePZwTs557
	2/xnRHuP6Pwplk+Rs10rMVWXvU/yE/xkEyQCok/VcrrYRz03iSCz31YpAzpiBCBE
	SeNWzIGkrlrfrP/eBuPRNXX9m5Ymp0wCjwigSS4fzpbfQiqA9+a//21PkV1/xcb7
	pcPqsg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w9e71-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:20:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae5031c6b1so9503285ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773303616; x=1773908416; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HRGNKoI3XzOmCahOVQOZ7Zt2GDZdozcsEjWlaOBsPyc=;
        b=PJcrJSYZmwS9SrKNdJ+HvX0sCK6EjsXimrS/p5A8J0GyCDMhJVzx4cjz0FIkMm3fsW
         1442J65c4ffqqquLUAy/bCWyJgTDvlGnTgrbkxRe0bS87zQJQPQDmUoN7HCtMf9l6xIA
         N9SRMR79AaUfLvZtqxaBHh5OiiZuv1mOlCJJDQ/6wVEvPb6Z0GZAqb88rIn2kO1AcAr1
         jx1Gs9TU4e0r28oOQgDsvmldE/IStgpDCGb1+lSZ89PWfK++RKQDV9CwHg8hxkITDi4n
         +OZDMnIK7unrhrdoigSXjISYfdLFPujSBHhRpNjTvw4Ku0SuImICo0u/G0/HnQP3khBQ
         uDiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773303616; x=1773908416;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRGNKoI3XzOmCahOVQOZ7Zt2GDZdozcsEjWlaOBsPyc=;
        b=HqYAX2SzQ34EuGtxVnZSH/OmWGN138mIwvVBEuXojXqjoljS60Gynqc2gF0YhsGAdZ
         XeiLg4Zw+7+7YZZCnPvhfTiPbkLcewqI72APX68dpDKWzfoJtyDuo94snCU6xjVkLmsR
         LsbFMbqRQ9pCDeUVGhXkc83ExcLACGM6PVLq8ojPeiO+CUTQjpZ+YiuTzjCRaaNjbWiE
         V2lKlyITzNFU755R1nc4qR2ktGyg65Lv3/W9UgcLkuvm+5BuMyN4jJ/WScCBc7X0J6iH
         drNIHXv8ovztOgwsBOL5J9pQdX/hqWNDcDVwPayWkUssmI/yHrA0kE0enrG9TknSRvfG
         IYug==
X-Forwarded-Encrypted: i=1; AJvYcCXrRoe2AIdgGaFH/s2fNhCy/03S5k+32dKR5t0dqX+mt3GgjGuMmF0NgW7SUupd39143C3kqo+qmHNB@vger.kernel.org
X-Gm-Message-State: AOJu0YwMpTbl5+N70E5jN0/itXetNRjRiC9aTu8/83RjM2KjhgXd+AFQ
	J97k1mTkV+cLvl3wIiroSVwHlRZQgD7pffiTcoVlKycE4u6HGRpY4WwP7j8W6G3x9+oaRN5y0MX
	VlZKDwsV0jZe4zVdCmed0Y12fn0fky4OXYYZtFAMk4k72np+6+0f1NCIkj6R+YIWd
X-Gm-Gg: ATEYQzxvCcfFvh9tpZHtQT63bC1oPxoh7UGOyBFBwkZN1KFOL/6SyLZH9JXI6pssEWc
	mufDIOtxsc7bN7By8xKx8h1+gnDUE2wGD3ZKBJOu4S0QLlxT2Vo1PD+vQxyCbkRDTDGsJs94MFa
	auSko7RWsKmCUjAzwNJadSuF3+g8mF+iPqt/GHaG92KMWQByIP1936oGPKDeei6Jn+7b5FiM8Pm
	fRBIuUwylH1zrh2pIFw8x5mvDp4KJ66beUCJl21VkAYKpIYheXRsq8uwbBlEcmssFWAVkh7zoXQ
	PyGJTQRrkwHycg78zFDPXG/0YAMBjQPe0aNaq/C804o7iJd0tUbTXW+uz8ojFGRof76cO5Fy3tS
	ABGal2jrIPDqa+ZE84zgW5QeacNL5p6xxRkj9MObINSDyFDq9aA==
X-Received: by 2002:a17:902:ef43:b0:2ad:da28:98d with SMTP id d9443c01a7336-2aeae8ba653mr57061875ad.37.1773303615933;
        Thu, 12 Mar 2026 01:20:15 -0700 (PDT)
X-Received: by 2002:a17:902:ef43:b0:2ad:da28:98d with SMTP id d9443c01a7336-2aeae8ba653mr57061695ad.37.1773303615456;
        Thu, 12 Mar 2026 01:20:15 -0700 (PDT)
Received: from [10.231.216.91] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae36128dsm53495685ad.78.2026.03.12.01.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 01:20:15 -0700 (PDT)
Message-ID: <c4a885bb-6526-4f08-9187-bd6f1a10fb71@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 16:20:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Content-Language: en-GB
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
 <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
 <dco5knujhpt6rm6e2osfxsuqr4uqjz6tugkhvi7cnx5wbbpmum@ejjfx3d7onoc>
From: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
In-Reply-To: <dco5knujhpt6rm6e2osfxsuqr4uqjz6tugkhvi7cnx5wbbpmum@ejjfx3d7onoc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yh083cdWND_TMkfaRc77tAegQTNw8mUo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA2NiBTYWx0ZWRfX7x2Mf4LmlBlZ
 wPEEyVEc4X6uPduz3qGKiloaoqd38cxYvlgiQ8d2fj+iviNeqar2h0GUVaFTq9ij0+Js76FmArO
 GpJoBf+Re3zNuBXQ4IaNCnek7A2YByx7wmBrPR5FYt33XrCI0yv/Kc3bmm31ROo8imK6QN92i0q
 Qjis64E9d7tvh0eRyBPxftXfVLId2WkNvttd/M4TONjY3KG4R9iDEGetsgXd9HsXNxevOdCFKLR
 InFX0ZtJbXDRg62xNTW94OFYrYM3ST71Sr+FVS/j4uiWAIgJhA/AlhXQykwTWqn722IJKhobN4n
 SuQdC36vmy/wyrokExaMC1jvxZM2ijjCbId2J/3Z8g2J6AcBH6EOb/tMCrZnv8bOKWS4Is0Jpsa
 zjaLCmI0Z4efzT1rEFKhpYZ42NKckdhEJ5uERlr2QABARA9KwvUjsDYZzXW7ta1yd1zzI0LzdPx
 lS4/FIaRQQOGbs9TMQg==
X-Authority-Analysis: v=2.4 cv=YucChoYX c=1 sm=1 tr=0 ts=69b27740 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=LBH5BBKA6MF4hw1_HmoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: yh083cdWND_TMkfaRc77tAegQTNw8mUo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120066
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274478-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[hangtian.zhu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7FF2F26ED51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/12/2026 11:07, Dmitry Baryshkov wrote:
> On Wed, Mar 11, 2026 at 03:04:08PM +0800, Hangtian Zhu wrote:
>> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
>>
>> Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
>> mezzanine platform, PCIe0 lines are moved from WCN6750 to TC9563 pcie
>> bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
>> platform.
>>
>> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
>> ---
>> This patch depends on:
>> [PATCH v4 2/2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1
>> https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/
> 
> If it is a fix for the patch which is still in flight, then stop posting
> it as a separate patch. PLease work with the original series author to
> get it squashed into the posted patch.
The base changes are merged internally in QLI 2.0 already, it can't take additional changes. The base changes are PCIe specific, and this change is WLAN related.
> 
>>
> 


