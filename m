Return-Path: <devicetree+bounces-61962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8128AF403
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 18:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9731828D7B1
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 16:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C24E13E020;
	Tue, 23 Apr 2024 16:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gceN/2oy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CDB13C66C
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 16:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713889541; cv=none; b=gmRuzCfMi2QiulWHqLBBylVjSZn5dcuoviNlnXABwBkkyQUMiD+JZdWPXC8mirMqvJXGZNQYZ5b7vzf0QyZdC5KZ9obuamw0i86HN31WbC/qtbuonJjXZ4UMbXzxbz/NsitO/Q8bC2rsP70OdfbnflcPLyQRipRZEAQuLkqZLS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713889541; c=relaxed/simple;
	bh=vhXQuuHSSaOFXavGSQ9j+yaEKLO4j2yIeOyHVT2JTtI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LpVVg+4h16YEaLmD/k6ClZfDzdHCV4d+C0SCs0I3D4Im/ziA7fkZg+vEUg+DY/PNzXaR0AjuG2QphKTyuAh+DI1st3ToNkUANPOW+1+t97vrTuny+mBddrLiJqWid5H677GLS7QNYKHtb43f+lrb2yDy/Tq+cPapsC5ezVPWN7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gceN/2oy; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e8fce77bb2so30828305ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713889538; x=1714494338; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wanqofR/Nuk2X7+WPgVh3aZdwvGB0rIxPhS4chd4Kfw=;
        b=gceN/2oyHfHjr/N4CdId3nmvN1k3tKDRNaTU77SrSuVMgRnY7scj0qZlUAWpP+H7uH
         ZckJFjbzO4PwS+VvdEpuTVuOnHK+C/F1/I4UTMLsMxYihoSUlgOOxQUDvQ20Dy9yCNm3
         dFcxyNCwAI00npC5SKl4HPcAdAciD5eFJMwdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713889538; x=1714494338;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wanqofR/Nuk2X7+WPgVh3aZdwvGB0rIxPhS4chd4Kfw=;
        b=snNfYAkv3M0N1olCEm72iszCJ0B+NwhvpBm/cOLi8q/MYzYxi7p4/vNSmj4f8NqrpY
         RfQKcqVUZC42KsBVPucsYTnZHWXV6LsuNnczPqVu4ABqkUTmv0THQuVZOqsEJJ4f04CN
         Rjd/+ZkBuqs7GUXRap5BSTbTF+NTCqnfXQqkX1nJWVr/Rv/h4FfLgwsXg8KDSU30YjUJ
         i0ubwlsRcRU85aSTcXCJflHy2ZjHPCZ0dNjLi7B7F3SfNxj1Yk4o4/uRLPayF3kB3xVe
         koCRzftOXeA0fkTtZEaFlliHr4PmvB27XKCcMJf6mgsA/U3vBlfmmm5762B0ryTn6vty
         7tyw==
X-Forwarded-Encrypted: i=1; AJvYcCXLWJ4819FDz6OBOpJU6Q8md4dleBVOfl6f8LYAjF1mSXRzy8wz9Gb/PicK5wqEhveKbpciR3sDO/IOd0NdPk4Z2vs/3ja61I1xRg==
X-Gm-Message-State: AOJu0YxYkQC0iK8BirsaRWLttq4ua8sWqLRsfX+gW7u+ajAZtqhkPmIr
	njw1XkxwE3mJV46/Nt9WZ2VPMUvsJe/H263dU0OGUzHAxN7o2umbb+grWRKjNrqm4tSvbAxDbn6
	hBFXJ
X-Google-Smtp-Source: AGHT+IGTkIFDNOr2VKpHNg/Dw6DHfkC7VNbyOd1iPbwb3F3fuotiogO8TDg7hvgTfYYN3mGdwQrP1w==
X-Received: by 2002:a17:902:8c8d:b0:1e4:24cc:e020 with SMTP id t13-20020a1709028c8d00b001e424cce020mr14335378plo.67.1713889538425;
        Tue, 23 Apr 2024 09:25:38 -0700 (PDT)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com. [209.85.214.176])
        by smtp.gmail.com with ESMTPSA id l5-20020a170902d34500b001dd578121d4sm10215486plk.204.2024.04.23.09.25.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 09:25:37 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1e44f82ff9cso150665ad.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:25:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXD+1uUJGBb/naVQLShflvkBOqLGvYNa2ou0yYBfQX6hmwgmmiwaBJnjgfOIHtSCnxfRQ8uxEi5hD0I1x/M6+Q3GKJ0/fLU5vwreA==
