Return-Path: <devicetree+bounces-268632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBRPOobzn2kyfAQAu9opvQ
	(envelope-from <devicetree+bounces-268632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:17:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 266E51A1B80
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 73C423007B20
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB51538A29A;
	Thu, 26 Feb 2026 07:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VFCyxMli";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DDcYbaOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE0E287510
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772090230; cv=none; b=ty2cr/BukMzgD1cCasrPlG1uAvtvRVtqwMzowALCGX/QGgfgy5fH/2rdG6Z7EF7UU+zPz/L2CpLmEAsGQ4sNXtBstgumj/pvzBrc7XHkDvyB2vQ3whQ0oPs3nyugNjDMS2VIYoLaR70LXojqhSHoVM4hyu6fOaq0oF5dRt7vXpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772090230; c=relaxed/simple;
	bh=6flWQk1pbvip657GBRbmRqdpWp/h2m26/hw8m23Bneg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A/BuI1vS21M+b+w5xfJenWJayCodDpREi6tE3Swxybscj0hitFbYf30hq9p63vYyuSlikf4zSTkHgezmBC4dj5Qj27kfAxovzwd92bjGnL36TfJE2r6PQqTOjqRtyK+MKRLubE0P2HT+AUQ4zybOGxLnaNbKNkaEGBfWA3LoD1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VFCyxMli; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DDcYbaOr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VLCa3721912
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:17:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lKbvnaLQduB8gYlpWeE/F2TN
	m9PMqhpsjL1+FKOfaJI=; b=VFCyxMli2s6Z6qUSphgCxHbwh0jZfT4IPzJBqsi4
	uAJ44iecO4f3hOxqKtNXeg13jgkVWV4kTjS0RFlpBX4NI/3s0dtNne5rYqSlMakm
	Aoxudpc3FQXSOfV1NPu7cjRHEPycq6rv/KnNA1bo1fEQvdnOgULkJEMp+A0//q2U
	1czofjH71cIoHFNJ1lhb8Qhfda8Dp8Lo+aNZnf8WsrliNsNqTf6m5UFmj3OdOne9
	IAQM3DTxEnVbITDYvxBkFPLWyqjbW41ZfCrYgaVGXUVfqKgJ6dSUTMMkMo+3orRC
	KnJoNPc6H90M1A25SQFniXh7mBEMLEiiTQhTRzPoNTs3oQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyvf3aad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:17:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso442972885a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772090228; x=1772695028; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lKbvnaLQduB8gYlpWeE/F2TNm9PMqhpsjL1+FKOfaJI=;
        b=DDcYbaOrvkmW0uGU+KW5MSUgyWVA0esQ5S1VXwqUMM1Chvn7x/SEsLl71xGr9sao9k
         MCQvnS5wf2k2b8ufhtici3TapBxg8sBulxNBkS6qFGQWQmTqHRnKwWcbFw/5ZSAhvWza
         wCZTigCwJPrVoDvZKM/sT53amSX8N42/IG/SEpqCBJyxqIWkynyWrAECaFbANKuy4xP8
         GHc4VX50Y4aLyKW16dBv37SrqRD5kL9hsCe0tYFX9CK5DUCxgMMuXgReiF5CCz+gyTgE
         f3J0Gf2O5+z9hDQ9pS29P+wHrdMq2/ZGJRcYq01XkMxjFg7K5PZkeJNVqZ04WXYGdKG0
         mjeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772090228; x=1772695028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lKbvnaLQduB8gYlpWeE/F2TNm9PMqhpsjL1+FKOfaJI=;
        b=jLkVUB18UhG7ETpckgR0l1B1fT6yQLts6ZTRWk7Q91WQ7n2b7kOMvbQJuff2CkArjI
         +xGYC9rEpC38xTC9DfaLdjq1jFsu57QIe9pkDK1+EqnMqcrrEX8GG0sIsGLKJrPfBU4b
         Lb38ZpNimVFuLu0/j4hJU1HMrV5VvWUWzxRtDbbcLUWklpUVs5WPZXNdPjkjDDZBszq0
         iE4Y6rpxxhRNB/HFWcBiIxlbckvl2pqNS+T2cW73I1WMCkhOavO0YI0Buoeb+eEDp3to
         rTllTt59zifAmMnOLd6hjARHa6MLH51dF6KETGwy22WuR89U7D2/IjUd6Ou45TBSBz/d
         K/7w==
X-Forwarded-Encrypted: i=1; AJvYcCU05hxuVtApeVx8ENqOev0+XAKpwNCnMW17kRsk85Rj8+OvR6MIToxmO+zR3ofTZRxDXAk+M0ZBWSi8@vger.kernel.org
X-Gm-Message-State: AOJu0YyyRCZy973OXQHoF+q7R2ZAjILoUfE/n562b02g7CHDR3oaK/pW
	SXyuM2ip3pWb2V+DMfOLNmKkKRKmeghm+FMUU3Ua5HYpqf41i6KzAnYfVWNjinD8/WGdI8YH4fh
	H0CsOh19vA8QcoO7mqGIU5+GeZpWe/4KFHqYTaGMRp/LrAFzZVeFN/2Z2T2BGTIgz
X-Gm-Gg: ATEYQzwDspGbDCPkNSi4/TJggAijJ6CoNNuLxOaQAH20yq8ALb47m7cE9YS5FRwKENc
	CdNbK03d+jVdJzxN5SAn8qzFdr7LgzmGeXD1Eoa+Hw3SpPCKagaxDAaC7LUPNTznGi9ZaVNtRZo
	bRu/UiW9dJECv3wVcL+j50/3bHNY1qFif5q7sRL2nvGOu7PG0+yHFLPrmCj4nhPbJaUUf3DEt6g
	b8HXXi+zhawCvV88plyHWlDVyQvq7nAI9XhGMTOxvqKpTOcpkpJMI+/RcH1u8adVKHyKim3vq6n
	x4VLWdA8M4tYcMwiUzRruNklJsEebaQlKoaG45CusFYg7rX03LFkWwwJgUmaJ/wEiFwIXflyTNq
	e8KiCH7yVj8JkKIX8tQfBVFEavKhloZQ+e91tiY7OXFdka6qCG5IoEYAKpbg+y5z8SuFADizjai
	0Qyvlqgu6DBmCpr3f/DrkuL6fqdb7FkQo3bEU=
X-Received: by 2002:a05:620a:4445:b0:8c7:768:3b0b with SMTP id af79cd13be357-8cb8ca82866mr2343524185a.65.1772090227546;
        Wed, 25 Feb 2026 23:17:07 -0800 (PST)
X-Received: by 2002:a05:620a:4445:b0:8c7:768:3b0b with SMTP id af79cd13be357-8cb8ca82866mr2343521985a.65.1772090227085;
        Wed, 25 Feb 2026 23:17:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109e01175sm484303e87.51.2026.02.25.23.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 23:17:05 -0800 (PST)
Date: Thu, 26 Feb 2026 09:17:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nikunj Kela <quic_nkela@quicinc.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: add initial support for qcom
 sa8255p-ride
Message-ID: <pcztlwz7nxbvkm6rsbpot677k47novl65waimyfnptcuhnklxq@v5ncarkpnedy>
References: <20260225-b4-scmi-upstream-v4-0-50cfba9e6a0f@oss.qualcomm.com>
 <20260225-b4-scmi-upstream-v4-2-50cfba9e6a0f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225-b4-scmi-upstream-v4-2-50cfba9e6a0f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Z0aNf1peNYIDW6ijWu80RuMaJcLMldRD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2MyBTYWx0ZWRfX7UYlSPBXLu/2
 0qlLBcoQ4Vf9sB2k7Wy8TbCg+lp3vGZ4JP8iMAhsIE0ADBhce4kVL4/zLUe9juDuyrFuQiH2kH/
 P2Xj1ZQB9RcFR9CwqMj1F5qjac64aE8Pbk2AXvSDbWZazlGPc6ds62qYjcchyJ1vhVS93KK2qzQ
 9fGnNNDXP8ZmMA0Wp6cVQ9EQ3/nU4msEb+6WgWj+dIzUK4TWQsUli/+WIck8iu3mSAFCURyQpuX
 hpYSFYtfL+iGUBjvl+3O003bHOOg9tdAB1fZp9gb9JQhM/V0eWWMbSepVr9XOZO/VGXPcBrPHaM
 qL59zWy+ldQfgoI9MRgsWeelC2ZgRw9A/koZwYRCuyN4sjEeedRKdn9CBxVCSLPgzXnKZMO7AC4
 xy24hQw1McRp3+FeIqFmXUn1vY1S/segpODUxBM1sXRjfAg8cu4vmbhOaQ6onMEGXNVGdNuV0rC
 dwPt4aktPVYxrmweOPg==
X-Proofpoint-GUID: Z0aNf1peNYIDW6ijWu80RuMaJcLMldRD
X-Authority-Analysis: v=2.4 cv=dZWNHHXe c=1 sm=1 tr=0 ts=699ff374 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=y2Fza8mD_UYm39aNRakA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268632-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,linaro.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 266E51A1B80
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 08:51:07PM -0800, Deepti Jaggi wrote:
> From: Nikunj Kela <quic_nkela@quicinc.com>
> 
> Introduce initial device tree support for sa8255p Qualcomm's automotive
> infotainment SoC and its the reference board: sa8255p-ride. The dt files
> describe the basics of the SoC - CPUs, CPU map, ipcc, QUP,  geni UART,
> interrupt controller, TLMM, reserved memory, SMMU, firmware scm, scmi,
> watchdog, SRAM, PSCI, ufs, pcie, pmu nodes and enable booting to shell
> with ramdisk.
> 
> The Qualcomm automotive sa8255p SoC utilizes firmware to configure
> platform resources such as clocks, interconnects, and TLMM. Device drivers
> request these resources through the SCMI power,reset and performance
> protocols. Assign each device driver a dedicated SCMI channel and Tx/Rx
> doorbells to support parallel resource requests and aggregation in the
> SCMI platform server. Operate the SCMI server stack in an SMP-enabled VM,
> using the Qualcomm SMC/HVC transport driver for communication.
> 
> Group resource operations to improve abstraction and reduce the number of
> SCMI requests. Follow the SCMI-based resource management approach
> demonstrated by Qualcomm at LinaroConnect 2024.[1]
> 
> Limit initial support to basic platform resources, serial console, ufs
> and pcie.
> Defer enabling USB, and Ethernet to subsequent updates.
> 
> [1]: https://resources.linaro.org/en/resource/wfnfEwBhRjLV1PEAJoDDte
> 
> Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |    1 +
>  arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi |   80 +
>  arch/arm64/boot/dts/qcom/sa8255p-ride.dts   |  161 +
>  arch/arm64/boot/dts/qcom/sa8255p.dtsi       | 4861 +++++++++++++++++++++++++++

SoC DTSI should go to a separate commit.

>  4 files changed, 5103 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..facfe99c2d97 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -172,6 +172,7 @@ qrb5165-rb5-vision-mezzanine-dtbs	:= qrb5165-rb5.dtb qrb5165-rb5-vision-mezzanin
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5-vision-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qru1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8155p-adp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sa8255p-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8295p-adp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8540p-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi
> new file mode 100644
> index 000000000000..394f75bb376d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi
> @@ -0,0 +1,80 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/ {
> +	thermal-zones {
> +		pmm8654au_0_thermal: pm8255-0-thermal {

This file defines only thermal zones. Why are they defined here rather
than in the board file?

> +			polling-delay-passive = <100>;
> +

[..]

> +
> +	arch_timer: timer {

Unused label, please drop.

> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +};
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

