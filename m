Return-Path: <devicetree+bounces-257242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A3DD3C4CD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 98E586C763B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7773D523C;
	Tue, 20 Jan 2026 09:33:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9826E34253D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768901609; cv=none; b=enDa8GPttUFZuiozmalQVdeRybUG70XIVzzLpxfYwpsrkwOC2y+UHMyammck3DBLzwp9vSNM81jG+HRJsbcW/rVVY3+XfupBJQwWZAt6K+psn24XEXzbEBGpQSAcMOlq9zjYt5kINXTVAaHaQQEkN5TXBKS40ht3FWIBzWeDUpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768901609; c=relaxed/simple;
	bh=3GuOD8KR2tgB8oV7M2YqRRsg9wFPNn/e89AtmbDj2XU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pWI0303a2XWypjR+a/uIe4jmO8NOkZc8hMo7Sc6u+t5nD+f/+CVpuueJZnb7hsV8khwK/FVFkyr8GxZjKREreW4Phw7EucusBXQC68cQ8qe9X6folLoY6yk7oVJG5VV44WddJvHMdKRsgEC+jdsfV/DmyWCRCzDXY18pjTPVOVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f573ba819so1897534241.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:33:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768901606; x=1769506406;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7d344nbbjcVllE1LooRYmu0N/T5hZ1c4qAtbT77fyso=;
        b=isVYlotPKyC9PsuNNVWmbLDQY5uiLHntnEfhc5Z0eekM2/NqPMFhqVsRUvRpn7sYSy
         kIUQcNIEDgIT4Vx6b2zsi6tss+zhjSuJGn+6F8SWeyFxo0lZhjGAZ8ylTzktoMwWLUvF
         YjATU1RAABNj13mRXjvLJOzJ05D1Ohc3tzfq00zUMygHWbQgAwJVUUfGNJjXY1RyjHgu
         oRPnnbf2LCue8YqBOo1zwVLEQ51QzhNreGHc/AIelJGX5yip7CrYb1vmNi61uFxGVxiC
         BS19jEIMyy7riauSB3FmvEeGIAI/UPzh8sVYjymlsKaMJPHsSGmffwWtcQ1Kb1devL+X
         E71w==
X-Forwarded-Encrypted: i=1; AJvYcCUOeVujTOkYaM5nTw2weTWXAJG2MHS+bfLXuF3kTtcWXvwlvSpUjVLMXQxGm41L1ZnZ6aOM+VycLgL9@vger.kernel.org
X-Gm-Message-State: AOJu0YxNNpr5rVlMEju/Jayir1u7HdUxQ4wiQhX6lqf7g+UnG2RTmgH8
	j4Zm6CZpJB07AQLjbqyohQHLy3b7IdS3SvFw2/FtCPMbr9hyBc18aI1syFJDlZx+
X-Gm-Gg: AZuq6aJ9xLKlLS3N5x2Y1csxa5TFAsP7PSP35Ni5afw2olbkX6A2aen3uhw4WU2ndZf
	7bOnN5mlXbsZVmkgb8JsZMx1w8POXEGRS/d4i0gAc+vUG17Pt8Q5ayCZZgVfOAdt1F6hhh/Ss3D
	P59I/4wpeTkZBXBknZM6y3EO9jBOoAEUnOvjCd7Q4pJwJaY/Rp5/8dy4fkpA1qs2gm0N26kBwy5
	yxGwiXGBDtVIfGPJ+00BHatwdK4c+YrisdPH44IEmleKCQTtuPEUdYn6x4Yapf19dOBOMiDNc/t
	54jcEg2dVnwPeDpUcZBiT2ugEiGgHOs3IyaDkzRB9dM5NAFhPFzVL8/QCrnaG0PVnnP0Qg+V9xH
	jPbenT7zefTibb8I8kVca5lkdiQzYMsCsk/QvyVMdB4xJnyxCSRvMYAkvKjf0fe0xhsKON1WYfw
	m8Jc+OVf3U3sO8SgzSX/f4IQw4XKqwDGHfcry1JLWuXeSSnoBi
X-Received: by 2002:a05:6102:cc6:b0:5db:20ea:2329 with SMTP id ada2fe7eead31-5f1a55a32demr3998251137.35.1768901606434;
        Tue, 20 Jan 2026 01:33:26 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6927ba6sm4137783137.6.2026.01.20.01.33.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:33:26 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93f573ba819so1897522241.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:33:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWsBlZUlAw7tHzAbHHCQ+MkFVyg3pLRMI23E9UnFIRXkVMh1vmHjKtvosxWz1sWWiwuQ9/pGJp96p+c@vger.kernel.org
X-Received: by 2002:a05:6102:950:b0:5f1:6f24:8554 with SMTP id
 ada2fe7eead31-5f1a55b22b0mr3577104137.37.1768901605464; Tue, 20 Jan 2026
 01:33:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260117005028.126361-1-marek.vasut+renesas@mailbox.org>
 <CAMuHMdXHKJYcP78WLUfGrN8v+PmChj7jEsjhnVXYnSOzZ7mkpw@mail.gmail.com> <926a0b23-5159-4f4e-b278-b545ae281410@mailbox.org>
In-Reply-To: <926a0b23-5159-4f4e-b278-b545ae281410@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:33:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXa=NSu788E5G-aY4CA3hrM8s8fO9ABpEN_wy+5A=JHNg@mail.gmail.com>
X-Gm-Features: AZwV_Qg8oZhrOf1YB9AYEwTae8IfInWKLstAC0xoyl8s8vNgo8HaAia8hPuamek
Message-ID: <CAMuHMdXa=NSu788E5G-aY4CA3hrM8s8fO9ABpEN_wy+5A=JHNg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/panel: simple: Add Waveshare 13.3" panel support
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
	Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Mon, 19 Jan 2026 at 20:08, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 1/19/26 4:56 PM, Geert Uytterhoeven wrote:
> >> --- a/drivers/gpu/drm/panel/panel-simple.c
> >> +++ b/drivers/gpu/drm/panel/panel-simple.c
> >> @@ -4998,6 +4998,33 @@ static const struct panel_desc vl050_8048nt_c01 = {
> >>          .bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
> >>   };
> >>
> >> +static const struct drm_display_mode waveshare_133inch_mode = {
> >> +       .clock = 148500,
> >> +       .hdisplay = 1920,
> >> +       .hsync_start = 1920 + 88,
> >> +       .hsync_end = 1920 + 88 + 44,
> >> +       .htotal = 1920 + 88 + 44 + 148,
> >> +       .vdisplay = 1080,
> >> +       .vsync_start = 1080 + 4,
> >> +       .vsync_end = 1080 + 4 + 5,
> >> +       .vtotal = 1080 + 4 + 5 + 36,
> >> +       .flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_PHSYNC,
> >> +};
> >
> > That looks like the plain standard 60Hz Full HD mode.
> > Is there really no other copy of that structure available in the kernel?
> >
> > auo_t215hvn01_mode is almost the same, except for .clock and .flags.
> > drivers/video/fbdev/core/modedb.c has the same mode, but in a different
> > structure.
>
> The panel-simple.c is full of similar-ish panel timings . The timings
> above are adapted from the waveshare DTO for this panel. What else would
> you suggest I do/use for this device ?

I am just wondering if there is a better way for panels that use
standard timings.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

