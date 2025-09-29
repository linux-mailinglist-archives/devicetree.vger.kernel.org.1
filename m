Return-Path: <devicetree+bounces-222473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC872BA95B7
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:31:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E70C1887F25
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 892032080C0;
	Mon, 29 Sep 2025 13:31:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045161DED7B
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759152703; cv=none; b=U5VAeRLclEnI8SU81sK45XJFKaBJIkZHqZJLtS0JeZHW9mXWK81KItW0VonPkflfs4VfEYrWBas3MhyNa7pv4LtltnFIC9RxeRTlln+CRBJ3UBINGfoIXxuiW333GYBUz3qtBUlNYtVVxfzeyWHUA6NB6+zjEny4BRI4QT/mxzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759152703; c=relaxed/simple;
	bh=7KHIpDL9IZxvO6vMFR296dPXprOWslUH8R2HcPmutEU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I9DQrAvVPb0jDVo4mPhVz2M9FTdKmNsoRHPzSQK/HN8zHsZZoLMisaIwI64K47jbiSOnXonXvJ/WVmly8BKNnSwc1yKM8hfdm5WHGJAWEBpd33I1rJn8cKxQSjVyGCZgvLblUHXeuoYP/QbUma8L32lpjHbs17JT0pBUzs79bnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54bbc2a8586so1736217e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759152700; x=1759757500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iR/LPrxbJ/3y6Uc+Th02lti6vx4Oqhig/nLaruGHJGo=;
        b=FSPztvyz/d68JUpz2L24XpoIPq4uAA8sgYjhpIHf6GFNlBmIeX1n25n9OTtuKxagpI
         wwl1wSc2bVyrgTR95i94c26W8hWZQKHdUJFENeQtYvy7nBJNjrUydbkZ17jByKWQzzqt
         T/iYnAiTDlOCC1nEV7Ljg01K1tjdNtNfea43qr/3pNn/+kLxQQp6qEJwKXHDrpXH/6I2
         xkmm1/H5MV/dCYjXzngGap+gtsGaW4HO8sJ5pWM2TyYIZvVeMCYbI8yFgGfiXSFkN5WB
         naQ8A3OVj/55YIjjKYFru880V3vgRtccUlA329bccyrqXgCvZkd7XJ4m48cdi1S2LwwF
         OLZg==
X-Forwarded-Encrypted: i=1; AJvYcCV/iLWh/NHbsf9hx/nBR1VUBeZUp7EfkXPZhDY7l6F7/P8K+penH9/N5pM0tPEyMNCiR1Ac2MuC+uoD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3fc0vNWxnQMD3yf2FVDQs+GdImaBjH6YhLeUfZQsEjT5aBYbv
	hbzcJPzK5FhiBG4irviFGxVpGKKvismJLgRkL6SAPhzdu68D2WOLzvlqnF39MGbK
X-Gm-Gg: ASbGncsRjoitqj2FIHI0LRy275TW/ejWOFLsiFUuPOjF083SNe+h9Sy9T9+USZrO0b0
	FFZDzaSTmGomROa9hM224MmjzQbd8eVOTeVHp5ztzxkbzB7JflXCU8qXet6e+zgauqaY42QJcRx
	KsfyeGhqffNc54rFt2mNV4IeJMv/8xTs2uuCR9rwFX94YN6s7NLBJc5c1mVFA4J2MDrse+IPD3R
	tMUfMcDnmm91LyKXpfZccOpk59c+LHB3licIDsE0oJG0RujXqUnRL77GG5HcdLUBbpYUyQcGNDs
	2qYzp1otvzol3q5SFtOM/RIksi1YvgZIvrFiyG72AxTw7o2C8Bc/H9nlg2Ov60fC7mNFucA7lbp
	rAL6M32DSJhzruRbLNz962Onay7JCSDBabX1s25FUdsYFPsUPSBP4bzau7G3LVP6Dvvj9EAwsSm
	E=
X-Google-Smtp-Source: AGHT+IHcxQ4LymHsD9xC60UQ0bRXjtuptXlZF9pKYYsKV59dmU8xESysGGTspy1fgT54X5z3WN38Yg==
X-Received: by 2002:a05:6102:e0b:b0:4e9:9281:85aa with SMTP id ada2fe7eead31-5acc33da9fdmr6662364137.1.1759152700432;
        Mon, 29 Sep 2025 06:31:40 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae389dcefcsm3339098137.10.2025.09.29.06.31.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:31:40 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54a80b26f88so1930983e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:31:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUfY80b9RmYxIHkoWA9UFdqQrM21+3ys1PC4vDjaJwGi0F6fs0+jL1gxw4GzXDFkysL+Uu+L4ZOk3M6@vger.kernel.org
X-Received: by 2002:a05:6122:308e:b0:54b:c215:8c0 with SMTP id
 71dfb90a1353d-54bea03cc61mr5616139e0c.0.1759152699504; Mon, 29 Sep 2025
 06:31:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929093616.17679-2-wsa+renesas@sang-engineering.com> <CAMuHMdUjxcgcX2g=P7WyJfQOapMkf0skbUeJu-Yt-j9PKqO8AA@mail.gmail.com>
In-Reply-To: <CAMuHMdUjxcgcX2g=P7WyJfQOapMkf0skbUeJu-Yt-j9PKqO8AA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:31:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXmECY9EeH+vycup0UwLqK+xyY7QHjJUWTX0kFbUMw=AA@mail.gmail.com>
X-Gm-Features: AS18NWBL_GzV_k2NYmktPUSzXHZuV7br2ZMdlxbv2iOZS5df601XWFhrvJU41AA
Message-ID: <CAMuHMdXmECY9EeH+vycup0UwLqK+xyY7QHjJUWTX0kFbUMw=AA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: gose: remove superfluous port property
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Sept 2025 at 15:25, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, 29 Sept 2025 at 11:36, Wolfram Sang
> <wsa+renesas@sang-engineering.com> wrote:
> > 'bus-width' is defined for the corresponding vin input port already. No
> > need to declare it in the output port again. Fixes:
> >
> > arch/arm/boot/dts/renesas/r8a7793-gose.dtb: composite-in@20 (adi,adv7180cp): ports:port@3:endpoint: Unevaluated properties are not allowed ('bus-width' was unexpected)

Adding

    from schema $id: http://devicetree.org/schemas/media/i2c/adi,adv7180.yaml#

so it's a little bit easier to find out what to pass to DT_SCHEMA_FILES=
for a reduced check.

> > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

