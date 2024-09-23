Return-Path: <devicetree+bounces-104546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2C197EB44
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF8121F21B14
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 12:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D702823AC;
	Mon, 23 Sep 2024 12:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mt7UTAWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76F8195803
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727093151; cv=none; b=u/3ycTarwrVpY29RtI2TlhbKKVC10Qpd0w1EMxgV9TljV0lpAWLpN9nMDGBT2hrMkFh8AOcBhN1YlHd9Ndrh1Nj7JL+KEhT4cgj8EyfRl3cPqjvXapK2Ls5qvzE6iqfx6ofyWve6cCqc9JLKyUKAS6VlPjntC9bIDHe46YGjsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727093151; c=relaxed/simple;
	bh=kVbAr8Gtp7hA5FtKOnU4nyhJGsMeBOhPLKLTHtp/zf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrJfYSreWaQZxC5swrACn+fAFAWX//OjR8VxpD2HSsIsK3pwzfXybvA5f6A+x/7AhA8/T9zkXEu+EHrjPkTdhSh0k50WhPBgE6yjgAE8306cAUTwnR0wKAxNbkZnc/MSEIACa8JA5hQfg2Crm372YffnaYI5NSRiOx/tQLAq80Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mt7UTAWF; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53653ff0251so4625498e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 05:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727093148; x=1727697948; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EBTgURoGPTyrhgd6NQeAv1e3dBtkib11KOrN0R+DkBw=;
        b=Mt7UTAWFvzOiA4Uk1CcGcwSGzpFfucPdrqXLv8zoSSpCUAVrjm6tZnnTGnnLookby8
         14AjIik7HSZDSMZXnMNJtERb/6i5XOo38HeMifTydKlK5swBTBOPHvmvER9Sb5wn/vLZ
         +edTW7rLVC+vav7TIXhoD76WPHa53uqfmUulVlIohEY7I4mRTEI3+gwxpR3Awhdp3LzI
         rWDbxiqiBzLDnCh2v+6rzUtXc7quDk5hPWCD2h+bB+vhbAlGt7HRgHyO5UCCHJrl5RO/
         53Bs0Cz1taKs259mmghxBbeeyqhGHtY6r7yq7AF1yvQnqp0FAX5KCJiaqggpT3wdbO1j
         vDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727093148; x=1727697948;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EBTgURoGPTyrhgd6NQeAv1e3dBtkib11KOrN0R+DkBw=;
        b=OYLat6YsdfSgKoVzuqAcIhgNYkGCMWT6Jv45onmozmqTnuj2AvuOCFJqW6Ohm8JX9z
         BRcDEauumODeKZnhMdgZV1Dht1xCxYurcKdeM3Pc3wXDE2Sjxh/3JPcm7hR5Lkm7rkk3
         8ja1JbuVTTc3mbi8scnNzH67FSI5vtGwuy5b+/q3jrUD4K0vy2m0s6xdjpAbK3woBuCc
         UF5pKjf+6zw4guSKYPyWs0qVGLJcEGBiL1t3/npsABiIoiRu41Oz+Ad0SUOCcReCneXE
         cOIejzNQETBGySLDN/vpIVDbpjsz6DzKH6vQ0PRbMx09IGnMsAs4ISTyzofa8I/a6brv
         QCwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWILFuBucLbvTmgnYVmE50bno9h46RTI/9bk7CUzu0JHLs5eX+aY8kjaWttmnGAK/SD66cxlk1svG3U@vger.kernel.org
X-Gm-Message-State: AOJu0YyZoEEkPIDs+55mIPbNcB0BuOitcLXBHFluMTO2Q4DBxkTHOzTa
	lZJC6EPqLJP4bze26HxgMoF/J9Xqe07ediJFkjRkpfce/iSZmFbDzdY6vfmb8ls=
X-Google-Smtp-Source: AGHT+IF87RZHyg+xLF+L1KVhytFSTf/2dPJElNXmzxO6NbHWZslgfHpMSp+V+MKtmnMLCF7TRmG8vQ==
X-Received: by 2002:a05:6512:3a8c:b0:536:54df:bff2 with SMTP id 2adb3069b0e04-536ac341b8dmr6330824e87.54.1727093147752;
        Mon, 23 Sep 2024 05:05:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368709687asm3275901e87.147.2024.09.23.05.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 05:05:47 -0700 (PDT)
Date: Mon, 23 Sep 2024 15:05:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, dianders@chromium.org, hsinyi@google.com, 
	awarnecke002@hotmail.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Modify Kingdisplay and
 Melfas panel timing
