Return-Path: <devicetree+bounces-159776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A759AA6C10D
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 18:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E149618969DD
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 17:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C4122AE59;
	Fri, 21 Mar 2025 17:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e/CG7mZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2E41DE8AD
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742577392; cv=none; b=ay32cafuq5Ef+SvvLK0jwJswTMaayqWvzzf98Z/ufWlcUkrcPljyXDoadstIJOAAWTKyZ/XNMWjjVK5Gy/ZGbZyxQzQBMF+VXKuj9oCz+Au4Lx8zvvCEmBOEFppv1pCJQVbFCZPwb6abgJ56FViy8Ggr0BEffvLoCOIHiM01SC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742577392; c=relaxed/simple;
	bh=+848UubEfUlVqHIh86yyMuR5GV6U3zPJjpafMFufYKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Te0Ad/iNORjiwEI8shbijC87O2Xnt0BRSR87ehzJaReYK7yQKB9eSJkPpgG/25Cwot6ZWpolrQKTbQgApkQIvMvLobrReYJ0PsbDifP6OqG/ztQCZ4oBs980KP1vlJrt5c0XspZJ4Vewn1v+1gOTCPAJGtGeCJ+ebDMVGJ+LfhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e/CG7mZx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATBqq012660
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:16:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j1Qca/X2JAHkCd7JshisB8OI
	A+vM4MvdVceWmdBp5HU=; b=e/CG7mZxpg689yaDCOVgEd5j3ytR4fMwAjUEg5T9
	BGumteu0p2E0eV10N6qmzm9VKUpPsW3YTfxrevhFZ8t3bmOfaZDlHS3C0o0BSeuH
	fxfYqyiF08piGWPies+09FNj2BbTZ9G+CMf/RDKMbyCKDFgLnr9xaCwlbPKxHCNg
	W2yxrcWMMpoLk48b4xM1dcO4bNqUYY+4Pdz1SmitKW3spL5h6bLCMVLlOmljE8wM
	Ir9OfxR1HmJ2IncJkKCGMJNTSBi4hfFxA74YsEBEBhZ7/jh9xaEDCb8LAy+asDgW
	x+F76AHW8Noc6jW2KUaNJ/79zXJDaCdAhbo3mD3ySbUlXA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g4t46ktx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:16:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c59ac9781fso393520485a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 10:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742577388; x=1743182188;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1Qca/X2JAHkCd7JshisB8OIA+vM4MvdVceWmdBp5HU=;
        b=OdbqDojKtZPoLvq9WhvYOLbCrtp2fMKnMbD2IDGsQ2dPUeB6pIeKaVwSjoALqIa6PK
         l5jiwKb5KXWE5LzYsMe+q5F63xRdKNArtRoVMyZYc2DgGvvM0FfvUzDKCAXGFPxnKDG7
         TA/I7avNO1vAjcqnSrifZNgPQqFdN97bQM31v1Wi0PRf11mrexVyVVCm4SAxEg1sNjDG
         K7Sotb+JAzRLeBsM3GxiJE+S4j9BE0GHIwX7RzzFsKj9DX7JtYj0tK2byk0Pzk6Uy+u1
         Komre/NQJNQLYYdhiFAVasorbQ+3gS9pHx3m4Yrvyqx5bDVZ7EXqtZjEN0ggaViCLF0k
         6cDw==
X-Forwarded-Encrypted: i=1; AJvYcCVcD9p6kVilqT++OSJQW7AMQ+MZcNwgXdojrTCfRNLm2+x/fQqTTWPd/ihpn7WvDfH3T+HqsXhtxcNv@vger.kernel.org
X-Gm-Message-State: AOJu0YyPxFDIbSZehSXAlGtBEQ4G0eU43e/m4f43b6t+uVFCE0yzm7wh
	aYpX9dA9cP7NP6iMVt9JdqNNCOfotUU1tEKAtqepDFm8nq3jYNZJ14LzHNbAskdcV1rX2ZlftrY
	FI9D0Qu511tRUsipr4BGe5SnfNwZXgFllTU5Q+UrdUUnX/ra0ja5lp9KPrGQP
X-Gm-Gg: ASbGncvs19t+qML9FomZUGCgsSq4sh/KLNxCDtYDUpZ+2bYgsPqzUEdaNMAkVV3VP47
	aEQj8BT4ZjXweI3sAPTI0ar79VRBqH0tpqkKWAgxvUWxDw7l5YH8YyNjASgr9+rRQBoL4kixPpI
	Sf3eAoba0cPCiHTHR8J9ABu8VjwOyIlvse23SCnz4yGemm4pv247ndD5HS194mq7wCo3GLgDPvN
	gvvS32ylH9VUzOkFwXNGgBckYdFKT116ePY5+zE2Y0lj3teVq96Xo1FZJAqnpAeeOMrYlsBgyjK
	g51Qa0E+SCGeKaYvEk5EnTVRQWk7iTsBl2/qnm8/7pFN/JodLyJ9C9p2xG5X1prc4k18aNEOJ0a
	f10A=
X-Received: by 2002:a05:620a:390c:b0:7c0:a1c8:1db3 with SMTP id af79cd13be357-7c5b0505f09mr1299545185a.11.1742577388433;
        Fri, 21 Mar 2025 10:16:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGim5Ytd6Ycz4Lr38mIgtm2b1j4Nmu2dHEXnaayvaGs6Xyh2f8fMFf7D3pfIQqOvfw1h9+r5A==
X-Received: by 2002:a05:620a:390c:b0:7c0:a1c8:1db3 with SMTP id af79cd13be357-7c5b0505f09mr1299538385a.11.1742577387725;
        Fri, 21 Mar 2025 10:16:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6468c7csm226104e87.5.2025.03.21.10.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 10:16:26 -0700 (PDT)
