Return-Path: <devicetree+bounces-232277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09465C16026
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28489400797
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34B5346E7C;
	Tue, 28 Oct 2025 16:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LejTqtvp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cGlKnsJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC24B346E45
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670417; cv=none; b=LWwEq+/BpzfVk1ThCquAC9Tfe9uTECL7WqPqXDlUYZnvPlRhNwMoQigOBR2NavYjMXjvBQ3b/snawoFkPBILjEPejra/KNZFwxrsonI/zDMeHCzvtgPRxEyUBeq1k2BjHqM3buUte1nMvxeF8BJgOZ3SqsCV73i326wbvYhH1ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670417; c=relaxed/simple;
	bh=UFikBRmexHnDLjXOHVrfHYYYmv73xB1UPwMLOaAlLyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uk1X9RBl3eqkVPN2iCkP7EIj/NOuAN+iW1y540E3ZrBCfOoKOmSTu0Lssj9h1jCjm15nLdlLh1YcNnAUaYoTgEHYkYaIZoAxPkRCGkUKPcXCcSKcFFuQiuN41pH8tbzWeOntiS6qd4oCmYKlF4172PFs+fywST54JcvV/dxAmac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LejTqtvp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cGlKnsJh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SEnith1974281
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wDMvc1SSzdiBU9MWlPTv+38W
	KTz5k7KRdi4wA1nkfRw=; b=LejTqtvpMvue1skQKp5Obf/O2SCBxqLpRgjFw63n
	ObSeF3f6uJFkMmcBN1wjqsWjn22e/2hdwq3dJsOhDxZc0EaXvSShTqhGPy+JYPUG
	0AU8g38cooVlwWT/SoPoj/AWUNEw7YA/avXn5Y1wFtCqR3h8+Vl1EQmhN3SBu29h
	83+j+5zs7txulpgrp3ObAnCyfQW9JF4Xvbq6KfKAFvRB7LBxmOSHBuWhp9hiUZ2M
	RCDaQCs9BOJiA+g81DrtCraIRQ0Q0g2Uksrfsj1P4U3W5AwgXb0LugzmGfwuQWlA
	rkWdHwNAeJKzcTzJTRD09ArGf0BH8EhraM/sxQ2eL8VV7w==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2pgea7yx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:53:34 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-430db6d36c6so233176755ab.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761670414; x=1762275214; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wDMvc1SSzdiBU9MWlPTv+38WKTz5k7KRdi4wA1nkfRw=;
        b=cGlKnsJhg/RXFmOdIi8KRepe3AWpSe07awWGJuzJ4WWsgViSjGoZFGbTmhGKAf3Ig+
         7imhuZOZ8OZnwv37a0AkgL85ISX9FZNXyPjVDBsmM0/l0+QN7Vd23uYe16/kuk9rxeHv
         iX1CGdw8qYgx81drORCkqToKMwwZLbwZ8B9IFQltzX6MDWCWP0sGFaDY/Dv5+6FaGAoF
         EWQGvzCKOcYUc9bJeIsHKtHlxg80nlebCG7ryJn4qsASCp1uYTHyTowicuJc9abi45U2
         1EEPJv5BirCw8SiAPMGzppfHkAGgn/mDCd5XnOuy+fcQzF2rIrb0pAn6/fH7/+4uktwI
         1hFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761670414; x=1762275214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDMvc1SSzdiBU9MWlPTv+38WKTz5k7KRdi4wA1nkfRw=;
        b=Hld8y+J/pWW+T7N7foWFGlVN0e5qIE5olA46kZ/+B1AZTHpMcWbdguEaLle+1zPte5
         NXWwra8piw5iWXm4dcdT4lNA/Z5+OC5qXkiqRp/wr5w7aTQAspUAWL9BPwuq7puh5ogZ
         N+Y2Z8HFcow6/qClqwKsOBtRlejxD2SQF2K+FMyXqpZr98GvA4d6bzGFsPVJn/rrmbMt
         nn5t4metCC/dKCtEP8e2HGD1GUcPRi+jQH94+ZhqszhU87pNkRRi09fU1RnDREwTEu3f
         xFV8KEm/Jq75hkTTQZZEe8UbJ9OrqiUHxTx6YDzs7OfDQFTu9itseoG2gGrJDny8h/Rp
         v9TA==
