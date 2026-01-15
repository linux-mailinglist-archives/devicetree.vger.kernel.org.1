Return-Path: <devicetree+bounces-255437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B82DDD22EE2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FEBA304A12A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D36832BF22;
	Thu, 15 Jan 2026 07:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gl6CBYMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B852DECA8
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768463360; cv=none; b=Rfo4J516x5oi9ffap7+p2fUli0d9zPiuHk2nYM7h83NC8yyiYMlgkUbrmfPPpvrnbXqJt7+nHEEP0kSwT1yFQSXoLldTPwGEynYisaCh5eXMkbc2BEpzTnvAcm820yusUBJJpxIWa6OeXYENl3ihxmHNP0efIc7N0o7fH76zFrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768463360; c=relaxed/simple;
	bh=hd2VPdvp8ufnz+pdMsSef2AaJOW+FtodIDjMjm5/IIo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o94wDbv/HIqCjCn1F9WeR+LdRoCfCQOcnccYYg3qsFqLR/4/lk7q4Z52FaF5TLRmBaoK2/9xkKz6HfSl6XFvVYRrvYgbRl0iGl4r2mmjrajx8Hlh+eTfN4z4nb3DISajgXviDvOkV4DaSur5sLRBNAtnxqptCWa67RIOxai+VUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gl6CBYMT; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb5810d39so386461f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768463357; x=1769068157; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtxAoaTpJU6r++xlIpmAaAG/bZOXfH9n2gzVC3kL6Pc=;
        b=gl6CBYMThWlrGXrBHxb6WypqpxguzhCqzgyIzVnlZJgA6szY65qhsBNCDDXxInjbjM
         VdQaXk297mclLMv4QCGucjiYsxKfT4jx9ivQLEvUcY+UAcgb3NHzVOfj6EBSWOEtQiMA
         WAzT//jdZ4+fdgpnVSG05P2vEXhZYWTiqtXjxh5NwmlAgBB7/Hbc+ShTsDII5H/0QA1B
         N7Kwit/JHlMPdpcB2KNLuQusF8mya4mkAMtWcE+P8IHSgKFZC0AbWoameqm2wWXtOOZr
         ctzBItgDCyRjiaIXFGQxUz6Jbt2c7vnNmoOT8EccvIpAv6yp+iP8RocmAThw+hp98vEC
         JCEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768463357; x=1769068157;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GtxAoaTpJU6r++xlIpmAaAG/bZOXfH9n2gzVC3kL6Pc=;
        b=FlradQTetD/m/h9wh8B2H2b/pBGUzQa33oxqDKLqtKS8Xj+w2tMdikLjBulVxGkHFH
         gqDtKALRWTmTTI0dJkN4Ot2MS8W1ywpyXxECz0FakOPgdZYcG5ejPvXeVqseVAze4G3Z
         DMozbgpT6d2Ec4l6FZpiBnPEh4alYEBoMzci6+EOCcOJUufK6UlsKiF0Dha0aemZT3WX
         mjeqxvrL50uJgTWahOl6r0d5N3OVkXYIQUHyS/nAHWhOIaP/GhJwgedhpwT9VtYML7Ab
         hD/5SMejRS3cSaJVahC7ypM1CZBfaLH5REKbQYUVpPmUh4F2Lj8HPmnszHBAbH2M5Jt0
         x7vg==
X-Forwarded-Encrypted: i=1; AJvYcCW/rMEe7viV9HQHSC14HC0221TMLksfzNZdCVE48DeKWIaB5evAsK1mlncVURR3DNnHH/zpGKkOW/8h@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr/BhcmMUZCE8LRi7b+l36Tx4yScdHTh5lwrEH767K+ivtIN0e
	Eja6DaLjM/x2FkZTg9FlQssvXM9wSdTUuLK9TgUojBYt6iONURqRiprajSTOcfwZJN92nwrYbY+
	Lk9nSMHf/VSDadL8pwiJCIDdnpP8uipU=
