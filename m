Return-Path: <devicetree+bounces-66326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0448C26C4
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 16:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84A741F210F8
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A600F12C49A;
	Fri, 10 May 2024 14:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VAFVsdir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0283FB87
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715351094; cv=none; b=lwpcChIki1TaqqSWNXw0iD0fupRWBDIXSr5jyXXkd1w+683NnEkOyzgEW0GoNGmnIRdnCWag6DAXWlnNwQ4S7bgptnXcG8ZzU9/JFtXSyJ4ie3QGWw1NU73bYOXpKUdT1wbNTPhLZ6yLskMp9YZNHtjtpZ0Ydun2GO6zEK4F9RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715351094; c=relaxed/simple;
	bh=an+bTm0fGEwyqEeSZ+W9NNIDPQFzqRHdP9OK6kceivk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=urJa3D5Hx8CVAg1E9SBhc51dh1rf6yQDUK3gqcCvm0f35oetlQgiK/u6np+wsXnh2vQ0B4WsToOMGVdvJGGlimEYGmEk5kOhVfyIqA1b1/HD9pSL4Bpay6hStmI0cnniHHnrL+QqT2brbUOZiZ8uqSIiF/yJ8d8GFB4vYXxLsuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VAFVsdir; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-792ce7a1fa8so11288585a.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715351090; x=1715955890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1NXrtOs8kNipk5Cgp2Wy8A5yaV129in3aAVvIhs+qA=;
        b=VAFVsdirgqIKtfx8YAgsBe5c0kX94xcfs+oBsZfoaIgLXFH5K5UH7tBcruStr6194s
         3bkBGaK7bYNIYfNyoStT72DdT7fjXAUPAbPObf35uTdoHNspmnwjiOMhpDPrPAzZ8o4H
         2HQ1JPIaQkSLFVeXOSN6cKvQxh6+ktoRxqxfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715351090; x=1715955890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1NXrtOs8kNipk5Cgp2Wy8A5yaV129in3aAVvIhs+qA=;
        b=u7uL0OfcAkvPdv351REbgst4o/SXM0TG7yB0/nJ4ognkuLosI4Fi/pQeSg08UCSzZy
         iFXcFDZWqEu0vVfUj3Rlz7JIFLEaTiblzUnENYKj2CdMV/HRibEus0CEw0G0I5GCii5a
         tn1xdiAsTqMxBOfnFOMnD8alq12ppkXEcny852yctQAMgTnjPwkiZkqjwArMrbpliUOI
         f9Nb/Y3jQVxOtntpo+1hnQn3PxTBBNlck+j5l2BGe72zWIa9aOXZ6J589hqbDW0+xJGC
         LMZ/KzWDiKxA54FjoAJ/n9urC0Z5c1wT/o0ZAM//2awX7rXq2MKTBufTWRuMXPr8+VgV
         ydsA==
X-Forwarded-Encrypted: i=1; AJvYcCU9WCe2LD57d/XotMDKGBHzgfQpv1qNfe2gIhIjc7r3aZRm6q+VnSsMN5OpnA7gFQyHAjTmbrh46X40LqygLXKMz8G0DWTsbIedNw==
X-Gm-Message-State: AOJu0Yy2hXhYah0Bhqe7iHvILgJECa2tKE/iuJA4aUfwPIOmV+KLzSWf
	aI21AyGZSHhFgbKA7p7lHCc8iNXzm9+hQjZyUdjWZVGc6vw7IpM5g4VvLuyn2RMEkfo4yD12SvU
	=
X-Google-Smtp-Source: AGHT+IG42oP1zbwWF8/UnZ6TlwGcI3V4sJLHo4nGUyEfd+sWbm0NxP+2M0iIF2VU8Ba7tf+YtOaBrw==
X-Received: by 2002:a05:620a:f8d:b0:792:9ca6:4e22 with SMTP id af79cd13be357-792c75741a0mr260720085a.13.1715351090565;
        Fri, 10 May 2024 07:24:50 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-792bf277377sm184983385a.2.2024.05.10.07.24.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 07:24:49 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-43dfe020675so470801cf.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:24:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXV1vxJ8rkPtI0tlrSnJRAj0ORMGL8awjK9+wlkUSdi6BEphmDZIH2oZEffhJpXThwBmFefvsjt3q7JtAPVv3anvoYh7KthELrvCg==
