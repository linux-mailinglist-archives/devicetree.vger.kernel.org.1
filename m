Return-Path: <devicetree+bounces-259196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2wAHC3opdWm8BQEAu9opvQ
	(envelope-from <devicetree+bounces-259196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 21:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A01DB7EDBA
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 21:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84848300A631
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 20:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0752798ED;
	Sat, 24 Jan 2026 20:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQm4t5XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436DA2737E3
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 20:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769286005; cv=pass; b=ecXo3r8m+s3FZOT9ulEmXehT/cFYWCLLXfHqEMni2QJoc7Y0efgZMp9ZoYMKddXTaQ39Mqdpd2dkhBcKNQcwfuKNHrfr+obyxmZlzPlDSZDiJmWtNxzkYmN4ajSR8HUOcGG3HAi5qtvSSWfe5XdhmF1CI7LzwNT01PTSPWH45Tk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769286005; c=relaxed/simple;
	bh=zbChyElac1UwgTP0SJZj1q6AbqL+QWSoCe8JC/abZcQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TRJ6amtYexhuKp3NAnJCJS7RJ0suX61fXyGU/PRHgV+7zp+l5rPpcB6h55h2e+QL5LAaQqvdzc3GKEcMWr8VnA3PFAmuVN/1EAGXWbW8d0fX/PysPashFgHinVFK3lEvKtR2tBDNYa4p/MqGBtd/HHiGyiDB4/bs6XTgMQJEphQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQm4t5XP; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4327790c4e9so2123961f8f.2
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 12:20:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769286003; cv=none;
        d=google.com; s=arc-20240605;
        b=B//xVjeY5xxostSFk2MP7Fet2IsRawjP/d+EjqahNDSoItwtPbhGBC+t/j2NM8vBhO
         oE7LyuZRNMc4U2OxDYToM0jowbzYsiQ/g8AjLYnsWbi3Xcz/IOndfIs4Q2znwGaHJZ0H
         ch88fUzPjKxg1dU9Scz/gUa5F8fB/opRKjIFjxgEEwxIHKVNtiszWfrqyB9mEpxpsh03
         5twLcNC304LZg566ZTsKyIjTd0JvLmtLkdfqyvjBGFENVgy7+EEb2RjrJdG8A5P62i5q
         jfvudbyJXGucGuIbcEVEQjt2GxxYvuj20uYDuJdOmW/ryNImJg7GElvjdQU8wDO8TKWb
         94Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5IvQvVO47AehbyLG9Cg7wRdRPasY+7er+DvV1ut13R4=;
        fh=Nei7I25HuJgv0UmkNwmW/k22jZkVCoyBdBmsA+hzoIQ=;
        b=Ixsm1h6d0m94EmX0wC+K1+dloVLfAFWgZTewbwiV32UgDeZNs7m0szT+q/O6MWBlQp
         TvvOHrCQGIiWGAeeUfviIJc7FDpK6KRgVM/+kKFNnanBNvpEp2KuTzLcfEJlOJ58TiKO
         kekFiTpuOR1nTTr2VlKjNUHRLAZG6J7C/NXBX2Vlh8mxn2DyKIlC4eR8d17W6RbK1PrR
         4brcLxoumIsSzwdzdWa6IBMuvaMhJiSvIoGOWoUv0L8Brm4R6aJ9B0e9lebNv7ALN9m1
         wjWDqvwa8HFgs639+A91bU2WDbwxcV0k0c4+9BtyzyM8LyRWFXNhctmcp/bSwzBxlkHU
         HR4g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769286002; x=1769890802; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5IvQvVO47AehbyLG9Cg7wRdRPasY+7er+DvV1ut13R4=;
        b=LQm4t5XP1Th05IcbVbTcwufLJTHkdd7VcXrQn4yGeA8kvQ/LDJg1urhNBwipYnUSK3
         2kFWt/78sCIWVdGJmsA7Uqd3LFrmej0kkOCMyZntIUs6Vo3b4m97VKka3MOLa87BAH4p
         HKMSfqXvSaiR4Q8JrRjCQk9N7dgJ/gMtQTzmxWXzNZP7saT8guI6RvSAWShkU3yvAkFX
         N8LAFLkhPZAANTwTAlz/vyojG/ifBgJGxzBdE+mTZv4ooLVtBxBhn8QGJwHBuk6UMEkW
         3CjBpnppTLnbh7ZBzHsiPnntu20W0ZF1akz0FGQyVX409cZhCx64hlUBB2dkSjN0/Q7T
         MvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769286003; x=1769890803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5IvQvVO47AehbyLG9Cg7wRdRPasY+7er+DvV1ut13R4=;
        b=mSN7I56yF4qc2wS1m1J7sGWiHx8cMRAcqa+XmEtIzMBpi1HAMObOO6NMCvrAoBIOcG
         7RFZfUXiHtD4W+4WL+sfzEBAbZQqHRiFrl9Ms9HRxqrB/4E3rM7gHKHHJTtTalMeJX4+
         edYotFWhZaqa9ADGoDescOoHKMyPJI5RzK0JMAQV6mAs6mnkiYjDWzIGVuk4/FqzuNwY
         iiL2hFhhwOu9SwErG7Z1/OT2nfanebQXwsjzPfdDrkMGJyV/XDGksBFONu6TlHpKylPO
         h9CJD9+ihOTH9CGHIWueUkCn4AxbQZEYOVfaxPgqnCgF2FZTM8eRyBcIuj6K5ZHh1qUT
         5+cA==
X-Forwarded-Encrypted: i=1; AJvYcCV128fsc24MK2Xso6k+bBzUk+zQuXxJcLvxAQoEN1bCIYrfXVLPP5GZ3IA4yOMnNKla2nHr4/OlTFYE@vger.kernel.org
X-Gm-Message-State: AOJu0YyCzndF0WraRiumGDgKgN7T6lskqGXSzb9Tc3xzzieXdTWa5Q2+
	j90frFxpU7R2IPPtMB87eit/aa44o6SsRlDfjoVK5Q6KAUCrrhYkJmtFBJFZZV0FqNxkdL+1QCd
	Xyu1U39De8LUqFPoIhRShMbKtDBC5T0Y=
X-Gm-Gg: AZuq6aIuoCKQ4pMQwc+sOM/LlrpXRDAojFFaI4fESDV+bczWmXSz8MztkZPSxg80KqN
	TlUJEemOnlKuWnKoerhkOanXsbnViw6a0T1e3msk/X/vYd2vvl+j2YcNPOugGyUyx4Z9bULWcUO
	+K+W5MDEqB5kM+NQ8zuEPvBNWf6E5iMvJNHSFe+okgETyEbV+K9U/Pept0muUJa09tcxGDgXNbs
	xZ/zbsSigo6HQW57prIoTaTUS8qqkUeIGRtWFUghWhjC2oI0MibizxPWaaULvcllGNIKKCX
X-Received: by 2002:a05:6000:288e:b0:431:752:672b with SMTP id
 ffacd0b85a97d-435b159556dmr11734663f8f.14.1769286002389; Sat, 24 Jan 2026
 12:20:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251204061703.5579-1-clamor95@gmail.com> <20251204061703.5579-3-clamor95@gmail.com>
 <7012249.lOV4Wx5bFT@senjougahara> <CAPVz0n3JEHtUOq4qaZbqPu97NXdYxx_=5im4rxoEWi8EbKmKEw@mail.gmail.com>
In-Reply-To: <CAPVz0n3JEHtUOq4qaZbqPu97NXdYxx_=5im4rxoEWi8EbKmKEw@mail.gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sat, 24 Jan 2026 22:19:51 +0200
X-Gm-Features: AZwV_QiGF7B_Re4bWRTdgXNS-XzkdDJdBkm2AnW07YovL950WfU-W10tVO3KO9M
Message-ID: <CAPVz0n2PZRSLyKNBAA+nfH66ujbvmQVQbG=6Ai_5sBe3U_dyPg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4 RESEND] gpu/drm: tegra: dsi: move prepare function
 to the top of encoder enable
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259196-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,baylibre.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nvidia.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A01DB7EDBA
X-Rspamd-Action: no action

