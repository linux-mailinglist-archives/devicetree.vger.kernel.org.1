Return-Path: <devicetree+bounces-66717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE938C454E
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E2E31F24975
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A41561CD23;
	Mon, 13 May 2024 16:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="azX4gpeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B641C6B4
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715618998; cv=none; b=ZoJKhvP+4hPa+e4yFSmYHB1xx52DsfmhLBPJrFbXF3nbXlQX4M50s75+DQB63kBXMKrXIWsGosMRMb5Vrnj8U3vyB8/OzwivySranqSzXPCzeX1qU4fVmm+AFCyFlgMcD8yOFSwv7Z6j6R5ONx3llTwVfzhXHn3X/tshPtGm6+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715618998; c=relaxed/simple;
	bh=cj8rJejB14OhovDU7mN2qrJaZ+XHTVvKDLhBqzNr4WE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YaDT3il5WsUGfCYGLt+W7RJdFNDPwMuf9D5j/x49J9O5dHPiNXaUs4nx1MK89XeNHX7tH8XwgZUH8oXxq4ca7XgzvKnE6r9/0ehOTW9X0Ff9I6eFq1Be8k/Y3EWE9Xsyl4z3nKoLxdFAGYiIJiaatU5dxVXDc6z8WHOD6J3WJl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=azX4gpeF; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-69b4e94ecd2so13433176d6.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715618995; x=1716223795; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1OM85BfQlIgcnJ/1dV+4zfpQvFXRIYFAfmerK9P8RRU=;
        b=azX4gpeFnFJT1bEUgjp5fVQU8jCrlZZBslVjLISrBW91WwSjWPnVoBIRYfmSlLrCcP
         v2nAptkjYd68mAhO4VnAMyKgYACUg17Zftpk8PogOY1+PNAp1nYZalbzqC4V4Ws9RZ9q
         QmPNENomLDSSIjONYiYdPtmuppVZBU6WVZLp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715618995; x=1716223795;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1OM85BfQlIgcnJ/1dV+4zfpQvFXRIYFAfmerK9P8RRU=;
        b=wX5mTcinUFB0NvYR/Eb9TQ9o/STImu0fgfhhGQ+hlNlZPmiHqIbVy0l7qMth7NlULy
         ZlRl2mtKM3PBdZ6Am5LGyqufaWQ14BeCzM4wFMumWe6GT1GfMVri7e3c9OL5BtBQWv30
         9+HePTchKK6Q3px1N38Es9AQZ8a5QTDzBuAzx5d5n75avBfAyGsjKia1qf78xMpXb8Nj
         CDtUPO9gleAMtq7fpMTxkdroJQ/n1wIGjYpOgGvqknc+iTjXmDYe4xqaX7yU1O/LkuQE
         Lytk86QIuy/oS1jXZn9Qi21IF+awRFzQfm0CgWbn83oJBn5Q6D6E3MVHbf8pctaj5des
         z74A==
X-Forwarded-Encrypted: i=1; AJvYcCW91wSRVQHdwLFjpn5MMF+53hi7nY/Knmg1/5dVyWv76m7LNVsT+aJs9xQ5JUHUApWPinJqRSmzyd8jKFgtKiA9Ek9x/xWhioE/1A==
X-Gm-Message-State: AOJu0YxZbpWo/1z1HFSv5cQKG21Km+2CbynjeNcwfgS+fkJLvfVJlQdM
	TVGBcTRkaEMNLaKEmC0uNaWlofGnfRl2uxfOEhtdln5eu/ASnOFIiN84OV6h/be37FpzKp/z8HI
	=
X-Google-Smtp-Source: AGHT+IHrue+hdHBeBE4wl5moHUO/PxYrDR9zd4dE+TVhK3p6WnuVzcddQ1P47/zP4XCA3NHg8T8qPQ==
X-Received: by 2002:a05:6214:4803:b0:6a0:cace:1ae4 with SMTP id 6a1803df08f44-6a16823513amr124460096d6.46.1715618994564;
        Mon, 13 May 2024 09:49:54 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6a15f205d88sm44884366d6.144.2024.05.13.09.49.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 09:49:52 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-43df9ac3ebcso766921cf.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:49:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX6tnGA4BhLqEGx2ZNZNstyQsEIz8Q7Lc/fOhlKzK9ufqR1uTTQHKaB9P7TdNem1Bq+nqPVNLp+qAOac7vB/MVnXz2xXF602/pTeg==
X-Received: by 2002:ac8:6f0d:0:b0:43b:43c:2e05 with SMTP id
 d75a77b69052e-43e0a223775mr4615311cf.19.1715618991681; Mon, 13 May 2024
 09:49:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-6-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-6-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2024 09:49:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XrmxSV1O2S+Z2_n11=sh7WACvg24xiAquGTMMFFGDEPg@mail.gmail.com>
Message-ID: <CAD=FV=XrmxSV1O2S+Z2_n11=sh7WACvg24xiAquGTMMFFGDEPg@mail.gmail.com>
Subject: Re: [PATCH v6 5/7] drm/panel: himax-hx83102: Support for BOE
 nv110wum-l60 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 10, 2024 at 7:13=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, use hx83102 controll=
er
> which fits in nicely with the existing panel-himax-hx83102 driver. Hence,
> we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
> Chage since V6:
>
> - No change.
>
> V5: https://lore.kernel.org/all/20240509015207.3271370-6-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V5:
>
> - Adjust inital cmds indentation and check accum_err before calling mdela=
y in init()..
>
> V4: https://lore.kernel.org/all/20240507135234.1356855-6-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V4:
>
> - Depend Dous'series [1].
> [1]: https://lore.kernel.org/all/20240501154251.3302887-1-dianders@chromi=
um.org
>
> V3: https://lore.kernel.org/all/20240424023010.2099949-6-yangcong5@huaqin=
.corp-partner.google.com
>
> Chage since V3:
>
> - inital cmds use lowercasehex.
>
> V2: https://lore.kernel.org/all/20240422090310.3311429-6-yangcong5@huaqin=
.corp-partner.google.com
>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 133 ++++++++++++++++++++
>  1 file changed, 133 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

