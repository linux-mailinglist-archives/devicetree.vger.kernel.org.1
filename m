Return-Path: <devicetree+bounces-266602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO8VC8HVlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6F15D4BD
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2AAF1304CCDD
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F483382F1;
	Thu, 19 Feb 2026 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X0/vxn8S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NKX1Gbxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C011C3346A7
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492759; cv=none; b=sQu2+vcr7KSz7MYx+rHu3UdQyZHTHJDJEL+5e/MbKTorD2mWWxJZGwOQJSFlwB8eFEZNYf+3BoDZ2a4ATIDkJKPWTXpyLw/nsE+qIwfYfKdNKdi+CfrRNTGhBwK5FlpEI7ZTa1EYeHLzlE+GKtUTUPPqzqbwe3u+/QB+cF10DVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492759; c=relaxed/simple;
	bh=kisVfgvpDR5taz707UhZIUsAYFSg3p8Ww2QDn94jDMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WN5ZPVJHTYuRO3coLaesVDAVP17hrTO5KdKsdmH2QFH3nLvV27xYVzsR3/l5UxVZNlOwXx1qk3DcdBZh6AXhCOF5w01L2OfqTfkuzGwFYa7Yp1UhTywMttQ2+leSj26Df4GDlvCZvMdnD/pC8+Fwoe0x0/KHC5M2+9wkEAhVD+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X0/vxn8S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NKX1Gbxs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J3OYNi4072775
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=; b=X0/vxn8SKTWEp8NC
	wymgfqxacT4xnrEldioL4SmJKzsZLZAfj/QHZtVBc3YE1hc5VLyH3VdL9P9XM0rb
	AQ+D8wrJLu2eTZyheieR3PPoHZbuiJIHDehbaoGkmmco8rsLJbPEfd6FxtelPU6k
	UK+gQp3Gd6+WzlqcrZMMu9ai6duAPDlLDpsBY1XZb7UFUjIMOdtqn6j9D3/jC1To
	UGyydP5p4PqRcvF94tb28fZY8PgpXW/lNVdDnB37hnOYAH5L536SFi48XXa2Uk4S
	ew+7PGBglnGzs82untDufSWNPhlo+nqfeZw2e3uPO42q8XR97AxMME3M+nV9CQdW
	b6T6AA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdtjy0pfx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c7177d4ab4so66835185a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492756; x=1772097556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=NKX1Gbxs3TNTKzi2iLHmwnBQgQ5q5V4foYqwCmE0TMiLxXmY41bFwd57r5Zv81oO2T
         ZCOQfG+5CFaIzkIzCvdco/ngfJk2PmXYCRf9Kgl0FAHeilR0LvVW4fopIuhP/q1Py6Uo
         3Kh9Idhv5vbzp/+StASKaR/QcclvOK6egKpYx/zzPXltRaI1RAYiJ2SFHFifKOTwMEcW
         RDHo6r84UGLfNKWDKI8I8yvUf8GKsbRwKYYTjQMBBgFh5CIPIvfftixp0H9kf1A0ezlC
         3p4oSPj05h9MhhvuA60RoYZuhbW0mToP/hsiBtdGixu/xfKtbkC84ky8SV0bsCoVoJPv
         DMyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492756; x=1772097556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=NQ+tYEDMCiEIwxfn2wJYGuRbB+gPut0h1fjjsQ1oMKMSQxNM1P1RY9VwLsk8DiYarR
         1fXbvBxSY/3XuGgIQfsDm3z7bz0Oj4GeXYLk8NK0jOcE3hzR4wzBov7oOISQiZ0ch1TW
         H58yrD0AmyuKl8+sinD/HJEYEBRM433EEvwP3sUUgxQsCHRsoIlMmTiqFjSPZYEiOVAC
         0SAMi9kKwoUsNuQBo+y64cJmMaEHae3mRFIhWH2TECNeT0WbaOi/VDg8xWbin7X/68oe
         kq6fUtKY50RvL1bABgs0tw97E5D80XXnHgsExFVU8QA8Amw0hC11XfeXframiOeekHRo
         5Pxg==