X-Forwarded-Encrypted: i=1; AJvYcCVeAoMekkkb1K8k3z9OTZDkDOZQUFkxOmDbFpeCVqMrtHXV9MUVrVyA9z232V1MviVpw3JjuW/XHaSw@vger.kernel.org
X-Gm-Message-State: AOJu0YxNM4T+k8wZNbIdv2yDkxXD+HLnAMldcA3EkZx85gFnGia4US5j
	SSrZFMRcxBmxDgE01dJuNbLDEawNok8cqfYY1Kw+qp9rD8NkBpKNkV/ZD5P7UivHikjjcaApjQA
	vzhtco7r/yrYP+COmC+0ABQJ8kOQK7w3btBZ8tXngDHFR2jefuQ9YtBl0tbDrEdvK
X-Gm-Gg: ASbGncuN8DN0FtlouodJHSgxmBMUM+eNm8SM/IyGoLPXJCQN/a3h7V9Iwz0UQICDKF/
	fTtERJR4frqJK9mqyMdNCsKEmMpmHPTmKmGd4W9PHlavRyIDcIwV4SqzkRaoKutETJE3y40J6Qc
	FRL4u3E1o6UYMpvx5BLEhvQYE8nsTvOpqLWEfP783ao0MuvjIdYx2hiLtV5y6fPPhgcsx/hG9ZV
	lrFFJffpbt7/gN5RGxVUZ8QTegAXsGjAdH6jk0O90OVg6o/8Ccx+WYLCJs7N8wJMHYX8F+32Dv7
	vGnSGgGwanjKr/qdO962bRJB2xphwqQ4Iw1FrfmqUV1FqZZdcsER41SEO9E5s6NiaPUNPuvtz11
	lF4Hjgn1fcr3pGNRrSMqgHFFcWC5xxt11
X-Received: by 2002:a17:902:cec2:b0:290:ac36:2ece with SMTP id d9443c01a7336-294cb3c8f9amr57553745ad.18.1761669667760;
        Tue, 28 Oct 2025 09:41:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq9xUk+aYsqlr8o8xnOs0U/tGjmOQx4SG09AfSrxYHFug18qX3LqyNIuAL8axD4UjkixaBRA==
X-Received: by 2002:a17:902:cec2:b0:290:ac36:2ece with SMTP id d9443c01a7336-294cb3c8f9amr57553015ad.18.1761669666934;
        Tue, 28 Oct 2025 09:41:06 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7e70b5sm12579027a91.10.2025.10.28.09.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:41:06 -0700 (PDT)
Date: Tue, 28 Oct 2025 22:10:59 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3] watchdog: Add driver for Gunyah Watchdog
Message-ID: <3e4fd54c-90fb-4b15-a9cd-a2d11b0aa952@quicinc.com>
References: <20251028-gunyah_watchdog-v3-1-e6d1ea438b1d@oss.qualcomm.com>
 <4659e69b-907a-49ba-8eb6-ac17232a5219@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4659e69b-907a-49ba-8eb6-ac17232a5219@roeck-us.net>
