Return-Path: <devicetree+bounces-152269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F39A4887B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 20:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19ABC18843E5
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649161ACEDB;
	Thu, 27 Feb 2025 19:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H9qMKKL3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659F717A313
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 19:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682965; cv=none; b=Yc2RDjuTXJ0j3CowRP4UUvuotSSrpthE8Ff+SMW6betseAE4gtNlIEUaAoY8UFRuf9OFm2Kl5gQZK/+VPoNd+5v+ja/xinfjOAe3OCgiLmzUPGPgpzu29VP/Rm4HVJzld/QQDFytoj60VYGaK9VBrUnIoOOJc0yXQUILxt4xGlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682965; c=relaxed/simple;
	bh=BuRTevzALKItQZ428xQb6alv2AlOwzdRzrIVuA9l5lk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YMZ1u8QIxH1a+9R3HrcW7WCU2aKWe2kSc93vax23CyhChrFDbfvQH9vnkyDz3Q0pDBhKBjIwm9JsIkG9EgJz7cPLlNKiRrMdu9TsMFWRF0CwSf7Hf6u2IUlhG1YTV4yJTs3dZdpYRb4Vpw1E54H+73QXvLBtu044FrZDNCqAFXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H9qMKKL3; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5462ea9691cso1361828e87.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 11:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740682960; x=1741287760; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YRlHVq/fhYckH/apG8DI4lghb+1AD7fw2kBANnribBo=;
        b=H9qMKKL35VarGsBGXNCl+/oELISY6bvK2qXa9tTalQhF0Tv2rnz/8s3Tz8iDP8kbO3
         CZdFryyEadmpeJachd4w17fuZ+o+f0EuQMp/m51AH4H8mHWoTKdFy9FPJL5f1BmOwWiN
         X/IEAB8WZBmF7F5ks1JmpPZBrNPZfXCGLr2ZD3DepZ8018esrzu5qI48+C2+V6UnfbBJ
         +r+zcaUGMYodf2Ij+/+36N3YcCoGKf1d+Vov5ChHVdrhrtN5DeH/7PVzLtd2/uX5ktZw
         IX5/qIl2EwkXPeXCOSht2WGn0cn6d6+/iOn65NPTELMXqM9gdvTtQKU5lK0h1eaOM0bl
         //Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740682960; x=1741287760;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRlHVq/fhYckH/apG8DI4lghb+1AD7fw2kBANnribBo=;
        b=RuCtJ4SihM9zkV36Rg2anfwrY2AT727wFLrQIqj/W9/+bxSTmpve/bNxnGMpCkeHee
         LYlEVzkroDSDDbs953fhGbbmPAgHg6sFT40z7INqrrsUmiQpDoZWOV7BsdI4NYbfDKIU
         8+vw5AVzwiOvTBDYMBVghWmTYBN20yPjs2PV96SXosMZ9Coe/Cl4sdMg4wgK4UoAu+/S
         D2lvxurvp2fNyrjP9RZJr5Jm4r6f/6XSYiJ44cbHPnHB2U/KQgbSK8txmCToP02IqeBh
         xkrv4PE5Cuv/xjXhZa4uRkLc0rHMbKa563iAhEwYVNfF9sJSOovsuSykZoDpa4dduGzV
         DK2g==
X-Forwarded-Encrypted: i=1; AJvYcCVN6HmITxPuKBocmSPI2VlbUODfMckbDePmZsDzagQyEPSgw3jRYL8orI7uVsrdPvBAO0/UJg0BfIEX@vger.kernel.org
X-Gm-Message-State: AOJu0YybsJWKohQkyOwZLUV3DSMFlW+VnyujeM/EBqN5boguOtpnKC2n
	hcgrMPRmrX48Oq2WYtMifRseLW2Smk5czg27WyfMpPYk75c7o4wCKOrpZK8NDNQ=
X-Gm-Gg: ASbGncu/XkA0MMu0QnIPHRe1yklruoqLFyCirf1XtOqZzKa2DgzLRqvQerqyG3PmkHS
	hN2DZ8u+4jBRl1wzbiUz6vSpQyStksuGClNa9nCCqtPa0tRoDHFPiAceA4wTr0NEqQsQbsqv1Ry
	qvZw12unP66ROfY3YnE6FciwfbWECN2u3bAQELX4SbOhDFDNJNjA3wwns7gwuPbZD8vSRk/f8vM
	gNTkhsygQ8c9iPIvVmqUnK/59A0WwwYpxqfPJf7JL+XIPvqnl8Pa9Eu0u51iwb+AmkbVUZeDBL7
	UBnTvOJNuPCUexyEsMdSLd0fvwBjIaLID7mG/RtRpEfWxgRWFD3ITv78hL3ri0JzrU648S+WUGr
	/0BySdw==
X-Google-Smtp-Source: AGHT+IEp+Zq10szXRG2lH2uoKic4S9ViqPTrcBL1J0yzeLJRfwMYDIrB8jNjP79DfJiBuDuA6G4xvg==
X-Received: by 2002:a05:6512:128e:b0:545:e2e:843a with SMTP id 2adb3069b0e04-5494c37d9d5mr240100e87.38.1740682960314;
        Thu, 27 Feb 2025 11:02:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5494417446fsm236096e87.31.2025.02.27.11.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 11:02:38 -0800 (PST)
Date: Thu, 27 Feb 2025 21:02:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v8 3/5] thermal: qcom: tsens: add support for tsens v1
 without RPM