X-Gm-Gg: AY/fxX4MeUBlOIX4IuOihDwrEg7io+Dzsk547ll+vhwpLPm7hDPkjvkdoF/ygrgiVaJ
	tGBZerjD4rq1aPzht6N+NetozzR8vz/4ZcYt31uNpGKNN+sL32ENEEJOg5qCk7Nw4njKGT4ESIC
	Ap5JF3RpotT3hvVbSZYgLm/7avsEJdEhCLXzfoJNjhCKmAuY9+fXiglzJn5xGm3HeoZzfoZ9GV0
	DpknerfqksnBitXR7KnnSNWN/E7x1Ryl0S6lCsgdm8FZhOAFc4NBltQ3nDRoQvWibe4ioNh
X-Received: by 2002:a5d:5d86:0:b0:432:8504:b8a9 with SMTP id
 ffacd0b85a97d-4342c571e43mr6373650f8f.62.1768463356624; Wed, 14 Jan 2026
 23:49:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251204061703.5579-1-clamor95@gmail.com> <20251204061703.5579-3-clamor95@gmail.com>
 <7012249.lOV4Wx5bFT@senjougahara>
In-Reply-To: <7012249.lOV4Wx5bFT@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Thu, 15 Jan 2026 09:49:05 +0200
X-Gm-Features: AZwV_Qi0zcbXk0tsiK_qJ_9rRb1cx2nEQ98pWwmRVMmkpOG8O8-PqPUPy2GYvG0
Message-ID: <CAPVz0n3JEHtUOq4qaZbqPu97NXdYxx_=5im4rxoEWi8EbKmKEw@mail.gmail.com>
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

=D1=87=D1=82, 15 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 07:54 Mikk=
o Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Thursday, December 4, 2025 3:17=E2=80=AFPM Svyatoslav Ryhel wrote:
> > The tegra_dsi_prepare function performs hardware setup and should be
> > called before any register readings or there will be a risk of device
> > hangup on register access. To avoid this situation, tegra_dsi_prepare m=
ust
> > be called at the beginning of tegra_dsi_encoder_enable.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/gpu/drm/tegra/dsi.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/tegra/dsi.c b/drivers/gpu/drm/tegra/dsi.c
> > index 278bf2c85524..8e80c7efe8b4 100644
> > --- a/drivers/gpu/drm/tegra/dsi.c
> > +++ b/drivers/gpu/drm/tegra/dsi.c
> > @@ -914,6 +914,12 @@ static void tegra_dsi_encoder_enable(struct drm_en=
coder *encoder)
> >       u32 value;
> >       int err;
> >
> > +     err =3D tegra_dsi_prepare(dsi);
> > +     if (err < 0) {
> > +             dev_err(dsi->dev, "failed to prepare: %d\n", err);
> > +             return;
> > +     }
> > +
> >       /* If the bootloader enabled DSI it needs to be disabled
> >        * in order for the panel initialization commands to be
> >        * properly sent.
> > @@ -923,12 +929,6 @@ static void tegra_dsi_encoder_enable(struct drm_en=
coder *encoder)
> >       if (value & DSI_POWER_CONTROL_ENABLE)
> >               tegra_dsi_disable(dsi);
> >
> > -     err =3D tegra_dsi_prepare(dsi);
> > -     if (err < 0) {
> > -             dev_err(dsi->dev, "failed to prepare: %d\n", err);
> > -             return;
> > -     }
> > -
> >       state =3D tegra_dsi_get_state(dsi);
> >
> >       tegra_dsi_set_timeout(dsi, state->bclk, state->vrefresh);
> >
>
> The section of code before the tegra_dsi_prepare call was removed in 'Rev=
ert "drm/tegra: dsi: Clear enable register if powered by bootloader"', so t=
his patch should no longer be necessary.
>
> Mikko
>

You are correct. I have found this when rebasing onto v6.18 which was
much later then this series was resent. Obviously, this patch would be
dropped on the next resend/v3. Sorry for inconvenience.

>
>

