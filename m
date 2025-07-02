Return-Path: <devicetree+bounces-192345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 909A0AF64E7
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 00:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C497D189943A
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 22:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDDE22A80D;
	Wed,  2 Jul 2025 22:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kTnkt4os"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5891B2DE71D
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 22:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751494558; cv=none; b=g7XDTa5o2Hvk8h5onK6NpO9/J7An7l9j5lXRLln41Hzv/WX5nrab4BiCKanN32FEDQ3ZcSyQUzEf7koKcv3d66+dgo1vsC2eGpNMHti83UhIDqqmuC7TCLC8i5YDYEdpZPmTnkP9UjPBg6qLuxt9vMPCNpauzXZp2uuJeEBIwcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751494558; c=relaxed/simple;
	bh=L+4u4zc/5hJXlM56kcHcu61ezvhOUONCS8bY+hskGSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sjoswFF8GaLDcJ5LMHwCBcynmjvhZMLXPqMbgrufg9rtWHsDVngR+DOMFP5ZK/dwKNoDzwHGssPvFFFDRN8URH7X04yA1xz6KEWbVuaXHNMN24GTd6WG56vBAmbhoJbToepxpovwEP9JjpkyJzt3L9GitmBjwkdfu9sYmaTeHRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kTnkt4os; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 562JZLQH010779
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 22:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y+aCRc78dmbEpDm//tnp9kez
	QIa7D6lei/ThduFagCQ=; b=kTnkt4osChxz+KTXJw4Rvz675jmAjgN6K8VimDQP
	VgXQRJv6/3Prs4i9f9uA2knETlZuq1H12tfa6z6CwChtCOyVixMF//VnaJeuaOnF
	D2jmLf7S37ez1wzV0TxNHdU+9q86/e2A/rC80jDMXVg4uqVMKGrSWLJhXQyOCc/b
	dzLKrN/NYNA6aBoJ11Hz6pGlSAfGjVT/vSyF21HyJzTzLDhgv18/7tS6gHK5WDD1
	Rgeu2v/6WxAdsxl44U7qaS6SW14Ky1pWdPzZpqfTZiNov7/o0sYxmzxBKU+RJJhq
	obsspFxNW/CBX6mrwxL3udNe5Swa5IVPj9NC61Ncbi+47g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mw30b8qb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 22:15:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d44a260e45so60315585a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 15:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751494555; x=1752099355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+aCRc78dmbEpDm//tnp9kezQIa7D6lei/ThduFagCQ=;
        b=TT2ZPi5ynGf0FfiXqdQzEHDZOqWrkWI4lvodO6ugq3riMSLr0+1R6uIgzOlOrrixaI
         TqVyLsS1XQYt5By0XB26Z5Kwr8tj0+Jqe5mo1VCrUUMais7bPfPoQVbQf2Qbw+TzT1fZ
         zi3YNfymyfwnVtd74di+LCXgHrtxy4dVf3GPcT6UPJsmFb2+LReKnD8PL82MIcVtS0XA
         ijoKjRratss2vcPzw5+2LEyKyOmPoBPGNOarsnTp4VZCCLEFXXe6RfK+RVgl7IDoWjZq
         OE3vsFP6IuvxB7NM6/01y5iqSCePzTNmi5q0cmO8UR7EaaxwuDQ7vUIKQu8lUX2a/JJ0
         315Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8lKF1MTrJ9MFSIptXIrrpfW2M4FMvW9HDZdF6xLKh8b9h7MpmHFnWTrvdohIZa7RsCELWiybRaf0R@vger.kernel.org
X-Gm-Message-State: AOJu0YzcCI54jOPOfC8rvzexbV+18wZWIW2cfT4y3f1AdY2WP+XU3oY6
	GXjxJ2hSF8QVkx/vK52YwFUBgkBExMm7Ye84MRWs8OesXJtEcCVJ6rSXGf+NsHVaxTYrvBSLqAL
	qcAl4zyzMRqHw0rnFsJBk9iYbqlbILBWzyNjzmuLAZMycyXOoGafSgYFu6aHUTf1B
X-Gm-Gg: ASbGncsbOpKKl4XmW92gQGM3zHJ4zMDjRJfgj71/Ar5wcK8pEjU/jdtfGMKYpABvdHf
	Zfbp9nojd/C/PObTGzro5YZBB3Z5e5jbXcsIzlvxB77R7NvNYRTjPJTdsS//m3gkrnxnH7TzBmI
	AOJePntDZSEaY2M5Q+NVRa9O60OnJr9K1pIzpGMLBW1Y+YpD16sUmdcjKTLOf0IG/XkRSffMMr9
	c/YMnIWNVBICwGC4hzk6ADvJe4B1wdJyT539RP/7jsVLs4e7jrOIIwWTc9pXDW38ItMEXykoM7b
	qhXM4usSp6txAo551zcmolrSBlJ+ePkkP+wsUs1y4/4pWBDTcF6gqNW7TJsuxHK/Z6DF25dR7X1
	oeanVTdWaxylOwfLprOm+iQAppeyCFIIfeNs=
