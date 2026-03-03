Return-Path: <devicetree+bounces-270797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id G9beJwNop2kkhQAAu9opvQ
	(envelope-from <devicetree+bounces-270797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:00:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB421F83C0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F8653030EAC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E6A390238;
	Tue,  3 Mar 2026 23:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WJIqvp9g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="areCwi88"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0A6388393
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772578809; cv=none; b=frkr8mSc6DSMoYW5K5J63vMv8lGXTN5I/qJ1fxlEGnhQPHwgz6O8vCpQLNTh/EEcYrQbON3yojoLqs3CMDyJ+9KymjyBdY8J07LxASJSKsSt0tGeem56xlvda+41a8OUASatTgvJrYyOvg8AOv3D+37NqXRkbTMcOYCHiDW33LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772578809; c=relaxed/simple;
	bh=Nhrqoiri5fTuZmczsSl6y0eI3VbPPuVRJfwl1ZSTp8Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rFgDczips7ftEjMFzlUMDSCHG9s8yFzEEtJJOSSHARJEohnvQ6Lp0o9bW0ZXqFe2gR4unXHF/AaC8PyqhBaRE8OQK3N0EJQVgIHfiFvFrwkV61dN9FnEFCyHF63KjyG0R4ELaZX9Ryv4zMQyXbiEkJkOjfelgR5VFpQgTnzU/sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WJIqvp9g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=areCwi88; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623KTFmg4012087
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 23:00:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=exUThU/E91JvpjCuHnz7YlMC
	3d3F1b5wLUV4HfYBPC8=; b=WJIqvp9gyPfW1NAC1UP19Aprb1pEdj7X2trin3KW
	vXnzDQddzj0nzkD0+1sC+rTe6jDUvMKO89rOjy1PNFgRY2V5D4MROLejOvtIC5r/
	dPS4Ddlp5G4vN6wT4v6egKKWNh8F2nRyVbOJ5qJZ/AIEGWiF7BzFIdOjdR5414ao
	G8XoFXHoE/XR4yXceZMHKADGYQWitUDaRqH+7niUFCIi2Gucu4/ixH7y0A5pxZOk
	Dn7M7V+V2UmiWfJUfW9fgX7leSYWsdPN6ekP4vUnfrUFCIzMqTdRWLF+KONTTBiw
	TDu8jGjxBsCWXefb8edRhcZsM8DVkUfRTaD52m5y2Wv+PQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qg8en9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:00:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-503342386c7so96205201cf.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772578806; x=1773183606; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=exUThU/E91JvpjCuHnz7YlMC3d3F1b5wLUV4HfYBPC8=;
        b=areCwi88kgSrZXuwLFRuM3KsK2Z5xpXYii1T+hqxcKWDnpiafkBZnDbntdalikYlX7
         RHAuy1CUU/8PXwuxH5ZYMfQaUO1ViPn7wTtku3e5Pa2/bNpDN1Fl66vQJKUw0AGP2fPP
         DwyPxHxJs4oJ6fC8v1HeeOewJqcxm76bituMEtSnkDkLe24gShaPY+/lubjFxTML031y
         3rps50++N+LUtzep5Xn82eVC4+5SZqe/L5MrnoawvHObyCf/dTqwIhY20Q9psoXSbyMi
         rLI48rsaclhwgBeuJlYhARsK8I7RY7dwV2JSoI5HKg9iJZQXnzD3InqaZ/qKZPW9A1oQ
         g5Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772578806; x=1773183606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=exUThU/E91JvpjCuHnz7YlMC3d3F1b5wLUV4HfYBPC8=;
        b=ilFLtvLLc4cE/4GTpuIOMs2Mt7W81P56Mm4QBRoqA9T2HhLqKoc6ErjxxTiOV3syCB
         P78ZFZEPHBy8sBlBewAuEHhzyAijSRwXftbPmEtJDelY+V/qJo9zdcpYchCdDQekIcqr
         4oU82JrWOlI0b2ma6JjubUCLXKAlBgsh6bKrGGV4na9TJyRYsZm9ycQj/3X0BCSvOZrn
         bQPe+yUrvcugX9qGvMZNoFV8xDPZnoZ7EHy76Cip5olNLQbil8Mq+QP+3yw/d+R8Kd1e
         lFi/5V360x5Jz5vNg588qDKVKQjc/boMezyobRVXHP8LTgLPh38yLm7G5coq/vVBWpo/
         7Avw==
X-Forwarded-Encrypted: i=1; AJvYcCUgakj38mXHUMZdLxKC9trRqg4894/32zr0SdyKz6NoBmoz1fNork2eoVrogoypV4GT8eJNi6//fD8G@vger.kernel.org
X-Gm-Message-State: AOJu0YyAjjvBWT4CM4BjF/G7VIoD9jMvQSFJA2vx9RdBlipSNl9QUFNg
	oHv6qxei/H9kVUE49+cH9zW7W3CN13mAnmTBb2YzKV0hzFyV3sAziegND5yIeYwqoHxA9p0uUH6
	3H+/NmBjnNgaXZWdiQnMwaErb07gZqNB1V7HyvxlNxwEpAanWQTTdkMi1dK2Theet
X-Gm-Gg: ATEYQzzMX4XqwaaQ3WBG18Qk+qdWQP5upMqs744ELjnO+z7NLZ3hSd14wWlPbnNJ1fz
	UZPtRrgo5M6OOP5dt8zAKug8IwRQB1aiCPRD/pVWrxSCfQ69ZvOZRlMZ7Zq5emX1L4DshsqF4Mu
	ylGQV3RMOjGojULLAVWoeTnX+Q9rfmTwoRqBYEGD1z7fkNxgIDwU6JxrnoPDGLuFaWRBaUJ3jnw
	xJXHvHqPYG8mAvdkV4TA0CHKkJLXRz51bts9cZBi+BaudoK7oH3R6GzJruqfiSmQEeD7+xFPFUD
	F1IqT6TybSBlYPfdFcmRzPhRes7HFFNw72dddUTs75AXOz6FPooVtx08thCwKXwyArAC0rT0A0I
	kTsCnlDLO8EasTPshUpIrDfh1Bfy/r89DVBljO9hPqRo7dsgJYq/+jsA+NifZ/ECsz3iRi375b0
	wa5erf9YZo2ZGVXVC1rYpqc1g4Gu72bH4y/Y8=
X-Received: by 2002:a05:620a:d88:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cd5aec945cmr11421285a.9.1772578806305;
        Tue, 03 Mar 2026 15:00:06 -0800 (PST)
X-Received: by 2002:a05:620a:d88:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cd5aec945cmr11415585a.9.1772578805852;
        Tue, 03 Mar 2026 15:00:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f62a18sm35018471fa.15.2026.03.03.15.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 15:00:05 -0800 (PST)
Date: Wed, 4 Mar 2026 01:00:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add support for MM clock
 controllers for Glymur
Message-ID: <2heg7nzyu352sozxuufoz36o44mnnsj5uilbxmxu7j3izptywc@hwkdnrqciybq>
References: <20260303-glymur_mmcc_dt_config_v2-v2-0-da9ded08c26f@oss.qualcomm.com>
 <20260303-glymur_mmcc_dt_config_v2-v2-1-da9ded08c26f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-glymur_mmcc_dt_config_v2-v2-1-da9ded08c26f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5MCBTYWx0ZWRfX3tSRvB8HbrIA
 LYAowD8P9Hr47WhIbXEDFRbyfjZPXDFWcnlVUv24hW1E53Y0qBjfhMkzP0VB25koqL0VjXTnQlZ
 A8CmxgQwgThB8rVlRkxUNO8Girm0QrQ6F0k0TobyOgzHx3JWw0M8DH1rbEEuRVeEZ2trBJxHeN1
 R2W1DtgT4A0xEdGaE+HQ3Gida706gSbv4Ue01H0tHAKNvQAc38OljuXCYAMQ9YOe+csA0i/9Lgw
 KdKhJc9taNZrx23bTMndlyn72LXpVj696R5XYxXpRfNjBiIfKiOdix4o7Aao8bPA7/rcVJnCD6i
 rjm4do1+/qxRZF5+VOKf5jnKgxQyUAnColZXKmoYXF1KPSVjJo2MiHzbJMbdY9jORM3/Iwiz8oc
 wrLfNp6+IttSO3mDxe4NlQ2HfZ5/Br9uMJZHYs2DVBPSUcJI2kXPjS5SECgXGRjw+j8bZsSfZAk
 cqvmuDQF0LYJtzwagCg==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a767f6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=i8W7o3omJKFOiQ2jl0IA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: JtcisoGomTlkt6blW3nm1hC8JIaN82hQ
X-Proofpoint-GUID: JtcisoGomTlkt6blW3nm1hC8JIaN82hQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030190
X-Rspamd-Queue-Id: BFB421F83C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270797-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 11:22:51PM +0530, Taniya Das wrote:
> Add the device nodes for the multimedia clock controllers videocc, gpucc
> and gxclkctl.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 42 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

