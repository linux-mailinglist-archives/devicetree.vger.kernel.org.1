Return-Path: <devicetree+bounces-265064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAYpHuDCjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 561DE12D4E1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5617312B9FB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841CF318136;
	Thu, 12 Feb 2026 12:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pla15z6e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vk2bBb97"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB13346A1F
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898013; cv=none; b=Fn60rYp7qj7It338qeNHxo9MYozzDPH/7hG7l3VQK/jRcsY00Hj1G1o+pn0HZZQdTAqfK3UYCqfWRscUqmRx2gC0MPHQs4F+WXnRs/qNZL5aalO5S/ObZ2FO0TgaUqsdJd6q2DMjtU+TIu4GzZjGxoIISgG7dfJ4D8ufbn2GNqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898013; c=relaxed/simple;
	bh=1DNLpq61cYSOELcv8uH83sJOUYPEhlo80Ea5FXc9A44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F4k/rKFOUxuMScmS3+EceKeJ4iAvBhNf9UwlU8RcCMVZdE3ZQaRwGNrdMuXSdl4zAO1f0Rfj6p5biAvEFjH7XY2wW0boBKICwAiM6z0/o+avbgF+VJYLNOVajX07CwRWtoxSxHEGsahz80eYKt2vtB2UldEkt9autWEjfBvwM/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pla15z6e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vk2bBb97; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAFlDH008892
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0A0si85uWxYrypvSclZt2FGC7xRDNmTjiE894KvMwFo=; b=pla15z6eTneropyC
	pfrYEQM7fP9Wgwe3FdxPV7OLY2DQziMD5VA6p+vR/KngiW9COJHJId7W0z51usDZ
	42NgAqnhM/Td0iYOGiW2L/+wzWSMWak+KaQUZviIlqCl8rDP3YoNnf8xJfTNjvJe
	byn7P3EssG1dMH4wPRlb5F39YWGqSJSBrsPCqUCEdLgrvnth7VTDtlSmofgHrSE5
	pZsV4SGMmvjl8eJtvKnZt2HhoXQ1a+cbOLLN3hA15nI5EaW0JuaKyKsiYJxyS49w
	J6347fcvn8GGue66hmhUuJr0vSNU/Sn7bkHA8pT3lpDKii5J4nd/gOsyaIjRYO9m
	/9oCAQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cy48a6u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:06:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38346fdbso15069285a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770898010; x=1771502810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0A0si85uWxYrypvSclZt2FGC7xRDNmTjiE894KvMwFo=;
        b=Vk2bBb97nuy9iGy5W6RuVl27FZIkK3feIpq+bX0jncDPYRaGDmNbKSlL8zOkbyRmyj
         UFmveJefFkIf3XKWmNYqOOhVd7qDNd48AubtO7mm+Mm5tXWAJwAW95OjGcBXtm+ulNiv
         g+ZWt5r1eF41POla9vbu9L17s7NrFf0KlDDZ/9U/vcHDBCGaq2gCYC3BObsbHTv/LNGG
         ixwSKA0fJoFkeNElSE2JUXlPLDXQgkj9ca32s2jxO8LueCs6rH7RCtu4fIO3wVsRzXMt
         TpcsIbfQc8UxMbR2WETFaH/WKy3iUGUlmta7zpGXFRVvZFr7c7jsbGHY5TEnZSySZuT4
         VF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770898010; x=1771502810;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0A0si85uWxYrypvSclZt2FGC7xRDNmTjiE894KvMwFo=;
        b=sSl85YdfGAkdYu5DzPcJpBcLtsmqTO/z4Dkaq4+WPgeBReCW8hs0dxqxc3LWm7Sef/
         ePHi/KWLbxVrc4Swzg9LaoBMek6X0OZTjSA1sMdr265GaBZVVRRlhRHpsz90zCTzcm3q
         ui8MaxKxEQxtAkST2nYQKLi+R7Zv10U0s/TE697cODG+iVXVGzkZ9dZwKbAInRMa+QCt
         cp/DBkUTsdJr3ABui5V+DSpDhnK4npCeRTK5wMkuRNLU6+G0XWV37fD4W3cXCrY4eixC
         5VRLQcluJ6dBGXL1bc6EO8fsyCxCZklSFl05H01XZSWxvzzQGFrX3rl8r0FYih1A+RUD
         ce8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUpvxGGJH4HFbSykTBxQIbpLWlN+xV3YbxS2w0kGkQd+Muq39YppQldql95mSBX6zSI7w+yD00cjI8i@vger.kernel.org