Message-ID: <zqmpodwfmabxpjtyhbbuiqkkgaggv3sif7iidv4epjswfw7chp@jomwcvififxk>
References: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <CAA8EJpp1ZHFFY9M3i47d658Q-m3ggJzhxSRUapX=tckgdAwcNg@mail.gmail.com>
 <CA+6=WdS4i3tWei=zzfS_-OW8hs-tgnifOLbNCirGpTx61xEtCQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+6=WdS4i3tWei=zzfS_-OW8hs-tgnifOLbNCirGpTx61xEtCQ@mail.gmail.com>

On Mon, Sep 23, 2024 at 05:22:11PM GMT, zhaoxiong lv wrote:
> On Mon, Sep 16, 2024 at 1:11 PM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Sun, 15 Sept 2024 at 10:10, Zhaoxiong Lv
> > <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> > >
> > > In order to meet the timing, remove the delay between "backlight off"
> > > and "display off"
> > >
> > > Removing variables: display_off_to_enter_sleep_delay_ms
> >
> > This is not enough. If this is a fix, then describe why the original
> > commit is incorrect, provide necessary explanation, details, etc.
> > Otherwise it looks as if you are removing the delay that was necessary
> > for other panels
> >
> > Also if this is a fix, it should be properly notated with the Fixes
> > tag, maybe cc:stable, etc.
> >
> > In its current state: NAK.
> 
> hi Dmitry
> 
> Our machine encountered an issue where, after entering S3 in the black
> screen state, there is a probability that the screen remains black
> after waking up. It seems that the DRM runtime resume has not yet
> completed, but the system has already started the suspend process.
> After reducing the delay for disable, this issue no longer occurs,
> Therefore, under the premise of meeting the timing requirements, we
> removed the delay between "backlight off" and "display off".
> 
> Previously,  "backlight_off_to_display_off_delay_ms" was added between
> "backlight off" and "display off"  to prevent "display off" from being
> executed when the backlight is not fully powered off, which may cause
> a white screen. However, we removed this
> "backlight_off_to_display_off_delay_ms" and found that this situation
> did not occur. Therefore, in order to solve the problem mentioned
> above, we removed this delay.

This should go to the commit message, rewritten to use imperative
language, with the appropriate Fixes tags.

> 
> This is the timing specification for the two panels:
> 1.  Kingdisplay panel timing spec:
> https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
> 2.  LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB
> 
> thanks
> 
> >
> > >
> > > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> > > ---
> > >  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 6 ------
> > >  1 file changed, 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > index 44897e5218a6..2f8af86bc2a0 100644
> > > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > @@ -31,7 +31,6 @@ struct jadard_panel_desc {
> > >         bool reset_before_power_off_vcioo;
> > >         unsigned int vcioo_to_lp11_delay_ms;
> > >         unsigned int lp11_to_reset_delay_ms;
> > > -       unsigned int backlight_off_to_display_off_delay_ms;
> > >         unsigned int display_off_to_enter_sleep_delay_ms;
> > >         unsigned int enter_sleep_to_reset_down_delay_ms;
> > >  };
> > > @@ -69,9 +68,6 @@ static int jadard_disable(struct drm_panel *panel)
> > >         struct jadard *jadard = panel_to_jadard(panel);
> > >         struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> > >
> > > -       if (jadard->desc->backlight_off_to_display_off_delay_ms)
> > > -               mipi_dsi_msleep(&dsi_ctx, jadard->desc->backlight_off_to_display_off_delay_ms);
> > > -
> > >         mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> > >
> > >         if (jadard->desc->display_off_to_enter_sleep_delay_ms)
> > > @@ -858,7 +854,6 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
> > >         .reset_before_power_off_vcioo = true,
> > >         .vcioo_to_lp11_delay_ms = 5,
> > >         .lp11_to_reset_delay_ms = 10,
> > > -       .backlight_off_to_display_off_delay_ms = 100,
> > >         .display_off_to_enter_sleep_delay_ms = 50,
> > >         .enter_sleep_to_reset_down_delay_ms = 100,
> > >  };
> > > @@ -1109,7 +1104,6 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
> > >         .reset_before_power_off_vcioo = true,
> > >         .vcioo_to_lp11_delay_ms = 5,
> > >         .lp11_to_reset_delay_ms = 10,
> > > -       .backlight_off_to_display_off_delay_ms = 100,
> > >         .display_off_to_enter_sleep_delay_ms = 50,
> > >         .enter_sleep_to_reset_down_delay_ms = 100,
> > >  };
> > > --
> > > 2.17.1
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

