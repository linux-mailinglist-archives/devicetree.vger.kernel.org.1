Return-Path: <devicetree+bounces-229385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D5BF6D06
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C2FB486127
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3524333430;
	Tue, 21 Oct 2025 13:37:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC692DC353
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761053820; cv=none; b=iJRb+ouQ3Pq1eeW0tWpmHZj+7FE3jYdVkimVhGc+C+PBaijjQtD/juvjefzycSmadYUpGm7QxLRFHQ+BO0lgldZ2u1QhewP/GPs5v5IdZWxVyLG3UHjTn0dDxU4oK2TiHLW1aHtTIArxV7m0cxfP2sslHHxEBbMt67Ujzu2Fyws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761053820; c=relaxed/simple;
	bh=rFDpMMd/J7LmBoOgvX90w3JvXvtchMw0C13OGNdvG04=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sJQv4nHJ5pUy9TwNMd5zyOGUA8ZuwD8f1RdIbAXHfNrsZH6yVIikzf4g1Jttche4x8BAny68AMMpPjmiIbUCvcjVaeGFfuK5IrGgWmrGbANIeDTmjRdgKYemlPuDyzPlWeGrNdMVs1myLDQSw+5OjI2HoshkFmfw2YGdvaXNmVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-554f1c13bcaso3774392e0c.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761053818; x=1761658618;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b78/bqYwVh1ldrSw5qZkZyL5FOTBO1IYeO3ztxHSC8M=;
        b=gpmrYMGFeIrgFzveiGu/sGe/rhAnlVhiLjl41zCZWUF51G+xETCblrcCjXQP5a5wEU
         MfQsazpKNv9NWroj6vMk8Bw4HDc9DMYhKyLuMjyALed4Myvwk7OpjDnLTzwEA2yLgqfP
         Ea5MBchpMozhRpYpn+qyx4MlZihMkGrLiaxIXEnB+PcGM752s1LS6n6mw6R840rNmkoW
         YBg7XL5MbkmnH3475UWhNgOem3fF6CB7qKkD+dXEa0nh2IYWpKyJcq6TT8FHE/T+IeFb
         G8hZSEVv/hEvS/GdSnLyDM/6LftLxRLeUNAABszIl/iGp/QkHN8KetvibPfTCGm/9nQ5
         XBGA==
X-Forwarded-Encrypted: i=1; AJvYcCXCzhyI2dAXQ4TS6T+rQtXNQGlqgrI97D0hKlmH0TIm01bSKkgyiRaLk+e6knVdJHODceJUOnJoKBu6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9AlvzRVrne/rPVfFUPKSUsRjAX1qyqy6PNc0ncSk94ot/wv00
	2fsYyXNQsL3x/BQ0rZ+Ag1LXpklAvTzPWAbBX0Cm59x6BUf1su8Uvoh0l6vU4pKq
X-Gm-Gg: ASbGncvpVBrd3PNx3omrKyKbHjAeTiJCYBc09nLDE5rHLvhFsJNyYw7vRpSqI0btD8E
	43WR9aAW4t2oGsRCD9KIaAOq+zFmzo/XjWN7ZzKvO/WybxSOnenWrW8+fJ59ppqud5bEtTPuBcC
	yhK7qXEblJZ0TNsajFBavPyIcgfarI18crece0s1erzbo7EbsMRRIPBeA0jJMQCFHB5ugNe7K+4
	rfOkHtvlV2nwQVkcZ5eKL8ujGoe5gWn55g0xZTtQo1czd6lwpcgEhFw7gHO39l0Jni3Llfm34rH
	Bite7VSf5J9z1pKZFpyc9HNSjMSeuIw8CCb2h84baTT8m6kH1+/hhLx7sgMI6jndlsNl3itGHlZ
	vegiXnpxolceaH7yjJOW+OGTiYoA8VtnWWBY91lSRLkKACUPGfNa1DsLac2I99Gn8lxrXNwQv0A
	yzHvVIuJdULj1lq3vABbq5Yiki4Ur0iNlA6T/iYA==
X-Google-Smtp-Source: AGHT+IGJOFlWB3IiF4RE6F+t7dLhJl6pt37XoOeKPbBP8K8m8lcn7eZSDHwKIAuJ8AFAYCRoaUCvSQ==
X-Received: by 2002:a05:6122:a23:b0:556:3f8e:c0c with SMTP id 71dfb90a1353d-5564ef94c1emr5535333e0c.15.1761053818029;
        Tue, 21 Oct 2025 06:36:58 -0700 (PDT)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-556620d8cfbsm3332537e0c.20.2025.10.21.06.36.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 06:36:55 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-932f654eaaeso98271241.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:36:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVk2zKFsSsQZZ+M/pHHreNRwIgdKaI7lgirACgNNti1R46vPGXZKz7cGtebAzvnxAjD7UlhnjwLQkXY@vger.kernel.org
X-Received: by 2002:a05:6102:441d:b0:519:534a:6c4f with SMTP id
 ada2fe7eead31-5d7dd5ee60fmr6017748137.33.1761053815204; Tue, 21 Oct 2025
 06:36:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020143107.13974-1-ovidiu.panait.rb@renesas.com> <20251020143107.13974-2-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251020143107.13974-2-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 15:36:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWNq-DFG4_i9CN+Rb2RSgO1Sxph7HO7SNhnr0d1=LoW0g@mail.gmail.com>
X-Gm-Features: AS18NWBYsMSpOo4y4kMiKki8g1BkhV5Ulk8TYURDjYYjSArsxY_VVDXQMAlwt_w
Message-ID: <CAMuHMdWNq-DFG4_i9CN+Rb2RSgO1Sxph7HO7SNhnr0d1=LoW0g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] clk: renesas: r9a09g057: Add clock and reset
 entries for TSU
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
> Add module clock and reset entries for the TSU0 and TSU1 blocks on the
> Renesas RZ/V2H (R9A09G057) SoC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

