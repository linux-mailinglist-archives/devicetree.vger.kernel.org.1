Return-Path: <devicetree+bounces-223868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAFEBBE7EE
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 50DB24E2879
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEDA2D5426;
	Mon,  6 Oct 2025 15:34:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E661A22D4DC
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764845; cv=none; b=jshl9+n31fL//Vlfnxe7PfBxGTNIHwkU7Q/QX7d7akuN3wHpLB5z5N9/NCbgA6LoNe4JeOTWDZlrFUHfxtl2Q0WdsGhi2Xpji5Qq7CtqRJgUU8tWaGbMYQk8YOzAb0DLHXjSViSX+o/wDtWThXUV1DaS6Cn4zUzHlSUdAKnpQXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764845; c=relaxed/simple;
	bh=BRVnuKO/hGRiXoQFAyWThnaMnX8y6wSiK6YP4Lc0R0Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hXp/3BRI4e+j4D2qJ4sOl535Z5RusBrAqg3Qdfotpmz9Iaj4dAVg5/0pXI/TMvE/lYY0xVAnyOK05NNl7b0ek4T9ZbyrmcrozJFYGhiABk+2sTduUSbJ6Za9HWzInk3SzzJGqfPZ7cIIPwWLbgIMjtivPIxSXJdBth4TTwvaZaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-8eafd5a7a23so2364504241.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764843; x=1760369643;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=04DpCx6C5dPpdl7atQBgrPvHfA4NCQYu7la1Z2lk5Do=;
        b=TfbYXKLsEdPMEVVnrlAQ08EQuQ/uBcM4CJYhooc/SQEqAh1BzoYItooEziced6DDEt
         iFY1HM/8aPiVcJ4kp1+e9v9xAWsEQulXv1TWrrcHNv6mwUTuUCmCiaLyp9HfLDg+RSko
         7rU/iWw1PTJ/OeOWoRl0kc8QCg+vU8b3bzpStfMAvKM4AAxTqTJGUKInnez0Au4iqZCT
         imP1+xPYi6VuK08eoLsVxjZOMLuBUl8aAQKdccxbQZ9w5JxxdIMtudo8WJBP0rEtGnrf
         3YiaZvzGwB1/3pqlYtiKR+0iEbzXa8lTBqVLjqmFAhGrOAgSOQ29WwE2RHkhL+0oQvH5
         qdfg==
X-Forwarded-Encrypted: i=1; AJvYcCV04384C9ufFI1IOSnCniB+g+lSB8bVul2YZT1wgyWO1rRrbhhfstx09g8oWkMCukP4erlXeskHkwyD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5AdmhN9h5FiklognHcTmAsqiBXLK6lWsZPnIeX5Pf63/lUGBu
	KiVhrxNQTjRMXw+73amr6UDKVbCZmy1bNhfrYmHfQzfIJ19uxZ4KCv/nwkFYWo19
X-Gm-Gg: ASbGncvNO+fTX2c49ZBxZFyBFRfS+DVC9n4KX6NZB6iMGr+1bgJpQRpvDk/G5xgOFqc
	WJwxqbNgfnIsKbSnpu8zlET0tLimwbOlrhK0NkIqPxbea9hhUDwdSPrUGWHVfpdjCI0wA8LHgaN
	RiQsdvsdbRNNgbPD2IjRxWoOGweTXjOwzmOSW8tGnW6JRO7kvHvPwQHyRIJ+VqweVfFi7s+pdJz
	OxkG97+cAIacLipJGJV1oePta4Zw1HOT/F1/Xy1MFCdJcOxveGyZ48HLgk5DRETPvlD5363oZ1y
	rSEfAX1laK4hWfqxdqtErs1uhEguKndEZH8yGCyrWxi9o7Ye884iq9JyKGMnONE6d3uxTpgT9xV
	7wfYBjH4F+c0STtgZmT3P4rWZFAHorxPFfFqh+eg0xf2tFZQHmeSIHXbVQE4OChclCc7Eg6ZQpD
	gwxqiuAIj51gEiB39JXvGbPuhsKtgGTZ7Htg==
X-Google-Smtp-Source: AGHT+IFoxtrn5DKMZLh8DrD4tc1lvo0UMD6LMEEZNfJg5H7mp0uc0HSTlk9hx/rdUkQ2obxhj6y3Bg==
X-Received: by 2002:a05:6102:5988:b0:5d4:1499:99c6 with SMTP id ada2fe7eead31-5d5d4b150f4mr45037137.0.1759764842525;
        Mon, 06 Oct 2025 08:34:02 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d389f9e3sm76747137.7.2025.10.06.08.34.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:34:02 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54bc6356624so4511878e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVWaYD/CZY9efOR05hGj5S8N7GOPDBPuQap7HWZSNLh489SKSyKhAFY3jD/vTRUsElguonAz8qKsoOU@vger.kernel.org
X-Received: by 2002:a05:6122:807:b0:54b:9f67:441c with SMTP id
 71dfb90a1353d-5523c17dcaamr5151918e0c.6.1759764842122; Mon, 06 Oct 2025
 08:34:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-13-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-13-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:33:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV0n5WvtVbQ1Q_JJUS0orW4gm_4J8y_MEAdSdDa8-gCvQ@mail.gmail.com>
X-Gm-Features: AS18NWCWKPBWq9BA14EBZvxM7ulYGPRWZikV-jP5rc_BgPkBwo44Hs1cQhwj4kM
Message-ID: <CAMuHMdV0n5WvtVbQ1Q_JJUS0orW4gm_4J8y_MEAdSdDa8-gCvQ@mail.gmail.com>
Subject: Re: [PATCH 2/9] arm64: dts: renesas: falcon: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> V3U Falcon boards. Sadly, it doesn't mark the node as reserved, so this
> is added manually here.
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

