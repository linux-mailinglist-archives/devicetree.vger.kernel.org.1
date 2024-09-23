Return-Path: <devicetree+bounces-104572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB0197EC8D
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 15:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E0B1282132
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B89185B4C;
	Mon, 23 Sep 2024 13:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WxaaQ8ss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C3C7DA92
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 13:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727099054; cv=none; b=iojS2Q38wIPczcXjWk2C/OBNelx3FyZXoveImTZ7L2CKIrhNzyBOmR9HUoi2c/QDuZH4HTyihlZHvV9cgs5YNiTt0qE4vI0ROq49RWusVKY8/oU1Nq+mLugeMvrvP3ZfGMLUqajqgCWQvhDa5Y69yGqz0hRlR9rnMSs0vB/mvxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727099054; c=relaxed/simple;
	bh=lOKZYl2Cx/sWC7IvtblL8pmpShp70ZL3FT7sBp+SL+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cX2Dv0i77bB92GZofxcu/GmAwE2Th6BRMFcEXMWG12GK8hrrcmDd5Pcstfuy/hZGuAitimOuifZ0wIgRAq1xp+6Xt6guqYUnyfbGbTThcemaDZs87puvh5e4xD13JQHllQBN5dn02+r0q6imWoAD74BGsYB6yStLqlU2Je+JzfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WxaaQ8ss; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f75c6ed428so42775031fa.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727099050; x=1727703850; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LnxbStqMmnuqZto92aGKrrzBBkrNE1dtBY8RqcATvcA=;
        b=WxaaQ8ssD+MWLc1iGJWpPr/owlehzWooRP3oEQdOskgF1Ejqfg4VtLjtKLE41gkf+9
         O4rQ7zG2Gouxq7K2ZGWjlhnaF+VUQDeDe6aIU0oLqtyTJyQ3GI9pptK0VmmLcO6HHx8P
         tjYdVjyLr8wqYKNO1UaNCsIn96YBx4ELxZewFLpdnwkTwS+zErZ4nkk6paURCE0Iojfx
         AFVi31vK4nUjtCxIaziMr8UYc3CeoYfhkgoKxY+nB3XA6NLo2lqAHM1xOjU2J3Pmd5VX
         AHEuFZ/PBk2e67yY8hSn+c2LKS4y/2lx0ufJmYpPpRP9lnQpc+PPk6QxOA9ioONy0Dqx
         qGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727099050; x=1727703850;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LnxbStqMmnuqZto92aGKrrzBBkrNE1dtBY8RqcATvcA=;
        b=UgU/RAi35NoiRWeX7RrMOc0ovTwcoU+5blkBH76zshwd40XjqnllK4vm5gRjRyJdtT
         vAs10he2ysrt01fhQh2eY1wU3rqCfrLyKm7AJjGPUAQzVaWGZhsef+iPzMmIIeyEmE/U
         G886KjQDoYXt/Gys+WO8YaxH2jhHNUHaNRkmlHxjHKsYPhhAERgUNLOUlo9oRnL9RAKX
         o5QVLxB+R5YYCchmQvYagF8klG/OpZdUjrFXfAjJLRatKlD9EaA/Y18qYacfcvmsuxm+
         tVrLMbna+jdX2+V5UbRQ/Npg2l3SvBFPG8Lt3sUGLCdwfxrB+Ihm+f6EkyXMg9aNk/vK
         yhFg==
X-Forwarded-Encrypted: i=1; AJvYcCW1aZFf/yNmeQbtDJ7ovEbkXC9/3hikiHemhODYn/3FaJqmwUui/2ZiuF2vnOC7t4xkeME4urKrua4+@vger.kernel.org
X-Gm-Message-State: AOJu0YxMgmq4vUMX/K0ZTo3PhBx+1Pxk/Q/FVpqyAsP1lc1i1Z4RYRK0
	LW8aiH0637SCwC20IeAr/XjWYIza/NYOPX5AQdJ7jpunT7dT2YGaMsbR8oQbnMY=
X-Google-Smtp-Source: AGHT+IHOacohnpUeawQEYAxzHpTmZQcAHpd2SWiHRgZKHmRZeclY06+UgBZ9HRZSZwZbq/XrXMqu9A==
X-Received: by 2002:a2e:611a:0:b0:2f3:ee44:c6de with SMTP id 38308e7fff4ca-2f7cb3243dbmr47758351fa.27.1727099049065;
        Mon, 23 Sep 2024 06:44:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d2e1e04sm29142321fa.28.2024.09.23.06.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:44:08 -0700 (PDT)
Date: Mon, 23 Sep 2024 16:44:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, dianders@chromium.org, hsinyi@google.com, 
	awarnecke002@hotmail.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] drm/panel: boe-th101mb31ig002: Modify Starry
 panel timing
Message-ID: <z3wtynas7udnrd2pus3o4lcyz5xkz4csrjyhrrnjkdbuys7ysp@5mmxpxunil22>
References: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240915080830.11318-3-lvzhaoxiong@huaqin.corp-partner.google.com>
 <CAA8EJpqC5tQ45gj8-0bDutinCs7CoxiQVL1EAzwDK9RJTXYMcQ@mail.gmail.com>
 <CA+6=WdR6+nh9e2HCuCVdR6uw3vuJoWfKCG4gPjJMp9db+Quimw@mail.gmail.com>
 <ovmleeivshtixncuxwv3dink6l4fi242rcspklicl3u4qp73rx@km3nu4co4hen>
 <CA+6=WdRMihx1f-kDYX-RngkQ-kDa2vLGSFU30C75jdFXGz88VQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+6=WdRMihx1f-kDYX-RngkQ-kDa2vLGSFU30C75jdFXGz88VQ@mail.gmail.com>

On Mon, Sep 23, 2024 at 09:38:59PM GMT, zhaoxiong lv wrote:
> On Mon, Sep 23, 2024 at 8:07 PM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Mon, Sep 23, 2024 at 05:22:20PM GMT, zhaoxiong lv wrote:
> > > On Mon, Sep 16, 2024 at 1:15 PM Dmitry Baryshkov
> > > <dmitry.baryshkov@linaro.org> wrote:
> > > >
> > > > Same comment as the one that I've provided to the other patch, plus:
> > > >
> > > > On Sun, 15 Sept 2024 at 10:11, Zhaoxiong Lv
> > > > <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> > > > >
> > > > > In order to meet the timing, remove the delay between "backlight off"
> > > > > and "display off", and reduce the delay between "display_off" and
> > > > > "enter_sleep"
> > > >
> > > > Separate commit, separate _justification_. Why, not what.
> > > >
> > > > >
> > > > > Removing variables: display_off_to_enter_sleep_delay_ms
> > > >
> > > > This phrase is useless.
> > > >
> > > hi Dmitry
> > >
> > > As in another patch reply, in order to solve a black screen problem,
> > > the delay is reduced.
> > > The panel spec:
> > > 1. https://github.com/Vme5o/power-on-off-sequential
> >
> > It should be described in the commit message(s). You have removed one
> > delay and added another one. Is that a single fix or two separate fixes?
> hi Dmitry
> We only modify one of the drivers (starry), and the other driver
> (boe_th101mb31ig002) is just to keep the original value.

Well, the question was about fixes, not about the drivers.

-- 
With best wishes
Dmitry

