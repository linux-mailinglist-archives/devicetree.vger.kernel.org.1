Return-Path: <devicetree+bounces-140622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9435A1A91E
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 18:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 339FD168612
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 17:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D44F14A4E1;
	Thu, 23 Jan 2025 17:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YrMmRz/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A66815746B
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 17:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737654424; cv=none; b=qcqYXxM22Jz8BtpQlwzzD5dszKqUU6ZSWfvRwpUSrgCO+U3sY1uvceHrXCesCILt8oXg3NnY65R5uRACjQQFLAPyuxzf4La2b9pjG4OYFEeqia/joMHJjQ/3vKNKKL3ketcGG1sQoCh4wFiP3ccyxEUpjelOneec6wUuZUyfqqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737654424; c=relaxed/simple;
	bh=IL1yeZbTwDjRjlpXR8Ovy4itfiKW5RrrvAlSqneUESs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tjZ1dmZD7dn6g/k+BnNJwzE1rxthGx1goFlgp5GZe/rcACjXnQZumMzhYBaNWksKZlwKSjJt2Yh0DZsiTY96ZjNXOa9go/WoYeE5FYVc7NuUWZrDPY/Hdq8HoKZqeMi6rzG3cOmik9M6cCbazgE93unzZZuBhvWcYoHq7nkyYRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YrMmRz/X; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-305f529a987so8822121fa.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 09:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737654415; x=1738259215; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ffa3/XJVzIzlsf+TECCnatXk0cRQZc3PCfdAQKqsdfQ=;
        b=YrMmRz/XOFq7eVInXt4wKpJNZc6+JHBLr4F41y+3pWz1YBdWUVu4Sfj24+7p/3b5P3
         7VwgW5PJJpkTg2G+DuOaHSZAqEQsQqRS88h+k+/hIC6bl+wIlGK4TxOwFFqTqOW40ySD
         H5Ozolcyw0S79eANq1rfgm4ugGVhxAz4w2kfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737654415; x=1738259215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ffa3/XJVzIzlsf+TECCnatXk0cRQZc3PCfdAQKqsdfQ=;
        b=Soc8d506xA/sCYiviOnBkv2a4F+Of/GVUI6BSQdBRFT67Ueb+lakf/bycl2z1mX7Pq
         kxu8J/ey4XJRZGyZv/sjgGLRAGJ5FK8jcd/sTGeDlC7dA9YwipAlP2cebS9/Dvx4MUav
         BVdaNBacKZ8EhzV/McWcAJ2vG5+e/9Oo40fpMfyj3kUwaZHxF4qabQYPPW80bOChI2V3
         6yV8ZYZsfwrBwvI13SCER2i3w6jPlIs49KdqwiMrdVjfwPfD7lpYFF7fbNFgTVZkDEjY
         alNQxeF8yNG/5+dqd+NHHq5yVjg1Q0B9qoGhdaZVqcLE09zypSzvJnrkDeeFtzZ7jVTw
         H4qw==
X-Forwarded-Encrypted: i=1; AJvYcCVecKtl9d73loXMkdr/xejPWPT1AkgUx/zKgxH/czH1LyDCPXl8fVXrJZFv+Rg3GdxPQU9t2jIr5YHd@vger.kernel.org
X-Gm-Message-State: AOJu0YzauHGn81O1AlMlBp5n4wYKmBke592DGUb3j6bsSsxaT/5IjU2d
	Mfg9vHkcs1MolaaTpXjfur7fObVZELB6UBMJIMAHW9l8ELHnCuMU+ymCPEaO7CsPDYq9jNy8geq
	Wv7vz
