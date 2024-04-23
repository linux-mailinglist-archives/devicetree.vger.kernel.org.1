Return-Path: <devicetree+bounces-62050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1364A8AF8DD
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 23:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5500DB28531
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 21:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EF3143866;
	Tue, 23 Apr 2024 21:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L+ow5VfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CF71422B7
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 21:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713907238; cv=none; b=mDSUP4MMIDsqtNM+LSgu6f4mh5tE6QGxxWeywKij+vLOotx7Zqb06olhYCFOVkXS0pDTmQ+pH4DPTsJRw/9O+joh8FR0W8R2ldZO7uQ+T4WBNnafck/aVzZYT8rRTDjslO7nIFOF8YPZDNu1Rb6D87JmnjChcFb+CxQclfpOyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713907238; c=relaxed/simple;
	bh=OxVlvEQXdrsrpurTN48N/QDvjiVMaJVq+6lmc/nXQS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LiE4yzuAj20Xmm/dQE2dCfwRuE/jAe+LIzbkngqlVdCZx67xk2hOifQ+11tdX7CKYL7gUxJ0Jfp7gSoRjHPizCgYq1h6m5z0ZtDM6GMHvh5QsGauofX+wI3gk0KDMeuxIZ+YvaPOAxFr6QNkhGQZXQX9Wgjj/A5otBNLXOJAxiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L+ow5VfO; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51b09c3a111so4599592e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 14:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713907235; x=1714512035; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0tn7jHTPlJZyt8GzA2t3AGAiFH5LqDxhof40LZ2i7NE=;
        b=L+ow5VfOLqgJUuL0fYfsD0L9Vwyswmj4XQZrE07JydRRfiAnJUEfut5gb3m1Uih2os
         bZzO2RCkvEnR6k01HH8w36M0Uk3E2TJG4CQfoFCksDzB6Ptk2foQxr/YL3qmCySpYgYG
         MS5xZF2z/NDJZ8edHe0j/AvuOMRuenM8PLyFgl+r6Rghy8XDIMf71Ta0tIR1MNHv6eWQ
         PjeqDcsd1aINyttM73HBgphbqb63GB3+9hB33nJ4TkOrNlAiHXM+sZx8lt6N2rVrVo01
         +A+ZFiD0ls0cqNohORaKOPD280znaxZatrIG2FNURCih6YVuMqgxFMY/dW0C3YHk1WO0
         iNfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713907235; x=1714512035;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0tn7jHTPlJZyt8GzA2t3AGAiFH5LqDxhof40LZ2i7NE=;
        b=j0Io2o7h0eahlcCazBuDmomxn7p7Y1DG25kxmcFXpe+6S2L5Au83rSksii9x6e3DUW
         nO6pB3EeMWIViWmnyy+ASlhvgxeZzMCcSCc9eKkJFv/OFNESkRfN1cFwIa9kaP/5W5or
         lx8l+eT1OYPAn/6Fru4LD4Wn7sXwxRPWDAlEQ0Nq8qZWhxlegL5hx+lXe0D9ZJQytHHZ
         eIAYwTSJ+vkqdoPCZIZSoVP1Qh9itFimA/IE+sOqaUBpzPGI2Hbc5ggDHzacOENUnSuq
         dUpz4Pt7GQO1wQetQNI4STiPvDhOU5QkeqHJ0AOue7ca1qG54JBQBsoaumdRQmPzcxwn
         Ebgw==
X-Forwarded-Encrypted: i=1; AJvYcCXzMUz2EpAYjwRNGNZaytuulJnbNvuhDEOcqQZDqSwk5ceMkOI/l3ZDgcBt4oy819WveJK902yhH7eSwI4/yLLkJG75aV3z0M1peQ==
X-Gm-Message-State: AOJu0YzpVpvFv86rqGraqxWCkQERxLKQNFO0lIGKozfx9lU1e27/r8Yq
	6XMc7w4atvyn4GS6d5bzewoIrucilld/EY/qgALlA/ES1cI4T+KL+XzwtxFgeMc=
X-Google-Smtp-Source: AGHT+IG2fa2zlxzT18mxIztyQmdwN1GLVVd8irrAfD2zS09j2Iua0mDVu6i7JhrunIrd2O8qTOHNcA==
X-Received: by 2002:a05:6512:3253:b0:516:dd4f:d9ea with SMTP id c19-20020a056512325300b00516dd4fd9eamr406933lfr.5.1713907234929;
        Tue, 23 Apr 2024 14:20:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::8a5])
        by smtp.gmail.com with ESMTPSA id e2-20020a056512090200b0051b0f4e1b0dsm926657lft.276.2024.04.23.14.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 14:20:34 -0700 (PDT)