X-Received: by 2002:a05:622a:53c3:b0:439:ef72:75fb with SMTP id
 d75a77b69052e-43dfefcd76emr2575731cf.1.1715351089237; Fri, 10 May 2024
 07:24:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
 <20240509015207.3271370-8-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=Vd34kBy4meaqqYECQKaT1=XcCFdq3qaU5n=YBWVAVi-Q@mail.gmail.com> <CAHwB_N+4_cJ3NuEm+AxqhxYosLvJ+WA6SG9HhTckCxNEBkvwSw@mail.gmail.com>
In-Reply-To: <CAHwB_N+4_cJ3NuEm+AxqhxYosLvJ+WA6SG9HhTckCxNEBkvwSw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 10 May 2024 07:24:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VUjy7UL9vQX8wc9VygLhVaRw52Stm9JWxiQiy9YaQUCw@mail.gmail.com>
Message-ID: <CAD=FV=VUjy7UL9vQX8wc9VygLhVaRw52Stm9JWxiQiy9YaQUCw@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] drm/panel: himax-hx83102: Support for IVO t109nw41
 MIPI-DSI panel
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 9, 2024 at 11:05=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B45=E6=9C=8810=
=E6=97=A5=E5=91=A8=E4=BA=94 00:49=E5=86=99=E9=81=93=EF=BC=9A
> >
> > Hi,
> >
> > On Wed, May 8, 2024 at 6:53=E2=80=AFPM Cong Yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > +static int ivo_t109nw41_init(struct hx83102 *ctx)
> > > +{
> > > +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi=
 };
> > > +
> > > +       msleep(60);
> > > +
> > > +       hx83102_enable_extended_cmds(&dsi_ctx, true);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c=
, 0xed, 0xed, 0x0f, 0xcf, 0x42,
> > > +                                    0xf5, 0x39, 0x36, 0x36, 0x36, 0x=
36, 0x32, 0x8b, 0x11, 0x65, 0x00, 0x88,
> > > +                                    0xfa, 0xff, 0xff, 0x8f, 0xff, 0x=
08, 0xd6, 0x33);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x00,=
 0x47, 0xb0, 0x80, 0x00, 0x12,
> > > +                                    0x71, 0x3c, 0xa3, 0x22, 0x20, 0x=
00, 0x00, 0x88, 0x01);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x35, =
0x35, 0x43, 0x43, 0x35, 0x35,
> > > +                                    0x30, 0x7a, 0x30, 0x7a, 0x01, 0x=
9d);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
d);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x84)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETVDC, 0x1b, =
0x04);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_BE, 0x=
20);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xfc,=
 0xc4);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSTBA, 0x34,=
 0x34, 0x22, 0x11, 0x22, 0xa0,
> > > +                                    0x31, 0x08, 0xf5, 0x03);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
c);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x80)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xd=
3);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x22)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
6);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETRAMDMY, 0x9=
7);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPWM, 0x00, =
0x1e, 0x13, 0x88, 0x01);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x08=
, 0x13, 0x07, 0x00, 0x0f, 0x34);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPANEL, 0x02=
, 0x03, 0x44);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
4);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCASCADE, 0x=
03);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPCTRL, 0x07=
, 0x06, 0x00, 0x02, 0x04, 0x2c,
> > > +                                    0xff);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x06,=
 0x00, 0x00, 0x00, 0x00, 0x08,
> > > +                                    0x08, 0x08, 0x08, 0x37, 0x07, 0x=
64, 0x7c, 0x11, 0x11, 0x03, 0x03, 0x32,
> > > +                                    0x10, 0x0e, 0x00, 0x0e, 0x32, 0x=
17, 0x97, 0x07, 0x97, 0x32, 0x00, 0x02,
> > > +                                    0x00, 0x02, 0x00, 0x00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP1, 0x25,=
 0x24, 0x25, 0x24, 0x18, 0x18,
