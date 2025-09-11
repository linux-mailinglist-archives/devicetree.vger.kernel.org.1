Return-Path: <devicetree+bounces-215776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD49B529CB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC52E1B21837
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025CA269B01;
	Thu, 11 Sep 2025 07:24:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C537329F11
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757575497; cv=none; b=AtLd0v+Hmvo23zG2smIP79EoXC1gVAXrSm9lqHLz8BgO1LVLCWDQjOGyW030EZ7h6Q/2dA0z7PtJi1k/hBZD7VBTRZSL9azjg50MklXZaqcCsF19u4FfwPjQBrG+vv7B6AmX4u1h5NhD56PcF/iJH+XX/LlC9saDz9vJg/b1Tfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757575497; c=relaxed/simple;
	bh=eSOfox1KQuppsPr7L+jj1UyzRlNphPeTKcqMNNeUsUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V3We15w9hoYDI3WqxomH+g18IooBRl4wHTrTAhQCWKj/5LRYzyB15zoTqL5kziTVqDlGoIAehid9NSOPXo7gIgrSLQgHlU7pLWxd9HeYZrRzfC9UIarzqDehD/IHzVYOKtkWTLnl7eYXl8sGqBLKWMsij2RtZ09tspKwByrXDNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-544af5b745cso269015e0c.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 00:24:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757575495; x=1758180295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9nZA/l5Q3xCHBcBP78le63J0ZUX22UfxL9a5mk+UrWw=;
        b=DUQBN1RkyxNkYBdWpZDW+ul4UYhkkJmUNN2Sz6fUSE3Hhs/fmveEDt7586OpP8xKlN
         6Vs5Yb8PyCGki2SFmC4kAfQDbsGcdRprnoBcYfT1LbAhmFRRSwF5DLI2nPZhfRUH2xJE
         gocc9Ne/QxyL0VMiVbatal1xqbwhILNs9c7xfJ/rfS3o2rIF1BcAvK/qTWU0WRYNK/GC
         iTkOHMXbj08MUa2bxgyaScyr6GZAatpwwX7b9hvpA7vLZA+xPDdpR0XnAKJszZ3ptHPm
         sOaAnm1TzDxnt5lcCVLlWuKK5bL6jhd5KZf+9kHateJ+ga1Ho8V3SSNyT2q97RLe8gxm
         Nsxg==
X-Forwarded-Encrypted: i=1; AJvYcCWrDQBFuv2g2Y1mK67j8Z711q48oyJC1QVmx5oF9as+zoLxlHj3zRWW6qHimsNbv2AA5wE8asgmkgnq@vger.kernel.org
X-Gm-Message-State: AOJu0YyO60Op+t93oNeRLItUS/5alFuJ0npLQ8QXbz18HwKYuiiYmutY
	YYWxIaobCqMazYEGYZfzcBV3BZkmn5KjadXhHqGXeTorK969GpcOrEThb9kazkEK
X-Gm-Gg: ASbGncvoGBcfD8Ngw6Oh+28M2ty+M4zyZbck8clxLkhxSBkfevDdijB3ix8ITHCoa1G
	aq1qW/Q9vImJByRZAhh/+Y1H3vvqe+4Tgd+7yiHUHGdpg+LIaoWOJ77yeWkIx05681AABV8QKQg
	3Q0ot1ngNJZxVVY1gUN6l6WVERfhrXILS0JiQkaJGUO2Yk1QgRI545AtyYCgwInEzdnbWmulC0l
	zm83Pou8p92vGvTedipH2rs7xkyHS92paXUZmMj0eZiE5HIzvEUwTp6vM34bndNfGbAy95IpiNl
	BcZwndg4Rlb1TSM8o7HzTYkEDf1RHzdiJcKcImq34az3uyG7zR/LM6ceTyGI43RHa0vkGgh34mP
	W7dha/8LEaBAN50GipQekgJVHvhiVhI5Ti2QfkFHFLY5DYrKOrjHqGlng/hhI
X-Google-Smtp-Source: AGHT+IE3vE0NQKTFvcJjEt3h44xFfUgOIPe8yFQz/5wF/tBW39BHxJQXAMeOMCfnDDkT0rWDdfGR0g==
X-Received: by 2002:a05:6122:30a2:b0:544:9313:8387 with SMTP id 71dfb90a1353d-5473d478dccmr6492295e0c.15.1757575495348;
        Thu, 11 Sep 2025 00:24:55 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8ccc7f65aa0sm130761241.2.2025.09.11.00.24.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 00:24:54 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-50f8bf5c518so364880137.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 00:24:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUE12MNzOfJVowLVIPFDZDPz+VyuuSVXa20/e1ze8Q3UfbOYZiE/2l2E+k76pfRr1T997Uh0pT5yoZA@vger.kernel.org
X-Received: by 2002:a67:e7cc:0:b0:51c:77b:2999 with SMTP id
 ada2fe7eead31-53d1aead9a3mr6302748137.2.1757575494024; Thu, 11 Sep 2025
 00:24:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87tt1c9z7h.wl-kuninori.morimoto.gx@renesas.com>
 <87o6rk9z6c.wl-kuninori.morimoto.gx@renesas.com> <20250909-witty-successful-toucan-beca41@kuoka>
 <87segvw5yr.wl-kuninori.morimoto.gx@renesas.com> <983be392-e76f-40b3-ac57-5321f5d88abc@kernel.org>
 <CAMuHMdUFOGNNuogp19WoCy4c-4a6KjBfyutp=UWfvBD2oHtOAw@mail.gmail.com> <bf4a92d4-0472-4d0f-95d5-83fca816ae03@kernel.org>
In-Reply-To: <bf4a92d4-0472-4d0f-95d5-83fca816ae03@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 09:24:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVvhso0E=w3Y8tk_GnBWsV8GrjGPwYkSq19aDr+VDSymg@mail.gmail.com>
X-Gm-Features: AS18NWDfHsUnNDTnYC23I-0l_-nwegNPIqhIwsoKV6lC3uv_Pt7GXLVKQdvLYWs
Message-ID: <CAMuHMdVvhso0E=w3Y8tk_GnBWsV8GrjGPwYkSq19aDr+VDSymg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: renesas: Add R8A78000 Ironhide board code
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Thu, 11 Sept 2025 at 09:16, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> What's more, it breaks my imaginary system root, because I am running it
> from readonly NFS root.

Real mean run NFS root over SLIP on the serial console
(which is so far the only I/O device described in the DTB ;-).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