Date: Fri, 21 Mar 2025 19:16:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, ivprusov@salutedevices.com,
        luca.ceresoli@bootlin.com, zhoubinbin@loongson.cn,
        paulha@opensource.cirrus.com, lgirdwood@gmail.com, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz,
        tiwai@suse.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org
Subject: Re: [PATCH v2 4/5] ASoC: codecs: wcd938x: add mux control support
 for hp audio mux
Message-ID: <3ke2oxgd2dh5wghgatyzivaxspqlezn3x5vtjaxszqad4dhfxd@vpzxmi2nqmrw>
References: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
 <20250320115633.4248-5-srinivas.kandagatla@linaro.org>
 <rdvsnxuc6by6sci56sh7thzpxo5cqi7q24fnmc7hi5yrfszwrg@kqjpiilko3xo>
 <adfecf33-6ab2-4c3e-b7d9-3d6481ebd3f8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <adfecf33-6ab2-4c3e-b7d9-3d6481ebd3f8@linaro.org>
X-Authority-Analysis: v=2.4 cv=HMPDFptv c=1 sm=1 tr=0 ts=67dd9eed cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=9s2PtkJ4WOh6SrYgvskA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: M8Buqaz2sNrt5xfS-6jx2yj4aHFa3rq_
X-Proofpoint-ORIG-GUID: M8Buqaz2sNrt5xfS-6jx2yj4aHFa3rq_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503210127

On Fri, Mar 21, 2025 at 02:14:31PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 20/03/2025 14:03, Dmitry Baryshkov wrote:
> > On Thu, Mar 20, 2025 at 11:56:32AM +0000, srinivas.kandagatla@linaro.org wrote:
> > > From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > > 
> > > On some platforms to minimise pop and click during switching between
> > > CTIA and OMTP headset an additional HiFi mux is used. Most common
> > > case is that this switch is switched on by default, but on some
> > > platforms this needs a regulator enable.
> > > 
> > > move to using mux control to enable both regulator and handle gpios,
> > > deprecate the usage of gpio.
> > > 
> > > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > > ---
> > >   sound/soc/codecs/Kconfig   |  2 ++
> > >   sound/soc/codecs/wcd938x.c | 38 ++++++++++++++++++++++++++++++--------
> > >   2 files changed, 32 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> > > index ee35f3aa5521..b04076282c8b 100644
> > > --- a/sound/soc/codecs/Kconfig
> > > +++ b/sound/soc/codecs/Kconfig
> > > @@ -2226,6 +2226,8 @@ config SND_SOC_WCD938X
> > >   	tristate
> > >   	depends on SOUNDWIRE || !SOUNDWIRE
> > >   	select SND_SOC_WCD_CLASSH
> > > +	select MULTIPLEXER
> > > +	imply MUX_GPIO
> > 
> > Why? This is true for a particular platform, isn't it?
> > 
> > >   config SND_SOC_WCD938X_SDW
> > >   	tristate "WCD9380/WCD9385 Codec - SDW"
> > > diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
> > > index f2a4f3262bdb..b7a235eef6ba 100644
> > > --- a/sound/soc/codecs/wcd938x.c
> > > +++ b/sound/soc/codecs/wcd938x.c
> > > @@ -19,6 +19,7 @@
> > >   #include <linux/regmap.h>
> > >   #include <sound/soc.h>
> > >   #include <sound/soc-dapm.h>
> > > +#include <linux/mux/consumer.h>
> > >   #include <linux/regulator/consumer.h>
> > >   #include "wcd-clsh-v2.h"
> > > @@ -178,6 +179,8 @@ struct wcd938x_priv {
> > >   	int variant;
> > >   	int reset_gpio;
> > >   	struct gpio_desc *us_euro_gpio;
> > > +	struct mux_control *us_euro_mux;
> > > +	u32 mux_state;
> > >   	u32 micb1_mv;
> > >   	u32 micb2_mv;
> > >   	u32 micb3_mv;
> > > @@ -3243,9 +3246,16 @@ static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component, bool activ
> > >   	wcd938x = snd_soc_component_get_drvdata(component);
> > > -	value = gpiod_get_value(wcd938x->us_euro_gpio);
> > > +	if (!wcd938x->us_euro_mux) {
> > > +		value = gpiod_get_value(wcd938x->us_euro_gpio);
> > > -	gpiod_set_value(wcd938x->us_euro_gpio, !value);
> > > +		gpiod_set_value(wcd938x->us_euro_gpio, !value);
> > 
> > This looks like a separate topic, but why is 'active' being ignored?
> > 
> > > +	} else {
> > > +		mux_control_deselect(wcd938x->us_euro_mux);
> > > +		wcd938x->mux_state = !wcd938x->mux_state;
> > > +		if (mux_control_select(wcd938x->us_euro_mux, wcd938x->mux_state))
> > 
> > Can't it just be 'mux_control_select(wcd938x->us_euro_mux, active)' ?
> > 
> 
> No, the way this is supposed to work is that if the codec detects cross
> connection, It will try to switch the mux to other option.

I see. It would be nice then to converge GPIO code and mux code in this
area. Invert mux_state, then use it in both paths.
> 
> So using active will just work if we try to pulg one type of headset all the
> time. But if we change the headset type the mux will still be configured to
> use the old headset type and not work.
> 
> fyi, active is always set to true
> 
> I agree the argument to api is poorly labeled. It should be labeled as flip
> or something on those lines?

If it is always true, then it should be dropped instead of renaming it.

> 
> 
> thanks,
> Srini
> > > +			dev_err(component->dev, "Unable to select us/euro mux state\n");
> > > +	}
> > >   	return true;
> > >   }
> > 

-- 
With best wishes
Dmitry

