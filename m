Return-Path: <devicetree+bounces-257861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E2FFqiucGmKZAAAu9opvQ
	(envelope-from <devicetree+bounces-257861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:47:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0075055758
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A344D6625AB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF3E4611E3;
	Wed, 21 Jan 2026 10:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jrn3Q2Wk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B2LPEcId"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735F6449EC8
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768991078; cv=none; b=BDqfYX4PQnGCmL5ezGoGguHEeWdBD5M5vJEkf2mBx6cXEvNkLH9ElU7gj1kA7oKFp1L442y401gXo0LfMtwPi3la7xoac17/TKmDE6l+dKZgbmy9otrQuBSX0KUUtKhNNoWaExp3On2989QyWXwxq8gQgmL1xR087HaLqx33i9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768991078; c=relaxed/simple;
	bh=GtkDq0AVAXsafKfJ8Qu/lM5yzQrBn+9BgtOwEwwV3y0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=biu5KigVrhezveehgzdY4fOWXt5aQRRnNhk1OGflfAvQpOvnTKAVnATnhFWwpHxCsLgFM4Aeq9zNK6QbOiX0G/GnYG58RtAPcvcdwMCZ1gGujRMvP04kEW+mAWSIvU63zVzRQQXX5CEg/kIPyUNvGlQLkmTeKbdYNKACCpsVmvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jrn3Q2Wk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B2LPEcId; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LA1VMk2840458
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:24:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KFE4ttxShgGWSHqSr/ahnkh2ANNwECm3HxYcEo/sAgE=; b=jrn3Q2Wk9QINJM/5
	r2IHoGuyk3M2knm6vUdH0pHJ/JU8q30GUPXyIFzpAyxfbJ5BCS06TGHE9n/GgIkc
	FXZSWT7AMHa2YF/qcOk4PtWgtMkyxv9uGz8hXwS+Lrbt01Yzh5Tals4AXfDuLTo4
	BZmFa6fWPzwimxvoq6jBPDSq/Z1MkU7hQu9xC7c/OE5e16tHBcnKqnxCXeDomxpf
	ua7v6TldWpChjjC2X+b3glysYzHJOFGO7QyYzKjFGXAGCFcWJiA4+jI7VbVClZho
	yweM4qubpbgd7JIhtkwSOYAgc0Hw5qcYXkRSzZfuQPKiFkYdLARBRj6DoBRsWslg
	glsgLA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1sjcs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:24:32 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c61334ba4d3so42357a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768991072; x=1769595872; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KFE4ttxShgGWSHqSr/ahnkh2ANNwECm3HxYcEo/sAgE=;
        b=B2LPEcIdC8Mxtg6PjDFXa2JOGRRWQbk5IS3PFgW9MfPzraDLUouL7HAtC5IzLTBHg/
         QK/lJRtFzhJ2cEBGdNKDOVPPGbH5x+bllitnBO/ZbTvr8p6lFML9uP4EN3DjxQo3/wUd
         SEjQse7lbGQxuibx3Gs+HKwXAPjiIXy1EqfuYHDSAliuuRgi0FcLg29rSOL+pwZbAUEB
         bQBNNw3tuKvyOa7GaBoQiLA61HVUER1KoAdwBfd2mKvtAM5RQ1oc64kFOSWcqPlp898/
         r5o9ySHuLs19+ePyyzzyd21d9+bsPQYkEQzwmV00xJ7empjRsePEeAG9ulaQ6qCXF0lA
         tBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768991072; x=1769595872;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KFE4ttxShgGWSHqSr/ahnkh2ANNwECm3HxYcEo/sAgE=;
        b=WbjLHjnTceO8scdU3NiaIrP2wwNKnLQnovyZffjwzWArfNvSh+S8hSxV9GzlyCHp9F
         dsdO8tKEVDN69Ds04m15AvSro6vhU+0Lrka3qQ1CSS4VHHAp+CGms80nl0Ibtw85slb8
         X7Z72bqmnxTibct1/RsPkTrHCT+KwI3V3HkR4XS+FAvjP/+BccvlKYMPnAN2vyvDTu39
         LsR/Yqh9sNj8p9sRRQdODjSco/GR85upbcG5nJ/Tg/MjDyN6PcSjgu/RdfrnGoK9yI29
         7vznkMBZtMkfznf6DMOxh/HhiQQefHJX2H18+kY9bI0oH8JHZOTjMN2SwQJ9H7Fe9UbB
         0Wdw==
X-Forwarded-Encrypted: i=1; AJvYcCUzf7/DGH0owP9y3/egHVgCybAUY9DO+npxVRorflrXCVoyUlmWEE02nTcSkv3KH+Nvvfx7TNslpFdk@vger.kernel.org
X-Gm-Message-State: AOJu0YwFXozJuFa9NDFZkGs/yULf1EVz2zF83NSHU7Ir+dr7BEd6wQOj
	QNckHpAJ/JpK9i00b3I6jOM0CtH9K4n64F/GiIwnukF2DK5f6UhsQGiVspUyOJj+bnZ3BAnKNeE
	7gP25IqZgES8sT+gEgopXBBeA5ScoOqyA/A2H/FzqGSCIb61kzfla3av3ZjHOFPgm
X-Gm-Gg: AZuq6aLG1+yB2OtL+zFfWlMx4vOSPpQ8ZhVS0X2zP90WhtdcJXWXq8HEW1kr9z2XCuO
	jjfdqF4noOtAgg2ehaKepZfYxPpWQHXHlJEXnsW1b5BJSUU72310tJbuFVEMg2aqIMnzAe5Y05R
	9I/XCDnTT/zZB+YGGwjTq1oujlyvd02YkQ6tl29RLpq+nW3wrhizSBzOO3k+XW0L4LDPIbFx5ib
	ZbAmvkTYha90fIHLlyunRoP5XMR4wLL5FKCe0bo9oaMWMRhvfE1+OQChRlwHqncxeYCrG01wqWL
	l6W5v8SSLj1viHu76fSWQXGNUYTznY6dKHGUMe+wPKF4bAI6owXiOMHoXKgjv7uWIiM3pQgC+sF
	LwBgG4DWJHcxsE1qPFgWJlQaLM9OGtnRM9TWjrL8=
X-Received: by 2002:a17:903:22c3:b0:2a3:bf5f:926b with SMTP id d9443c01a7336-2a76b1624e3mr46412455ad.47.1768991071808;
        Wed, 21 Jan 2026 02:24:31 -0800 (PST)
X-Received: by 2002:a17:903:22c3:b0:2a3:bf5f:926b with SMTP id d9443c01a7336-2a76b1624e3mr46412295ad.47.1768991071308;
        Wed, 21 Jan 2026 02:24:31 -0800 (PST)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193fb2bbsm149645795ad.74.2026.01.21.02.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 02:24:30 -0800 (PST)
Message-ID: <45e5526b-d565-4420-965b-1c6a687cbbe0@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 15:54:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2] dt-bindings: mfd: qcom,spmi-pmic: Document
 PMICs present on Kaanapali
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
References: <20251215-knp-pmic-mfd-v2-1-1e91138c6fc6@oss.qualcomm.com>
 <176789374037.1117798.14242637055422802029.b4-ty@kernel.org>
 <b393f218-df47-4119-88df-9b3ce23180ae@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <b393f218-df47-4119-88df-9b3ce23180ae@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4NiBTYWx0ZWRfX+eZSmrUR9vfO
 mF34lAbyHD+4s3ndt+h0tqX3W3D0HssAvttT1aMBTR7xndPrvIPZut2uKyYbJPKygMGukUnElnR
 UFbvSGM5rPvaS8qn12us3SFmYpn2rMOJDmk8SaI++Oq3GweBwifuNiB91pAWHQzG8k7givDnYns
 VVMi7B9KHlsr/FjI1DoY8URRL4h50WZqNy80oqGKG1VWGE5x4mjyhsIwuLtBfAJw+/qfUfqwN5b
 cP6SMCc/sqQvCm+fBSm7/OOFft1dfvfZNM9ogRcXrqiyKKzNwyuCB3uNBR124bL06AHf8NynyTi
 obNFBRvKb/MTZxpM2n9Yyz1QrePCyL86kBw3skSwdyxJA0hhvX4XWdcIhGy2IQjVi+xMx7CtabD
 wWLPSa3GyfGhF9oI168Dle6IloZPQ4kwoaMzsw8/38FyqLQL3ZWO7R7vwY1NG9ASBxRNWvMS2YC
 vA4JJjIxSvEyKuTGnng==
