Return-Path: <devicetree+bounces-221801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A541BA30FF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0596462627E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6638222127E;
	Fri, 26 Sep 2025 09:02:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39601F8AC5
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758877379; cv=none; b=EXzRPF4YT5z98pGsKUeWh8iGNAAeH/YNdV/3epwbCQFtImWP7mQHSQg1VxTzj4DuT9eqp3avw5HA+JR5fsckbP1wq/LJyU6uzQ7KxybjfMComCeMp/wUtk81BBdYKDC+Fxt7xCLSBx0UodKY0dqEs2qV0ao+U8GVScNIiip6cKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758877379; c=relaxed/simple;
	bh=yqhKXeyjFsotA2/WijdIHnCoHcbIYkQLPHah/e5pqhs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kNYvwhCxkJRvN7n7etU0NbuybDOeYpuB0/qX+Wty6sFx9P3MvLhHDYf2Bzcu3KLa5DULQbfSMR6AuWatQsiNPtJ1V+1kfmEKw/+upwdIZWbGyCosIOhA6cBGQVfoTK4XQXWB2/VfifrEiFM5pDmoU2mxKLJ0eBAbACGOwpD/ysM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-54a786ed57cso1481351e0c.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758877376; x=1759482176;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/A1nnX1lRJWhBOD0gbzoRliet8LOTaH1O95sh7if/L4=;
        b=vUFOOwLRNZRn6fDilECBfA8LHbxbe42HmgWLOU8Loy7o0f/lTZHaxXA7b0VnRuWfIi
         s7uwMCkV7KDIHAb9Et8X9ohQ/76TiA1Z/qbiIWfL6tODDzxwmlTva1GTZmerNeETyY3K
         BLCW9EQlex1Gf06RAdb+g3x0zlixnktOH4oNJLvkKg9HP24eYYzAr7MkeRRc6IGFQznM
         C+XVS4PH8V6Y2X8UeWs0TbjQPoN7cXFcPihq+bT0x7AxFUftntVgFQFri6pmnnMeQsZG
         Phhuo0Ox/lMaRAHPueti2L16ssC+J+qAKAUOFZvqcxREUeK6jdaBAS5Wfx+gVcyylrqC
         c8eg==
X-Forwarded-Encrypted: i=1; AJvYcCWBFtMx7oMPMh6YkuSAVXTiUN4MupgwodMe3EZfjNjXaIlkLEQqHq/qUFJl5bguBbSLvlyRrowyzhhH@vger.kernel.org
X-Gm-Message-State: AOJu0YzM+4GuqLlSafgcvHHafaV6ByP4hjija2in3T+asp+jAxgfMg4H
	jeBoWO+7zbBHGlGmwLSII0REvTX/CNhDl5BfxtoeERMk3TGaPz4VkplHWZ6SmOCF
X-Gm-Gg: ASbGncuJWriNSdc5x5gM2YagQBBNWTDOttNoZGlCgIF9cWtJs3crvzwuBho+S/hESuM
	X0Ea9PuDnzyYoowVHVbU6GSlZ20GXtNXqqa7bStZy+lXcSnTmqm9UTOUlaxEj2VoT+XPIZEdfZU
	TfdlvX8hial+xSSNK34WHxcH1huwb3FySRg1uTi93n+F7ZzkvUE6+F2wlqwsz3+0AZHiIDiu2ob
	DcWx7oRwEv2eJ9aN4lUGKdORZPOTIReA6NlghV8AqQ5vAWjL8WaKGSB0k/5WQi9J1Uc48Uhij0T
	2+SJYvVazqfoqcNNY5jmIGpBCDdS7hyjMG0QqV+jTBXuh+SmX/Wj9o5pVR1Ga9KgXCEaK5sNCxi
	q0s9ooepHtctlr/kxSUsE8oB6OXMTqsAZpW5OrljK0ozPu+DoRPIQJBGfR9r/DN3mJ/dm0EE=
X-Google-Smtp-Source: AGHT+IGruwNKaZ1U1FAodYTo0oon7urZFn4fIBl5+ErAzKHHj5O4V7uF9Xk5EjM5FXA353OuOh2aAw==
X-Received: by 2002:a05:6102:3f13:b0:59e:37f3:688e with SMTP id ada2fe7eead31-5acd6723d21mr3443586137.26.1758877376358;
        Fri, 26 Sep 2025 02:02:56 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae3b700a82sm1147348137.17.2025.09.26.02.02.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:02:56 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-50f8bf5c518so1352702137.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:02:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXhOTOEvPJcqkwv5NOKdBWeEcviYW4JceCwth6O8WDcBpoAu8UfFqFiB2WgWM7nvrGGIt2avPHpEpNn@vger.kernel.org
X-Received: by 2002:a05:6102:d90:b0:4fd:53e0:b522 with SMTP id
 ada2fe7eead31-5acd4639abbmr2500563137.19.1758877375688; Fri, 26 Sep 2025
 02:02:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919100740.28429-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250919100740.28429-1-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 11:02:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVGthcw94vXDErZTissJ1wVPvJKaLb+j7D8Y77-E226PA@mail.gmail.com>
X-Gm-Features: AS18NWDWwg19m25N1Unra71jecmnvaAojQgpAo4nRTxBbEsY4fGL5OyahynzoCI
Message-ID: <CAMuHMdVGthcw94vXDErZTissJ1wVPvJKaLb+j7D8Y77-E226PA@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: describe LEDs
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Fri, 19 Sept 2025 at 12:07, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> To be able to use the LEDs, a configuration switch has to be set to a
> non-default value. So, infrastructure to support these switches (which
> modify signal routing via the CPLD on the demo board (DB)) is added as
> well.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> This patch depends on "[PATCH v3 5/8] ARM: dts: r9a06g032: Add GPIO
> controllers" which is still in-flight. I send this out as RFC already,
> so we can discuss the introduction of the switch dependant settings. I
> copied this approach form RZ/G3S.

I am not opposed to that.
The switches are needed in both the DB and EB DTS, and in future
DT overlays (if any).

> --- /dev/null
> +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db-switches.h

"...-db-eb-...", as this header file applies to both?

> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * On-board switches for the Renesas RZ/N1D demo board (DB) and extension
> + * board (EB)
> + *
> + * Copyright (C) 2025 Renesas Electronics Corp.
> + */
> +
> +#ifndef __N1D_DB_EB_SWITCHES_H__
> +#define __N1D_DB_EB_SWITCHES_H__

The include guard does not match the file name.

> +
> +#define SW_OFF         0
> +#define SW_ON          1
> +
> +/*
> + * SW_2-2:

SW2-2?

> + *     SW_OFF - enable PMOD1-3+LEDs on the extension board

Please add "ALT0_PMOD"...

> + *     SW_ON  - enable CAT/S3 (default)

... and "ALT1_CAT_S3".

> + */
> +#define SW_2_2 SW_ON

SW2_2, which is what all users below are using ;-)
Or better, DB_SW2_2, so you can distinguish between switches on DB
and EB (EB also has SW2).

> +
> +#endif

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

