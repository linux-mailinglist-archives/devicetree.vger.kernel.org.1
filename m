Return-Path: <devicetree+bounces-224490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10106BC4490
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9F5819E12C8
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D002F5466;
	Wed,  8 Oct 2025 10:19:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BE72F1FC1
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759918761; cv=none; b=NS3gSFQm1vzQByMEqY3gmHTUBIzSf+SpBjv93ABVBZP5ux9GkZY1IjX/gFROXptNTeoozwGe+oadVCIKXdngcdszue7ON9JE2MSfgyVZTeSF0E7xJ4Q6ufLqMNaAbseLF0GaY36TaagxtUF9uRSsljkpwt/6kIuF+d+oKNgDES4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759918761; c=relaxed/simple;
	bh=41JLkiaspv8I62corOwXybyoBLD22yrEUZJLxiyHEno=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CG/KIV6Tjlzgb2dmFNK+tb09Q1IQKTGsU9TdPmBz15tqliQeOlqN5cZUyvvdtwP4X+YDCVw4PJYJGBI2fuaCK7oVWnuDHURnGBKZfZXQspBe3z8/ioKHxneI98LSqQfwOswbejvvpq8flTfjg68K6aF6Ia9gH5cvueCmVe4NzGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54aa5f70513so2013973e0c.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759918758; x=1760523558;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kcfRAkL12GvEO5UonVdhJvoy1IYd4LHwp69l76UKLtg=;
        b=QfMQTxOw0twgKnLGNwPFT1e+7vnESt4Owb9R8n/xSkPhIVvnnPGwGgBqBTZHhtUuIR
         DX5mOeT8doOef5+1l/4GgApjn0pRX0N9/d8p2SRow00Z8ZPFIAuROcT/ym8jpp/5LaIP
         nC7gFikn+k7x0hy3miu7LpbfXlyIHoOORJSAPS5efeIiPhxhr3PmSZXq7o4v3gBG96i8
         PLTHi3tAkAIhKDZYnT1rbtqAnXjxmnFs+aSzN7kfxt83o4C7GqK9l2G7zbCmGchEUoLA
         t47Ii6yddFi+QYvELiBlOXTmPllzA7gmv1kkiBxOYavCI5PDtzj2SmcUY33dKtMXkvGQ
         4DBg==
X-Forwarded-Encrypted: i=1; AJvYcCUaeWJyJqFb9583FerCDXgfPq/uLhxnm7H3wfoUBVBM7tz0K20KZy3Uok0G4RZIWqVERjdL2Fz5LpXr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg1S0+AUDUjfxFPHaTPocmS3U0B2REIHeyxtX6hU6dVJaso4vl
	wdmRXcCwF1E0bMYnfJuHnLK9lNWBiYkfBlbAigEqmiDXFkP1DiR+elhC8xWRelaG
X-Gm-Gg: ASbGncu/wlz5JuH77/V4rSB9x2+yWsbK8U6vvswGYyJK5H4dq2pscVhRRAWeQkpIY+4
	P5+Hl4APqwiPI2Fnk8nfrzb8dsc3paN43ZvTOSpKgrX1c55DEOPz0kxD5TwuqFUlYelLcjVssAq
	+WGUzSlbnNncES9VNb2Zrf/8hPcaDG5q6GTcJ8rK2NElq+0tpKUSLvjeUT9MDHIByBVyLQdmMnf
	5o0/tx/KmGMzqPM1EF1G6pv8gO6aQ+7QBStlMGTY1XBQw5+vevy/xvjPe9PlaEIQktjEMPpnQqO
	u3KF++KrwLXCyDhF9DYh3KP90rkNG6MlzKbVQHGbW21l2p8W+6fqlEVs3kOjXhLbc8t7XStPV3Z
	gJqlrO5yhKLcj0x1dzOrO2JUDyEBigtEXMx6KOefs2pE64RUGeNCvdi8jwXMmRIosZ9QDPcigam
	oJVN6SWU5RyiQ9uw1naRU=
X-Google-Smtp-Source: AGHT+IEt3Md1ua23CmK89boEaBwm2wOZYP4lekilcUzMOpZdAtB2XesL5MxwIux5f24blQo95Vc+6A==
X-Received: by 2002:a05:6122:2228:b0:544:75d1:15ba with SMTP id 71dfb90a1353d-554b8b972b9mr873501e0c.8.1759918758198;
        Wed, 08 Oct 2025 03:19:18 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523ce6430asm4444574e0c.7.2025.10.08.03.19.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:19:17 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5a3511312d6so2872853137.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:19:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXnnG5IQ2aATuBu8ndcWq3FGmWzF0fsrp6Bfko3pZWOgjBbGPbKgBnkujjd1ECWDXngpgDRNMWFTtb4@vger.kernel.org
X-Received: by 2002:a05:6102:2925:b0:520:4054:6b9 with SMTP id
 ada2fe7eead31-5d5e226f3e6mr838361137.9.1759918756906; Wed, 08 Oct 2025
 03:19:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com> <20251007152007.14508-9-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007152007.14508-9-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 12:19:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXdMK30hQrOR8CsK4Y-5ay1T3GUtSFiunnfGNVO4vDwrw@mail.gmail.com>
X-Gm-Features: AS18NWDAuwWmqJU4uirFV040dMIpRx_qEpSrWPNxsSBV2umiQVZCcO8iQyDM_X8
Message-ID: <CAMuHMdXdMK30hQrOR8CsK4Y-5ay1T3GUtSFiunnfGNVO4vDwrw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: watchdog: factor out RZ/N1 watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 7 Oct 2025 at 17:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the RZ/N1
> watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml

RZ/N1 does not support "timeout-sec", right?  As this detail was not
expressed before, you may want to mention that in the patch description.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

