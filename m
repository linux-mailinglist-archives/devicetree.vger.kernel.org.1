Return-Path: <devicetree+bounces-238245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D534C59530
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6BB4D56270D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D17E35C1B2;
	Thu, 13 Nov 2025 16:54:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E7B35A941
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763052897; cv=none; b=bi5VxXFvaTZMM2iOaSLQeSfGTPQS+pQvoFz+Z0mar1rX8BAgn4s8waSrxpDHPzgBea3Hu+Tos14MjFL+4NV5WDTlPGKz6Y5ihkVkomCxKozMUYoCo6GzMFQyNXUg2zSA7s9CiOm4YZz/Sj+tDuMHmdWNC2hWz2/EsxSzWWtPVyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763052897; c=relaxed/simple;
	bh=/w7U1lULN0Wt5cy2n+o8BXmaQCUvdOw6lpumB8VVy08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rV8qISMff8TPASCSuFUXYjfOZVzcfSrrOpds5JDw4uHD7PBnKrfZOtNZzMqbd0Ptsfrl+a5/fTnMIeQrRXhOzD4Ui9VL00znmnxyTV6cUduDS1IP/6aOUUECK+KvPRAdeUOn3qzDJofs1RiI/NnYVH1apiiNzTJCb2/EBEn+OEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9371aca0a4dso632107241.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:54:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763052895; x=1763657695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DiVTOOriFml3/StIKpZ5dwhW9Hno3lDZNqDkWyJuxDU=;
        b=imKJLtyr6wDJNo/+KJ69jPEelW0MO3oGqWVkTJqRQXX7Q9WJS78xs1H831ohXVKruE
         h91YpyzCRSygwgSGgZ4zB7Pf6D33Z3kOfok90LZgVSHkMIrKYKOioQo2VobF6o6hr0+G
         INUnGf2gxEbJvuu/jVANumllvkX0fc5Q67QuFILQrciDDvObvkQJ0wtwDRgXXYt3onb/
         lvGH5yTz2ha/k6m/qV0vcB6kCygljKo1E08P0byzxCy3rwiMiEy/B0UiJesI1bXxSBkv
         1RQPE2BGK2sRRQbXWntAGanpgL/j7VdGyUhOpqkUuYrb925Qk1dloWNWsjxi8++KsJxr
         daMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXjGV0rhUAcTp7B1MyQ4L2U1calbb2nx/RIMoH0cFd4n9z7StJmRlL9nRqZ6hEj9u0MhcWMV4arhlh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0GkBtKJwaxZwQzTuY9xgc0gp91IVrTqECkwndpftf1+g19b4w
	9/Qa2EzTPllsNAjE6T9qWTIIWAKt3rxwsEdOl0eupONuO6FXZPyuoZKCueAa69xkUh8=
X-Gm-Gg: ASbGnctorsnm13dmMP3RX4m+V/9QtBjxmKAAokjdAd5n/XBz/aa+kYQSj1EfrPuLYqH
	HIhmEym8hxrk7vJm+fTpFgsYEM7Z9r+02pHSWOF6sagsGYiiZ0lLLD4cil05lMuSYbsTwzxpNTy
	63mj94p2/XoOXYV0zAsIkXdsyD3cVN/Bv9wYqNQPYghrSWuz2tvOamtW33PPtwMq29yMkA3uL/M
	VNG1PQd3bsGEsF0i/fpNmXL3YXh35aBORMH+3Urxdr/apgKUsg+lX1UHrNmJHpddZsZ1fuhswh0
	IeudbRS9gMrvtmp2n3JNtsoNOwhURqRo0OH9ytueVz9d7fXBnZbeyn+Xjk3Bfc2qp1zLq4LUE2Y
	bV5RdGq7T87aMAF7GrwsAc36HKg3Au0dAcHoC00fvtatDjFdAfzQTg1y22+bLPvV2++BvLJn0ig
	BE5lJO8EqxgG7KJ421tz+yk9zPoUBZU1fbmNa3SA==
X-Google-Smtp-Source: AGHT+IHZfMYBef0IgXtzci1WHXWag8s/j2pviONpif890OivGiLsZCQwY3U3x1fnJFb+Fbl0WKpyRg==
X-Received: by 2002:a05:6102:b0a:b0:5df:c34a:5a07 with SMTP id ada2fe7eead31-5dfc5b9033cmr165561137.23.1763052894690;
        Thu, 13 Nov 2025 08:54:54 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb729fbb3sm841634137.15.2025.11.13.08.54.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 08:54:54 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-935134ef989so658175241.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:54:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUbgcy2Dpqa3xSUx6EXHAJE235848SVvxX3l0ZdfY7SXSo1zCHkxxF8QiDw0r+drqEHEc+OhQQFxn+N@vger.kernel.org
X-Received: by 2002:a05:6102:3751:b0:5dd:c538:b85c with SMTP id
 ada2fe7eead31-5dfc5b9485dmr175827137.24.1763052894285; Thu, 13 Nov 2025
 08:54:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251101050034.738807-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251101050034.738807-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 17:54:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXRkiJHSFj1QsQjH_6g-WqVK0aYE4Q1+WS2zGKLXWoj1Q@mail.gmail.com>
X-Gm-Features: AWmQ_bmUKyeVUtnm2gNnWCtpgD7bmlT9Yk_sNHgyVVXH3XqZY-ChGkFlPHKyXXU
Message-ID: <CAMuHMdXRkiJHSFj1QsQjH_6g-WqVK0aYE4Q1+WS2zGKLXWoj1Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] clk: renesas: r9a09g056: Add USB3.0 clocks/resets
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 06:01, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add USB3.0 clock and reset entries.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

