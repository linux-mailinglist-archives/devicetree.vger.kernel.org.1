Return-Path: <devicetree+bounces-260378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LreL63+eWm71QEAu9opvQ
	(envelope-from <devicetree+bounces-260378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:18:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 693BAA11B4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 70A7130066B1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0638234F248;
	Wed, 28 Jan 2026 12:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="id6DjG9i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bZNseZ7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8981C2D24B7
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769602725; cv=none; b=JU3UK8F8pa9ULTCNLhKnqCWJzAXuI7cXJAcFlGVmCZ/5Nj0sj9nPCcQmUvVps+tN3icee4+eTcwMoz8zh2hd9+ZpVk0D+uF7fEjFxzKLCXB3J6xwiPIU7w6oXWt5T4Egz8Sumcl0XkwDtb6Iz10wGT+teDKepYheNn68i13bqKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769602725; c=relaxed/simple;
	bh=DMmMhreLgLv3RpK2hdkoQf8ltjDnfcVvYg/pAg3TZcc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fZE8Yn92pOw/qekMD/rww1ujl4BBn9gAiEcsY3AysTO3NVSyWQhgVx+zjiL2aGlWU1CTrAynL2Ot0xzG4gkxKwxNbxUEUdFw2dBEr9UzEyUvZpHAHtiZkd4H/YB8M0sWZl8OmzSZ8IqUhhdasy4KcFGWeXeaylXFsXZCYAx5sO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=id6DjG9i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bZNseZ7u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92WbK4008376
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sSheuPGmQbSCmzopJdJP1rGwvdaP2iimvKo4q2g8rlc=; b=id6DjG9ie66ASTzK
	H/edKHvZkRbSHiar7UeUvb2YXZ2mkpDLWsKLmxA+ViOZs+DBck6qr48mNhdCLRvu
	iGtmu/Zycm80FAcvZtWLBj2ycIflxBSrgnUpL1XtK7Zyxz4ksrqytxhmsRs1T9ym
	eE/q47y2wzhQ/1xraQ7IIgyMnezMG2qwPyKvxFJGpTA4t4RLMIrhsI7KMC1nB848
	8oqsEq4cTUtuZMxp1M7MWPF4DGYEV21JHxFLzsN6P407nZ64HOgWgFNH+U19Of8m
	jdHL+AwMe+EN5YvC81Yxec/R+/L4cq0ESga5HQ3lRdbPduFh+n2x7bMwgZ3je+Is
	GhbtJQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1jx3e70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:18:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8946c23cf90so2449486d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769602722; x=1770207522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sSheuPGmQbSCmzopJdJP1rGwvdaP2iimvKo4q2g8rlc=;
        b=bZNseZ7upBh8nr7bX/tCj1G5OSBwtB8MKgl6sKvYGYZvQwD70PQIyQXDdlE/zjsgA/
         bVYiU/PuU4Ts6nkOIHg83RIKqXfcRkguAmOXc+qbX8BFgdQGvRYKPR2YvHZircuozrct
         0fiHHHnLi2XcAer4g6YngvMVHOstLEuv1UjNNPX6heG76zcPiePEOCyIsJjUd5CN50b+
         zmNdRp/VYBiVHh52zpC1R00gYzHjAvLtqj0h+yxdrWSdJCs6Nvrz1iiiaymMj4bJX5hM
         Dvu3yuHuyPKdu1tMO4ACnoPPKFm0TP19rTa9MyPORAj7L7O4srxWL05V1oKnl6kvwksd
         JO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769602722; x=1770207522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sSheuPGmQbSCmzopJdJP1rGwvdaP2iimvKo4q2g8rlc=;
        b=ILSg1Dwel8I7mp4V4oqbXY8NlnUpak4Mg4ViHOI6nFEczSJbIS1e2E6tnOEsGV10Ma
         XAwjyCN2UkjQxW1p572aUV5tLLjHLN/Nj/UJ346TaKXK4O8m8U4a5vaqTCpp1ijFSplA
         0PTF3Q30kzN4nkRYji4IS/qV1SJ0gIJ/wyAK6Q2ZbruNz5TLwm8SCEmCW5nhxjTU33/C
         9hb1IfXyDSB9dda76MWFifyOMr2lv42hBQlt53zgg7Kb9gZ+Ab64TZZhj5pSL426ASdu
         7zXhspTP/0Yvm1qUurpjshyPiJEcqQG9j8KecRSEhmIzK41EUkK9fApSXibcrpYvPSCu
         jNMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl43F3LwnYZhKeAZED72AJadpo+jCro5J28BBtWjtjuobGjWcKcMtCwSdfR2jVINjqoLfhnJOsuWfe@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5PhunOd3tm3FlwL90IaZRkb6dt4HibHvm2hsIIXJQ8WAs2fZp
	iD2WKRPDfHcfu5oAfsTQu/Va1sbifibeEUq/hQ40M/IyIuUY4+JI3u0ARK4Ki9WbCWXQOde7Y9D
	+HkTPKgE7SzGlD2q9P4ANPQKhe3QqEdwIoXjAACatyZRS7nh4y8s3jH3ARd/bmAg0LcNcUKcl
X-Gm-Gg: AZuq6aLhJb5M91tEWWLmdwKkTRHlhyblWce/A6eo0NHJVa4RLMc2b1dBohS2i99Ahxr
	dQwIN3OjAV7NOqF2xh1LnO1SgrlemtcvLFtfXjC5osUgTb8FRkhzkL6Q2OWZ0U4rcUvZHMPBM6v
	aJ57OXcTC6NHjxyyTVyEZf+ai4klg5XL6GIFhlSUEVTIOz5gVZi3V5GpKz2QRuz5gVlJxh5TMsd
	JvlGb9ajX8b6K8F9o/tvSrBROdNmiamCCj8/iqyneGf1tppiO1ElAV6CIBjG/nnXHs4ZXEGJQHP
	C/nZQ8OiAc2uyEkWmzxcQcD5TBnCKsNgJTWFzCgpKDBPd7DuFQgJt5sWPbu2+JQig0WvjjSYj6u
	IkcD/UZuL0sP5ETBlcTTYqAVZ0oUaxKn6lEdZ0gKDoQgv3oW1dsRI1leXWGGGrvUSm5w=
X-Received: by 2002:a05:620a:4109:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c714bf34dcmr130682185a.7.1769602721806;
        Wed, 28 Jan 2026 04:18:41 -0800 (PST)
X-Received: by 2002:a05:620a:4109:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c714bf34dcmr130679885a.7.1769602721367;
        Wed, 28 Jan 2026 04:18:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86deesm121350166b.3.2026.01.28.04.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:18:40 -0800 (PST)
Message-ID: <4a59fb83-6682-41c8-a420-6fbc472ee63c@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 13:18:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: lemans: disable zap-shader for
 EL2 configuration
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com>
 <20260127-talos-el2-overlay-v2-1-b6a2266532c4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-talos-el2-overlay-v2-1-b6a2266532c4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RnBFaAUu3FU9eLpl1VYc_QVfqRkIEmTI
X-Authority-Analysis: v=2.4 cv=duPWylg4 c=1 sm=1 tr=0 ts=6979fea2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MuuGkx7wlpy7Zk09e34A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwMSBTYWx0ZWRfXyeIcBnPP4CTL
 NsP4lCVTbWMdSNOxcGTWcoFB4Gx755SjK65mnShdlYk5q29uApF6D1tueyvjvxKh2BbCLBJFlCB
 NM0ol9Gy2NhHH/wyk7CeIoHYameG5f0O7e5GR2ZIPQKILr0Y+NlbfYWCEh5pg3YjaZvTCioRCnj
 b4ut+OWhklo4T2yUKbVkp6RzleXgvNdd/c+PrPyyhotV1kpioISTSoLCoSqseQJyWqkrH3EVaB5
 1C6bp3A+HkvSVQLKSF4YTrqIfy8EEbnvXRvHfTosm1jCJIa0wMLPtQbHw8wsBiCDdCAiLtIiLRe
 naaGxUvhtPLp62MvDLad7E+S7rNAAl8PTh0fhriEd/MNG9Vgpus7StLIbWgYpqkXWzQcYhEjet8
 5zbxvJeHHph6FR3087qyDynqWs7i1rSBugyP9laIODx9VVlYrdJjAG5UTh+bdERfrkySgqwhPeW
 W4i9/5tgXiweEo3sNlQ==
X-Proofpoint-GUID: RnBFaAUu3FU9eLpl1VYc_QVfqRkIEmTI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260378-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 693BAA11B4
X-Rspamd-Action: no action

On 1/27/26 12:43 PM, Mukesh Ojha wrote:
> We don't need to use zap shader in EL2 as Linux can zap the gpu on
> it's own. Lets disable zap-shader for Lemans EL2 configuration.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