X-Gm-Gg: ASbGncswZP/q3r1pDgyXt6NjXH0DsPScyROciKHRhRd+0D6fEZgVajkGBLzgmHPZbZq
	LPzVGIfAjCxZC7AKfEzEMKqbzZBKTUfnwNLqTRvLGLusAuFVARu9KZFeNaaIzfhmTUqYC1GF4WF
	g1GsM0ft6cKFTbnnS9ZrFmGYWqZ9yKvFNWHSdxpYSrGpA8VPzrlwt+oZwMwqbSFLjrOKPQWKfOa
	OmZOerXbX9eA54CvX3IbX7SbHO/omiTfmqxgsUVKlwToTMzYSMyAcTVaRTE+aZI83BIJDjkAzX4
	i/7edQY3rSy7dQ7KjWh3DpNTDaR15Aysrtp9Fg/GWXnD
X-Google-Smtp-Source: AGHT+IEKSgIex6aqyjQXSJeF7gM1UNwcifzXMvKURyFNdqqIjeD7LnBruNHTkpwzjr/r19zLv8IDHQ==
X-Received: by 2002:a05:651c:1602:b0:300:8de:d2a4 with SMTP id 38308e7fff4ca-3072ca9f48fmr102548451fa.17.1737654415413;
        Thu, 23 Jan 2025 09:46:55 -0800 (PST)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076baee5c7sm405781fa.55.2025.01.23.09.46.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 09:46:49 -0800 (PST)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54025432becso1380724e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 09:46:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVkRx33IJcb4ZrY+XsM8I5y8dX6ZwwvH96cOlzk4n9WZhvNlS/G29jXpOGSvHoWPL8bpySaukINVwO9@vger.kernel.org
X-Received: by 2002:a19:7714:0:b0:543:bb82:f402 with SMTP id
 2adb3069b0e04-543bb82fbf8mr2518373e87.53.1737654408389; Thu, 23 Jan 2025
 09:46:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com> <20250123064758.743798-3-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250123064758.743798-3-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 09:46:37 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wt+6AoycUfcWaEAi2ucTN_37CvE6VQZF5iHU0+Aj-gZQ@mail.gmail.com>
X-Gm-Features: AbW1kvZiTQ6uFWm9j1-EZI2sAy992VLYi3vMgIMn7_IbtaGztg3D6lU73GtRTO8
Message-ID: <CAD=FV=Wt+6AoycUfcWaEAi2ucTN_37CvE6VQZF5iHU0+Aj-gZQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] drm/panel: boe-tv101wum-nl6: support for
 kingdisplay-kd110n11-51ie MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 22, 2025 at 10:48=E2=80=AFPM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The kingdisplay-kd110n11-51ie is a 10.95" TFT panel.
> which fits in nicely with the existing panel-boe-tv101wum-nl6 driver.
> From the datasheet, MIPI needs to keep the LP11 state before the
> lcm_reset pin is pulled high, so increase lp11_before_reset flag.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 122 ++++++++++++++++++
>  1 file changed, 122 insertions(+)

You have Neil's review tag (carried from your V1), so in theory this
could land once the bindings are reviewed. ...but as I talked about in
my response [1] to your bindings patch, I'd like some confidence that
the MIPI controller on the new panels you're adding is actually the
same as the other panels here. If not then IMO you should add them to
a different driver or create a new driver.

[1] https://lore.kernel.org/r/CAD=3DFV=3DVr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6=
vW_azMARZQ@mail.gmail.com


> +static int kingdisplay_kd110n11_51ie_init(struct boe_panel *boe)
> +{
> +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D boe->dsi };
> +
> +       msleep(50);
> +
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xB9, 0x83, 0x10, 0x21, 0x55, =
0x00);

nit: lower case hex please. 0xb9 instead of 0xB9.


> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC4);
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xD9, 0xD1);
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x2C, 0xB3, 0xB3, 0x31, =
0xF1, 0x33, 0xE0, 0x54,
> +               0x36, 0x36, 0x3A, 0x3A, 0x32, 0x8B, 0x11, 0xE5, 0x98);

nit: ideally line up indentation so that the "0" in "0x36" is under
the "&" in "&ctx".

