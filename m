Return-Path: <devicetree+bounces-66168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 076558C1DE1
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 08:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 412841F2197C
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 06:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7EC1527A5;
	Fri, 10 May 2024 06:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="gVrissG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14470CA6F
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 06:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715321122; cv=none; b=UdUK7vF1mtkazWrCE1RjnbkIB9xVt4OZCKep+ySrCi5u30qyZIkF6Mt0cszgTNFK0CADAUVjd9tobxOxQjihnP1Mu455ZILuH8cmM7q8IV9MY3nZrtmK4Ij94wZy9s4Avb0l0AfQ1VMW+aYdymYmWveTveUmsXy6duO9zSdT+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715321122; c=relaxed/simple;
	bh=5ArqpzPwM9vLnDyPf4R8czcBAe3geJK0WFO/dNt3fLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kIRDLMbCVcUFrH7deBxxf3scvHC/n7l+Q9AjxkLCpE0Ak0wJynssFrasrQsN6mdNgA8Z+mwhLWKnTbkgZunEw3e3XlyqQqer9RqkAiccvld1z6Zs+reKdgxeGwX7p1H+cFdYjRcnb2tLNbSprWkffVvpaNKQJUdz/BW56YBVyps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=gVrissG5; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1ec92e355bfso14920255ad.3
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 23:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715321120; x=1715925920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3l9Zhk1CinuAg1XYDxK911+bsjq1ZwhNZoOZALb8UiE=;
        b=gVrissG5qo3BWeSOVKtSo7qDXWhE7/QgbPxAP2m8juy3tX5xLLQfZ8KYo66n2Uymbg
         acNnH8WyGHv2JS7EtVghB9Iv/BmyfTDsKjUAVdKUSoyB0uMs+5LjUe8nUlNKdP1cX6Zr
         RTCmTGf/+N3XddLO3gOtzTRNFfidVDZDY4uYZ86wn0FfELfyXr2IGXgq8Tlo9VPwCUQP
         rqpbv/A+IVAjTDPE6KtxgdWuHMPAHPqQszxUSXI56C8KAjOK4fmLEB7uKvtzccnmOwRr
         FCfSCJFCngy7JfYHFvqIwRy8ZgcttbS1UZ6kFoniEW0kEc95Sk5ubAyRFxuw+mh8AsoM
         LMhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715321120; x=1715925920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3l9Zhk1CinuAg1XYDxK911+bsjq1ZwhNZoOZALb8UiE=;
        b=iMIQKFHmlllTpqN5QGq7fUlLawyldqJBF7yWOwh6LALVoOf23EwoET2j5z4LpkjNAA
         L+n9eWSpyVtcEhsyUFvquNCcBXR67ha52QvZadDL2Ahl24Y2iMU9Rx4lfyAndr0EJSs1
         viqG+YwKruNKk5J32ctBAn3fP9UZcKj65/IcPMxjpQr9GhuX0zv4Cp7+TMZf+uQUuwRV
         Vs0AXUMATfH6mHlmg2RPGYT9Mrv0bhswD3T2gzNZaSy5qCjYD1gFggU9zrbXv2StQ0TG
         ZMywrxWlk3a492qB2Ye7sYdYVfrKLDbfWFNKmi8QTl56VIIdjKJQfe3hXRtvvFwi/tIk
         ESBg==
X-Forwarded-Encrypted: i=1; AJvYcCU5nfCeucSp+8PWc/hqw4mNikRLIDfjpJLdZoLBwPBZs0ZNpJOP1v0ZqorPegZXIN21MV1pUxu0hbExvC4jLTTncdByWP18zYhP3A==
X-Gm-Message-State: AOJu0Yzte+ad8BiX0uyCMbhWa/i6uemM+LXRTx1rZbfz9jjgr/OLxDGQ
	RdG/WMA7KeYC2zBXCRphW/EpLG5YfNTouvpTLNe74oCg+waATfFUaTsUdetln2RJBsO9YDxadei
	qz/vH1tzuQCB/sul5gNvKh8/Qcn5WJuH/iX1N9g==
X-Google-Smtp-Source: AGHT+IHHD/CHw//DnmrclZoHVWyraKaM7aOGtysmOL6I5Ech4AujZ822XKMc9TvmkKxt5ikp+pwjEo1hUxbShHn5m4c=
X-Received: by 2002:a17:90a:df85:b0:2b1:e314:a5e6 with SMTP id
 98e67ed59e1d1-2b6cc144d48mr1628397a91.7.1715321120379; Thu, 09 May 2024
 23:05:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
 <20240509015207.3271370-8-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=Vd34kBy4meaqqYECQKaT1=XcCFdq3qaU5n=YBWVAVi-Q@mail.gmail.com>
In-Reply-To: <CAD=FV=Vd34kBy4meaqqYECQKaT1=XcCFdq3qaU5n=YBWVAVi-Q@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Fri, 10 May 2024 14:05:09 +0800
Message-ID: <CAHwB_N+4_cJ3NuEm+AxqhxYosLvJ+WA6SG9HhTckCxNEBkvwSw@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] drm/panel: himax-hx83102: Support for IVO t109nw41
 MIPI-DSI panel
