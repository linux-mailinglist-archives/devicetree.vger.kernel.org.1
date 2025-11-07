Return-Path: <devicetree+bounces-235992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACC4C3F042
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3A2CA4ED38F
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3722D6E63;
	Fri,  7 Nov 2025 08:46:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22E42C326C
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505181; cv=none; b=FqC/BM63IL1nTn/pwFs9vjK8cUXqPUBOXVaFnZQAuGZxM+2E/yhOrKrQJ90w3/FL6HslDWjclsSghWaf/NbRCCcLiV1sXHsT9Lpu6VHO0kDPyVwwUbJJJAmlkz+LWxwS7H2iGciIXXGCConFFzTD5hPGC6/DWd6DSEA3Z+stu0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505181; c=relaxed/simple;
	bh=cbPm17O09V6lsegfM3GqXO19rmFeKE2vaUONa3e/JVs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mHL/BubB63b1tadhZJ8S4/QfBY3x5lfkjb4kfMVluguCXdvYZQzHh/TJnL3wuaqHatdTNrQiA00wGgj2B44eMOBi7cPdzS2pBW5imIitS2fYBGLe6Dk4AYwEvNvcWcmqkeXeA0hMz8fsnM+s9KydxgUcv5bIVRBWLxZZvc06rEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-930ae1b2627so300674241.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:46:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505179; x=1763109979;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RYljhwrU4HN65eQaadjk2lYVAnTSHmWGyK5wHOBjG5Q=;
        b=rKc55OqgdL6oDJX0FZQ/9P7tYlP52IcjOXWLkXO0US4V6EhAD4ZdQ9CNV4Hpl5TiV+
         Nj1cer9eIcFs4saaQhfIUBICK1lofNTKXVd4glkIiWNdQbBODjbN/3cVK8IPpAipBbk3
         M5Zcj77SOKja39vWyzH1aOSIomCSCGKwVlkdGGtw5No8gmDZ43LQQKJ3hiXXKrwuB6p3
         zwyePo4XXhapjSOIaSwC3ECRY3kUgvqOaPgbm8TSt/HfT8HrBfsjgGN5SffBU7bgCbmo
         6bcu+OWyt6XbEdiER0TaxKtDXNt9Nbcv9wdjEZw8LN7ePSg7SJQODZwU343WZ8UjS8Mv
         8HiQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/t4n/Wmnhtey84YLTiqMienZDhY7a/BB1KyMhhEYJ0cqzdhLT2HEHzyoFpk8CKkOwant5WO113NxT@vger.kernel.org
X-Gm-Message-State: AOJu0YzTsxp3+IxUraNm+cn2/yxsG1J36frGP+FpiYpDB5vHqEPD1gA/
	yiXNo5fbgA6tBPksls4mFSnoiDXhXKeOtBbFMw6fWaoB+j2Vx2YXWDahePBGqtrHauY=
X-Gm-Gg: ASbGncsiS16vvFkcF9O8V1ESt3lOqI7s4KDYrSUEakUVSvSNK24Cfl9KymBwMTsLgPN
	LCy/2TDBi6H9H9dBCm9rTaemY8eyChXPdUVJPtPCoygpPnNdwSPCAn2ydNRbcJC4W7CZr6YDQnT
	E7Tc2ygLEcZ9IEJk8OprxNrocL84em1pcO7ZIiCAriU/vHkUVcgjqXjQ4wOQXZYHgp+soxFjNPS
	vJGDGkYAkTylnW2cFtfAgpUMbwll62AcGeARXifixxPJ9YHumFSWLoNEutfqOiT0SZKQHoAcd7c
	Vi6wFKftsJZLqWIlX9So2+qYxwNu+vOKtv3ZG2yDQAdT6NPqeWjdjDh0f6kmywQ75NqF/gVJqGW
	EyfBcYl5UkcQzF3WVX/9qCLkYd0I8zB9HY40O7xpsIPdd4Ix5TySJf1AlvkHJ15YzyM0Zi+n1f0
	rt1PHQ3WKtEeq+Q0AjQJf/bz10jnkbQCYWuLseTsPcOFSs+92E
X-Google-Smtp-Source: AGHT+IFR30MlVncNlw9yqvUIDi8vHWJrfOeNxbPMrt+lpwLj6EM9EbELIR+WQWGBLAk5tEVl8f2giw==
X-Received: by 2002:a05:6102:f12:b0:5db:331e:4c1f with SMTP id ada2fe7eead31-5ddb21464f3mr842297137.16.1762505178525;
        Fri, 07 Nov 2025 00:46:18 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dda1d79fddsm2100947137.8.2025.11.07.00.46.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:46:14 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5d613937df1so350879137.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:46:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW1tZdWxpYFjLhXrLDtWsndS4wtbk02Nlr5/lcNlbvGjDMdMjwxuQwXpdrQfXtaQgMebs6OqiyQqSsL@vger.kernel.org
X-Received: by 2002:a05:6102:944:b0:5dd:89af:9074 with SMTP id
 ada2fe7eead31-5ddb2123781mr755368137.12.1762505172519; Fri, 07 Nov 2025
 00:46:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106211604.2766465-1-niklas.soderlund+renesas@ragnatech.se> <20251106211604.2766465-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251106211604.2766465-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Nov 2025 09:46:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX64H3aT8KsPwu9SHwc4SxMEF8SNSEXJ-7okwBc_sKFyg@mail.gmail.com>
X-Gm-Features: AWmQ_bmeaZjB-Ll7mOxuADG2wKALQswRSm6S846VNNGBx0Mi3BhWOLgXGbSo5Ho
Message-ID: <CAMuHMdX64H3aT8KsPwu9SHwc4SxMEF8SNSEXJ-7okwBc_sKFyg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] clk: renesas: rcar-gen4: Add support for clocks
 dividers in FRQCRB
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

Thanks for your patch!

On Thu, 6 Nov 2025 at 22:16, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> The FRQCRB register on R-Car V3U, V4H and V4M do in addition to the
> already supported KICK bit contain settings for the frequency division
> ratios for the clocks ZTR, ZT, ZS and ZG. It is however not possible to
> use the later when registering a Z clock with the DEF_GEN4_Z() macro.

latter

>
> This change adds support for that by extending the existing practice of
> treating the bit field offsets at multiples of 32 to map to a different
> register. With this new mapping in palace
>
>     bit offset  0 - 31 maps to FRQCRC0
>     bit offset 32 - 63 maps to FRQCRC1
>     bit offset 64 - 95 maps to FRQCRB
>
> The change also adds an error condition to return an error if an unknown
> offset is used.
>
> The KICK bit defined in FRQCRB and already supported covers all three
> registers and no addition to how it is handled are needed.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