X-Gm-Message-State: AOJu0YxvFcjSm2NP90CSd9SIc9OTHDLuOwd1Q5BN66+J+z0NEim8FjK8
	R7h1wxw3+sqpGDIUYLcdWUbaqYhRC95rAjt0JBFj+qRQzCvo276ABiat8yTzniSTC4kD3lPhPIV
	f0eeQpUKJQ51UnZ1qhqYOwJ4NsuafZLWsAkeebtTPrH3MDXZRwLXB70YzjFZCm+8S
X-Gm-Gg: AZuq6aJM0FViXlDaRN82fU41vfiE8EqqAQvRrrnxephpXBmPegjYLGq0e24+PpS1rfN
	Y+7xyxc7x7Cd7leshNufxlxlHg1VLmWNIh9uJmxOChQDQIZvmNDjxI4zeT75kW/etqv7ScF2V6R
	nnG0vyezyIvLuAeaD94D4g6FCA8GOFPIQWrfLytURZpkar5yDCmYz6yxPMS28e03hEK6z/VtS+J
	ToCefto5IP9TCkGWgGGPiiEYBWiyOsz8MGwdKPFej2wS5pzM9As1dmw0KAoGUDiaEV4ozsOVr9F
	9aYpOZNYGGTSdUT6pLKI2BA1jJ7VcH0sqCyitqKn9t/sbG+0szN5IpYIh/WTaRVdxig3O/S28At
	ya/fBh05PU36QAytW8t9D5VWAgUZEyZdkpzeP6Q9w/dv558YHf/wrxgN8MKvA+vz9Ri0p+LKTA/
	0DGIY=
X-Received: by 2002:a05:620a:1a26:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb32f16815mr246462685a.0.1770898009728;
        Thu, 12 Feb 2026 04:06:49 -0800 (PST)
X-Received: by 2002:a05:620a:1a26:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb32f16815mr246459485a.0.1770898009209;
        Thu, 12 Feb 2026 04:06:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e950029sm156666666b.14.2026.02.12.04.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 04:06:48 -0800 (PST)
Message-ID: <2b1b38ef-3097-45c4-835d-d7e367f235b0@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 13:06:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1-dell-thena: Move PERST and Wake
 GPIOs to PCIe port nodes
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260210175001.7691-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210175001.7691-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 9It9aeOlLZFF4NCB4ghh7t8TPcT6mIEr
X-Proofpoint-GUID: 9It9aeOlLZFF4NCB4ghh7t8TPcT6mIEr
X-Authority-Analysis: v=2.4 cv=XvX3+FF9 c=1 sm=1 tr=0 ts=698dc25a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=SkglpTzSsiD2VmOEYRYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA5MCBTYWx0ZWRfX0C9sz2D3cJGb
 NSTC5TsjLuKUWxM2D/2jYf3IWlvinrpu8IiKJ+U8fZLksFysEpNykC+JW5tmenjdG5nqVT9Xz4t
 BJD6giqnUqLDIQ6SZJzz9iacugxWe/xWIppjcxXMdi2Wwgl2Jno2g0qxFstw+zxAL8MvTNjR/7n
 1iznagFWukPuCGZWY/4Oy+gSFmCvJXodJGq8FsbtuQhiFBHOWfSQYFWy+19VmSZOcTcSmD/ZQZE
 0Lr2L1WCMKLu1GkUEmvdk1kvfIGlZdtLE+oSfBGgtTB81hrmIjzsoDoX4CjddS2yeJyNQno1FSS
 daaX3sFwGN9LlBpqg8YPgIxrG1FlrKRVQLjF1UxY5SgAHzKGZvPeW+BS6Jbgil41Jl8a65uM+Th
 IFDISIuwHotzUFqggQ8wB9wlkCNM+kco3VrIAq62rMZU8e4sl5UDLZ8yQnBBgTQgxWulPLB5/70
 U3TPQ9BCvUUSgLuThWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265064-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 561DE12D4E1
X-Rspamd-Action: no action

On 2/10/26 6:45 PM, Val Packett wrote:
> Recently the DTs for most Hamoa-based devices received this change, but
> the Thena dtsi (common for Dell Latitude and Inspiron SKUs) was skipped.
> Apply the change to it.
> 
> Fixes: 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

huh?

Konrad

> Signed-off-by: Val Packett <val@packett.cool>
> ---