To: Doug Anderson <dianders@chromium.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B45=E6=9C=8810=E6=
=97=A5=E5=91=A8=E4=BA=94 00:49=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> On Wed, May 8, 2024 at 6:53=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > +static int ivo_t109nw41_init(struct hx83102 *ctx)
> > +{
> > +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi }=
;
> > +
> > +       msleep(60);
> > +
> > +       hx83102_enable_extended_cmds(&dsi_ctx, true);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, =
0xed, 0xed, 0x0f, 0xcf, 0x42,
> > +                                    0xf5, 0x39, 0x36, 0x36, 0x36, 0x36=
, 0x32, 0x8b, 0x11, 0x65, 0x00, 0x88,
> > +                                    0xfa, 0xff, 0xff, 0x8f, 0xff, 0x08=
, 0xd6, 0x33);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x00, 0=
x47, 0xb0, 0x80, 0x00, 0x12,
> > +                                    0x71, 0x3c, 0xa3, 0x22, 0x20, 0x00=
, 0x00, 0x88, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x35, 0x=
35, 0x43, 0x43, 0x35, 0x35,
> > +                                    0x30, 0x7a, 0x30, 0x7a, 0x01, 0x9d=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcd)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x84);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETVDC, 0x1b, 0x=
04);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_BE, 0x20=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xfc, 0=
xc4);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSTBA, 0x34, 0=
x34, 0x22, 0x11, 0x22, 0xa0,
> > +                                    0x31, 0x08, 0xf5, 0x03);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcc)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x80);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xd3)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x22);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETRAMDMY, 0x97)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPWM, 0x00, 0x=
1e, 0x13, 0x88, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x08, =
0x13, 0x07, 0x00, 0x0f, 0x34);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPANEL, 0x02, =
0x03, 0x44);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCASCADE, 0x03=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPCTRL, 0x07, =
0x06, 0x00, 0x02, 0x04, 0x2c,
> > +                                    0xff);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x06, 0=
x00, 0x00, 0x00, 0x00, 0x08,
> > +                                    0x08, 0x08, 0x08, 0x37, 0x07, 0x64=
, 0x7c, 0x11, 0x11, 0x03, 0x03, 0x32,
> > +                                    0x10, 0x0e, 0x00, 0x0e, 0x32, 0x17=
, 0x97, 0x07, 0x97, 0x32, 0x00, 0x02,
> > +                                    0x00, 0x02, 0x00, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP1, 0x25, 0=
x24, 0x25, 0x24, 0x18, 0x18,
> > +                                    0x18, 0x18, 0x07, 0x06, 0x07, 0x06=
, 0x05, 0x04, 0x05, 0x04, 0x03, 0x02,
> > +                                    0x03, 0x02, 0x01, 0x00, 0x01, 0x00=
, 0x1e, 0x1e, 0x1e, 0x1e, 0x1f, 0x1f,
> > +                                    0x1f, 0x1f, 0x21, 0x20, 0x21, 0x20=
, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
> > +                                    0x18, 0x18);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xaa, 0=
xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0=
, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGMA, 0x04, 0x=
04, 0x06, 0x0a, 0x0a, 0x05,
> > +                                    0x12, 0x14, 0x17, 0x13, 0x2c, 0x33=
, 0x39, 0x4b, 0x4c, 0x56, 0x61, 0x78,
> > +                                    0x7a, 0x41, 0x50, 0x68, 0x73, 0x04=
, 0x04, 0x06, 0x0a, 0x0a, 0x05, 0x12,
> > +                                    0x14, 0x17, 0x13, 0x2c, 0x33, 0x39=
, 0x4b, 0x4c, 0x56, 0x61, 0x78, 0x7a,
> > +                                    0x41, 0x50, 0x68, 0x73);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x07, 0x=
10, 0x10, 0x1a, 0x26, 0x9e,
> > +                                    0x00, 0x4f, 0xa0, 0x14, 0x14, 0x00=
, 0x00, 0x00, 0x00, 0x12, 0x0a, 0x02,
> > +                                    0x02, 0x00, 0x33, 0x02, 0x04, 0x18=
, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x01, =
0x7f, 0x11, 0xfd);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x86);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x00, 0=
x00, 0x04, 0x00, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x00, 0=
x00, 0x00, 0x00, 0x00, 0x00,
> > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0=
, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x02, 0x=
00, 0x2b, 0x01, 0x7e, 0x0f,
> > +                                    0x7e, 0x10, 0xa0, 0x00, 0x00, 0x77=
, 0x00, 0x00, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x02);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xf2);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x03, =
0x07, 0x00, 0x10, 0x79);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xff, 0=
xff, 0xff, 0xff, 0xfa, 0xa0,
> > +                                    0xff, 0xff, 0xff, 0xff, 0xfa, 0xa0=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0xfe, 0x=
01, 0xfe, 0x01, 0xfe, 0x01,
> > +                                    0x00, 0x00, 0x00, 0x23, 0x00, 0x23=
, 0x81, 0x02, 0x40, 0x00, 0x20, 0x6e,
> > +                                    0x02, 0x01, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x03);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xaa,=
 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0=
, 0xff, 0xff, 0xff, 0xff, 0xfa, 0xa0,
> > +                                    0xff, 0xff, 0xff, 0xff, 0xfa, 0xa0=
, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0,
> > +                                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0=
, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> > +                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x03, 0x=
ff, 0xf8);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_E1, 0x00=
);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D2, 0xff=
, 0xff, 0xff, 0xff, 0xff, 0xff);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x96);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc5)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x4f);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f)=
;
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00);
> > +       if (dsi_ctx.accum_err)
> > +               return dsi_ctx.accum_err;
>
> Since this is a new panel you're adding support for and there's no
> excuse that we don't want to change the old command sequence, it seems
> like you should add the call to:
>
> hx83102_enable_extended_cmds(&dsi_ctx, false);
>
> If for some reason that would be a bad idea, let me know.

Confirm with the vendor again , disable extended cmds is prevent the ESD
mechanism write (currently there is no ESD check mechanism) ic register.
So it may not have any impact whether add disable extended cmds or not.
Of course for me, I prefer to upload according to the initial code
provided by  vendor.

If you prefer add it I also can fix in V6.

Thanks.

>
> -Doug