X-Proofpoint-ORIG-GUID: DPzjL2pS9ljb9-Trn94-1uPNPOLByDMX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE0MyBTYWx0ZWRfX7iYNAzTEfDnl
 lMl8TSbL+Ree93/K5s7GaNLO/ei2WkB95Bd7aP2guFrNjX9ywLOZGhxDGvweE4sr5grbNQNGPfy
 jMyiYltP86LabdJKrRn2wrJYQaioGNimuWrcr9Y3SidzTAvyV9ajZr6iJqWWqKKm+mP9omq0z+6
 6zzMVKJyKEgRUYeQ9+KTHrpXvTZo5wrlRc0CP9iJCDXhnHV1pOnRqm1o4amYlX9M3my+4GhK/7s
 3R8j/mNPjXPfhzNh3k3zf/1/yfTuzrfUPvEZb1/RSL/LBvL6eZB1hByjrMtLdgetmPf4+db+Gp/
 N4X7Do8nCQr8ffoauLgd2AVy7k7Gn/pXCJi/1qui1hxuzas+oJOerOJeCcUb4tYILfx9WUPFf4C
 LwhwAPGAphLYOOsXv+uVDhtOOExQLw==
X-Proofpoint-GUID: DPzjL2pS9ljb9-Trn94-1uPNPOLByDMX
X-Authority-Analysis: v=2.4 cv=fLU0HJae c=1 sm=1 tr=0 ts=6900f50e cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=NEAV23lmAAAA:8
 a=EUspDBNiAAAA:8 a=W181eg7ozwcBqbJhZzsA:9 a=CjuIK1q_8ugA:10
 a=Ti5FldxQo0BAkOmdeC3H:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510280143