Date: Wed, 24 Apr 2024 00:20:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Doug Anderson <dianders@google.com>
Cc: Hsin-Yi Wang <hsinyi@google.com>, 
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>, mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	cong yang <yangcong5@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v1 2/2] drm/panel: kd101ne3: add new panel driver
Message-ID: <an2k3vgynq4as2sd5dy6ccmdiqedmo7qjsab5qyfhesd333i2a@235sqph3bze5>
References: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240418081548.12160-3-lvzhaoxiong@huaqin.corp-partner.google.com>
 <zanx5y3obqmewnbooovf52hx6vh7tpi4zsbse2dyzcqzddmzhw@kewxoa6n3mja>
 <CACb=7PURWtS8bwT5EcAFHhu7deHd2Y8cNOattfdwyEYpOUcbnQ@mail.gmail.com>
 <vbt2nxddw2dc7hkreq4iybv5zv5xyp32oajybeqsphgfrhzmn7@tskvckljmxpe>
 <CACb=7PVTvV9nsFu1ZAXu7YTjSOAGZka+c__EJq3J3qgSJGEShw@mail.gmail.com>
 <CAD=FV=VYAzqsGEBJai9b9n+HxHiG59L1vF73AEWcTwLS_ryjWw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=VYAzqsGEBJai9b9n+HxHiG59L1vF73AEWcTwLS_ryjWw@mail.gmail.com>

On Tue, Apr 23, 2024 at 01:41:59PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Apr 23, 2024 at 11:10 AM Hsin-Yi Wang <hsinyi@google.com> wrote:
> >
> > > > > > +#define _INIT_DCS_CMD(...) { \
> > > > > > +     .type = INIT_DCS_CMD, \
> > > > > > +     .len = sizeof((char[]){__VA_ARGS__}), \
> > > > > > +     .data = (char[]){__VA_ARGS__} }
> > > > > > +
> > > > > > +#define _INIT_DELAY_CMD(...) { \
> > > > > > +     .type = DELAY_CMD,\
> > > > > > +     .len = sizeof((char[]){__VA_ARGS__}), \
> > > > > > +     .data = (char[]){__VA_ARGS__} }
> > > > >
> > > > > This is the third panel driver using the same appoach. Can you use
> > > > > mipi_dsi_generic_write_seq() instead of the huge table? Or if you prefer
> > > > > the table, we should extract this framework to a common helper.
> > > > > (my preference is shifted towards mipi_dsi_generic_write_seq()).
> > > > >
> > > > The drawback of mipi_dsi_generic_write_seq() is that it can cause the
> > > > kernel size grows a lot since every sequence will be expanded.
> > > >
> > > > Similar discussion in here:
> > > > https://lore.kernel.org/dri-devel/CAD=FV=Wju3WS45=EpXMUg7FjYDh3-=mvm_jS7TF1tsaAzbb4Uw@mail.gmail.com/
> > > >
> > > > This patch would increase the module size from 157K to 572K.
> > > > scripts/bloat-o-meter shows chg +235.95%.
> > > >
> > > > So maybe the common helper is better regarding the kernel module size?
> > >
> > > Yes, let's get a framework done in a useful way.
> > > I'd say, drop the _INIT_DELAY_CMD. msleep() and usleep_range() should be
> > > used instead (and it's up to the developer to select correct delay
> > > function).
> > >
> > > >
> > > > > > +
> > > > > > +static const struct panel_init_cmd kingdisplay_kd101ne3_init_cmd[] = {
> > > > > > +     _INIT_DELAY_CMD(50),
> > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > >
> > > [skipped the body of the table]
> > >
> > > > > > +     _INIT_DCS_CMD(0x0E, 0x48),
> > > > > > +
> > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > >
> > > > > > +     _INIT_DCS_CMD(0X11),
> > >
> > > Also, at least this is mipi_dsi_dcs_exit_sleep_mode().
> > >
> > > > > > +     /* T6: 120ms */
> > > > > > +     _INIT_DELAY_CMD(120),
> > > > > > +     _INIT_DCS_CMD(0X29),
> > >
> > > And this is mipi_dsi_dcs_set_display_on().
> > >
> > > Having a single table enourages people to put known commands into the
> > > table, the practice that must be frowned upon and forbidden.
> > >
> > > We have functions for some of the standard DCS commands. So, maybe
> > > instead of adding a single-table based approach we can improve
> > > mipi_dsi_generic_write_seq() to reduce the bloat. E.g. by moving the
> > > error handling to a common part of enable() / prepare() function.
> > >
> >
> > For this panel, I think it can also refer to how
> > panel-kingdisplay-kd097d04.c does. Create the table for init cmd data,
> > not what operation to use, and use mipi_dsi_generic_write_seq() when
> > looping through the table.
> 
> Even more similar discussion:
> 
> https://lore.kernel.org/r/CAD=FV=UGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg8_97YPEQCA@mail.gmail.com

It seems I skipped that thread.

I'd still suggest a code-based solution compared to table-based one, for
the reasons I've outlined before. Having a tables puts a pressure on the
developer to put commands there for which we already have a
command-specific function.

-- 
With best wishes
Dmitry

