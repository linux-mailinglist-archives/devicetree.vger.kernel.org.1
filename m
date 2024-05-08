Return-Path: <devicetree+bounces-65835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B368C0309
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 19:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAE261C21AA5
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 17:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9ACB81ADB;
	Wed,  8 May 2024 17:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hzNqPoyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1644CE19
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 17:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715189105; cv=none; b=Vu/g/r3SSkrB47KfwFIlZ6Egx0g6dehpnOxb3PmHO551Rx4wjKbbWbON+U31Uyp+C4vFUxozR+16SZQ934CBbizqy33mIxV4eJGJjcfmOLWHpZ2qLJlIfftBIP7JNVfmH1btjKbBA636aVSC7ZYYWfV3vYYCxc6KcsCx1+IkBpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715189105; c=relaxed/simple;
	bh=mRchDPxMeHJwLDj1d+HyfPvCH4lFbS4D7KCFGiKd3zs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uomtTO+G7GHwDrQGdHPXACr7cmCAtW+GoyWOgXDeZam58CgJToav+cnKKw75duMuDTKnRSngQ5GfMHChL3QEmNOiRtTfP0fL78lhYTsV8UO2WBuf7vdwLvlQOg+VjdpGHDnRIz8pb8+1iQ/YF793XZHLA2/exb2Z4Lsr50V/piw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hzNqPoyN; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-23d1c4c14ceso36740fac.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 10:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715189103; x=1715793903; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B+VKTM4P5eufJalRCrDbHQ7nMVvva4ngXjaL2EQ5cWU=;
        b=hzNqPoyNkuwnHwuHdxrfPq7+hg2nM9sxsbJU8Q7k+uuQZzwKI05gAV/d06oI9tMAly
         nl0HlYlnYXN7njM2mkIuKAXmhOapqvXMLuv0cxheRGfHimvY6uyKzI1uAd2BcEUuERdZ
         4sZuhfzippZbaFfx9BjGSvgwh4xPeZ0MBkZLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715189103; x=1715793903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B+VKTM4P5eufJalRCrDbHQ7nMVvva4ngXjaL2EQ5cWU=;
        b=jI9fWKyszImhObsy2CAr9ptA1dCQvQ0igzzM2kFn7cPvF+F22FReZmubSH2pjr4NXm
         /xHuEt4QMxWmrr5pZMkpUjePt2CYMaBG02hP0xxxaVQnoeRmShMrQ+JNvgpd/pxX+uhF
         wHLF749H9QD4V5t7QMx+B866XM+7iqfMaI9/wTLkzGdddaSJ3w2rAIUbS/hFOGvMY5ZD
         V4OA8v13apyRGdH0lipLyduIAw4EboVwfkq2Io5IT41ZDqZOS6NIATQPSvpizUIjcERR
         oNYMru3/Wc3nHV11oE+uInSVTX6X6U0gac80gDpuiMVUpsY8JBC5nkaX244G43VG/fSk
         3rDw==
X-Forwarded-Encrypted: i=1; AJvYcCVDEAHb2++WHtvuSzo3Jsan2vooVLagMYf5bGZ6Jncv94UvzZ4BlLYY0fr2s+xKcKgXlY0nCcRZHUZnkH+zE+rJHJv+70XcZuwfiA==
X-Gm-Message-State: AOJu0Yzs3U8rSUO1wNVUAaUe2VQq/Mht9aktIMyYO2Ygu17il0ViWJx8
	0z29wg3BlnTxFhD+f8npthMySmkqY6i3dOcJaNMP8AF+mpJ2HG8ugG6fBUrFYYlsSqdYiLMkKzw
	=
X-Google-Smtp-Source: AGHT+IFN9NuBHudHlM8hyJjBhXVYRDWjZSJcoFZ1zkbO2ig81YHiVPoljnHhk79SiJ/eEzC1d2EbnA==
X-Received: by 2002:a05:6870:d608:b0:23f:f53c:300f with SMTP id 586e51a60fabf-240988fe784mr3609564fac.50.1715189102825;
        Wed, 08 May 2024 10:25:02 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id bs18-20020ac86f12000000b00434ee466ea6sm7836535qtb.22.2024.05.08.10.25.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 10:25:01 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-439b1c72676so30921cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 10:25:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVht8Gc0CD5m6fQNCD+wPJFuGZ58dtEmt+NxOcV0KgqEomZJMZ/bcR3Bp0B+tFCMSgTVeUwktibnkv7x13dbJ9pzk6bP/IgIBheUQ==
