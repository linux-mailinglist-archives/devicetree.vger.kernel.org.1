Return-Path: <devicetree+bounces-225256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BBFBCBEF9
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:35:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F0A54F16DE
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD2B255222;
	Fri, 10 Oct 2025 07:35:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0290D126C03
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760081753; cv=none; b=St8bodFQphzgMHxUUVsFbPM+8AHrt7g4HAntB359OqUG9shl3ufX8YT5+Lg2Okg8HnE6whzqkNNyqGTv16wyKhbj+elJ7eWwHWCP+suCu8c5vvnrDANXlUVRoD1Lek0COyj9CdFbjJraodtPoIo+luu2CRe8Qu3yqqhRIr4rwRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760081753; c=relaxed/simple;
	bh=O0oLWAzOWDZ21I/1hWS/+bYpEFudWwj0se/ms049cKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PCAeG4Qos9p3nDWBaBInFjERlaGqCghBcfRA5MmrYkygYvAsM4gPpddjlhAncOOQ6wjxgl0/hzkjypvs8XuAkjBHckB38kw0Wixx6q//cgszoPQ79AFttSKCR9Q6uJJOPyKL2+VdpLLkuvdUjzxCpsM2Y/lTdWq0HnEt8W+vrtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-8e3eaa30c71so1429121241.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:35:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760081750; x=1760686550;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2dCeF0ej9PX8EfxiL4r95RlNb4xSGMTy8wZampxAXtw=;
        b=Gh5QtdgED6T2JprpiL4bCetAFMUMwri9jkb3/jdcBTyqyzsGGl+ms0eRi3dEvq0NnC
         UGjnLvi9JZcyp3p8KgxAEP+Uv9Dw98bsSvjVFFszMLDtDnNHc9HLZFmBRTnJSTw1CWBW
         BU2ZUlgd6DAjYbSCiy/eueFfNZfelZmgbQd1lRV93r531GI+mv3jNOsBOIU36jf3NYwn
         gIKRP3LtXmOinKejXalKskzWrpE45mvJGFJr/nnt/Z0++3JCF86vM/OfZ8ZQKJCmOuWm
         /rSVaVRnB0YfaAQ3BpVURgEt1EEema52PA7s/sMmc6pGtX8htutTRlGwAXNB7rnGJHpq
         R9cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW6KzrTBnwJdR267lGON1VtNvP+OwiluibvWa2xXgvo+MfdNYOqs3EcE4bIre1nIwXpY7CZmD0P35/@vger.kernel.org
X-Gm-Message-State: AOJu0YxQlE0Rsq38PuF1ICHnHFbvd10eG7Wjg46esCedSRwvSM9LGtVT
	D8msywU1sNbstW0wRObGUj5m5Zj0rJESmiwa+ziqxAZOxwDwRkWNU5J/65B0UsGY
X-Gm-Gg: ASbGnctFBpI/LD2fYN95U8EzS/pOfggTJZ1JsFQ5pq77KPm28nootecCxztLz+280VO
	qzfjtSbxkZQ3/2/43gRR6nzLTVZTqI4bZODiDUT5I3o52HhXln+OAAg8XP8ssZ3UN4ch/7W76L9
	moN5LyjBQvlEgamGPs019OvHf61mlkvm+fVr2pVb8QHRVxAn8jpT6eQ3++hr8vwP3myU6R4msuS
	cP7036qJy5Jfy1GCQdBIxXECjolr0rnEF/L31VL2T5YsPHh5rHwUHqEn6dyFZ1NT3twgPXi5ZsK
	YBxJyDDtrr0Uwjdj3unLzArdbN2qBXRQ3izQVjMcAPqmH/8OTsvoDRtiAeKNy4STkrW3ASvh+xw
	u1lpavDIcC6m1Mjww3IMRd6r07JmueZFmeX1/JQ8odkAM2Gq2ZK4IbfvayGWkcv8ppeeNsFkO29
	RoWRY=
X-Google-Smtp-Source: AGHT+IFwXa2Fzrzc7F7WCj8Ab6YfOcWtoXOGbzhnyMQvhzn86mvr+ZKgkij7TdPsstcD0ZJnDqqFfA==
X-Received: by 2002:a05:6122:3296:b0:544:98a0:4869 with SMTP id 71dfb90a1353d-554b8a82a8bmr4546886e0c.3.1760081750497;
        Fri, 10 Oct 2025 00:35:50 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d7f02499sm532131e0c.6.2025.10.10.00.35.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 00:35:50 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-904d71faab6so1399417241.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:35:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWejtkf8jGt0TeN1cBk3qWblkPsAZYpIHYOGlVfi0Yg3TvHP8h155UxNhsgnc6wO0sHV1QjvsYD6zQq@vger.kernel.org
X-Received: by 2002:a05:6102:330a:b0:5d5:fefa:aff3 with SMTP id
 ada2fe7eead31-5d5fefab272mr690960137.42.1760081750169; Fri, 10 Oct 2025
 00:35:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923161709.3110-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdU+0iL0fjMM+_vPxsOmPXW72X0_=X2A=ZA9gRf367UB1Q@mail.gmail.com> <aOf0wSc5rgve30af@shikoro>
In-Reply-To: <aOf0wSc5rgve30af@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Oct 2025 09:35:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXrjkbyXjTekjifbODcPPP09mVxVH+EDpMM9F0A8hXS1A@mail.gmail.com>
X-Gm-Features: AS18NWD7qLWbxhIQiPCVJaSCKbXuQce34PLWrR6mU5guC5RV3uWWeQ9wkFf4u6I
Message-ID: <CAMuHMdXrjkbyXjTekjifbODcPPP09mVxVH+EDpMM9F0A8hXS1A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: eagle-function-expansion: add eMMC support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Thu, 9 Oct 2025 at 19:45, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> On Thu, Oct 09, 2025 at 05:18:23PM +0200, Geert Uytterhoeven wrote:
> > On Tue, 23 Sept 2025 at 18:17, Wolfram Sang
> > <wsa+renesas@sang-engineering.com> wrote:
> > > Add pinmuxing and configuration of the MMC-capable SDHI instance to make
> > > use of the eMMC.
> > >
> > > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > i.e. will queue in renesas-devel for v6.19.
>
> Thanks. However, I just saw that the node name in pinctrl is bogus,
> sorry :( mmc_3_3v is plain wrong, mmc_1_8v would be better, but
> actually, I think it should be just mmc0. Voltage switch is not
> supported on that board.

Thanks, will fix that up to "mmc" (which is what the others are using).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