X-Proofpoint-ORIG-GUID: vq3JSwVbtj3Sm2G04DdfMoOhWPIpNDbL
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970a960 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ikTDaN9Z9rpKwyn_FasA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: vq3JSwVbtj3Sm2G04DdfMoOhWPIpNDbL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210086
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257861-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0075055758
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/2026 11:36 AM, Jishnu Prakash wrote:
> Hi Lee,
> 
> On 1/8/2026 11:05 PM, Lee Jones wrote:
>> On Mon, 15 Dec 2025 16:39:35 +0530, Jishnu Prakash wrote:
>>> Document compatibles for the pmh0101, pmh0104, pmh0110 and pmk8850
>>> SPMI PMICs.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [1/1] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs present on Kaanapali
>>       commit: 2a84a41a8c2d3cbc2460d2bc60569a35c4157e76
>>
> 
> I had pushed a V3 version of this patch earlier and Krzysztof
> had acked it the day before you applied this V2 version:
> 
> https://lore.kernel.org/all/7c56b471-5fab-4cad-bf48-4da261d5bd9f@kernel.org/
> 
> Is it possible for you to drop the V2 patch and pick the V3 patch instead,
> or do you prefer me to send the delta between the versions as a separate
> patch ?
> 

If you prefer picking the delta patch on top of V2, I have pushed it here:
https://lore.kernel.org/all/20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com/.

> Thanks,
> Jishnu
> 
>> --
>> Lee Jones [李琼斯]
>>
> 


