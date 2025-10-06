Return-Path: <devicetree+bounces-223870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 037E0BBE7FA
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFDDC4E2D72
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D56F2D7DE8;
	Mon,  6 Oct 2025 15:35:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7947E27FD51
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764899; cv=none; b=lVI+W26kOPlxT2GJUU1awmpiPynouaO9pC4jJo7bWV6ULrm0uZ4c06YvQWaSsjBMMV6rSN7FrO/YT3og3gnrdhW/yAXvxWJHmt6qFeQvE69hV4gbeAib31HhORa1n49dqbTCZ/YZ8vnKNzSNU86bjUadIYXAh9n0DUBbIwS2TFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764899; c=relaxed/simple;
	bh=ZD3wq3u//1+z6LqbsvgXhOM6CP7Nx5fSpPj0C2X/bE0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cq5KgKi85xWlSVqp/qqz8N0F44S/dZj+Ve5okfU8/VbFOV6aFeBNem3XHQR8RpgGmYWOHVf+4dAUJc1VqyQ7DSd3gDw3RrADVKX5UMOBCa6J399GFtxOgAD/0yOmuknhWm51WMvFOm8OCblmJXYQPGOWsRDYhicN4frqtRK0T64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-54bc04b9d07so2007627e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764897; x=1760369697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WDkJ9FF5nhqfcMcTa7/MTCnbJ3v4Dd3szx41XuF9lTU=;
        b=J9MZoLiiCq7jEJXhzUWrbxaVAb34X29tw+CLPzyeTbQrWUj1vk8dOZ8jRoAI5csAEc
         4tQEL18zjMqXNp1JnsacKnMIMnnzGQQMmLb3vdYotBJEQtkjzzEHLz2138hZXaDeiWOz
         Ys2Wl1jSkorIpuuiP8sdVbJZ9c2IU5P8GTNXfoZz7Gg5ATEk3WHoAFL0suJNebTjVZhv
         sS846KiLa8Wo5EkgLy8OwA/lpTErSU5SDMeD8vY1fpluMUiHF+P9bn2x3SJUrElHXk/T
         f4dplBp5Q9lBO76OnLu8Y5zPcH275KghFNiWqaET9MK253M8/8viZdbGV+D4+cEW06o+
         7mGg==
X-Forwarded-Encrypted: i=1; AJvYcCUQtGgU8EpveDL52+dK5zwnr7fsjpyoglyDkRJrdq7aGRbEIi1mntw1lgJwgal5c0Z3+SmnJxN8ukbd@vger.kernel.org
X-Gm-Message-State: AOJu0YwyZCpjcEerDSTVNP8xhxR/zvtN5URWe10mFgIdsL91yvU6YI5T
	dxXt7LqGntSXuVdKDE64OkNkXQ7ixRkmNwuSyd1zOn2HnWohpGPiH0apC/9GAAcy
X-Gm-Gg: ASbGncvx4L3mHXj52Jrde+gGCiPBwsvTkBejgVKZJWVMq0+pOf2AQxjridPUe7nkM3p
	ctCNL+0HEJPDeXa52A0db5a+KPoCsk46DfCjU/YoU/gCrvzrcJ0emoVcVyBmULEaX2ndXnza8fW
	JfGu26DKxmSIMICDv8KkmBwOEkESxMhu9+rWH6EULycgJgq1rYpHWf0HaUgARE2jYrlWInB2Kq4
	ijeopWVtgTvBsgsjjgBBVlOgjUzOEhqsi2vaCg4Fzz8o/QEM4kGwsU/lw2bdpUdUVDMjQKzAV62
	synqpm2ILtzvcVB7aWbcBjBxYqMrTW/52/8xN1En0g43ZyNuE4pAZclP/ifWMvj+trnegvgR9uh
	neJ8DHZ87qUXWPAs/3HhbjGjMMXtEcSnsG7HA5A9oPuAINPi8SAj3Pj+Nu21Y+YOCy5hQUWl3Nw
	5DnrMZtnL5
X-Google-Smtp-Source: AGHT+IH4WT1nuppbSeYqg0l22nYfuscKGkwkMJeD8P/XmFuwO0aq9CfGOKMWHhE6r+czGQr6ZqikHg==
X-Received: by 2002:a05:6122:1812:b0:53f:8fcb:b630 with SMTP id 71dfb90a1353d-5524e8a6bc1mr4489168e0c.4.1759764897079;
        Mon, 06 Oct 2025 08:34:57 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5549ab319e0sm760277e0c.0.2025.10.06.08.34.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:34:56 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5838680e242so1806218137.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW5ZNallnUJTOFmbjzqlhA0cfGlnsjFcDwS3H1sCl+rsqeLYgniktbPUWdH30rW78fCtyfRSZbrpSFl@vger.kernel.org
X-Received: by 2002:a05:6102:5793:b0:54e:76ce:8fb5 with SMTP id
 ada2fe7eead31-5d41d001020mr4223697137.9.1759764896428; Mon, 06 Oct 2025
 08:34:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-15-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-15-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:34:45 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXJqsZswHBCcPK0KXvfgoFsL5Xq2NLoLgxd5J8soe-=pQ@mail.gmail.com>
X-Gm-Features: AS18NWCIBt4AaVbUamhTqhXAClfpqJPWlffXNRSzt0N2Sq7y-S5LjrOyGROJ2kA
Message-ID: <CAMuHMdXJqsZswHBCcPK0KXvfgoFsL5Xq2NLoLgxd5J8soe-=pQ@mail.gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: renesas: s4: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> S4 boards. Sadly, it doesn't mark the node as reserved, so this is added
> manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

