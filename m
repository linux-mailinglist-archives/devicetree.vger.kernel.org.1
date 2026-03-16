Return-Path: <devicetree+bounces-276089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CFOLL7bt2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:30:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D387E297EDB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 72A0A300D57E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654C138F644;
	Mon, 16 Mar 2026 10:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G6aV0x6a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DzasGIe0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BDD38E124
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656970; cv=none; b=fi6xKrFl+fgEdYXDrs2ajQVjKw+Zg3ZlLKYJb1LZxur7TKbUBTnzWAcM47Yu+hhZooGmHEkF4eaHWt2ppiL4Q+TdXQUwyhuS2nDeRUAmK6S1Z8hE43XWcqu9aJjeSELtwp6Q0SKsIRbyfjRRnI0GOoQYjQ0IAnutGnkdP7l3nmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656970; c=relaxed/simple;
	bh=sinyi7GmNx1mY7QcKno1ufbgfnuVSamjAas3mDig7QM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SbuqN8h6cwJ5nAwE1hZrJ2jTP0jZPrlebVrExl+Cq4T/fik++oa+0efp6ZhG6YbmpiMaL0LLQVJZibbpBY6rhbvTGzaL06+M424DxNmpqT6Q1nYel1o/oiHCm5J27AnGTjfilnB5Gc9lwHk4LbqjEytMVMnQ2zp6LlbDAGnXKUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G6aV0x6a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DzasGIe0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64huT1724717
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:29:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1SyIK5mrij/+PqCxigjEeQmg92ExBxvCySG5xA439Ek=; b=G6aV0x6axHC7xP9b
	tEyrqajS9VD7TDEDv43Rb0nvkVZGF8pUrIlc4Zk6ieV+slRyBvyxyW9pWgEk5HUm
	vCbGDH0NTBcDvKXudHf5Cg2+qWymTirlODrBtKKqikT3pI8ASzdydwrzUzTLpNk8
	4QGWWtaZFtoOPK7jTW+jiv5RhLj8uXLvf0B1Y7GnJtzuktWv6869gvsk1/M1fc8z
	vEVplgikeDQ3sdkPrj0ntKHV6itEgXQC6C3tmDW/bMDULWJSPbEXrZi8ywSn8hvL
	BTjHNcXixfDQWcF7RkUpQcX/6m+D/0rf2rogXTnUNZzyk9AfYhzhG1ASe/nvA9M2
	sRe7rg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udn4ss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:29:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd8e89d19bso300038185a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773656966; x=1774261766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1SyIK5mrij/+PqCxigjEeQmg92ExBxvCySG5xA439Ek=;
        b=DzasGIe0+6QtrCv+Qe2vJjiDYVo1WoWyHkAl1hsNzC+jrIYJgC6tary3Auro7vpYG3
         NaqTqBJoiSyPacIBtYDKjtBLV7zDwxY7271ZHOZ2q6+dtbmGyebM+a5KfugzLIv9JS57
         lhNg77AQC9T+jdVB+3rZk+NdDItj9yJqsPdgJ7itItO6Qve0BLhLxLOxlZdDn0ZPxpTI
         jnGSHt/2ueo4sP1jJ8PTV+Ox98b+HA8WU0aILOgNBuXwKMrV0IuYj0HRW8g5+oerycjf
         pv0dFaYqpiWkhG+/xz6/Xgh0dleu4sTAc+UR/oo2xrOPpba9WcJjjQAKixuvZ8FAkJhf
         p+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773656966; x=1774261766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1SyIK5mrij/+PqCxigjEeQmg92ExBxvCySG5xA439Ek=;
        b=aYQuMcMor8Jj36OlnqxVB4ewX29erRolP6M1x1LUDEcNQskZ+Kd8QklVkjsxKQgL97
         rdiiEC2KuluS1YL3ZXC6H6uEOyJ1CJoEnOfUFb5SCrQivDzKP9QUm3Iwwm5mHgodYoWG
         F9fTN59V2eAOTYWJOhXmXC6ffBavANGSFUT9j3mgixyYpkIN6TvTJdDlk0C43Y0Fatgv
         NAiA0yuspEm4KtXlw/+stJfIR7iL/rkFW2rgo2yh7SV8giBUP+znNefFs/VqGdgleShH
         Rkcqd6kS4cicqSog0/JaFP3JbLB4ctCEnkJEf8aqF9bZys/Ie7oA3ejMNJx+0vVp133K
         ThVA==
