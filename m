Return-Path: <devicetree+bounces-209472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAEBB37764
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 03:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 591D61B667EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 01:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF84B1CAA65;
	Wed, 27 Aug 2025 01:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kg56D+a4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546CB19924D
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259273; cv=none; b=p1txq740FPUlIQwFd4zeheKUOe4O9FbObsxBMcefGe1BdO7SPrRNTca4r08fJalNbQUXlFuPXkIFKlPFKfq10Qlj1gtEpR3JWskXnlWpW+40ejCNPyXpbD6MC+Ac4LDf/VC7jekZa+FA/tFVYFlKKzuAOH92GjnQYO40bpHyQS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259273; c=relaxed/simple;
	bh=tQwxUSIq0Kj2ITXgGAuR54KOzVXtZ2RDQiyDExb73GY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W1st0p4Qs2t0HvBNWkhCO53YKeYXV8DF3G9hYKazqMh+eu9RcdoMt7myyA3hMTM92oefOX6l6vE94qvz+hbnC/XTMC+/GqdNeELPOdbOltyIMuNSGg0Rm/AQmQz5TddSDdGFL1BEpUMvrHbfxf1ZwmwGnisofdVhj/xt9UDIhQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kg56D+a4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QK1hYS031245
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:47:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xx/i2cO5t5bvYG8Jnj6rptwa
	dH+uLUpX0bk5U9Ers4Y=; b=Kg56D+a4P8nAhTjJmi9qpmI0aJM1ZaYROFgaEVPV
	t3pF7Mf1tHDeiM1HCTckr9JYpKPeAUInurtePCh8aKmMCtIfeQedKxAoiwu7YcP1
	hA+TlPjgT0NIGcb9G7OT6JhILRlUSplCj4R5OGtfivDEt0raKQ2hVZKWqPifCgLn
	+cJfPLy70149GekAi4rXBJ+0oJhhYQNlC/7TiR5E/KGxMJ7GFApguEP0GVVwQK40
	QbtuM/MvUKLW3hKtLAYbQI+WIV9yre/LOohOtUk34adWYtAvoZRNZDw+xr+3DbXx
	N7c4qaFCTjk95h6Ddkk2e51hX9yQARCIRHYUdudVBDbtyQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2u38s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:47:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b109ae72caso144029411cf.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259268; x=1756864068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xx/i2cO5t5bvYG8Jnj6rptwadH+uLUpX0bk5U9Ers4Y=;
        b=bg8QBJ081DIr1YphCreywlvSRUEMiSEXg14Jx+jix4zysJ3hT4ax0JusOz7wGVloW4
         uVyBGMc+ZckQIHolekVkgGwlIdXxi5RZL/Plud99qknfYVBNvjne0kqX20DT3oM3HAry
         5gt0AkZSeIpNqAvxMc5r+Q4KXav9L3fVk8U6Mu2dO7OBCg068fS5vchqrJyAlTaEhqEJ
         sSI3/sncddCXcQL/nx71LRe8CwHHqfYpv6iI49Q4h3DeWaa0+MKE4gAHhHPJprv6l0Vy
         dMSTv4s7FukSoru93776jeGVVSGwVfM4xKrLISv83lRm+o9wHkFdw5I84DHKvAEjY+rR
         UIbQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4lHNNIAtC3HRtcqzA5JNC5rDnJFX/MG6QWY5Lrt2/GSw6uPuWauVCoQq+JV64NAmcQtCXtsVd/Ck7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+jmGXfWXGJ9Z3n3FLjA56tpdy52lXhiO5x8PPB5epcy7GLzwu
	1ugBmK8bYYF7YNYOMkSpvYaSkkt+YWLnwusFYe3kRcNyMxTtwQah1Mzl0MfzRuI4Ut1JXMkX5DH
	vaZS2Al0tDtOWLMuzebWuDoxI9iTDUWzOI1npsnpfSBDOpkaCl7oUQHRcdtFeL0j9