X-Received: by 2002:a05:622a:4e0a:b0:43d:db04:45d1 with SMTP id
 d75a77b69052e-43ddb044c2fmr2760251cf.1.1715189101210; Wed, 08 May 2024
 10:25:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
 <20240507135234.1356855-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=Wj5WKcVbNGHQ_BbZa_fsVJkpYb2C8TE8bjhvJvx+N_hw@mail.gmail.com> <CAHwB_NKPswAvE5TjRxWMR8LLV5sNuMmymXr4nhDc3r_AdRKr8A@mail.gmail.com>
In-Reply-To: <CAHwB_NKPswAvE5TjRxWMR8LLV5sNuMmymXr4nhDc3r_AdRKr8A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 May 2024 10:24:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UJkmAPB1h87o0m+6HSbVg7ehr0Xd+JFpuF+vuezof-hg@mail.gmail.com>
Message-ID: <CAD=FV=UJkmAPB1h87o0m+6HSbVg7ehr0Xd+JFpuF+vuezof-hg@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 8, 2024 at 4:52=E2=80=AFAM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > > +static int starry_himax83102_j02_init(struct hx83102 *ctx)
> > > +{
> > > +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi=
 };
> > > +
> > > +       hx83102_enable_extended_cmds(ctx, true);
> > > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c=
, 0xb5, 0xb5, 0x31, 0xf1,
> > > +                                        0x31, 0xd7, 0x2f, 0x36, 0x36=
, 0x36, 0x36, 0x1a, 0x8b, 0x11,
> > > +                                        0x65, 0x00, 0x88, 0xfa, 0xff=
, 0xff, 0x8f, 0xff, 0x08, 0x74,
> > > +                                        0x33);
> >
> > The indentation is still off here. You have 5 tabs followed by a
> > space. To make things line up with the opening brace I think it should
> > be 4 tabs followed by 5 spaces.
>
> Sorry, my  editor 'Visual Studio Code' It seems that the correct indentat=
ion
> is not recognized. I have checked it through the 'vim' editor in the V4 v=
ersion.
> Thanks.

FWIW, I use VS Code and it looks fine to me. Maybe check your VS Code
settings? Tab size should be 8.


> > > +static int hx83102_enable(struct drm_panel *panel)
> > > +{
> > > +       struct hx83102 *ctx =3D panel_to_hx83102(panel);
> > > +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> > > +       struct device *dev =3D &dsi->dev;
> > > +       int ret;
> > > +
> > > +       ret =3D ctx->desc->init(ctx);
> > > +       if (ret)
> > > +               return ret;
> >
> > You're still changing behavior here. In the old boe-tv101wum-nl6
> > driver the init() function was invoked at the end of prepare(). Now
> > you've got it at the beginning of enable(). If this change is
> > important it should be in a separate commit and explained.
> >
> >
> > > +       ret =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> > > +       if (ret) {
> > > +               dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
> > > +               return ret;
> > > +       }
> > > +
> > > +       msleep(120);
> > > +
> > > +       ret =3D mipi_dsi_dcs_set_display_on(dsi);
> > > +       if (ret) {
> > > +               dev_err(dev, "Failed to turn on the display: %d\n", r=
et);
> > > +       }
> >
> > The old boe-tv101wum-nl6 driver didn't call
> > mipi_dsi_dcs_exit_sleep_mode() nor mipi_dsi_dcs_set_display_on() in
> > its enable routine, did it? If this change is important please put it
> > in a separate change and justify it.
>
> In the old boe-tv101wum-nl6 driver inital cmds was invoked at the end of
> prepare() function , and call 0x11 and 0x29 at end of inital. For
> himax-hx83102 driver, we move inital cmds invoked at enable() function.
> For panel timing, I think there is no much difference. They are
> all initial cmds executed after meeting the power-on sequence.
> I will update these in the v4 commit message.

Ah, I see! So the mipi_dsi_dcs_exit_sleep_mode() was the 0x11 in the
old code and the mipi_dsi_dcs_set_display_on() was the 0x29 in the old
code. OK, I agree that it's better like you've done it where those
functions are moved out of the "->init()" function and into the
caller, so please keep that as you have it.

The only thing I would request is to keep the ->init() call to be made
at the end of prepare() instead of the beginning of enable(). It may
not matter too much, but in that case I'd rather keep it how it was or
make it an explicit change and not an implicit part of the refactor.

-Doug

