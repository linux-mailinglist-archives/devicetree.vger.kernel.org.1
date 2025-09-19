Return-Path: <devicetree+bounces-219113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF65FB87D38
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 05:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 121F27A7230
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 03:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5934E23C4F3;
	Fri, 19 Sep 2025 03:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dIxDtqrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F2A21FF28
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 03:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758253413; cv=none; b=PY6J+VdAFgHhJ+Q1Ts5AqLMfqr4M+c5fwfEymHyeQhUzOpYGBVMB3V7MGhdv6hCBktdU3ew1OMjt4hOr/adf5w9F0dzwpc2ueISxtecO+Wpg1vdmI8/Zn6EJs5y1LTkop05nfFiCK4Ie7YslCFUpZScDbiDjSOgCNxhYc2V63i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758253413; c=relaxed/simple;
	bh=aeNvmUS62k0jH566cB0cmH9oXeO2gW4GJlD3nXTVxAE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=imddQHvmH8BEmQKwoMJOfCLUMZWB/G7CLK6D/qf6YTuh5zTa1CU5aGFO46QKyib5YjX27R37yINkacqLqHB1ZhAeU6o0DZr9azKoK/X6fkW4S1SFArRZokr6gPyJpqDk7ZGK4NSNBSpNUprEp+n2YRPvR+tW3pXlkHBm/q0niOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dIxDtqrI; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-32df5cae0b1so1870891a91.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758253411; x=1758858211; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKMYfdVwb74kV6i8GOAfD4K3WUGY3beOoq2S/aiwLCo=;
        b=dIxDtqrIrCp4cPKXfIU5TerzBN/RFflIZJhRI2o0C7PZj0xqhgCSnTR9wuu2IygBEV
         HnDKO+QAWk0oklLefn4yFD8T79588JuR++FGfU+31Ax5fRWn77kD/oIuZZL5rkRntNzx
         xX58bSlAqOgWJSCB6H3rtg7oBQat4pAt/28IfkFORWjiJepxb2fFpGV2NgLonWE2uSRF
         ioKbhtyfMdwm4OPlm5TWY+dtYJqjNibi/FFtQQHuJPTn54ohgU/hNCLOa4iI8foZfb5T
         s7lBS2q4Qabbscep8/N2oDy5Ej5rw58IWMqbIKEW4vEKYCAXv4gnKoDglOSjyJFNv/Ev
         TqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758253411; x=1758858211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SKMYfdVwb74kV6i8GOAfD4K3WUGY3beOoq2S/aiwLCo=;
        b=CHSVdLXMVtto+3YtNEmSWZD6y2kkSLo3p+o36LeSI30WmK+RxaYSDz2HidsrIppwze
         XpGSpgF7cLoI80LB5N4wnT7TVAdjMasZoY9BEGi5oVcAWJ81rIJbtpDxLRpm1lUfKCnQ
         ZTKcN9diSQ8ynKcsD6pBkbB4NgEai8Agy10b2dcnl9KoTsWFZpluA2lPokQv8iAl90j0
         U3/zvawOTyKBpUAyNvkom2oHJcOH1GGeivv0vJMjiPs7WA56AvAp86ZftxBq/Ocn/tT8
         1cHf56Hm9ssIb9acziMzRK4OQGlDiJWSD0eYzfJidj3V3SbcXkr57bB1hxvS/bFlkUOG
         wxeg==
X-Forwarded-Encrypted: i=1; AJvYcCW14VI6XJm8bHRuz6fVSCLEZck1GIKfWgZHsIwMFbL+iuqMmN5mklITtv+Z4ckDrqJQri5x1LKIejaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzCDl4vJy0Zl5jQIbKtVJOvEEw2yn58oF1693rqhX7Wgjq47++j
	ZfWIEEsG1qNwYwoy+qYvES4KidfQ8snHAPUWnO8SjDBgrAV0+8AJRNQQIiPEciF9BuwD5C6vOkV
	iJX9ppW26OffoG6n9VYwlR2TqP9omA1E=
X-Gm-Gg: ASbGncuBYAA+Q7pToqQAadBE1soilCJRNupmNxoF2apimx8uMS2Hc3YdWAVtXpW8M9V
	bltbxjtgiIlN5rxfQpXB69EwvCGxCJs97nMpWvoSCQ0BXOmrMJ/BwoNGSKy+Mja93FiU8gSW7HA
	EowXDNU228mowSOoLPYaOCVVZxYWuWxo4lgQRFszZU1uW96ZbNkaiojxYiUT3MbJXPFIZKvE4bJ
	OqRf6I=