X-Gm-Gg: ASbGncskrdkksHUNPkna/hQIJApHSb/XztCrPlVLxMjm8R9KWg7qksC+r5uHdHG+X+1
	DIlEzU82aHFxwL9mgpQ6O+kjpjLPBG+Qf0tNnWyPBwm0p6mWPCWcxGCbfPAFJvEvncbEYglHnQ6
	rsH6A/x6BYjGvEgDcj7yTHwUX60YxCo5NnfrAgPSCp81FK1g1OJ5iYJnU4T1/Nm1XvmZorPWejw
	QBXvQpeAVGAMfQQrT/X0G4bEE0Vi4bYKd9qPRbubKNQtv7um0zCp5xWTSiyjZC8BPPGKnQPkTy4
	jWWzaGLmWr2OyYZM31cef+dCh3F3m7U56R+01CJqBJ9t9XHI7CtP8uGrNtczpW9BWtoYTrdJujt
	TvwpJajPN2EbU6zXLWVOAIh7WcUFxJs1thzjGAzErYhMGAjlNwXIT
X-Received: by 2002:a05:622a:249:b0:4b2:e151:a1e3 with SMTP id d75a77b69052e-4b2ea694690mr28935831cf.36.1756259268290;
        Tue, 26 Aug 2025 18:47:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBHJPUrlKW+2YGHEaVIwfEJxbzGaS+UXxCsnH3ue7BGMARfOzC3ut6mn4j0kUEjyJboob2Jg==
X-Received: by 2002:a05:622a:249:b0:4b2:e151:a1e3 with SMTP id d75a77b69052e-4b2ea694690mr28935531cf.36.1756259267642;
        Tue, 26 Aug 2025 18:47:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20d2d4sm25123951fa.5.2025.08.26.18.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:47:45 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:47:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: setotau@yandex.ru, Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH v3 3/3] pinctrl: qcom: Add SDM660 LPASS LPI TLMM
Message-ID: <xcsx7fxl2wcnd6ocbzlptwkzm433aneaopigp5j2bxqq64mltn@56uq6lflgyio>
References: <20250825-sdm660-lpass-lpi-v3-0-65d4a4db298e@yandex.ru>
 <20250825-sdm660-lpass-lpi-v3-3-65d4a4db298e@yandex.ru>
 <wgpxw6pj5xmtlc3kabprkfx4o2nsvmykyemmdulhvyxmahes3z@xb7tlzec7nv2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wgpxw6pj5xmtlc3kabprkfx4o2nsvmykyemmdulhvyxmahes3z@xb7tlzec7nv2>
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68ae63c7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=qC_FGOx9AAAA:8 a=pGLkceISAAAA:8 a=vaJtXVxTAAAA:8
 a=pdFGTGbI3ZYik3Y3MvEA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXyJNrA0040Jgh
 cT7Sk6xXn5HMDqdUj0i1JiEQbfusa+057rbYZSRt98i/DVzQLNb1iNXv3+6hnHcZTk7BWse/Vgv
 c8cmxP54wAd2Hf2mBuBybhOSsb7F6y6atrjYv1Sp5wSbG1VsJkIPYqRCydQjD990RsTaJb1j7rP
 rhWDMU5TU+0lGCZSIO/olCFF9RckRHaKO5e+KoPBlj9vRdF1k9aVXcTtH6WvcSM6A2UYQs2RWBc
 /pUivBstIY0waJw+EQlE2ymbrNc1XiYb7A4nH1FUUAoigAhWlgsyhdvW8cu6eSK037c9UA3o+UC
 i75l2/ajVREGlJQPOzN+uYC5poW0W5lLtVOzBgiaDDc4QjVQPSotP/oLyk9hYrN946OCKQGgDO8
 1hk0tbR5