=D1=87=D1=82, 15 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 09:49 Svya=
toslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> =D1=87=D1=82, 15 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 07:54 Mi=
kko Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > On Thursday, December 4, 2025 3:17=E2=80=AFPM Svyatoslav Ryhel wrote:
> > > The tegra_dsi_prepare function performs hardware setup and should be
> > > called before any register readings or there will be a risk of device
> > > hangup on register access. To avoid this situation, tegra_dsi_prepare=
 must
> > > be called at the beginning of tegra_dsi_encoder_enable.
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >  drivers/gpu/drm/tegra/dsi.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.=
c
> > > index 278bf2c85524..8e80c7efe8b4 100644
> > > --- a/drivers/gpu/drm/tegra/dsi.c
> > > +++ b/drivers/gpu/drm/tegra/dsi.c
> > > @@ -914,6 +914,12 @@ static void tegra_dsi_encoder_enable(struct drm_=
encoder *encoder)
> > >       u32 value;
> > >       int err;
> > >
> > > +     err =3D tegra_dsi_prepare(dsi);
> > > +     if (err < 0) {
> > > +             dev_err(dsi->dev, "failed to prepare: %d\n", err);
> > > +             return;
> > > +     }
> > > +
> > >       /* If the bootloader enabled DSI it needs to be disabled
> > >        * in order for the panel initialization commands to be
> > >        * properly sent.
> > > @@ -923,12 +929,6 @@ static void tegra_dsi_encoder_enable(struct drm_=
encoder *encoder)
> > >       if (value & DSI_POWER_CONTROL_ENABLE)
> > >               tegra_dsi_disable(dsi);
> > >
> > > -     err =3D tegra_dsi_prepare(dsi);
> > > -     if (err < 0) {
> > > -             dev_err(dsi->dev, "failed to prepare: %d\n", err);
> > > -             return;
> > > -     }
> > > -
> > >       state =3D tegra_dsi_get_state(dsi);
> > >
> > >       tegra_dsi_set_timeout(dsi, state->bclk, state->vrefresh);
> > >
> >
> > The section of code before the tegra_dsi_prepare call was removed in 'R=
evert "drm/tegra: dsi: Clear enable register if powered by bootloader"', so=
 this patch should no longer be necessary.
> >
> > Mikko
> >
>
> You are correct. I have found this when rebasing onto v6.18 which was
> much later then this series was resent. Obviously, this patch would be
> dropped on the next resend/v3. Sorry for inconvenience.
>

Actually, "Revert "drm/tegra: dsi: Clear enable register if powered by
bootloader"" causes a  regression for me (DSI on Tegra20 device,
Motorola Atrix 4G). DSI initiated by bootloader will be stuck if not
disabled pre reconfiguration, Dmitry was right by bringing that
change, but he did not take into account that if DSI is accessed from
cold state (not configured by bootloader), device will hang. This
patch addresses this behavior of Dmitry's patch and prevents
regression introduced by reverting it.

> >
> >

