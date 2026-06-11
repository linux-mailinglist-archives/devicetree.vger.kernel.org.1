Return-Path: <devicetree+bounces-310160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OlBeJ2pOKmoYmwMAu9opvQ
	(envelope-from <devicetree+bounces-310160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:58:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E42CD66ED98
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:58:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="oyE/IbnT";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310160-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A57630707E8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559B4344DA8;
	Thu, 11 Jun 2026 05:52:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9615226CE1E
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:52:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781157177; cv=pass; b=D6dD8Wk66FJbTZps1hRWcSSqYFIPPwbVOhWA190YkG3JchjXyV567Q+LxueVsOmHgTmLF6KhHp+EJs/jzAP8tg4XjIrfHgnR9IRu3+DPJMSZi4VNfpSrEifAed4kPlGcDeiIeLo9b8/axKmim3ZWxgNe2CCtgxjCATI5xa2/4Qc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781157177; c=relaxed/simple;
	bh=MVTQV3iByf3dVK2AOj0cONy78X6ah2oxRL4axfEgkcM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ojtzd8JYYLchc5RmJAGN5beu9aYAnFmWmtFG/jsSXia1KMPGa6s1QvMHKG/SkYjAIhSx2S3qlzM1+Tw1ddEmRqxKIeifdAfs2fgNVB3u5ulUETxARbRZPYul5m/o/kawvOGHNg97fAVrei8KFoFSlzF14+vc/8NCJbem9hHDhTs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oyE/IbnT; arc=pass smtp.client-ip=209.85.221.169
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-59b074ec7ceso2625107e0c.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 22:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781157173; cv=none;
        d=google.com; s=arc-20240605;
        b=Pks7ewR9uLyMxHw4NtUCfo0B7BIIJsfYKEUXgFY4lH9FpvFv43i1hEBQI1M0Jr1Mdv
         FL+GkOUgPJ3lR4ZzW5aLT0dFLtlyfi7g+qmujESmNqbJ84U+CNyRdq5lgp9GvXYLiTl8
         zSCtskYjJHKK05nWAQEH8A50a4DIbtMv1biDKiQ/Y4Bqj3s1rfh9oCcxng4mQTW4RIum
         Gqoz5WgXoq85TMTSYptYSkT+XsEpGbs3g6RMZIGr0gUbVcfZ37bOad9/YEbScJf/S/bJ
         07jQUyNZfFoYd53XtHfzbekq4NRNGzvi/bxSf1eh+1eDUi/Q8xtk98ISPupATq8NksVw
         E9MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BEMiDPCD1Ibyc6I+MijVZ6I4dtevE+uqRF5A9n5w9rU=;
        fh=ycGQDBDISnIfuuAkfQJwt0PE1KvxubCTJ9FME9DJzt0=;
        b=auSwP2oMvMlLVbn6J+8Ng0+JdDUrwtt9E6NxC/pal7uQ/kFkVH7rAC3lplsID0tG1r
         2lbNKTv04UKkmyHiQG2iHGUx3efO1GPZ5Gnr8ACeGNGgpki17fuwbTLvmBx6A6ynPYEW
         Jo3dGu7S+dubKrB4qqhBZj8seL2C5nEZDIRFggmBm0BKQnoZKGslPWs+jDxudCipXXYQ
         KTkaW0S5WJBrb4+HPs4BbjWm+NTVK7O6dZVLDAjHrAwqClG9uRG7oGbpV3LTXGtVGMKw
         dQOl2Jpx39LmkXuuURWSDvjwWEYsnqCUCtICjUVil1eX5XXdn8d3TThm94slFJe9jo1Q
         7Few==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781157173; x=1781761973; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BEMiDPCD1Ibyc6I+MijVZ6I4dtevE+uqRF5A9n5w9rU=;
        b=oyE/IbnTh2fYl+mYwqqefZis09ZT+Nn9imhX1KsFd/8l9m1CB2wdt8cGDNTR2fvk4X
         THBmx1iC4dWb63ynmvRD1NQQc89yv38S1MG2nyk+IC7dItHDaotbch73PPyVVeLvOVjo
         keDhr9xI+4wpN6l2Ca0/mNRivP2ZkFF3fiOBmZmVakd1Wp/lSzdCKrPhZTm+PkPaptIg
         lEPWx41dDFT0rxKfsrkhvgHpx+FPCzzjQCOUOix6USIuV4Nmn7ifgPtUWHN4glfP6v+0
         +Z/e18IElL6SF3zOeUAQqdzdaRcV1kvmTW75OcgoIzkoNUhDfbS9elNrAlsDYisyaArW
         1+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781157173; x=1781761973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BEMiDPCD1Ibyc6I+MijVZ6I4dtevE+uqRF5A9n5w9rU=;
        b=rWXuphrG0kcSaT/Pnr3lwtE9SEiagYE7ntaibvGfYv+bMIhhZqFi/TqPJw9w+vVG2Z
         48fUhLQi6EVzoUbodThNI7KoA7UvoStJQCzj+mnCRrTLE4tfQgzDtRvUimLd0r3/f2NX
         1CG1hQx+Di/LB5FwyStpfTSZnqRClLHeBXSt73SF+nDhw9JL0YbS07MzvK3A5w4GFHO0
         gHwQhGGbehjzCs+xRNk0uAyeHzPWFWu3AJWkAdTRhnos4PX1ttau8jbEOmoW1XxUYyWb
         L1yr64oIP4fjpOnm+TzEHsHHfisaCpGW9BhnzVk3wG3fo4aj2g3X/a2X3hF9FSG76Ts7
         oqBA==
X-Forwarded-Encrypted: i=1; AFNElJ/MWyMvt1t04B9JB7U023yEOUYhtfvm8PYfxCpnf3I6S7JAcE+Zrb+1sypVdJLv3qMz45UJ9VsGTHva@vger.kernel.org
X-Gm-Message-State: AOJu0YyXJ6ECvyRr9u3fsBq2aZzqtAZPk2DwiBgE7tlB2c7GNpgAkO8z
	r4jB+/jVcMIC1rZ5b0mteLn5RhiQ0QJX+gucy92UXYXNoJX+YeYx+NAbswrpIP74Xsw4Mq04nHF
	F9Al8FxUmyLnQ0a4SxPNu3tHfiXAtgy4=
X-Gm-Gg: Acq92OHDv6UKJNgHtpCScbH04MSsTkIfLrDGKoOgermKvUA3l6OGK+dlUJmJyVSuDpL
	uWcKB8v9tK2YM8frkypTJcfCMUHizqqUY/3SI/qJIhfOOU5PzFloF2IoBBffgwEP/zn48TjqIQ2
	8G+M+B2NQkXrHOfX50DXqHlDFFd5221mBly2kGBR/w6SFjZaYP/w5gSofLYUGfuV5ooKLq9Qwdi
	jzK20Hv0EZxaUd1/FHEZv338na096EyTZJ8E8VVCVyIP+tjgKPber1PCgXDiYguAwyKmOnm0Mm9
	katGXT/V1dPHaOP9sMf7E3LZcVdR3BfeTgZrT/d47HUw7yZ+Ag==
X-Received: by 2002:a05:6122:83e5:b0:5a0:afff:78a6 with SMTP id
 71dfb90a1353d-5bb02413694mr389666e0c.14.1781157173403; Wed, 10 Jun 2026
 22:52:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
 <20260608162622.403713-3-zhengxingda@iscas.ac.cn> <178115560757.199930.5802398831559617564.b4-review@b4>
 <69a18fd1a1b9f375bbccfbe0d9e88ab31a01a188.camel@iscas.ac.cn>
In-Reply-To: <69a18fd1a1b9f375bbccfbe0d9e88ab31a01a188.camel@iscas.ac.cn>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Thu, 11 Jun 2026 13:51:33 +0800
X-Gm-Features: AVVi8Cc7LYQCwG-bWzkxGFR19dDpqNb_Uzf0FXIAKcUP6NkBobTDNj-Pgvcc6l8
Message-ID: <CAH2e8h7OhA=14KtkqxAJJWfPiLOAe44e5_Pw+DG9NOvN=-cGcg@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/panel: himax-hx83121a: add backlight regulator support
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310160-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E42CD66ED98

On Thu, Jun 11, 2026 at 1:43=E2=80=AFPM Icenowy Zheng <zhengxingda@iscas.ac=
.cn> wrote:
>
> =E5=9C=A8 2026-06-11=E5=9B=9B=E7=9A=84 13:26 +0800=EF=BC=8CPengyu Luo=E5=
=86=99=E9=81=93=EF=BC=9A
> > On Tue, 09 Jun 2026 00:26:22 +0800, Icenowy Zheng
> > <zhengxingda@iscas.ac.cn> wrote:
> > > diff --git a/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> > > b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> > > index 1a7e0125bced..e31e2fba0a78 100644
> > > --- a/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> > > +++ b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> > > @@ -195,7 +197,27 @@ static int himax_bl_update_status(struct
> > > backlight_device *bl)
> > > [ ... skip 18 lines ... ]
> > > +           ret =3D regulator_enable(ctx->bl_supply);
> > > +   if (ret)
> > > +           return ret;
> > > +
> > > +   ctx->backlight_enabled =3D true;
> > > +
> >
> > If you use a pin, (it is indeed a hwen pin as we know) you can
> > simplify it like this,
> >
> > bool bl_enable_now =3D !!brightness;
> >
> > if (ctx->bl_enable !=3D bl_enable_now) {
> >       gpiod_set_value(ctx->hwen_gpio, bl_enable_now);
> >       ctx->bl_enable =3D bl_enable_now;
> > }
> >
> > BTW, iirc, panel bias can be turned off too, although I don't think
> > this will save too much power.
>
> BTW during my test, it seems that DCS backlight 0 isn't turning off
> backlight.
>

Yes, there is a hwen pin to turn off BL. In the downstream, I added
it, no time to upstream it, I forgot to add display DT too. I meant
you can turn off panel bias too, if you turn off BL. In general, I
turn off it in drm_panel_unprepare()

Best wishes,
Pengyu