> > > +                                    0x18, 0x18, 0x07, 0x06, 0x07, 0x=
06, 0x05, 0x04, 0x05, 0x04, 0x03, 0x02,
> > > +                                    0x03, 0x02, 0x01, 0x00, 0x01, 0x=
00, 0x1e, 0x1e, 0x1e, 0x1e, 0x1f, 0x1f,
> > > +                                    0x1f, 0x1f, 0x21, 0x20, 0x21, 0x=
20, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
> > > +                                    0x18, 0x18);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xaa,=
 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x=
a0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGMA, 0x04, =
0x04, 0x06, 0x0a, 0x0a, 0x05,
> > > +                                    0x12, 0x14, 0x17, 0x13, 0x2c, 0x=
33, 0x39, 0x4b, 0x4c, 0x56, 0x61, 0x78,
> > > +                                    0x7a, 0x41, 0x50, 0x68, 0x73, 0x=
04, 0x04, 0x06, 0x0a, 0x0a, 0x05, 0x12,
> > > +                                    0x14, 0x17, 0x13, 0x2c, 0x33, 0x=
39, 0x4b, 0x4c, 0x56, 0x61, 0x78, 0x7a,
> > > +                                    0x41, 0x50, 0x68, 0x73);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x07, =
0x10, 0x10, 0x1a, 0x26, 0x9e,
> > > +                                    0x00, 0x4f, 0xa0, 0x14, 0x14, 0x=
00, 0x00, 0x00, 0x00, 0x12, 0x0a, 0x02,
> > > +                                    0x02, 0x00, 0x33, 0x02, 0x04, 0x=
18, 0x01);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x01=
, 0x7f, 0x11, 0xfd);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x86=
);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x00,=
 0x00, 0x04, 0x00, 0x00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x00,=
 0x00, 0x00, 0x00, 0x00, 0x00,
> > > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x=
a0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x02, =
0x00, 0x2b, 0x01, 0x7e, 0x0f,
> > > +                                    0x7e, 0x10, 0xa0, 0x00, 0x00, 0x=
77, 0x00, 0x00, 0x00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x02)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xf2)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x03=
, 0x07, 0x00, 0x10, 0x79);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xff,=
 0xff, 0xff, 0xff, 0xfa, 0xa0,
> > > +                                    0xff, 0xff, 0xff, 0xff, 0xfa, 0x=
a0);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0xfe, =
0x01, 0xfe, 0x01, 0xfe, 0x01,
> > > +                                    0x00, 0x00, 0x00, 0x23, 0x00, 0x=
23, 0x81, 0x02, 0x40, 0x00, 0x20, 0x6e,
> > > +                                    0x02, 0x01, 0x00, 0x00, 0x00, 0x=
00, 0x00, 0x00, 0x00, 0x00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x03)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xa=
a, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x=
a0, 0xff, 0xff, 0xff, 0xff, 0xfa, 0xa0,
> > > +                                    0xff, 0xff, 0xff, 0xff, 0xfa, 0x=
a0, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x=
a0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x=
00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
6);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x03, =
0xff, 0xf8);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_E1, 0x=
00);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D2, 0x=
ff, 0xff, 0xff, 0xff, 0xff, 0xff);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
4);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x96)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc=
5);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x4f)=
;
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3=
f);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00)=
;
> > > +       if (dsi_ctx.accum_err)
> > > +               return dsi_ctx.accum_err;
> >
> > Since this is a new panel you're adding support for and there's no
> > excuse that we don't want to change the old command sequence, it seems
> > like you should add the call to:
> >
> > hx83102_enable_extended_cmds(&dsi_ctx, false);
> >
> > If for some reason that would be a bad idea, let me know.
>
> Confirm with the vendor again , disable extended cmds is prevent the ESD
> mechanism write (currently there is no ESD check mechanism) ic register.
> So it may not have any impact whether add disable extended cmds or not.
> Of course for me, I prefer to upload according to the initial code
> provided by  vendor.
>
> If you prefer add it I also can fix in V6.

I'd prefer it be added for any new panels unless a vendor says we
shouldn't. For the old panel I'd be OK w/ keeping it how it was.

-Doug