On Tue, Oct 28, 2025 at 09:06:12AM -0700, Guenter Roeck wrote:
> On 10/28/25 02:35, Hrishabh Rajput via B4 Relay wrote:
> > From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> > 
> > On Qualcomm SoCs running under the Gunyah hypervisor, access to watchdog
> > through MMIO is not available on all platforms. Depending on the
> > hypervisor configuration, the watchdog is either fully emulated or
> > exposed via ARM's SMC Calling Conventions (SMCCC) through the Vendor
> > Specific Hypervisor Service Calls space.
> > 
> > When Gunyah is not present or Gunyah emulates MMIO-based watchdog, we
> > expect Qualcomm watchdog or ARM SBSA watchdog device to be present in
> > the devicetree. If we detect either of the device nodes, we don't
> > proceed ahead. Otherwise, we go ahead and invoke GUNYAH_WDT_STATUS SMC
> > to initiate the discovery of the SMC-based watchdog.
> > 
> > Add driver to support the SMC-based watchdog provided by the Gunyah
> > Hypervisor. module_exit() is intentionally not implemented as this
> > driver is intended to be a persistent module.
> > 
> > Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> > ---
> > Gunyah is a Type-I hypervisor which was introduced in the patch series
> > [1]. It is an open source hypervisor. The source repo is available at
> > [2].
> > 
> > The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
> > access the MMIO watchdog. It either provides the fully emulated MMIO
> > based watchdog interface or the SMC-based watchdog interface depending
> > on the hypervisor configuration.
> > The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
> > version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> > 
> > This patch series adds support for the SMC-based watchdog interface
> > provided by the Gunyah Hypervisor.
> > 
> > This series is tested on SM8750 platform.
> > 
> > [1]
> > https://lore.kernel.org/all/20240222-gunyah-v17-0-1e9da6763d38@quicinc.com/
> > 
> > [2]
> > https://github.com/quic/gunyah-hypervisor
> > ---
> > Changes in v3:
> > - Move back to platform driver model. In module init, determine if we're
> >    running on a Qualcomm device and there is no supported memory-mapped
> >    watchdog present. Then proceed to register platform device and driver
> >    for SMC-based Gunyah watchdog.
> > - To determine if we're running on a Qualcomm device we're checking the
> >    presence of "qcom,smem" compatible devicetree node. As an alternative,
> >    we also tried using socinfo for the same purpose. When both
> >    gunyah_wdt and socinfo drivers were made built-in, it couldn't be
> >    ensured that the socinfo driver probed successfully before gunyah_wdt
> >    init was called. Hence, we resorted to the devicetree node approach.
> > - Limit the errors listed in gunyah_error to the ones that can be
> >    produced by the driver.
> > - Link to v2: https://lore.kernel.org/r/20251006-gunyah_watchdog-v2-1-b99d41d45450@oss.qualcomm.com
> > 
> > Changes in v2:
> > - Move away from platform driver model since the devicetree overlay does
> >    not happen by default.
> >    See https://lore.kernel.org/all/91002189-9d9e-48a2-8424-c42705fed3f8@quicinc.com/
> > - Only when MMIO-based watchdog device is absent in the devicetree,
> >    proceed to detect SMC-based watchdog using GUNYAH_WDT_STATUS SMC and
> >    initialize if SMC returns success.
> > - Implement pm notifiers as gunyah_wdt is no longer a platform driver so
> >    dev_pm_ops cannot be used.
> > - Pretimeout IRQ is no longer supported.
> > - Remove struct gunyah_wdt since it is not required.
> > - Move the contents of gunyah_errno.h to gunyah_wdt.c.
> > - Link to v1: https://lore.kernel.org/r/20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com
> > ---
> >   MAINTAINERS                   |   1 +
> >   drivers/watchdog/Kconfig      |  14 ++
> >   drivers/watchdog/Makefile     |   1 +
> >   drivers/watchdog/gunyah_wdt.c | 291 ++++++++++++++++++++++++++++++++++++++++++
> >   4 files changed, 307 insertions(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c0b444e5fd5a..56dbd0d3e31b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3083,6 +3083,7 @@ F:	arch/arm64/boot/dts/qcom/
> >   F:	drivers/bus/qcom*
> >   F:	drivers/firmware/qcom/
> >   F:	drivers/soc/qcom/
> > +F:	drivers/watchdog/gunyah_wdt.c
> >   F:	include/dt-bindings/arm/qcom,ids.h
> >   F:	include/dt-bindings/firmware/qcom,scm.h
> >   F:	include/dt-bindings/soc/qcom*
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index 0c25b2ed44eb..f0dee04b3650 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -2343,4 +2343,18 @@ config KEEMBAY_WATCHDOG
> >   	  To compile this driver as a module, choose M here: the
> >   	  module will be called keembay_wdt.
> > +config GUNYAH_WATCHDOG
> > +	tristate "Qualcomm Gunyah Watchdog"
> > +	depends on ARCH_QCOM || COMPILE_TEST
> > +	depends on HAVE_ARM_SMCCC
> > +	depends on OF
> > +	select WATCHDOG_CORE
> > +	help
> > +	  Say Y here to include support for watchdog timer provided by the
> > +	  Gunyah hypervisor. The driver uses ARM SMC Calling Convention (SMCCC)
> > +	  to interact with Gunyah Watchdog.
> > +
> > +	  To compile this driver as a module, choose M here: the
> > +	  module will be called gunyah_wdt.
> > +
> >   endif # WATCHDOG
> > diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> > index bbd4d62d2cc3..308379782bc3 100644
> > --- a/drivers/watchdog/Makefile
> > +++ b/drivers/watchdog/Makefile
> > @@ -102,6 +102,7 @@ obj-$(CONFIG_MSC313E_WATCHDOG) += msc313e_wdt.o
> >   obj-$(CONFIG_APPLE_WATCHDOG) += apple_wdt.o
> >   obj-$(CONFIG_SUNPLUS_WATCHDOG) += sunplus_wdt.o
> >   obj-$(CONFIG_MARVELL_GTI_WDT) += marvell_gti_wdt.o
> > +obj-$(CONFIG_GUNYAH_WATCHDOG) += gunyah_wdt.o
> >   # X86 (i386 + ia64 + x86_64) Architecture
> >   obj-$(CONFIG_ACQUIRE_WDT) += acquirewdt.o
> > diff --git a/drivers/watchdog/gunyah_wdt.c b/drivers/watchdog/gunyah_wdt.c
> > new file mode 100644
> > index 000000000000..a165aff5be37
> > --- /dev/null
> > +++ b/drivers/watchdog/gunyah_wdt.c
> > @@ -0,0 +1,291 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/delay.h>
> > +#include <linux/errno.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/watchdog.h>
> > +
> > +#define GUNYAH_WDT_DRV_NAME "gunyah-wdt"
> > +
> > +#define GUNYAH_WDT_SMCCC_CALL_VAL(func_id) \
> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32,\
> > +			   ARM_SMCCC_OWNER_VENDOR_HYP, func_id)
> > +
> > +/* SMCCC function IDs for watchdog operations */
> > +#define GUNYAH_WDT_CONTROL   GUNYAH_WDT_SMCCC_CALL_VAL(0x0005)
> > +#define GUNYAH_WDT_STATUS    GUNYAH_WDT_SMCCC_CALL_VAL(0x0006)
> > +#define GUNYAH_WDT_PING      GUNYAH_WDT_SMCCC_CALL_VAL(0x0007)
> > +#define GUNYAH_WDT_SET_TIME  GUNYAH_WDT_SMCCC_CALL_VAL(0x0008)
> > +
> > +/*
> > + * Control values for GUNYAH_WDT_CONTROL.
> > + * Bit 0 is used to enable or disable the watchdog. If this bit is set,
> > + * then the watchdog is enabled and vice versa.
> > + * Bit 1 should always be set to 1 as this bit is reserved in Gunyah and
> > + * it's expected to be 1.
> > + */
> > +#define WDT_CTRL_ENABLE  (BIT(1) | BIT(0))
> > +#define WDT_CTRL_DISABLE BIT(1)
> > +
> > +enum gunyah_error {
> > +	GUNYAH_ERROR_OK				= 0,
> > +	GUNYAH_ERROR_UNIMPLEMENTED		= -1,
> > +	GUNYAH_ERROR_ARG_INVAL			= 1,
> > +};
> > +
> > +static struct platform_device *gunyah_wdt_dev;
> > +
> > +/**
> > + * gunyah_error_remap() - Remap Gunyah hypervisor errors into a Linux error code
> > + * @gunyah_error: Gunyah hypercall return value
> > + */
> > +static inline int gunyah_error_remap(enum gunyah_error gunyah_error)
> > +{
> > +	switch (gunyah_error) {
> > +	case GUNYAH_ERROR_OK:
> > +		return 0;
> > +	case GUNYAH_ERROR_UNIMPLEMENTED:
> > +		return -EOPNOTSUPP;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +}
> > +
> > +static int gunyah_wdt_call(unsigned long func_id, unsigned long arg1,
> > +			   unsigned long arg2, struct arm_smccc_res *res)
> > +{
> > +	arm_smccc_1_1_smc(func_id, arg1, arg2, res);
> > +	return gunyah_error_remap(res->a0);
> > +}
> > +
> > +static int gunyah_wdt_start(struct watchdog_device *wdd)
> > +{
> > +	struct arm_smccc_res res;
> > +	unsigned int timeout_ms;
> > +	struct device *dev = wdd->parent;
> > +	int ret;
> > +
> > +	ret = gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_DISABLE, 0, &res);
> > +	if (ret && watchdog_active(wdd)) {
> > +		dev_err(dev, "%s: Failed to stop gunyah wdt %d\n", __func__, ret);
> > +		return ret;
> > +	}
> > +
> > +	timeout_ms = wdd->timeout * 1000;
> > +	ret = gunyah_wdt_call(GUNYAH_WDT_SET_TIME,
> > +			      timeout_ms, timeout_ms, &res);
> > +	if (ret) {
> > +		dev_err(dev, "%s: Failed to set timeout for gunyah wdt %d\n",
> > +			__func__, ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_ENABLE, 0, &res);
> > +	if (ret)
> > +		dev_err(dev, "%s: Failed to start gunyah wdt %d\n", __func__, ret);
> > +
> > +	return ret;
> > +}
> > +
> > +static int gunyah_wdt_stop(struct watchdog_device *wdd)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	return gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_DISABLE, 0, &res);
> > +}
> > +
> > +static int gunyah_wdt_ping(struct watchdog_device *wdd)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	return gunyah_wdt_call(GUNYAH_WDT_PING, 0, 0, &res);
> > +}
> > +
> > +static int gunyah_wdt_set_timeout(struct watchdog_device *wdd,
> > +				  unsigned int timeout_sec)
> > +{
> > +	wdd->timeout = timeout_sec;
> > +
> > +	if (watchdog_active(wdd))
> > +		return gunyah_wdt_start(wdd);
> > +
> > +	return 0;
> > +}
> > +
> > +static unsigned int gunyah_wdt_get_timeleft(struct watchdog_device *wdd)
> > +{
> > +	struct arm_smccc_res res;
> > +	unsigned int seconds_since_last_ping;
> > +	int ret;
> > +
> > +	ret = gunyah_wdt_call(GUNYAH_WDT_STATUS, 0, 0, &res);
> > +	if (ret)
> > +		return 0;
> > +
> > +	seconds_since_last_ping = res.a2 / 1000;
> > +	if (seconds_since_last_ping > wdd->timeout)
> > +		return 0;
> > +
> > +	return wdd->timeout - seconds_since_last_ping;
> > +}
> > +
> > +static int gunyah_wdt_restart(struct watchdog_device *wdd,
> > +			      unsigned long action, void *data)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	/* Set timeout to 1ms and send a ping */
> > +	gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_ENABLE, 0, &res);
> > +	gunyah_wdt_call(GUNYAH_WDT_SET_TIME, 1, 1, &res);
> > +	gunyah_wdt_call(GUNYAH_WDT_PING, 0, 0, &res);
> > +
> > +	/* Wait to make sure reset occurs */
> > +	mdelay(100);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct watchdog_info gunyah_wdt_info = {
> > +	.identity = "Gunyah Watchdog",
> > +	.firmware_version = 0,
> > +	.options = WDIOF_SETTIMEOUT
> > +		 | WDIOF_KEEPALIVEPING
> > +		 | WDIOF_MAGICCLOSE,
> > +};
> > +
> > +static const struct watchdog_ops gunyah_wdt_ops = {
> > +	.owner = THIS_MODULE,
> > +	.start = gunyah_wdt_start,
> > +	.stop = gunyah_wdt_stop,
> > +	.ping = gunyah_wdt_ping,
> > +	.set_timeout = gunyah_wdt_set_timeout,
> > +	.get_timeleft = gunyah_wdt_get_timeleft,
> > +	.restart = gunyah_wdt_restart
> > +};
> > +
> > +static int gunyah_wdt_probe(struct platform_device *pdev)
> > +{
> > +	struct watchdog_device *wdd;
> > +	struct device *dev = &pdev->dev;
> > +	int ret;
> > +
> > +	wdd = devm_kzalloc(dev, sizeof(*wdd), GFP_KERNEL);
> > +	if (!wdd)
> > +		return -ENOMEM;
> > +
> > +	wdd->info = &gunyah_wdt_info;
> > +	wdd->ops = &gunyah_wdt_ops;
> > +	wdd->parent = dev;
> > +
> > +	/*
> > +	 * Although Gunyah expects 16-bit unsigned int values as timeout values
> > +	 * in milliseconds, values above 0x8000 are reserved. This limits the
> > +	 * max timeout value to 32 seconds.
> > +	 */
> > +	wdd->max_timeout = 32; /* seconds */
> > +	wdd->min_timeout = 1; /* seconds */
> > +	wdd->timeout = wdd->max_timeout;
> > +
> > +	gunyah_wdt_stop(wdd);
> > +	platform_set_drvdata(pdev, wdd);
> > +	watchdog_set_restart_priority(wdd, 0);
> > +
> > +	ret = devm_watchdog_register_device(dev, wdd);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register watchdog device: %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	dev_dbg(dev, "Gunyah watchdog registered\n");
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused gunyah_wdt_suspend(struct device *dev)
> > +{
> > +	struct watchdog_device *wdd = dev_get_drvdata(dev);
> > +
> > +	if (watchdog_active(wdd))
> > +		gunyah_wdt_stop(wdd);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused gunyah_wdt_resume(struct device *dev)
> > +{
> > +	struct watchdog_device *wdd = dev_get_drvdata(dev);
> > +
> > +	if (watchdog_active(wdd))
> > +		gunyah_wdt_start(wdd);
> > +
> > +	return 0;
> > +}
> > +
> > +static DEFINE_SIMPLE_DEV_PM_OPS(gunyah_wdt_pm_ops, gunyah_wdt_suspend, gunyah_wdt_resume);
> > +
> > +static struct platform_driver gunyah_wdt_driver = {
> > +	.probe = gunyah_wdt_probe,
> > +	.driver = {
> > +		.name = GUNYAH_WDT_DRV_NAME,
> > +		.pm = pm_sleep_ptr(&gunyah_wdt_pm_ops),
> > +	},
> > +};
> > +
> > +static int __init gunyah_wdt_init(void)
> > +{
> > +	struct arm_smccc_res res;
> > +	struct device_node *np;
> > +	int ret;
> > +
> > +	/* Check if we're running on a Qualcomm device */
> > +	np = of_find_compatible_node(NULL, NULL, "qcom,smem");
> > +	if (!np)
> > +		return -ENODEV;
> > +	of_node_put(np);
> > +
> > +	/*
> > +	 * When Gunyah is not present or Gunyah is emulating a memory-mapped
> > +	 * watchdog, either of Qualcomm watchdog or ARM SBSA watchdog will be
> > +	 * present. Skip initialization of SMC-based Gunyah watchdog if that is
> > +	 * the case.
> > +	 */
> > +	np = of_find_compatible_node(NULL, NULL, "qcom,kpss-wdt");
> > +	if (np) {
> > +		of_node_put(np);
> > +		return -ENODEV;
> > +	}
> > +
> > +	np = of_find_compatible_node(NULL, NULL, "arm,sbsa-gwdt");
> > +	if (np) {
> > +		of_node_put(np);
> > +		return -ENODEV;
> > +	}
> > +
> > +	ret = gunyah_wdt_call(GUNYAH_WDT_STATUS, 0, 0, &res);
> > +	if (ret)
> > +		return -ENODEV;
> > +
> > +	ret = platform_driver_register(&gunyah_wdt_driver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	gunyah_wdt_dev = platform_device_register_simple(GUNYAH_WDT_DRV_NAME,
> > +							 -1, NULL, 0);
> 
> I did not follow the discussion around this, so I may be missing something.
> If so, apologies.
> 
> This is a highly unusual approach. What is the point of not instantiating
> the watchdog device through devicetree and doing it in the init function
> instead ? There should be a devicetree node which instantiates the device;
> it should never be instantiated from the init function unless there _is_
> no devicetree, which is obviously not the case here.
> 
> Every other driver which supports devicetree has an .of_match_table
> which triggers device instantiation. If the Gunyah watchdog can for
> some reason not use that approach, its devicetree description should
> be fixed. Instantiating the device from its init function because its
> devicetree description is bad or missing is just wrong. It is even more
> wrong to try to contact the hardware or embedded controller to figure out
> if the device is there. This can have all kinds of negative impact on other
> hardware.
> 
The Gunyah WDT node gets overlayed by bootloader. We see that this
overlay is failing w/ upstream device tree since the overlay has
references to downstream code. Please see [1]. Hence we are trying to
register the platform device dynamically.

Thanks,
Pavan

[1]
https://lore.kernel.org/all/91002189-9d9e-48a2-8424-c42705fed3f8@quicinc.com/