X-Received: by 2002:ac8:4053:0:b0:437:9875:9671 with SMTP id
 j19-20020ac84053000000b0043798759671mr278456qtl.0.1713889184337; Tue, 23 Apr
 2024 09:19:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
 <20240422090310.3311429-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=V2O2aFDVn5CjbXfgcOLkmNp-G3ChVqQKouB2mDB+NZug@mail.gmail.com> <CAHwB_NJsDsTc=gjP8TJ+6ipo10uMYFLmuf+tKGVgxnznhuAcUQ@mail.gmail.com>
In-Reply-To: <CAHwB_NJsDsTc=gjP8TJ+6ipo10uMYFLmuf+tKGVgxnznhuAcUQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Apr 2024 09:19:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg8_97YPEQCA@mail.gmail.com>
Message-ID: <CAD=FV=UGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg8_97YPEQCA@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 2:37=E2=80=AFAM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > > +static int starry_init_cmd(struct hx83102 *ctx)
> > > +{
> > > +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> > > +
> > > +       mipi_dsi_dcs_write_seq(dsi, HX83102_SETEXTC, 0x83, 0x10, 0x21=
, 0x55, 0x00);
> > > +
> > > +       mipi_dsi_dcs_write_seq(dsi, HX83102_SETPOWER, 0x2C, 0xB5, 0xB=
5, 0x31, 0xF1, 0x31, 0xD7, 0x2F,
> > > +                                                 0x36, 0x36, 0x36, 0=
x36, 0x1A, 0x8B, 0x11, 0x65, 0x00, 0x88, 0xFA, 0xFF,
> > > +                                                 0xFF, 0x8F, 0xFF, 0=
x08, 0x74, 0x33);
> >
> > I know this is a sticking point between Linus W. and me, but I'm
> > really not a fan of all the hardcoded function calls since it bloats
> > the code so much. I think we need to stick with something more table
> > based at least for the majority of the commands. If I understand
> > correctly, Linus was OK w/ something table based as long as it was in
> > common code [1]. I think he also wanted the "delay" out of the table,
> > but since those always seem to be at the beginning or the end it seems
> > like we could still have the majority of the code as table based. Do
> > you want to make an attempt at that? If not I can try to find some
> > time to write up a patch in the next week or so.
>
> Do you mean not add "delay" in the table?  However, the delay
> required by each panel may be different. How should this be handled?

In the case of the "himax-hx83102" driver, it looks as if all the
delays are at the beginning or end of the init sequence. That means
you could just make those extra parameters that are set per-panel and
you're back to having a simple sequence without delays.

If you had panels that needed delays in a more complicated way, you
could keep the per-panel functions but just make the bulk of the
function calls apply a sequence. For instance:

static int my_panel_init_cmd(...)
{
  ret =3D mipi_dsi_dcs_write_cmd_seq(dsi, my_panel_init_cmd_seq);
  if (ret)
    return ret;
  mdelay(100);
  ret =3D mipi_dsi_dcs_write(dsi, ...);
  if (ret)
    return ret;
  mdelay(50);
  ret =3D mipi_dsi_dcs_write_cmd_seq(dsi, ...);
  if (ret)
    return ret;
}

The vast majority of the work is still table driven so it doesn't
bloat the code, but you don't have the "delay" in the command sequence
since Linus didn't like it. I think something like the above would
make Linus happy and I'd be OK w/ it as well. Ideally you should still
make your command sequence as easy to understand as possible, kind of
like how we did with _INIT_SWITCH_PAGE_CMD() in
"panel-ilitek-ili9882t.c"

As part of this, you'd have to add a patch to create
mipi_dsi_dcs_write_cmd_seq(), but hopefully that shouldn't be too
complicated?


> It would be great if you could help provide a patch. Thank you so much.

Sure, I can, though maybe you want to give it a shot with the above descrip=
tion?

-Doug

