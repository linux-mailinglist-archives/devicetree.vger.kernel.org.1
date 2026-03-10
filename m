Return-Path: <devicetree+bounces-273564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GEhNOAosGn/ggIAu9opvQ
	(envelope-from <devicetree+bounces-273564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:21:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C27B251CA3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:21:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF9E034430A8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2EA2C11E4;
	Tue, 10 Mar 2026 13:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KgsIsnZ6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FE676n9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7A1211A09
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150077; cv=none; b=VlGaFB4XbV9YSGfRv5KYm3mNjrkvB7KT64QwkNc0q5AX0Hxw6axBQi1u0jaWSl+d8EOWBEKLfs+jWUFUfyljkYiV/SaASjF9rAxUMuGk4VStH1+UT2Kynsqo791qd0mrEPWZk1omRRtw2TsmAiD/5vZ9ZZ8UVx7QAKPSvLhKzuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150077; c=relaxed/simple;
	bh=2/lj6B8seo20eJVoikHZMdPOJJq4TtVmvM/xqVoEKIM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eZYuFS+UEtK35BW5LP0fI0x1bki+RTq4EB8iXVXilstLg276EOJswSOg3Jueulvt3Ci2of8LJhod/qGPM5BGoRtpaewjqvjLaQxhxuPN0vyqTu485NbLnv1xV53ryveD/MmZwcox9UmPxOpSMUjWy2gqMqohOMhai2pE1Xzg2bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KgsIsnZ6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FE676n9/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaXhi3417135
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:41:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2/lj6B8seo20eJVoikHZMdPOJJq4TtVmvM/xqVoEKIM=; b=KgsIsnZ66wvp0i7h
	yMm/6WZCQ0gtSgzSPf0D/FHx+giZn3kulbmrM2QKK7AoXq3dD7qb8+G+LqLHJZEn
	WQi6moMDMvf/jdJjGeqOx6U9gfOSvYJKgrMDLNGwW4fHpqG8oueIjUzv/XxFk/kU
	o8ZvD5sl+7vwpC7S/ByfzCQteKZzoTqayZpjzRb6hnKbABI6wLWXPSbVNZ5xCOam
	2eVSpxsTKd1TLuLtn9Mofe1jgYsnYv8HwnTt/z1Rjb/ldqL4mM9PAwdGV3ugoxbM
	JQQzSkzOLJLxTTi5288IjMayl2AdL6GQ+mP+LSz+aT6ERKV5gQQhCXEQ4b6mI2YL
	VjBO1w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28ge4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:41:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb485c686cso782729985a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773150074; x=1773754874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2/lj6B8seo20eJVoikHZMdPOJJq4TtVmvM/xqVoEKIM=;
        b=FE676n9/TvsfUbQJD4ZMpgUgD/69i8TGLo5havLv+Mu4/qEWb+9gH4TBjLlWJcz8wP
         eFkYCTp28eWMhye2u8ePl4s/OU+4Pqs7rpaN7E/71e8PPi2lnP84Ciiy0lv6XCR701lq
         KDsExXirXF8tcNLxkdA6jregMiuTcai5cn/Wx7xwGyOAeiDbf6WpG30GR0fGlHGG8wbK
         rCcpr/ionZM7D3LrbUiJAa/rX568hUQSHmmUHbZZkBo/npJFqjjw4N0sy8UJj0Ar6+iC
         JRBRPa0bI/woMg+Tet0O7pVQq4fODGBRUlsBvMkPw0Qg1B7q3cPySaqx5CCOfIACVCLR
         gBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150074; x=1773754874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/lj6B8seo20eJVoikHZMdPOJJq4TtVmvM/xqVoEKIM=;
        b=Kpy4Ze7BLfytArG8L/dB0DwL0vugMaV6zATMF5Qsk+VZGWFS45xDqa3P5PSsZeqqr+
         OHZQ2L2l+JZ2eOfFYSILjaRLfWbLUQhcxkYZzf7i8C1Iv8NptyVy4qt3OIzS9LD3o7ky
         JhVNGrN/Id2geS5rLYdXbSF7spEnuEAq7aFeZ+QwjdaUgSjSXd/jxzR+rxscLQ10wltT
         M/R+y50qVkPOK9x96ykjOz7a3X32PXQjpUlOEeR0xiQ43KCFZjXn8C7soFOTefEYjMnm
         n2GytEpr3uer0u5szssbt87nAP88nhtqKGmxbQGzaoqA47W7lmtaRlxC0Geo4Phw/uYJ
         1TIA==
X-Forwarded-Encrypted: i=1; AJvYcCXvo84f/RwwUvzLgVdrE43z9OmLo7gcvphZuODCFsKA+xcHxx5kpLQO8q2xQQ45ND7C18TS2hs7/jO0@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt7D2a4ouZAuuTvHycPd+kIjRX1hutOOcDOPuPvwcdDe8bohf3
	UAxC79/SIdKe0f5a93LhY81eiKxcq7uPHh44U3RTKqTmVOT5KPNC2/3/5z7RNQGzJmGhZImUM1n
	Y3UxIu4SHvErRrbMM+Gf7aqB9IhyRUQ8SMHfDMCZcP/wbaFD2rv4bTPkJIhRIASuR
X-Gm-Gg: ATEYQzywmQt1A6ERABRNF4JBhxlRjzdKytRRFAFvZEmFBWu0MkXQVELVUBBoL5ay28Z
	5gC9fN97GekfRi498EeTsf1KqnSa8UMkgqup2TOW9v3qhE+GM9iYenyj2JqeqaFrrCV6TJLFsKC
	T/sIRLxdBXUrU4b1Zsvu9Cy0r/QWQSrFmhxdQhqYaJLjQXTl5JMNoD3mClZjg8ZMoW5098yVjvY
	FPh60EMsPvKRI6aJmdsWA8Du/FXrklutCaXBAphIVAq+b9J06xTtGVxQdXpY/3AeSAhDuFvaG9e
	HiQk3jOPH94gW7v0u7vkxO3FdlgblEaiNu3GDkBp5ZLehTiJFpYu9+JtWehIkJKXo7Kuf3/zUgw
	uLC78cZCJ2I5p/aMmquIRe1NEzxlIzgj7SyTsDDw4L0Atp1MR1iry6x0dNZ1wSql6RxdVRl8g5e
	BiMEc=
X-Received: by 2002:a05:620a:25d0:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cd6d42bc36mr1494497385a.5.1773150074492;
        Tue, 10 Mar 2026 06:41:14 -0700 (PDT)
X-Received: by 2002:a05:620a:25d0:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cd6d42bc36mr1494492485a.5.1773150074051;
        Tue, 10 Mar 2026 06:41:14 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b94351894bfsm468701766b.1.2026.03.10.06.41.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:41:13 -0700 (PDT)
Message-ID: <e878d01a-036f-444a-82ab-b823d7aa7525@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:41:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8917-xiaomi-riva: Commonize for
 Redmi 4A and GO
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        phone-devel@vger.kernel.org
References: <20260305-riva-common-v1-0-436f1f4b7399@mainlining.org>
 <20260305-riva-common-v1-1-436f1f4b7399@mainlining.org>
 <ab66ac70-9c63-4dbc-9ec4-8dc5344fb045@oss.qualcomm.com>
 <fabedbb450f409aa0aa415151de0263b@mainlining.org>
 <2255b753-4d40-4e49-a89c-22ee939c51d1@oss.qualcomm.com>
 <6665244d82ee8776826a7f6a4e64af99@mainlining.org>
 <a9658d1f-556e-4a58-828c-1d97e227dfd0@oss.qualcomm.com>
 <70ad0b19dbeee89c04c17a0618a9cecc@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <70ad0b19dbeee89c04c17a0618a9cecc@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b01f7b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=OuZLqq7tAAAA:8 a=fr_QDkp6JkS4JuZzObsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: 3RgpsKnnFZg0dw0yI8C4ss4naWsFWGQB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExOSBTYWx0ZWRfX+AZ0Z6GUHNFY
 0iLEp4aFuOw6p5HEAHveVaHi+SS83bl0sKEBZYnBk8IfthHViLNImwPWeGznx+7O5Uk0so0hzhO
 dnDEmcTtbzib0ufDj6KSll0bgV1ALm1MYx/FSmjPBin/skj3OFVlM/eLxsVqc/Wb+Pu45MZFZcB
 +LAISNh6zGothG5+tQ5GdCe2SMViCCegz2E41PVpgheyiyO6v4UF6uuPRraOc2fBIWjuYz+ctHe
 g2GQWAnDCEraLFohfGPUAVS7pEN3KTBS33vq/Q5sfBtIhELaaipDJokUTnoVFmYhsu1sCwhNq7O
 ZSYzsh2xwC6qtjuag7ubD7Ff3uLrTjbGGB8MxquoMEneNgh4VnPirHvhp+/SbXluFn7Sox5LVQR
 bZReqoFhm4pNT94z8OOJdibbNg9QH3pCJmD4ilf/6WQucSFazUcuK1tRKmWTsIvMiLwogzJ5dHI
 U0idTNflDM5I2vPEstQ==
X-Proofpoint-GUID: 3RgpsKnnFZg0dw0yI8C4ss4naWsFWGQB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100119
X-Rspamd-Queue-Id: 4C27B251CA3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273564-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mainlining.org:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 2:26 PM, barnabas.czeman@mainlining.org wrote:
> On 2026-03-10 14:21, Konrad Dybcio wrote:
>> On 3/10/26 2:11 PM, barnabas.czeman@mainlining.org wrote:
>>> On 2026-03-10 14:04, Konrad Dybcio wrote:
>>>> On 3/10/26 1:57 PM, barnabas.czeman@mainlining.org wrote:
>>>>> On 2026-03-09 13:55, Konrad Dybcio wrote:
>>>>>> On 3/5/26 6:28 PM, Barnabás Czémán wrote:
>>>>>>> Redmi 5A is very similar for Redmi 4A (rolex) and Redmi GO (tiare),
>>>>>>> it can be commonized for avoid unnecessary code duplications.
>>>>>>>
>>>>>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>>>>>> ---
>>>>>>
>>>>>> Could you please try adding the following to your gitconfig:
>>>>>>
>>>>>> [diff]
>>>>>>         renameLimit = 999999
>>>>>>         algorithm = histogram # or 'copies'
>>>>>>         renames = copies
>>>>>>
>>>>>> and see if this generates a shorter diff?
>>>>>>
>>>>>> Konrad
>>>>> One more question should i rename msm8917-xiaomi-riva-common to msm8917-wingtech-common,
>>>>> they are wingtech devices. Which naming is preferred?
>>>>
>>>> I think xiaomi-riva is easier for people to associate with a phone
>>>> they may have in their drawer than wingtech-s88503
>>> What about renaming just the common part to msm8917-wingtech-common?
>>
>> I think it adds more confusion without much benefit. Probably none
>> of these devices have been released without a Mi logo on the back.
> Yes but riva codename is related to Redmi 5A and naming as msm8917-xiaomi-common
> could cause confusion later when i would send Redmi Note 5A (ugglite) what is
> none wingtech device and have much more difference.

Well, you never mentioned that!

perhaps msm8917-xiaomi-wingtech.dtsi then?

Konrad