X-Google-Smtp-Source: AGHT+IF3ku8gvZB1hxFYXtLnd7iwTR3jkeyD4oKxxo5kWDQcOyxdH6t3IjIvgH7PYtQujNBSFI44t24lqUYUtwzzka8=
X-Received: by 2002:a17:90b:52d0:b0:32e:d011:ea1c with SMTP id
 98e67ed59e1d1-33097ffd1b2mr2599824a91.15.1758253411070; Thu, 18 Sep 2025
 20:43:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821073131.2550798-1-shengjiu.wang@nxp.com>
 <20250821073131.2550798-5-shengjiu.wang@nxp.com> <20250901185208.394cd162@booty>
 <CAA+D8AOCTqb5jLeRapYk4wRGZrsrPiuAR=ow3OA1B0+M9X4k7w@mail.gmail.com>
 <20250909-omniscient-honeybee-of-development-adca8a@houat> <CAA+D8AM=aRU-0QcgtxZ+=YBZ2+kMrP2uzSE3e+NJs3Z3zkrSVg@mail.gmail.com>
In-Reply-To: <CAA+D8AM=aRU-0QcgtxZ+=YBZ2+kMrP2uzSE3e+NJs3Z3zkrSVg@mail.gmail.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Fri, 19 Sep 2025 11:43:05 +0800
X-Gm-Features: AS18NWDra1nGW4hE_RulzgXqUXLGFVIDrxwneg_8Sfyhy5B_85F5WDGUq5FPeS8
Message-ID: <CAA+D8AP8eJ8_pueq1ZSb-ORzTJbNT7HOwKFOO5ZCXqgqoQ1qGQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] drm/bridge: dw-hdmi: Add API dw_hdmi_set_sample_iec958()
 for iec958 format
To: Maxime Ripard <mripard@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org, 
	cristian.ciocaltea@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, victor.liu@nxp.com, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	devicetree@vger.kernel.org, l.stach@pengutronix.de, perex@perex.cz, 
	tiwai@suse.com, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca

On Wed, Sep 10, 2025 at 6:29=E2=80=AFPM Shengjiu Wang <shengjiu.wang@gmail.=
com> wrote:
>
> Hi
>
> On Tue, Sep 9, 2025 at 2:39=E2=80=AFPM Maxime Ripard <mripard@kernel.org>=
 wrote:
> >
> > Hi,
> >
> > On Wed, Sep 03, 2025 at 06:41:05PM +0800, Shengjiu Wang wrote:
> > > On Tue, Sep 2, 2025 at 12:52=E2=80=AFAM Luca Ceresoli <luca.ceresoli@=
bootlin.com> wrote:
> > > >
> > > > Hello Shengjiu,
> > > >
> > > > On Thu, 21 Aug 2025 15:31:28 +0800
> > > > Shengjiu Wang <shengjiu.wang@nxp.com> wrote:
> > > >
> > > > > Add API dw_hdmi_set_sample_iec958() for IEC958 format because aud=
io device
> > > > > driver needs IEC958 information to configure this specific settin=
g.
> > > > >
> > > > > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > > > > Acked-by: Liu Ying <victor.liu@nxp.com>
> > > >
> > > > [...]
> > > >
> > > > > +void dw_hdmi_set_sample_iec958(struct dw_hdmi *hdmi, unsigned in=
t iec958)
> > > > > +{
> > > > > +     mutex_lock(&hdmi->audio_mutex);
> > > > > +     hdmi->sample_iec958 =3D iec958;
> > > > > +     mutex_unlock(&hdmi->audio_mutex);
> > > > > +}
> > > >
> > > > Apologies for jumping in the discussion as late as in v5, but I not=
iced
> > > > this patch and I was wondering whether this mutex_lock/unlock() is
> > > > really needed, as you're copying an int.
> > >
> > > Thanks for your comments.
> > >
> > > Seems it is not necessary to add mutex here. I just follow the code a=
s
> > > other similar functions.  I will send a new version to update it.
> >
> > Let's not be smart about it. Next thing you know, someone will add
> > another field in there that would absolutely require a mutex and now
> > you're not race free anymore.
> >
> > Unless there's a real concern, the mutex must stay.
> >
>
> Ok, thanks for comments.  Then Patch v6 need to be dropped.
>
> Is there any other comments for this Patch v5?
> If no, can this series be accepted?
>

Can we have a conclusion that keeps the mutex as Maxime's comments?

Best regards
Shengjiu Wang

