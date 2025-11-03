Return-Path: <devicetree+bounces-234411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE5DC2CDFC
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85B693BCC25
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5B3332EC1;
	Mon,  3 Nov 2025 14:52:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B50332EC8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 14:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762181529; cv=none; b=pVdaGGms8A4R9vticWeX+CIoOGj4W4ajEWNvR+/scnLkhIcZ5YDM5VNSYTagf2zBHhfLYhhMWf4sOuqKgfb+26xD/wCNgwMSCbmPpFX4aHbAvzy+U4VjlngwlJLiA34/aElS+8OavKwe20epiVT3evOnwSCvBAU0QHphYDnqvYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762181529; c=relaxed/simple;
	bh=kyZFo/IEic/pNMA3pRq7OzAQup7CQuPdzl24uLGrwEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PqS+IhahzJ7Qr49k47MPrl60H9EY/NX0XuQKHvflRvg5twiaeouQKBeZTNu7cuBdkGtTX8xlL3Q1kC1ACZtHHWkenI8V+5EM/Ax29lM7dnG01n8L8rAb786iwmSPT4aJermqQQS0RsEzAVodOtBlDE8uRb//HBk8ZsXs47yb6VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54a7bf06edfso1522429e0c.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 06:52:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762181526; x=1762786326;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/yZuUM0vSJzTDMkCs4SIwBgC08R7t/skmrEIOYPMpKA=;
        b=s/Ic1PkrL6FO7tDjzcK3XJfXculmZ6vprNsBP3FO1EWRO23ILlRjXAKlFm82YiT14S
         PPUdQOfB37im+iwJiaxBnL68/sDkBT4IMXD/EFbg2t3Kkkj3NM6NrGNPmM+9hf9ZKnLQ
         TB+JJt53wwCiG8/lobRiCWPDKgkxeFCZh4FAV8oqEBBNIfHP92Ar/0WJCcJQuTGz87iw
         taB8mwuUyIXr5s2nwMASO93W6YAgwdW6selN9NlWRkTI2HMKjM0UrcmJ/eK+b/Up0OK9
         DrIkBvzQWzwNIyU6GT75KX34QOUm0SiaFW9s/ad5ISjyR71OzhelqnJuhIrYOnDXsWyn
         KYVA==
X-Forwarded-Encrypted: i=1; AJvYcCV9/Ay9pD31xS3fM2RmTsRjWOZV0F/CT6edeI8Tt2XEqwGY3yasjHDhZTqYwIDmEEJ8nKUyNbCX97Dj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2bBHqzJfOeVfQvOZbUHwHyplj59ggik1goI0GMXTrjHBrrcrP
	Jv3h1PV3O60Uiw/Cmwj0aLKYCZktV7MuMb5l8AaywSjHJu9B+HIHAzIg6nl+ptek
X-Gm-Gg: ASbGncs2BXqt3oP8BtSabztoa1uwYd28tXpOnmEOXqneisOJMSEOJz8J+HpQdIdxyCJ
	Jkl77T81UScwjWauTnZ1vqsXPyuRLigpcMKeUCLfa81YANQpz8PZCeicmo17kNP3Le9ne8UV2Ez
	64clQENwCFrQnyH45vYvSIqjVl2kFO6uafXTUEON2P90qIBYFkMvxeuKngnxxqHgR09y5zBDzc0
	TWv4gqrubGhdIxR/IT7UC0jmxaY5WtTziNw1lizivTs8GAA2RYbTbBYiASdz2RqDF427IXaWkLV
	Na3tAM1dz+tg3Dl4IvbRyLyDr76isyMi4Hl4NcfLeynV9Bza11Sso2YXuqOx9jeJwudeViotu4U
	YhPUICUD6WSn6Do0Zm4jI9uojL/n4PnBJncMqjXo6RgGqdbPEQIt9tdY7AzmKIdhV1HyDp4nKi5
	U6bNvNQCDrXAGMJle6ovNY/u/lN6NsDFttLULls0pEiD5Urnwy
X-Google-Smtp-Source: AGHT+IHcnf45nKkRUI9bZ1zCJ0d2cs014iaFkaQ4UlZ+hjGZrsdgzY4STaiPR5zrhgFR1wQiz+koUg==
X-Received: by 2002:a05:6102:6d0:b0:5db:3311:947c with SMTP id ada2fe7eead31-5dbb124fa86mr4443817137.17.1762181526072;
        Mon, 03 Nov 2025 06:52:06 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93542a4a8c5sm178103241.7.2025.11.03.06.52.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 06:52:05 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-932dfe14b2eso4212910241.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 06:52:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUg5Lk9Z4CbL4Huji146uot7xsoK+BfZcmWywlA6ypB6QmJTOx05EWIss2q9CjHbtkSPMLo66A6KpQu@vger.kernel.org
X-Received: by 2002:a05:6102:588d:b0:5db:c9cd:673d with SMTP id
 ada2fe7eead31-5dbc9cd6b9amr1394207137.26.1762181525198; Mon, 03 Nov 2025
 06:52:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251102141733.160640-1-yuntao.wang@linux.dev>
In-Reply-To: <20251102141733.160640-1-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 3 Nov 2025 15:51:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW0mLsZmJsWmQEaN=g-kRMMVHaBpRZmQW1VFRqyDvK6UQ@mail.gmail.com>
X-Gm-Features: AWmQ_blF-HrJJFZ6UawjIZOL5JF9-1QW9wszE5S3sxv-Mq_PqjGG7F9PQMoMuHo
Message-ID: <CAMuHMdW0mLsZmJsWmQEaN=g-kRMMVHaBpRZmQW1VFRqyDvK6UQ@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Fix the len check in early_init_dt_check_for_elfcorehdr()
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="UTF-8"

Hi Yuntaoi,

On Sun, 2 Nov 2025 at 15:18, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> The len value is in bytes, while `dt_root_addr_cells + dt_root_size_cells`
> is in cells (4 bytes per cell).
>
> Comparing them directly is incorrect. Convert units before comparison.

Thanks for your patch!

> Fixes: f7e7ce93aac1 ("of: fdt: Add generic support for handling elf core headers property")

My commit consolidated existing code, so you may want to add
Fixes: e62aaeac426ab1dd ("arm64: kdump: provide /proc/vmcore file")
so code in v5.14 and older will be fixed by stable backports, too.

> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

