Return-Path: <devicetree+bounces-255046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19656D1F3B7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 895E8309DE04
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5BA21D3CC;
	Wed, 14 Jan 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mFIuC31e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CCbwReK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CE126C39F
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768398634; cv=none; b=dFVv9cpe1OsBzcNBxDtXA8HY3lHGElwS5Ezk4EhHsUAJ4eNo2Ogr2OAuyRCt0CH5jtb9cdb63FiOUJBgSXVPr0tyawAJLUwkkaR2aJpdSwYz/zVZi3ap89lmkTmqwD+YwBWjxXoYjgY7B+VPCfe1AvB4H/SBHibkV8xmMh1ESZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768398634; c=relaxed/simple;
	bh=sQk0IONpCy3GwT1D1yNgeAf+WDcg9S1RnsuIimCM21U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Iq+SngxZWokxGeGCrZnUIhwkpQCpahVA5JJzPWQ+QeSRT3aMqLzqPjKaUGTKc025RJiOuBgQ7DQkKHaFFbFu35fO/Hcg0wXOj1SsKryGyWG2CxNWMGaHoNg2KN48aC6BIFb8k+A2spfQUgh+/9jXvETM0H8jTrh2Akw3VzGJXKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mFIuC31e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CCbwReK8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EChU5O3925406
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:50:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3hcYlrqLxQZtevp/QOeek4/Zc7JVOfbl0ukS0wWgQzE=; b=mFIuC31e4BF91IoD
	h7Rt0+OrfhuCJ9xgD/lxttsk5ZPRrOwEvWIKmSYEzneRX2UW9UJw9D+/teT0kpep
	Jd6yrJ+GGyZhvxFjU2/NrSZRClel8y2Hf4K0+cdQIKvkEaCmpkVRh1k3MSTUp6xR
	URrMVV0xVL3hY4dQ4iNS91iSFABVp6LOX+Evja8YXgpUtNkpQZ86QxcA4/pQM7+/
	CKpwZ9sWUC1zD302gZdsakiip4QPGXiDMDIuy8tPwFGYUll578WtlihQdw9vWxxL
	KeYEgVnoaDX7hExPDzEoJnF9fbtW5GA65LOFE6qvchZRI5OHoKxbbyViTSOb6GIg
	M636Kw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbr5mx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:50:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c533f07450so13278685a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768398632; x=1769003432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3hcYlrqLxQZtevp/QOeek4/Zc7JVOfbl0ukS0wWgQzE=;
        b=CCbwReK8SocuizvJb1A4kCoA2x31VvCMCBbfksVok8Oa42m0SzsGauCOEsbJ8zyAGW
         9MdVB9I+7VFpB+QpJJsjk8ZA7YVOmLB6A8i1xlBpPppZV0Ekji7w/uHQRg//j/qcUr9E
         iX5KnGhMc8D/kIAx7974Vdd8HWEGD2bEQz9+i1/CDjmYq26kssZ3rP/wksOoue/aeIHf
         HOuapL5U96MDdDmbZzyYy+CJZKH1Iw3e7dPAx1tEr++pQYcSoBOUYooPWzyDubkM9ojS
         T3wPcpBTXHUhOiKiwa3F6eiP+Tg/Pllxni8Ekh6bX3Mu3RZPm0Hj5GgFp68j+oqDMa0B
         AMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768398632; x=1769003432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3hcYlrqLxQZtevp/QOeek4/Zc7JVOfbl0ukS0wWgQzE=;
        b=dy/dXBiw90bXV1HzGHQh+OT+2bfWK74SLMlBKWtrOfbzZl3Wl7Bv8dRsaGEll9gtH6
         galqrCQP0xGoPq2Vulp5AY+IIh4sezfwW26LG7PNtAZeP1pNdO2mwOWB1PdA4XHiTZhm
         Rgn08wIuyu8DulnJFr1iWe3o5TRV8yRC5JeRAfoZMoGVJGCxOsolLhwo1eTwRyVCxo0W
         nAroe+abXUrRi7e3xIQwOuVa+GHa0X1yyem3tMrRCCdlKcaXOJI4fnCQTWBZAc9jNu9l
         drNx4OiUGYXdFt+L4n1YZVXeZugQ/t6PSAwruNKKkYyElH6OgzVIuoCETEVy476810Ff
         Dz8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVBQ4g3/W6u1XE5Yki/t7xR3+On2U6XLs8vO3isMxgaV+QiiHRBJ4dLiSHpE5vX1Bsk9GTN1Qbotfvr@vger.kernel.org