Message-ID: <xv3c2ube7the3gat7ustws4ok6t26c33fyywqi6x3utx52qtzb@owyidrxeprcp>
References: <20250227110423.8418-1-george.moussalem@outlook.com>
 <DS7PR19MB888322C58FC555299256E8D99DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <eafirt5dg4vmafmu2wph47zrrzyqrz65z5ypqrl7fhr77qckfi@dgqwkkhnz4ge>
 <DS7PR19MB888363A4FF954A6275E81B4B9DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB888363A4FF954A6275E81B4B9DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Thu, Feb 27, 2025 at 09:25:05PM +0400, George Moussalem wrote:
> 
> On 2/27/25 18:59, Dmitry Baryshkov wrote:
> 
> > On Thu, Feb 27, 2025 at 02:56:41PM +0400, George Moussalem wrote:
> >> Adding generic support for SoCs with tsens v1.0 IP with no RPM.
> >> Due to lack of RPM, tsens has to be reset and enabled in the driver
> >> init.
> >>
> >> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> >> ---
> >>  drivers/thermal/qcom/tsens-v1.c | 48 +++++++++++++++++++++++++++++++++
> >>  drivers/thermal/qcom/tsens.c    | 24 ++++++++++-------
> >>  drivers/thermal/qcom/tsens.h    |  1 +
> >>  3 files changed, 64 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/thermal/qcom/tsens-v1.c b/drivers/thermal/qcom/tsens-v1.c
> >> index 1a7874676f68..877b27274fd2 100644
> >> --- a/drivers/thermal/qcom/tsens-v1.c
> >> +++ b/drivers/thermal/qcom/tsens-v1.c
> >> @@ -79,6 +79,17 @@ static struct tsens_features tsens_v1_feat = {
> >>  	.trip_max_temp	= 120000,
> >>  };
> >>  
> >> +static struct tsens_features tsens_v1_no_rpm_feat = {
> >> +	.ver_major	= VER_1_X_NO_RPM,
> >> +	.crit_int	= 0,
> >> +	.combo_int	= 0,
> >> +	.adc		= 1,
> >> +	.srot_split	= 1,
> >> +	.max_sensors	= 11,
> >> +	.trip_min_temp	= -40000,
> >> +	.trip_max_temp	= 120000,
> >> +};
> >> +
> >>  static const struct reg_field tsens_v1_regfields[MAX_REGFIELDS] = {
> >>  	/* ----- SROT ------ */
> >>  	/* VERSION */
> >> @@ -150,6 +161,43 @@ static int __init init_8956(struct tsens_priv *priv) {
> >>  	return init_common(priv);
> >>  }
> >>  
> >> +static int __init init_tsens_v1_no_rpm(struct tsens_priv *priv)
> >> +{
> >> +	int i, ret;
> >> +	u32 mask = 0;
> >> +
> >> +	ret = init_common(priv);
> >> +	if (ret < 0) {
> >> +		dev_err(priv->dev, "Init common failed %d\n", ret);
> >> +		return ret;
> >> +	}
> >> +
> >> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 1);
> >> +	if (ret) {
> >> +		dev_err(priv->dev, "Reset failed\n");
> >> +		return ret;
> >> +	}
> >> +
> >> +	for (i = 0; i < priv->num_sensors; i++)
> >> +		mask |= BIT(priv->sensor[i].hw_id);
> >> +
> >> +	ret = regmap_field_update_bits(priv->rf[SENSOR_EN], mask, mask);
> >> +	if (ret) {
> >> +		dev_err(priv->dev, "Sensor Enable failed\n");
> >> +		return ret;
> >> +	}
> >> +
> >> +	ret = regmap_field_write(priv->rf[TSENS_EN], 1);
> >> +	if (ret) {
> >> +		dev_err(priv->dev, "Enable failed\n");
> >> +		return ret;
> >> +	}
> >> +
> >> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 0);
> >> +
> >> +	return ret;
> >> +}
> >> +
> >>  static const struct tsens_ops ops_generic_v1 = {
> >>  	.init		= init_common,
> >>  	.calibrate	= calibrate_v1,
> >> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> >> index 1f5d4de017d9..f860ea86d130 100644
> >> --- a/drivers/thermal/qcom/tsens.c
> >> +++ b/drivers/thermal/qcom/tsens.c
> >> @@ -447,7 +447,7 @@ static void tsens_set_interrupt(struct tsens_priv *priv, u32 hw_id,
> >>  	dev_dbg(priv->dev, "[%u] %s: %s -> %s\n", hw_id, __func__,
> >>  		irq_type ? ((irq_type == 1) ? "UP" : "CRITICAL") : "LOW",
> >>  		enable ? "en" : "dis");
> >> -	if (tsens_version(priv) > VER_1_X)
> >> +	if (tsens_version(priv) > VER_1_X_NO_RPM)
> > I'd suggest to replace these checks with >= VER_2_X. This saves us from
> > all the troubles if there is another 1.x 'modification' later on.
> 
> makes sense, will change to >= VER_2_X. Thanks for the feedback.

THanks! It also makes sense to split this into two patches then: one
which changes the condition all over the place and the other one which
adds VER_1_X_NO_RPM.

> 
> >
> >>  		tsens_set_interrupt_v2(priv, hw_id, irq_type, enable);
> >>  	else
> >>  		tsens_set_interrupt_v1(priv, hw_id, irq_type, enable);

-- 
With best wishes
Dmitry

