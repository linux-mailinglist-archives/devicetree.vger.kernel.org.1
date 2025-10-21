Return-Path: <devicetree+bounces-229227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FC4BF50F5
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A7A954FF3A8
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4BA2857C7;
	Tue, 21 Oct 2025 07:46:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EEA2848A0
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032793; cv=none; b=ocMwvzzczcgmbyjLfV+F5KRWbVuognDLzdp1GL1SM11C0P3ZLJqIPkTlcZzuKf3aa/+nUOr6Z9JvcK5N/TnMKjXHzPrP6w+VBnN+86UAjNi+XDdYPzc4Xfvv+Bn4cwjSrYuE04txMHwBzUNEo5qGCxrYsjm6g7cBkoVJMZyhr3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032793; c=relaxed/simple;
	bh=5G4JqyuB+1jfwF+3s2F0oLxHOIeUzEWkM1tGorit4ZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IBdqpQuqRaR3suAjDM/DXne7XCkK2Tz+XcKoLSKij1LRjpPAjb28qaomuLuWo1/jeA+D6GXziU1dKJqPXtVX+1k8MZc7d8l22AV+LaJ7mBsmTsQpjg+BkiP4gFrYzDv4FL7aJa/wdXh3VZj2DhlE4uYgmbtunfOQEwHdrih1aUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54a86cc950dso1866597e0c.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761032791; x=1761637591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SOVef87yu8OWyluOAjGxPlGJdL3ZMdICelAlkVBkCao=;
        b=enC94k8kmjuEip6hJAUxpgIkRXJb0V17J5/sWDqe+EZOVq0REO5QCNcnyKeSgwgEvp
         kb2D7TiT8rCXCBSDLMV9cxq6kJYq4lde/82wK5UuqeU4C7CJ4y6XVUa43/AHDK1It9LO
         nqDSxE2lBrrrBgoXeGfquDqkD7C6AyoNintR+jJaIbE8fyL7sfGPcw//0R+I/4+tlcyB
         Ilneik5ROwr8YTqrXcn/a2aLcGQPsAs1u8rqDeuWre5qRvxB+Z3lbyXAQedh6AZNe/9z
         uNV6XqMBcR5ciDkUVOWkisBDDI/wiTirtBtf+jHWL4oUrafoChWskJYraiQC6yxmYRaH
         cEpw==
X-Forwarded-Encrypted: i=1; AJvYcCW8YO5X9aiz2b+ma/wGhRzr0ZQLUv2DUFgxnhTvEvHfIXOKamwVzNLYCn0mMmcD7R4Lvwgrxr2tLpjl@vger.kernel.org
X-Gm-Message-State: AOJu0YyzflRViL1JOPH2kPyxYqyvJOncuem8o6z4ZHvWWQB32URsdGI4
	7+yIYvHunhXWqOjJIHpKCy49lBFOb6zdI7TcVej1dtTWewRvRiNNSnOr4ZnpGVq+
X-Gm-Gg: ASbGncuzaqU6wCyx7qJ181zqZ5nwKw6DKJVSmyZIaX6+w2pF+ZyBH/uQ2EfpcfwjWDu
	Xw9URvZq65vhNIitzf37elvaBuW4NjbEgIHWtAAZvece32V622z3mtnwiKKFO4KpvDrk+EaOrlr
	i2gE4W8QkDU+Qs6wzCFhhKvOGI7wbspZ3aflWUSgGlr3WCkbWhXdXmLfemvxkY6upUBYb/PwM9O
	3eTVFs3HHO+6VQ5LPrf0Ug6F8NJrCHRNpmvJRXqImeJ/jJMxG98w2ECDOK4Uc6BQvQ0vWJbzByz
	2/mATtZdfnUBbesHimRYSZN6ilBtxKguaIM7zK+XLJCxKIZLvHWMVfnZxSdNL/rcXm7qcblE3ZE
	SR51xesFy8/jy79MdbmMh/dzzFNO3zvdPdPOkn5jFkBtbjSdZ7soVuZ9P/a91V2XHF+7aVnpnJ5
	tUQKnN01qg+GO04/vI6163v+uoHMEzmzqXXma2kar3VAMeX57o
X-Google-Smtp-Source: AGHT+IE8Y5XQdicl0anftc6ZOB3DK8vT6v3KWvb6NhvwFktmXqArSnWXNGL84JHp9Ar5s5QCAT7SjQ==
X-Received: by 2002:a05:6123:2e6:b0:54a:8d5a:a678 with SMTP id 71dfb90a1353d-5564ee64861mr5199304e0c.6.1761032790827;
        Tue, 21 Oct 2025 00:46:30 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5566211708bsm3112179e0c.22.2025.10.21.00.46.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:46:30 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-932c411d355so900060241.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:46:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXXBT5U75pRVWPt0Jfjvu/nk/jrZiXje442jZavMc0pTjsaKyWKQao5SYLJP05wfY6I6hcW0DxRCMpq@vger.kernel.org
X-Received: by 2002:a67:e101:0:20b0:5d6:18ea:a52f with SMTP id
 ada2fe7eead31-5d9773551a6mr1568570137.41.1761032789407; Tue, 21 Oct 2025
 00:46:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005111323.804638-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251005111323.804638-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251005111323.804638-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 09:46:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXcfw5LNHJzb6wPhhr_+PhqTXW7vVsPh0Jh4C37sH_1RA@mail.gmail.com>
X-Gm-Features: AS18NWCrnqUjqenK4TJrNwGcosBJE6DKtmO9ndJuUuCBGZAhQh3Anhkt0sj-6Uo
Message-ID: <CAMuHMdXcfw5LNHJzb6wPhhr_+PhqTXW7vVsPh0Jh4C37sH_1RA@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] arm64: dts: renesas: r9a09g087: Add ADCs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Oct 2025 at 13:15, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G087) includes three 12-Bit successive
> approximation A/D converters, two 4-channel ADCs, and one 15-channel
> ADC.
>
> Add support for all of them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