X-Gm-Message-State: AOJu0YwhehbJjEyvGTt+zhJfe2Ky/BF4gk2mO5X1gzXsHUq+z359Ekb9
	LkTZmdz9YseFCoc4LJFmFT2zhOu1FAzcyK5QM53+q3Z7OubMnuUTqalAe+hffy/r1KIL/9kaS1R
	0IQwNxJ3Hx3HjgRf/SaC0YqPrPHUPbeyvcqIK6E2+CN+hVwQ5zYeXphaMx5bM3VWS
X-Gm-Gg: AY/fxX5Beh7v4TAh66A5jeCtigJXj29g2TJ3M3RZrXpT0ZoAwnV68Rzaz8KuuNKs48L
	rWEhGMt5qxI1RxnsNzNNmdCYFqbE1nqgWmTk1CrUAwedJEgL/hHvfoHMqRE6REo/kDJxSoxSIrE
	y2XtETVDnd1gccmbGjjDsNjotm6jR/3rlDOIT9DypJQ7xaJd+DmHHNUqh4vcxNExKyG7luZPJOF
	9RCtdqqUzA2aOtMYmEieF5t5mnj95//KuMOTccrH26APzquBLfpKQhbocV35a3cwE0w2/yVX1AF
	JgWtBVB4oem5lzQZh5b/BNdHlFtI+AXMzsQ0aKRWYctALQLNlyekM/906MEbfLQfww85l5/LprK
	/zfmAG0tazY1jpbglZnFX5jCz0xXDyCiJo42iwdlBOQoO+YVbKpueAYkffwXM0wS9MIk=
X-Received: by 2002:a05:620a:1a94:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c52fb794c6mr268355185a.5.1768398631900;
        Wed, 14 Jan 2026 05:50:31 -0800 (PST)
X-Received: by 2002:a05:620a:1a94:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c52fb794c6mr268351785a.5.1768398631425;
        Wed, 14 Jan 2026 05:50:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c3f89sm22846240a12.5.2026.01.14.05.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 05:50:30 -0800 (PST)
Message-ID: <52ef95e2-9d60-4004-b342-7517180dc349@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 14:50:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: glymur: Enable Glymur CRD board
 support
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
 <20260112-upstream_v3_glymur_introduction-v4-4-8a0366210e02@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-upstream_v3_glymur_introduction-v4-4-8a0366210e02@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=69679f28 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hK1IRukzHlbEjjPHDEsA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: SPxuzXoDB_fIme9KMR6foav2O8mCmyGE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDExNSBTYWx0ZWRfX1ma6TxVmIb9A
 cOgubGW0+9yfHFkcb0cvr2ph71Qo6EG6eU8BZ9Ss2vDoP1yjoprNOModjGwAtHdL89LlF3XiMk1
 LWMAIxNb/Qy5UbEKYmWa82ZEMZN5kAxZGiENY6Dr8pdC0wzQU5bdyltKbB/JC6fPBe+T7UuXRWW
 wxC3mI2GTOI9XLFT5wC6TrpYFv9210HhkFyKus/Bbb+WRe/+SfYoyI9iv534h/bcdWXkWz3ZvWq
 qxs1NYG6TJN1RRvD2ArchIUIofhSkkmoyodSLQjHBY7v/ekzPVn4f0XgTPOCsAuZBBWgwKuvkZx
 iM5WBgngOHau01rvikFKxcPd78NJN3UMkm9H4y7V5IMJXbU2JcpUvVykC2Bc+iOgalms4E+naAb
 czGHVB7KiilVcmkhEqMuED2oZhxfrMQXt7SXyc8rhxV6IbP3ERjtOWb4k2RrGKmPt7OylZwCNUF
 sRXGCFSqV19gAGmbVZg==
X-Proofpoint-GUID: SPxuzXoDB_fIme9KMR6foav2O8mCmyGE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140115

On 1/12/26 1:22 PM, Pankaj Patil wrote:
> Add initial device tree support for the Glymur Compute Reference
> Device(CRD) board, with this board dts glymur crd can boot to shell
> with rootfs on nvme and uart21 as serial console
> 
> Features enabled are:
> - Board and sleep clocks
> - Volume up/down keys
> - Regulators 0 - 4
> - Power supplies and sideband signals (PERST, WAKE, CLKREQ) for
>   PCIe3b/4/5/6 controllers and PHYs
> 
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 601 ++++++++++++++++++++++++++++++++
>  2 files changed, 602 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0ccd6ec16dfb..84579b86ef39 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= glymur-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> new file mode 100644
> index 000000000000..e9c606c413dd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -0,0 +1,601 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "glymur.dtsi"
> +#include "pmcx0102.dtsi"	/* SPMI0: SID-2/3	SPMI1: SID-2/3	*/

IDK if it's thunderbird messing with me, but it may be that a \t is missing to
align this line with the others

Otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


