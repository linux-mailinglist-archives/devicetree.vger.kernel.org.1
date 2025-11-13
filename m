Return-Path: <devicetree+bounces-238164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA70C57F58
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2843F4E2E7B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 622AE25FA10;
	Thu, 13 Nov 2025 14:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52392727FC
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763044125; cv=none; b=QSdUVYIaRHOGnVKiqFZgArpyVn/6T2xEOvnmnAJuz+gA8xKeJGILoQtyGMM/2kzC+4G73xkZw1neVJCO6Ps2ZxefauVB8ygrSfUy6MYUpxrSs924YeqlmwOqvNaHimKHKkeFyj21dmuiJDs5BzyiWZfTCb3IQ8PqFqtZ+UdVcFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763044125; c=relaxed/simple;
	bh=A55pVaLB1a5M/183qzOCCCtVLqILltVvYYcujE/3gBY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZPur8Aa+h1bYncTZ4C/BJbPMaERN1IVTTkWbADILJ9Nh+EJBkzbbaDxWI4bKjFzxqTDzuqbhrzPpMx6KHJWRKXDiBZoHfQVPOcZx4zMT+onzi18DW0X4pgZv6BGJysTs7lNO6UYTTzCnezmIgrA9weSLhvPLmnR8jrVrVgffBd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-935241a7a0eso452571241.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:28:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763044122; x=1763648922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SPVdv+Cr3ZbcMU8t075Et/PpRUdOj7rpDshXN3z13xs=;
        b=RQDL4uVlZmru7vpRPbI9/EqQMSXZZjiTP09rTRqtXCY6DbyZ0lCsorbpB7EdkK2O1/
         6FIyncV5od/5m8Gtgg/jcibwQJGyUubY/7gNSCsRWzLcm+UxgDGu/6na00TNKvLoBGHB
         m2orWKDb6m8Vxvkd+9+ttIO5WHe8CYI3x83ubx7ny5+lwz7/ivFNhCtoJbPiiFp7uGF7
         5VChrCxMgmBEdRiJ0jaiEVheAjoo+ps30gsl6F1/vJN2pLAbN/qiG0rqxvbCRWjP4FFU
         7LTOD65GAM2q1i4nUsI531HZxsfXwqWvcwYPP1npydvjul/ejQj6KnxIMIQ+l9oX06yI
         +DMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQGaNbVYx2hGNrKOqO+h7nflP7hgstKNcH10VPf6uCg0CnOJJcY49l9mIc0U2y4se3iYKUI0C0f3ec@vger.kernel.org
X-Gm-Message-State: AOJu0YxngdnjkfPguzZcAwVnWmTMPCAN1wP8kcuHOKf2xWVPyWRoAJu0
	5HW9JfxdZT5qhJIkA8VpZDPCNdSbg8d3fBssFhBcnObyP76leZdgMCSQB9okPCOleC0=
X-Gm-Gg: ASbGnctFrXjzYvZRcGuBu9SXNHDP1FnIdEY90nomXUj5xk7NnI4qiKumivTRZ42e7BU
	2BFt+mhlPJp3wEX/z77FOuTkAHOBerg0YN/AidhvtTly45I9ydt7m9S9ngsddJvvAvOlDYMFlJc
	/Hw0h/zq4iVFbVEju7vKRbl6CKK5t1ugQvTf/EBQKwo0anrDFwELEa0XIq+SqZuhylnPxX+cn+2
	I5BPILYQdEjY/LJ7aTrK3eer6ApnVHf4VBa9hiC+CGiT9CEgdyrZZY9C8rLHhv+lHp2AXZM56b3
	mmSjgw9IZppxgP7FB58ya7VucXFH/vjiddc5v07rmlCmvfrd9s7Iqdhl05q9EQRrcjNkVb5LPYd
	yMIpYZhSi6tbxTinK2okJrAI0y+AKQzvnw4Nzsc6o4S3Vwpww/Fzq5lR5Za4bMjlk3+hvGIRs6H
	QKEfweNR7XjlTyIMiUi0/0ZD4gNzdOFFdXpprgHA==
X-Google-Smtp-Source: AGHT+IEXCB5DnoxpPyuppmCgp+0AkEpm+Y/k7XRaNRKoSlaIiYc1+paDGSSxiKiL6xzu4UTA06gHew==
X-Received: by 2002:a05:6102:38cd:b0:5db:1fbc:4462 with SMTP id ada2fe7eead31-5de07e99fcemr2570031137.31.1763044122366;
        Thu, 13 Nov 2025 06:28:42 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-937611bfdfesm619457241.13.2025.11.13.06.28.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:28:41 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9371aca0a4dso550452241.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:28:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWxeX4mCrdJSrd9TEpWxMzBO7trZAq7dJEOwVEDsnLPOMGC+Td6vB1eEWhVNLZkTX3mliN6YsHBXGwf@vger.kernel.org
X-Received: by 2002:a05:6102:4b85:b0:5df:af0f:308c with SMTP id
 ada2fe7eead31-5dfaf0f34c8mr2015901137.38.1763044121413; Thu, 13 Nov 2025
 06:28:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020143107.13974-1-ovidiu.panait.rb@renesas.com> <20251020143107.13974-4-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251020143107.13974-4-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 15:28:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUz=f5ArCV-w7dcyEdqhsZJrKyf=KwY18mwOgVdt5TQDw@mail.gmail.com>
X-Gm-Features: AWmQ_bnUzqLPji7mNY2mLpWw72wOSZDLLWSl0uz9lB3HUP0ZZ52peqFQbz3UfMc
Message-ID: <CAMuHMdUz=f5ArCV-w7dcyEdqhsZJrKyf=KwY18mwOgVdt5TQDw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: renesas: r9a09g057: Add TSU nodes
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: john.madieu.xa@bp.renesas.com, rafael@kernel.org, 
	daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Oct 2025 at 16:31, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> The Renesas RZ/V2H SoC includes a Thermal Sensor Unit (TSU) block designed
> to measure the junction temperature. The device provides real-time
> temperature measurements for thermal management, utilizing two dedicated
> channels for temperature sensing:
> - TSU0, which is located near the DRP-AI block
> - TSU1, which is located near the CPU and DRP-AI block
>
> Since TSU1 is physically closer the CPU and the highest temperature
> spot, it is used for CPU throttling through a passive trip and cooling
> map. TSU0 is configured only with a critical trip.
>
> Add TSU nodes along with thermal zones and keep them enabled in the SoC
> DTSI.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