X-Proofpoint-GUID: RI22Z9Ab0OFuGnXe-PgdWz4DyRUTyuXT
X-Proofpoint-ORIG-GUID: RI22Z9Ab0OFuGnXe-PgdWz4DyRUTyuXT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Mon, Aug 25, 2025 at 10:00:28PM -0500, Bjorn Andersson wrote:
> On Mon, Aug 25, 2025 at 03:32:30PM +0300, Nickolay Goppen via B4 Relay wrote:
> > From: Richard Acayan <mailingradian@gmail.com>
> > 
> > The Snapdragon 660 has a Low-Power Island (LPI) TLMM for configuring
> > pins related to audio. Add the driver for this.
> > Also, this driver uses it's own quirky pin_offset function like downstream
> > driver does [1].
> 
> Please describe the quirky behavior in the commit message, rather than
> just referencing the downstream code.
> 
> > 
> > [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > Co-developed-by: Nickolay Goppen <setotau@yandex.ru>
> > Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> > ---
> >  drivers/pinctrl/qcom/Kconfig                    |  10 ++
> >  drivers/pinctrl/qcom/Makefile                   |   1 +
> >  drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c | 196 ++++++++++++++++++++++++
> >  3 files changed, 207 insertions(+)
> > 
> > diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
> > index dd9bbe8f3e11c37418d2143b33c21eeea10d456b..ef42520115f461302098d878cb76c6f25e55b5e4 100644
> > --- a/drivers/pinctrl/qcom/Kconfig
> > +++ b/drivers/pinctrl/qcom/Kconfig
> > @@ -68,6 +68,16 @@ config PINCTRL_SC7280_LPASS_LPI
> >  	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
> >  	  (Low Power Island) found on the Qualcomm Technologies Inc SC7280 platform.
> >  
> > +config PINCTRL_SDM660_LPASS_LPI
> > +	tristate "Qualcomm Technologies Inc SDM660 LPASS LPI pin controller driver"
> > +	depends on GPIOLIB
> > +	depends on ARM64 || COMPILE_TEST
> > +	depends on PINCTRL_LPASS_LPI
> > +	help
> > +	  This is the pinctrl, pinmux, pinconf and gpiolib driver for the
> > +	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
> > +	  (Low Power Island) found on the Qualcomm Technologies Inc SDM660 platform.
> > +
> >  config PINCTRL_SM4250_LPASS_LPI
> >  	tristate "Qualcomm Technologies Inc SM4250 LPASS LPI pin controller driver"
> >  	depends on ARM64 || COMPILE_TEST
> > diff --git a/drivers/pinctrl/qcom/Makefile b/drivers/pinctrl/qcom/Makefile
> > index 954f5291cc37242baffc021e3c68d850aabd57cd..cea8617ac650ecfc75c2a0c745a53d6a1b829842 100644
> > --- a/drivers/pinctrl/qcom/Makefile
> > +++ b/drivers/pinctrl/qcom/Makefile
> > @@ -43,6 +43,7 @@ obj-$(CONFIG_PINCTRL_SC7280_LPASS_LPI) += pinctrl-sc7280-lpass-lpi.o
> >  obj-$(CONFIG_PINCTRL_SC8180X)	+= pinctrl-sc8180x.o
> >  obj-$(CONFIG_PINCTRL_SC8280XP)	+= pinctrl-sc8280xp.o
> >  obj-$(CONFIG_PINCTRL_SDM660)   += pinctrl-sdm660.o
> > +obj-$(CONFIG_PINCTRL_SDM660_LPASS_LPI) += pinctrl-sdm660-lpass-lpi.o
> >  obj-$(CONFIG_PINCTRL_SDM670) += pinctrl-sdm670.o
> >  obj-$(CONFIG_PINCTRL_SDM845) += pinctrl-sdm845.o
> >  obj-$(CONFIG_PINCTRL_SDX55) += pinctrl-sdx55.o
> > diff --git a/drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..36fba93fda1160ad51a979996f8007393555f222
> > --- /dev/null
> > +++ b/drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c
> > @@ -0,0 +1,196 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * This driver is solely based on the limited information in downstream code.
> > + * Any verification with schematics would be greatly appreciated.
> > + *
> > + * Copyright (c) 2023, Richard Acayan. All rights reserved.
> > + */
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pinctrl/pinctrl.h>
> > +
> > +#include "pinctrl-lpass-lpi.h"
> > +
> > +enum lpass_lpi_functions {
> > +	LPI_MUX_comp_rx,
> > +	LPI_MUX_dmic12,
> > +	LPI_MUX_dmic34,
> > +	LPI_MUX_mclk0,
> > +	LPI_MUX_pdm_2_gpios,
> > +	LPI_MUX_pdm_clk,
> > +	LPI_MUX_pdm_rx,
> > +	LPI_MUX_pdm_sync,
> > +
> > +	LPI_MUX_gpio,
> > +	LPI_MUX__,
> > +};
> > +
> > +static const u32 sdm660_lpi_offset[] = {
> 
> This should be write only, but I still find it error prone and ugly to
> keep this array separate of the pingroups - and I don't fancy the extra
> indirect jump just to lookup an element in the array.
> 
> Can't we instead extend lpi_pingroup with an "reg_offset", and then use
> lpi_pinctrl_variant_data->flags to indicate when this should be used?
> 
> That consolidates the information in the groups[] and avoids the
> additional function calls.

I R-B'ed too early. This seems to be a good idea.


-- 
With best wishes
Dmitry