X-Forwarded-Encrypted: i=1; AJvYcCW+1j8ksJh5Tm930Pu7ej/eWny1yg95kPVe/BykiYgV/OylW22+WR0oiwOfWi1aNNkSf9UD6/SaavYj@vger.kernel.org
X-Gm-Message-State: AOJu0YylLBW183D2P7mBEX0h/WZGn16gsIzp0ejN0ycPwDkgULya+P4a
	SAE1Syq7yGzMbvU5x16Hwh4km5FM4rWJrEAm0Xlx0xw5ORZ9ymesop1osrl5B7NXYOZHF2DWhfs
	+Ej/6+nCqjQdYB2n3GCcfV9xfict5gcSUa52D2xAN9m8TrcNRvZV+VB4B+4kfLf/1
X-Gm-Gg: AZuq6aIm/xxxpM35mbQf6TrYmtfDWshubokfsuqUy6+N8cQtShrSdA0zGejsvOBQAVR
	uxJOZ/s96PSWCIlmix2qDWtfLmMwH4GVmGcMm4shrMDrCPh0ZoXqVKosU3Hjc2mo3EN3QSqKYar
	fbG8ekr0bukEdtn8+BEnyghrJH1rwv1+OiILOhsjSoMQ3ENWbQp/SKdnFn7XRS0b32yzm6j9dj1
	agNmxsT+GlrZ8b4DvtBoiTu/xB3SEAQZG+QKrSoLj82AgEDcrc/4OZqvKTuaNF+ovkgmB8mjgdW
	jZx4BCVafAQZl49iYTKxa3WOK5pUDQvrMux5ujTKxyAVGN+C3EsT5Mvqm1cfp8ycELUVTuyvPUL
	SOFGycPuN0Id8F342NWse/yKd2vw+HXjg+qqLfx8/KngMrX+itia/C9/CvbBykb+5zoLOAKpl3/
	NV1Aw=
X-Received: by 2002:a05:620a:400a:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8cb4081e176mr2042756285a.1.1771492756086;
        Thu, 19 Feb 2026 01:19:16 -0800 (PST)
X-Received: by 2002:a05:620a:400a:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8cb4081e176mr2042754185a.1.1771492755534;
        Thu, 19 Feb 2026 01:19:15 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f137dsm3558337a12.27.2026.02.19.01.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:19:14 -0800 (PST)
Message-ID: <db9e5dd3-0cb7-45f6-8dbd-408c69f383d7@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:19:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: msm8998: Drop redundant VSYNC pin
 state
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NCBTYWx0ZWRfX1pDkHWC/QNRp
 Fzdy7F0gKzrAxHCvkSx8IP2dDuKI9/lMk20ir6fBbHpWP4JmDy4TeG3VlcfGXnL8x7kthzauOtS
 vXOWwYJXhqqkmflPr9oALlEdYvZWVBLCRbaFwPpchbQ8ZpF9SbkavFNFBewT0Ei5bVlckNsRCTF
 J2WpBOW6IevakDkvQc3eyoc/gPkjV9NUIKMSRvNcZbQr2iySJJOZQ7AdKwKvrlNBxt9eJbvisUJ
 sofae/Jytp38zIgHeW7I9qzoXQHK/zV+YD3LlZvuoTCHlcpJkhMwcCra+CFpauIZvXfiT4T1cvp
 jN7rkOlWgf0G90Cwxdarbc7xlegU9D9znkqEBkPg5EqqHm3pfpKc8aJ6+Ns+sLYjHr8rY0GAdw+
 pxL2VhMd0R/P7+HTYb0GCpQB/ljJ7ZXg2YF5PE442nwhpFHl3PpXKM5SlzuatfYuokKMeYjSTH4
 jR92f7Dxkx0OKmxBi7g==
X-Proofpoint-GUID: VTfNS6_3CRryc6xtlCvz_kr2XrslPTBV
X-Authority-Analysis: v=2.4 cv=FoUIPmrq c=1 sm=1 tr=0 ts=6996d594 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NMe5sQuIffPLTvoV0ecA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: VTfNS6_3CRryc6xtlCvz_kr2XrslPTBV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190084
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266602-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 81F6F15D4BD
X-Rspamd-Action: no action

On 2/18/26 6:24 PM, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

