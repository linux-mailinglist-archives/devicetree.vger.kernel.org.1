Return-Path: <devicetree+bounces-262626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CnfFsc7g2ngjwMAu9opvQ
	(envelope-from <devicetree+bounces-262626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:29:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC96E5CD5
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:29:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BF1330440AA
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EACF3EDAAC;
	Wed,  4 Feb 2026 12:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kURDxo4b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XVlUIUMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC3D3D3307
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770207965; cv=none; b=QSIFj+qUaGy/KQiCUrjphnx3HXIqy62iszkUqHN5hcbiYiNp86iX0HBZ1lCwlvHY6zSv/84HdTQEzltXwCO9Zw1pSKtDmZdIDj/+mc1LOpoVhFZUz4S61HGUcpimRvk+5B2XPsRYudbXHfj7r7DuBZk+uby+FY3CvQRGLLFS+fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770207965; c=relaxed/simple;
	bh=DOMXO6Luw7aMAUULKOe3D/L8ZURykxphlLaEK2EO/Ww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o8ha4OTZr4ZyYevCeEKqDPOdXNezR3E67zG/fMdns+B2i+yVqBFKVRyScrpD5H+fBzyCHQJPZyRA9bcTuSMW1MxXR6cQx7uX8LQqJEC/8QJZc8/ZUao+Vo7hVRzaSY653uVVdHiRMkBo7d2e6LQqKnZQsZf0B6Ps8yUQ9S3Sac0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kURDxo4b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XVlUIUMd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CILCA898830
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 12:26:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	krXrChzNGJk/4lgJGzIO5fFWAQmjQI39ECb/acG3dfw=; b=kURDxo4bg8jhDYXp
	v+AVJv+M0WzwMExA4ExCauy+EQSjY3kdoc5MIL7WfPo6iNYriLKTkKhRB60ujU3f
	GZGGSxgrbfakU/ihd+Up+BPIbrGrFjxiAZnpAyVrnZSx5uSdhIjz4XafTE6YXbTv
	F86K0giF+7ShmejoxCq3fwkabpNQ1ABwGEwMFImbV2EJoAVc7yE66gNDT1EsNSMW
	7VsfJ20hyRJsUI8FZHC1f5rq5LyU6qb6QTL8JhSY7PY97iy7ZOYAxifyql842VoI
	QxZc5Y5KVWXaq2nb3kaiJvDKxBKU2i9pZWHBtYTPd2Q/+vwMJZ4YIPhnSOQ7Lwj3
	sYLSIg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c445wgbkm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 12:26:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c710279d57so187636885a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770207964; x=1770812764; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=krXrChzNGJk/4lgJGzIO5fFWAQmjQI39ECb/acG3dfw=;
        b=XVlUIUMd8iQQf6ySCAt3DRySaQjrQi/v8eW+t+z5vnB1vb5J4tX/QrJ+sLua6FAgro
         hLatkDNFE5fKQLF3lfxTNjNCxDLa0ZLXDJvAU0EKOtNt2gjsC2cpAeWSak0SSeiB5E8O
         5ueKinULNYb79nkjVOWDH+l6MaAxc34MRaAJR4eRPEQDMvoR32mxTLh6jIemyxKbHQsG
         rZB2179DpJfxd9Ld7+q/TonnpB06qYLmAAnFGkj27bK6+GOql0aJoOdfNx8druFuzAon
         dcuvk9sEGbk4w1u9KVrX0OIBaTO3AXn1KbrINYZHjhe+hlFbV51Gr8LxXn53EN/Mopnl
         xFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770207964; x=1770812764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=krXrChzNGJk/4lgJGzIO5fFWAQmjQI39ECb/acG3dfw=;
        b=jMskpBrhN043W7F9yQUG26bukGRj/W4h6AfRhLlGVKBwEASwxHC+6DbOmNRsfrU9Oj
         dk3WMS0yz5+Bd+KQeBS8Q8msV/O0ovnCT6hSFaeT1PiMUn2zGIuBNixo3WwNFQPZUwKW
         oBKjB9N6opWcUD0b/maDMNfM/XVRiO1OZMLV2J5vftUzPlQsP1DYv7wX0Kwhr1/92OHL
         bJVYsMyillPGHN0O1Bf7QZyM2eGKt9t0q2FDS9eM7dYqjBBXsWcYg7d9uI8erSOrMtOX
         RIaC9zBRyI4h0lpcM4yJLb/Zrlaj4fnvPjzw+IYFiM8GmzJ5qld6I1yTLogVxUsXUbFX
         ztGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkREarA1dKT//GCGKGDMT2HBkyRq3WDu4FId5+JZ+oiBXlBL/yD/Cr33rHFd5M9pnj+TJu6FrV6CeU@vger.kernel.org
X-Gm-Message-State: AOJu0YxeBBCtNzkxN7LYxQrhaoDwt2vJivrUxuD2V2SHpg8xhnRQ57l1
	v9TgzU2DFPgWcmmmzsB9VWPr5CSesV2RHr+Z/By7EZ0FQvAo8hq/Wi6Bn1FWgtdUc5GZxuH9SLl
	qC94gs+votvmNNVm2KZrLQdAqobUgE3vWN3IUKCwyETrAomiRZCrWSpvsKNKkDcLW
X-Gm-Gg: AZuq6aL4kD7/duytauxdE1Yix92BPcI7FoFaV61i4oasPsV67/FC6b/iYqhreJ+X2BL
	qs+V861fbXulgeoUizaWmgXtfZvrDlKLkNUjnvhr25Rj/PEKchIi+BjIsTMwXwNnJUpQnUxtkbP
	xHjaaOTncw1cXacCGI1VFrJyn5qFk0gXMGACyZh4w/dmhkY8AMrYphHltvaO6wh1wbUKvOaFkSh
	IsFPJ9+QishLHgZBLOJ8gF1PjeUUIJp2JJmzSXhjmbdKSDmv8qZgreUlI9Kko2gJaOs2XZTG19q
	H3exeEnW7vsSxYxADnJk/MxKzN1BgIVl011kHaGRceKeptq65EnHDeVwEDx1unqFaQJxlO+tZbl
	LlnaNjnvvu+hjTj+brnxtc8Rl+Hq5efYr/ZXTwh3pIuLPsjt7+jd47VaWpCgy84vJGO4=
X-Received: by 2002:a05:620a:7105:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8ca2f82c982mr271706485a.1.1770207964068;
        Wed, 04 Feb 2026 04:26:04 -0800 (PST)
X-Received: by 2002:a05:620a:7105:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8ca2f82c982mr271704085a.1.1770207963581;
        Wed, 04 Feb 2026 04:26:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fef0ef9sm118947166b.40.2026.02.04.04.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 04:26:03 -0800 (PST)
Message-ID: <6f57b23d-8716-4fc1-b1ad-a44268e62663@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 13:26:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 6/6] arm64: dts: qcom: ipq9574: add pwm node
To: george.moussalem@outlook.com,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260204-ipq-pwm-v20-0-91733011a3d1@outlook.com>
 <20260204-ipq-pwm-v20-6-91733011a3d1@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260204-ipq-pwm-v20-6-91733011a3d1@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA5MyBTYWx0ZWRfX2YSnJYTeqI0j
 lsuDHAifRwmn8DfgJsy2EJKF3RQjIYjzShd9GEm/3d+s9hM+RRItSvRU35zKoSw9qxMRZcC0tZK
 GPTyntV05tW3tUouFzrjL03Rnt0tNA7biDVIIKwt6cFOz8qGR1z/yG7q0wrnMNch6L+8/+HiYUh
 J5CJcld9GeaRcm512disYR4b0m8i79Q3GVmmDV/zU7f2XkkwqheFGq+lS4HD0omQm/dJnmSTmEq
 W2CVgR7a2AmyQtYtQxuMxtMWYz7eg6UUUUtJQchF1YfoI0U3DV7pR7UzDXqvFu9KtHod2Ec7wtn
 cRxwXZRFo1XYkI/cIAnmcWMML7qEZzZPtC6h/KQNm/JUfEXdYZyfSi2r4Xk5IPvUbzqrF+zUu6a
 vHVbjo6/h38sIjCbFhbjAsJXPJeqpDQIbGv9EIwhg6Ru1Uqxl10YNtm3+8xLRoc2YznAJg9E7fD
 2XX5IC99cbNh3YnJZQA==
X-Proofpoint-ORIG-GUID: mskUUeKeSmUR6ELykGQnn-B5DgaKcFrD
X-Authority-Analysis: v=2.4 cv=GvhPO01C c=1 sm=1 tr=0 ts=69833adc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=THxROjQVSa7aAfmVI-MA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: mskUUeKeSmUR6ELykGQnn-B5DgaKcFrD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_03,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262626-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,outlook.com:email,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[outlook.com,kernel.org,tkos.co.il];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AFC96E5CD5
X-Rspamd-Action: no action

On 2/4/26 12:25 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Describe the PWM block on IPQ9574.
> 
> Although PWM is in the TCSR area, make pwm its own node as simple-mfd
> has been removed from the bindings and as such hardware components
> should have its own node.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

