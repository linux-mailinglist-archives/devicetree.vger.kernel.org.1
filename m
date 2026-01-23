Return-Path: <devicetree+bounces-259096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EebFQK6c2kmyQAAu9opvQ
	(envelope-from <devicetree+bounces-259096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:12:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96614796B3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 415D6301AB92
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8EA127934B;
	Fri, 23 Jan 2026 18:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dXeZdFaR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VQGS8IvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8918627B34C
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 18:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769191786; cv=none; b=nX4SnLwGwn9FKrCxEcfs9LExF+/3BR5Vm81Avx5xojnrY08gD8GX1kiGgszFD8manC2X2RPFm2nXbansNkOFut7ceURUSTi3A+xwhM+sZs6GqHQcIvlwECPBZMvfXSc346RzxQXlPhj7RvOvnJcjni8nvvIerRcAATuLkwlWd1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769191786; c=relaxed/simple;
	bh=UmpgDaqMmuA1d5xjVQk18/9eo/pq/kjjCicQPBER57Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=USM0w5u5XcKj1Illv22/SiK70QGJOXNr6iEGGdvyP1EnI0zB2lEwdUhSzCGDLr+LRlfFb6YNAY2472pL2ZrKT9eWMZfu3BIdGzdvgpPozzhVAbmGLcqIMwD/qAWregINXjShlMUy0/suOtfJUMj5Pl7RdOw0qJmJeGrnoco41s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dXeZdFaR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VQGS8IvT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NDB4bt1325104
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 18:09:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3J6R/IHRo1lfasReXQRfqIfM
	/Y059dMwKKVWyuterIs=; b=dXeZdFaRKnHBWpW3y97EVXESskCdmob0ZBs3ggTP
	VtRo8xxaaTdJ5gFSgisdxrvK1DjWEgQGG7xkbMAhSzSIv5/kaQwvgfDQSCcd8ND+
	79iOjdBu9R5f7q+dYdqDQN0FSTapjv7xPLa/laOGFt42fdbYLbCuSuiUIaKou48+
	nDZNOH+FrPKHtDdtcqyx51bKnZx223qws0/R7E/gjPukzhdb6LXfwFKoy0KpFWNn
	G+SYEG2rPjgNzXalzLAkC7AYcPpTyaHdgvdsQ3Uzl9nvGfT/0pTBDeQNF6B356BN
	QGg+TFJ6bT6G3c5GXIVaWMejJEmAc6wNzuIz3j7oWJvc/A==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv44caaxa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 18:09:44 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-948378f5fe2so1780210241.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769191783; x=1769796583; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3J6R/IHRo1lfasReXQRfqIfM/Y059dMwKKVWyuterIs=;
        b=VQGS8IvT/zjFJgYXGjoV7p/VYCxoHY2GvprBQS91XfW0p6ZhfGjCqZ50vcvDHNI/sz
         Nr+EGvsWhyvyOMpv0+fiE3FxduWl6LdvnZkva+YdzSSsSin8YU9OjFoXkxLL6HHOmXtb
         +d4HnlGvqnwbpSblgW1VjTRiFXgEu7VLgOhWFnzZq+ZDFTUz6AXPYuAPBBzsqKyvLZgz
         bKmhIvLhHcTozKofCyNBoA8+9nc3A5RaNyTathhfDXvCR1MMzWOxOnBov5XoEWyU/W7G
         j1n6fD7M2onD7yTPmPG2e8f4LqNKuwG74n/IgNuD6425uXHCD5dI8yuAFMw0WCx7KBU9
         80Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769191783; x=1769796583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3J6R/IHRo1lfasReXQRfqIfM/Y059dMwKKVWyuterIs=;
        b=rogK+g4pUJ6ZTmtvyXmlhdkPLpHnyMNp1pvCTNFE9nAlPKypHhNoCmJqpkoPJpJgsx
         1UklghjcRy7qadUZtL8zlwU06Gw5NH77YJ+uUljUfrt0BKel5evEwkzQPSijny/sB8og
         9vAI10tWZCF6Vl4p+9+esLwCxilYggodsM4+GVvNiUPdXbPRC06nG/KQKr3y8Cm8TM1K
         wPL/OcMr7rVixjw0+fZXTOBYwisGsmaemtObTZAqwzK8XJmXNFcmXK48APqN28lq8y+u
         RxItuVLKqC5QYv/+MRvOz05DyHqLgHlPnWfIVwOrXhoNphIbFkMt8t55p2NLSywrLIjh
         28xQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeCJBgxhZ1jdPngPKnqJlUxRBIAhGQppYTRvM2gunUi5CEy2x2Mmj8ReBH8geRF5tXPtn/mIaqlAxh@vger.kernel.org
X-Gm-Message-State: AOJu0YzvEn8TycfDWYLZA00hxdt3yya4NQnZo05jp+d2taMFGuvOgDw/
	ygvcSyYcMv6EyycKz6EfPeF5ukCIPw+Y9N27lIvLA2/2EMIYkFFEYS6IAjmoYSjOHUCNT+R/MvY
	57l/ayXYGqH3owyP50mqOtjLghPD3Pb6NTD0uACrchtFfm9z7GDxUt2XnucC/mW/D
X-Gm-Gg: AZuq6aIUjGCwpNUwnxMkhHf7/2nCcJSIf2NSG9ojYR6ECzZzcc11XsOE9JHNywgybOn
	AHMVxurk7Ld0CfuAjLPLbiTGnSMc/aF0+MnFuhE3HZUApZqGGu/IibU3ecmpkx6SlwwW6yjmOGh
	q7ML22uJgrr0m/xB6gyCIfODh4O0kbqWZeREzGqqte90Ky3gvnZZItElXLJ71iltOTzonnl47vT
	GVfxB+8T2vc5exqTpZfNiUZfUD5F5jfdkoXsfOPoqqJ8JPilhme9mCEgv1O4poU4Xw/gNhEuOs0
	112ovfG8NgLQQo3YH//Dmjp1Cbl4jahYAHlMuHR8mDyRVyPO+28Dzy3FPIsHWePi1PohLiBnAPF
	kKcKWJt3IsTypetE45oLnuTPVYoD+p/LMvxhRxnDlqFnS6UZzi2dXbbr4EFM8fiyTcQL/zMhEaq
	/hJi9Hc1s/JKd64TX4oFk/PaQ=
X-Received: by 2002:a05:6102:3594:b0:5ee:a64f:d91 with SMTP id ada2fe7eead31-5f54bd3cd0bmr1175622137.44.1769191783450;
        Fri, 23 Jan 2026 10:09:43 -0800 (PST)
X-Received: by 2002:a05:6102:3594:b0:5ee:a64f:d91 with SMTP id ada2fe7eead31-5f54bd3cd0bmr1175607137.44.1769191782964;
        Fri, 23 Jan 2026 10:09:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492c831sm811337e87.98.2026.01.23.10.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 10:09:42 -0800 (PST)
Date: Fri, 23 Jan 2026 20:09:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: Add EL2 overlay
Message-ID: <rf7lfuuc4tmdupmyi3bex7vjmst7ggai7lcnflwbhxefxbcs2m@ih6ic3grcm5q>
References: <20260123103503.1259645-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123103503.1259645-1-mukesh.ojha@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TLdIilla c=1 sm=1 tr=0 ts=6973b968 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qyu6jrbouUWq9eW55ToA:9 a=CjuIK1q_8ugA:10 a=eSe6kog-UzkA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: 5GfvwTB8QKsAoIuVO6VaYGtaXVEEvMZX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEzNyBTYWx0ZWRfX+Qfva3FJA+XI
 ZA1RTLH3dpC4GYLQGwNOwLjmBvNVeWbMxhVRL2WiXOTMyHMzKWq7Nb5AYimAW2z02zM3vBc60mX
 dsjHeCozZFwbUY4oZQ+l6dtiCNOKj+MnTy42hUiPCvMBzWBZKaXkicte2LKPjE42XWNJ353+wgl
 wsKSC0g1nN0XORGJYcSWLBYRwMY9oocATtteRiH/0uIcrAGcd1ly6PLj8a8a1y6Inc/pP3Lgsm+
 8GbsidMQt2g5L0kSN50yqn0uHgaiP/aHsC8vhN3Pk1/hBqsSL2Suo83wy/b+fNuoPwCAyRQmQ3u
 VGfaOvC2iadGM/CcvltoJw5N+bp+ScJw20vIi7pgbMEnPxqRMIUQCUmr83Ds38MBS2zw3GTzx0u
 02qbcKW3SF/P7gU6fXklw0v4UVAtsV0zea6VtQfxd+VJX7mnV1Ud2FO4PaJEtpX+gl0Lqik6cRF
 xFcHx6I7v/yrSam+how==
X-Proofpoint-ORIG-GUID: 5GfvwTB8QKsAoIuVO6VaYGtaXVEEvMZX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230137
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259096-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96614796B3
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 04:05:02PM +0530, Mukesh Ojha wrote:
> All the Monaco IOT variants boards are using Gunyah hypervisor which
> means that, so far, Linux-based OS could only boot in EL1 on those
> devices.  However, it is possible for us to boot Linux at EL2 on these
> devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add a EL2-specific DT overlay and apply it to Monaco IOT variant
> devices to create -el2.dtb for each of them alongside "normal" dtb.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |  8 ++++++
>  arch/arm64/boot/dts/qcom/monaco-el2.dtso | 32 ++++++++++++++++++++++++
>  2 files changed, 40 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-el2.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..cbf7d89e432c 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -45,6 +45,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
> +
> +monaco-evk-el2-dtbs := monaco-evk.dtb monaco-el2.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> @@ -147,6 +151,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-industrial-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-vision-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-thundercomm-rubikpi3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
> +
> +qcs8300-ride-el2-dtbs := qcs8300-ride.dtb monaco-el2.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-el2.dtso b/arch/arm64/boot/dts/qcom/monaco-el2.dtso
> new file mode 100644
> index 000000000000..be08829a6b2f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-el2.dtso
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/*
> + * Monaco specific modifications required to boot in EL2.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +/* We can't and don't need to use zap shader in EL2 as linux can zap the gpu on it's own. */
> +&gpu_zap_shader {
> +	status = "disabled";
> +};
> +
> +&iris {
> +	status = "disabled";
> +};
> +
> +&remoteproc_gpdsp {
> +	iommus = <&apps_smmu 0x28a0 0x0>;
> +};
> +
> +&remoteproc_adsp {

Sorting order...

> +	iommus = <&apps_smmu 0x2000 0x0>;
> +};
> +
> +&remoteproc_cdsp {
> +	iommus = <&apps_smmu 0x19c0 0x0400>;
> +};
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