X-Received: by 2002:a05:620a:4896:b0:7d2:26b4:66d2 with SMTP id af79cd13be357-7d5d154690amr196480085a.22.1751494555055;
        Wed, 02 Jul 2025 15:15:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOLKvFFbYNXyXXi4XCmqx8Nbzeonm5Cd89hz5wxbQWDHeICyQD/+nt6+jX7y3D1xx8KrGEww==
X-Received: by 2002:a05:620a:4896:b0:7d2:26b4:66d2 with SMTP id af79cd13be357-7d5d154690amr196454885a.22.1751494551760;
        Wed, 02 Jul 2025 15:15:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b24019dsm2232912e87.3.2025.07.02.15.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 15:15:50 -0700 (PDT)
Date: Thu, 3 Jul 2025 01:15:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: x1-hp-x14: Commonalize HP
 Omnibook X14 device tree
Message-ID: <7tejkof2kec7ugpz6xugkjrcpzab27lsjpnkphj3vd3xoc4ly7@x3otjziiehju>
References: <20250702-hp-x14-x1p-v2-0-af5b588d1979@oldschoolsolutions.biz>
 <20250702-hp-x14-x1p-v2-2-af5b588d1979@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702-hp-x14-x1p-v2-2-af5b588d1979@oldschoolsolutions.biz>
X-Authority-Analysis: v=2.4 cv=CY4I5Krl c=1 sm=1 tr=0 ts=6865af9c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=gxl3bz0cAAAA:8 a=pGLkceISAAAA:8 a=Wy7iZ02dMdmRGSxYCMAA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: rREIqudd5cdI15k03Gd4uj3ydPNrOyjq
X-Proofpoint-GUID: rREIqudd5cdI15k03Gd4uj3ydPNrOyjq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDE4NSBTYWx0ZWRfX3RX2P+lKSoz4
 AtK353Mt3gIxiQzpWWKy/AyNwEsPXPogxJeb2QJsTeeBo4oJzE6rPWk0ih3cLnybHQY8JToanQz
 fDClWlXlKdwruSkq9XoLt6nDW9+T1s9O+GdyB2UXAsNcva9PIy90Uo3zVRnlxa9aXEZcYJOOwK5
 +1KvOsr3/FqjB+kpFDnb0Ajl+YJlIL1a0ph3DgUje30TeKzotBjqfnntWi5fS8wK1p1SYUrUQzR
 gIuw3PT3Xh9+dvg/PV2j+VyLx4kyLwVxjqg0NmIQdYBHPvl4VzOR4ekFkoAhlrEkL4SDvM5seBR
 cNhpWuqrLuA4RCFTzWFGi/N/p61SFezEfdoLstYlBg6FrbwtsKVBuiab1+FvVe9VhR4cvSM/qX+
 8g1N7DQKuk9GTbrIiH/XESfgMYoQHDpBXG5q7Tl6T0AF5fz5JRXRmrue50XzzsZ/RUY/6Ax6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=829 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 mlxscore=0 phishscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020185

On Wed, Jul 02, 2025 at 11:22:34PM +0200, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Commonalize the HP Omnibook X14 device tree for derivation of Hamoa (x1e*/x1p6*)
> and Purwa (x1p4*/x1*) variants. Required because the device trees are not
> compatible.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  arch/arm64/boot/dts/qcom/x1-hp-omnibook-x14.dtsi   | 1550 ++++++++++++++++++++
>  .../boot/dts/qcom/x1e80100-hp-omnibook-x14.dts     | 1544 +------------------
>  2 files changed, 1554 insertions(+), 1540 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-hp-omnibook-x14.dtsi b/arch/arm64/boot/dts/qcom/x1-hp-omnibook-x14.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..7d4a474215ac97096c49e1f690229d07198c022e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1-hp-omnibook-x14.dtsi
> @@ -0,0 +1,1550 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2024, Xilin Wu <wuxilin123@gmail.com>
> + * Copyright (c) 2024, 2025 Jens Glathe

Nit: what exactly is copyright by you?



> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> index 8d2a9b7f4730783bbaa81e488a0e99cc195a195f..b81cafea2135e869ba3652aeeec142d54033bef3 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> @@ -2,860 +2,19 @@
>  /*
>   * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
>   * Copyright (c) 2024, Xilin Wu <wuxilin123@gmail.com>
> + * Copyright (c) 2025 Jens Glathe

Same question.

>   */
>  
>  /dts-v1/;
>  
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/input/gpio-keys.h>
> -#include <dt-bindings/input/input.h>
> -#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> -#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> -
>  #include "x1e80100.dtsi"
>  #include "x1e80100-pmics.dtsi"
> +#include "x1-hp-omnibook-x14.dtsi"

If you need to send the series again, please pass -M -C
--find-copies-harder to git format-patch

-- 
With best wishes
Dmitry

