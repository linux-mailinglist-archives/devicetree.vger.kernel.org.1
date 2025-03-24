Return-Path: <devicetree+bounces-160210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AD4A6DE22
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 16:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CB0916F875
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 15:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C411CD1E4;
	Mon, 24 Mar 2025 15:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Doa9pHwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901122A1BA
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 15:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742829501; cv=none; b=Nn/3s/hdtNMzN3iSCrvkxSJwqN7ySDV2budLIgbFkEqpcxj2NZFhaOoXN+8qByRiIciKm82d6+GyLv+RIcT2CKO33CXH3JLw9+1kEawHpKs3BeTbr9iF3Oze2Vt2Fj9wxto5q61TJmJnMHK/XnZHvXwcKGiPOl7mPwaaQxyks2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742829501; c=relaxed/simple;
	bh=XHQMUjEjbZLDgavTvCJiZqSwRVqVRVlMSHmpp7AADuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qUh1hFy5xdsvTjbteR8i+Imy699kgBNAQ2sa+vzSmDt4j9jgi1sNfIr7gd/glLiwUobqV99NHtrtWkRqJKOHUrSYLckZ/wtHPpbl3LZOJruZS5AIwyOoA92vlaZVvaAUykkPm1VOREyAXyhJr2KUyezbkZjOcn9qJsE7/RkRdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Doa9pHwZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PNst019589
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 15:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RBj5wpEg+SrAwIscXXtQbPvh
	Mb2gJI4cBrfY/nN2XHA=; b=Doa9pHwZCAMi1z2j69wrbna8FnDI9v5C8z4d9+p9
	cm/JQ4HPT8OT6XSMPvtuKCXFWTdoOtg2pOVbdGa8QxBTX59O6bJswOrmvt3SReV7
	pFWPjjxDeeecKGJDqR0F376hVI8gEDin5CiJ6x0hoT0p/6Y474NTQlz/BfbsalI/
	n1Q/XoX1uJHDW2LwBAYefLBeyGq3FBx1Q/gXKAnWEOpvMlDycYZRKT2rv0W46X9Q
	cxkamiZeX+IqBcnJ/RlJgSYwdKny3mAa79lIBOIankNCc703wqNCF+Kskd9lj+zI
	N6c/dgd1Gp/Le5gnyAFN22G2iMtwUdWvaFWt17EtoLg2RQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hm5uvw8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 15:18:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c543ab40d3so759754285a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 08:18:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742829496; x=1743434296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBj5wpEg+SrAwIscXXtQbPvhMb2gJI4cBrfY/nN2XHA=;
        b=aXQ/wCYO94e5l+qH76EyT/9pBul05QEpO1X+4yXzw4WPdfRmcn/JskspHBTN6gvzb1
         g3ZNpEwUKt7zrMOxZdBK6EURchgSCnd4sd7e5Y5xpMkP3oPErPQi0CI47IsSLmJ7d0G8
         QKZl0GF8WrlIxczK+bT3cVqybQfTsgG34HUOpAKLNkecCaXP6RltnYsWXYhNEG6w2VS9
         +/rFmpZTWJ6uH2+0YFsC7M02QYkZ60XTT3MUi6gOpr280TXnp7ru1l6u4hGZTDt6y5Iq
         kwrdrV75fvHrCIcPsiUOQPJv7kufO8jPsESx+3Eiytmyufy0Vh5aYqamtcO7/LlRs082
         q8FQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/Acpbv/kaq65faf6Dj222IhM1wkMAtkmFnCUmm2AXwBkLaVu+t9uFyD5vIiTSMrZBUY0+Lbq5YNdV@vger.kernel.org
X-Gm-Message-State: AOJu0YzFAFoQknTG7Esqm8qB99U+LvtOOhu0Y67dNC2E40ZTdKH95c8y
	paDJ1Qofv8Dh3zfyztIdPmPXDdRQRHOrsW+bYPxPnoxEEVOyY47agsKpfOoEdWUi6tGs2cr/htm
	IVQmf0YEUlUaKmHAbu5y5oCpTwYipAnsNMMQPv1b9UZm4aEteat6bh/VHyFqr