X-Forwarded-Encrypted: i=1; AJvYcCXtzQW66hZtfFD84Wk4nu4RMIAU9c2yhhrOQ4e9WjG4HwdFNBthzA6GYW5tCh9M+R5cp0VJ9gTrRxLT@vger.kernel.org
X-Gm-Message-State: AOJu0YxSg5f1ZQbVAcacY6Z3t2pATZAhGan6egoAVvSdXhNkMVZsgiyh
	Qf+E4CQ1Y6v4xlFGtt1QXM5A/G4jHbR8GkcsAzbTHryCFs+JMPqBdXsMWPW9s9y0WUO1aTp5asF
	GlYUtSVRyzkbUUmVodYzamnx8/kJhp04fAjSdKm7c6ot4jjlHodg1sPXtALm85LWS
X-Gm-Gg: ATEYQzyvsmCivD4YCrgnHBXfcc8txEWnm1Wt6xELNbYi+U1l7sSn//vvvKoMb8fAQPA
	txrb/yK0D+daJNmup2KZJQudm1c/xQVyB+nKFJ+tViG3hf7pkK2kOwohBOt6J8CB0SiHsCCxmep
	rBMRsocEUk0cXqxja/s2yE41Ine9yIpbQyzS9S1Sbrl5/CVf84Do0ak3tMZqnDE19zZ6BhneVq1
	UMlMjhO3xbAbwtMbGvmvwFYXbT4GsEjRh5QA4n9DXNgpubzlBQF7lmn8Mc9uVfxveo4p4++mw2d
	F+HLpDh/RMFemdG0iiimnaqCstc6EwDlV3UMVo+36iF502qlW78xDPBpzv6Sm84ZuuZRVpkBc7v
	xT0cZjtnzB2IFzX/l4MOKKRteWGpqgd5yDyvjcfTA2gmoPs7VMmwxTx41xkDaEZUtQXOr0altr6
	ooAtg=
X-Received: by 2002:a05:620a:4113:b0:8cd:9828:a7b4 with SMTP id af79cd13be357-8cdb5baac4amr1112215685a.9.1773656966462;
        Mon, 16 Mar 2026 03:29:26 -0700 (PDT)
X-Received: by 2002:a05:620a:4113:b0:8cd:9828:a7b4 with SMTP id af79cd13be357-8cdb5baac4amr1112213485a.9.1773656965884;
        Mon, 16 Mar 2026 03:29:25 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350d80a90sm4876205a12.32.2026.03.16.03.29.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:29:24 -0700 (PDT)
Message-ID: <aaf2c23c-2c6b-45e1-a2a0-096249ea0d44@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:29:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b7db87 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=sGNizEhdnyv83XcJ-SoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: BPqu82yvKtwGRJ3AyCQruuD7Czd-sv_t
X-Proofpoint-ORIG-GUID: BPqu82yvKtwGRJ3AyCQruuD7Czd-sv_t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MCBTYWx0ZWRfX3pGmYMlpjeWR
 enp7o049FJ8qf8dc3LmLAKhYCWldL7HODid2S8yvOMltVApZzH9AcerUaTJK8dYEPFCojXWR2bI
 kWVStFeo7coig5Np37burfNbFQUQwZCDAyxBfGAVCC/N6f3/mXnq8/zU8m2kE14AZ0CKXsuwhr/
 E9sSz5gySv49l+ZiIOxEKSCVQ+yWE3/SRSTRtLoNBCbpmWRwKSOvVBLaeOnM3ruJnDbCoczZjJi
 kpPisjJacp87dqwETHhyuj9pjvKAhMJmx673NX5uJG3PleHQSqClg3QwrhPD7jPQAZeb2lC9gY0
 8Gui1ySMS/Yn8Lk8AM5T7oK6/Q6uV+aTAOw0NllFmIgk4VNAcKBlgJC5mLeH2v/OlRmHkd4CKC4
 ntGUGNUo6d8EZzTSoP/G++so9wzyXHdXVcz8OTDyTfkH0rT25Rni0mXpzXgqn85gNgg31rrdSce
 oCe9cH0zQ58TahfXMfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160080
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-276089-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
X-Rspamd-Queue-Id: D387E297EDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:29 AM, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
> reference boards. It handles fan control, temperature sensors, access
> to EC state changes and supports reporting suspend entry/exit to the
> EC.
> 
> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---

[...]

> + * ------------------------------------------------------------------------------
> + * | Offset		| Name		| Description				|
> + * ------------------------------------------------------------------------------
> + * | 0x00		| Byte count	| Number of bytes in response		|
> + * |			|		| (exluding byte count)			|
> + * ------------------------------------------------------------------------------
> + * | 0x02 (LSB)	| EC Thermal	| Bit 0-1: Number of fans		|

qcom_ec_fan_debug_mode_off() documentation only mentions values 1/2
to be correct - is that the case?

> + * | 0x3		| Capabilities	| Bit 2-4: Type of fan			|

What types are there? CPU/AUX or similar?

Konrad