X-Gm-Gg: ASbGncv5bcE0v4seS3pEKDM5j7FLUWiGUVgyBJd/OsBJJvEBSwIcb3k84j6EQOJYym8
	O+CtMhBIjq8yFSyPxTlF+KdR7JLsWOX2sQPFhsa92jYZOSUm8oJY8lmVS3E0OSCE8QnLjGuIQ/1
	sb/spncTFd+8yZGg88MBPitYPTmtx7v4uyDCG+D2B3VeIhvs9voi7GrYVl4QX5wvEDxKCS7aoe1
	nz2w45tiTCE1OmbhvRXooAdCIkum2S/GeD1qf06ZTWA7REemcbYM0B1A5oM4Fs7HM/w8QbPvimD
	kai1e9eDprgq05FQtGVOyk6GQ02Jm/xo1OJbHLU2VlHi++eNzAr8fMVERJRoFqwmsZvuDAfh7ft
	Ck10=
X-Received: by 2002:a05:620a:258e:b0:7c5:a2be:6e4c with SMTP id af79cd13be357-7c5ba247882mr2372634285a.55.1742829496042;
        Mon, 24 Mar 2025 08:18:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFARjdRe711E7Dx0Shw9oLzlq33M5bIuw7jDsDdDa4jCC7zZ67lPaBlBULAAs8KAUp7bJnqSg==
X-Received: by 2002:a05:620a:258e:b0:7c5:a2be:6e4c with SMTP id af79cd13be357-7c5ba247882mr2372627385a.55.1742829495443;
        Mon, 24 Mar 2025 08:18:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7df853sm14218491fa.29.2025.03.24.08.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 08:18:14 -0700 (PDT)
Date: Mon, 24 Mar 2025 17:18:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, ivprusov@salutedevices.com,
        luca.ceresoli@bootlin.com, zhoubinbin@loongson.cn,
        paulha@opensource.cirrus.com, lgirdwood@gmail.com, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz,
        tiwai@suse.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
        Christopher Obbard <christopher.obbard@linaro.org>
Subject: Re: [PATCH v4 5/6] ASoC: codecs: wcd938x: add mux control support
 for hp audio mux
Message-ID: <ctcqkdbv6zh2rabkkr7tlhxlcfsn5nazjfbsnbbu4l4blyakft@pejdsvnazfh6>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
 <20250324130057.4855-6-srinivas.kandagatla@linaro.org>
 <CAO9ioeX9RTBAeL3+9STn+=oEYR0wtaF6yoa=esNddEvqLQyO9Q@mail.gmail.com>
 <e4e94fbf-172f-4cfd-becc-cb2836ac1fb1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4e94fbf-172f-4cfd-becc-cb2836ac1fb1@linaro.org>
X-Proofpoint-ORIG-GUID: zKxx_Ef28Ttu1G882jc6edpcyJgLYrF3
X-Proofpoint-GUID: zKxx_Ef28Ttu1G882jc6edpcyJgLYrF3
X-Authority-Analysis: v=2.4 cv=AJKH5mlP c=1 sm=1 tr=0 ts=67e177b9 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=lNgCk4es9Rhgkq0fFtoA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240110

On Mon, Mar 24, 2025 at 01:58:06PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 24/03/2025 13:50, Dmitry Baryshkov wrote:
> > On Mon, 24 Mar 2025 at 15:01, <srinivas.kandagatla@linaro.org> wrote:
> > > 
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
> > > Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
> > > ---
> > >   sound/soc/codecs/Kconfig   |  1 +
> > >   sound/soc/codecs/wcd938x.c | 50 +++++++++++++++++++++++++++++---------
> > >   2 files changed, 40 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> > > index ee35f3aa5521..a2829d76e108 100644
> > > --- a/sound/soc/codecs/Kconfig
> > > +++ b/sound/soc/codecs/Kconfig
> > > @@ -2226,6 +2226,7 @@ config SND_SOC_WCD938X
> > >          tristate
> > >          depends on SOUNDWIRE || !SOUNDWIRE
> > >          select SND_SOC_WCD_CLASSH
> > > +       select MULTIPLEXER
> > > 
> > >   config SND_SOC_WCD938X_SDW
> > >          tristate "WCD9380/WCD9385 Codec - SDW"
> > > diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
> > > index dfaa3de31164..88c758efe40d 100644
> > > --- a/sound/soc/codecs/wcd938x.c
> > > +++ b/sound/soc/codecs/wcd938x.c
> > > @@ -19,6 +19,7 @@
> > >   #include <linux/regmap.h>
> > >   #include <sound/soc.h>
> > >   #include <sound/soc-dapm.h>
> > > +#include <linux/mux/consumer.h>
> > >   #include <linux/regulator/consumer.h>
> > > 
> > >   #include "wcd-clsh-v2.h"
> > > @@ -178,6 +179,8 @@ struct wcd938x_priv {
> > >          int variant;
> > >          int reset_gpio;
> > >          struct gpio_desc *us_euro_gpio;
> > > +       struct mux_control *us_euro_mux;
> > > +       u32 mux_state;
> > >          u32 micb1_mv;
> > >          u32 micb2_mv;
> > >          u32 micb3_mv;
> > > @@ -3235,17 +3238,31 @@ static void wcd938x_dt_parse_micbias_info(struct device *dev, struct wcd938x_pri
> > >                  dev_info(dev, "%s: Micbias4 DT property not found\n", __func__);
> > >   }
> > > 
> > > -static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
> > > +static int wcd938x_select_mux_state(struct device *dev, struct wcd938x_priv *wcd938x, int state)
> > >   {
> > > -       int value;
> > > +       int ret = mux_control_try_select(wcd938x->us_euro_mux, state);
> > 
> > Hmm. Does this really work? You have selected the mux in probe
> > function, now you are trying to select it again. If I'm reading the
> > code correctly, you will get -EBUSY here.
> 
> On successful selection of mux state, the mux will be kept available
> (mux_control_deselect) for any new callers.
> 
> So we will not get EBUSY for the second caller.

No. wcd938x_populate_dt_data() selects the state by calling
wcd938x_select_mux_state(). Then you call mux_control_try_select() here.
As far as I understand, it will return -EBUSY as the sempahore is
already taken. Moreover, this is not how the MUX API is supposed to be
used. The driver is supposed to hold a state while it is still in use.

> 
> --srini
> > 
> > > 
> > > -       struct wcd938x_priv *wcd938x;
> > > +       if (ret) {
> > > +               dev_err(dev, "Error (%d) Unable to select us/euro mux state\n", ret);
> > > +               return ret;
> > > +       }
> > > 
> > > -       wcd938x = snd_soc_component_get_drvdata(component);
> > > +       wcd938x->mux_state = state;
> > > +       mux_control_deselect(wcd938x->us_euro_mux);
> > > +
> > > +       return 0;
> > > +}
> > > 
> > > -       value = gpiod_get_value(wcd938x->us_euro_gpio);
> > > +static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
> > > +{
> > > +       struct wcd938x_priv *wcd938x = snd_soc_component_get_drvdata(component);
> > > 
> > > -       gpiod_set_value(wcd938x->us_euro_gpio, !value);
> > > +       if (wcd938x->us_euro_mux) {
> > > +               if (wcd938x_select_mux_state(component->dev, wcd938x, !wcd938x->mux_state))
> > > +                       return false;
> > > +       } else {
> > > +               gpiod_set_value(wcd938x->us_euro_gpio, !wcd938x->mux_state);
> > > +       }
> > > 
> > >          return true;
> > >   }
> > > @@ -3261,11 +3278,22 @@ static int wcd938x_populate_dt_data(struct wcd938x_priv *wcd938x, struct device
> > >                  return dev_err_probe(dev, wcd938x->reset_gpio,
> > >                                       "Failed to get reset gpio\n");
> > > 
> > > -       wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro",
> > > -                                               GPIOD_OUT_LOW);
> > > -       if (IS_ERR(wcd938x->us_euro_gpio))
> > > -               return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
> > > -                                    "us-euro swap Control GPIO not found\n");
> > > +       wcd938x->us_euro_mux = devm_mux_control_get(dev, NULL);
> > > +       if (IS_ERR(wcd938x->us_euro_mux)) {
> > > +               if (PTR_ERR(wcd938x->us_euro_mux) == -EPROBE_DEFER)
> > > +                       return -EPROBE_DEFER;
> > > +
> > > +               /* mux is optional and now fallback to using gpio */
> > > +               wcd938x->us_euro_mux = NULL;
> > > +               wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro", GPIOD_OUT_LOW);
> > > +               if (IS_ERR(wcd938x->us_euro_gpio))
> > > +                       return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
> > > +                                            "us-euro swap Control GPIO not found\n");
> > > +       } else {
> > > +               ret = wcd938x_select_mux_state(dev, wcd938x, wcd938x->mux_state);
> > > +               if (ret)
> > > +                       return ret;
> > > +       }
> > > 
> > >          cfg->swap_gnd_mic = wcd938x_swap_gnd_mic;
> > > 
> > > --
> > > 2.39.5
> > > 
> > 
> > 

-- 
With best wishes
Dmitry

