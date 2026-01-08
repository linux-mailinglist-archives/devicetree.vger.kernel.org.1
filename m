Return-Path: <devicetree+bounces-252883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DBD0421C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 28CE6313449F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C706346E70;
	Thu,  8 Jan 2026 15:30:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B843451B0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767886206; cv=none; b=USWwXVkxwC6XZI35tc/vUoNyzrO+4Jl3n4sSvVJ8+/q6ThQq9Ry7RgVqQ0vompmG7puwde6aWtAf966J6W7cw4+9aJ7ppIO4wCj4exsSzNOhB7d8jx+8gpMC7nfVs7PeFBdIU0VO6HBhGaNLy+uzedQfTuTibQ4KjIrZ747+FGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767886206; c=relaxed/simple;
	bh=H92scwhcHsTzYF+JJDH8TYSFfm64EL5HDb8BXyhP6pQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AyvCZ9hBY0rCJwPtLJ2WHUZ+vdMwgKcpy0p/fNHbFqZpwlpwMj4k5iX6kvBbBUCbYQJRuc92zhbCSp76eYifG2e0EII+jBuTYmfe0Lnz40sib4XKWE1c70YwLNBN9LyeRgxUa4QhloZeHlLnPqEHTd6MJKOm+YPJG2aSWxULMNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f68.google.com with SMTP id ada2fe7eead31-5ec96028b32so1427922137.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:30:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767886203; x=1768491003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rovq4lx6YcS995FtLIZSuYUGfhyo5V2P5Hen4vNwCUQ=;
        b=JvGyjO+JXpjXuV1AyYnPUzpmbDtqC3PjUPuZ8ao8thTdG9+1IAO89uY5VJR5aTlBus
         ZH0uWT+wCa4nBpfVfGspZJTNK8ObdPyLwXKZOLvSwA9YparqsX2UUYO+0UCSfPj3Ttu7
         /y6IbYWSWMoQ+E4/Vn5U3P7C+xm9T/Rk1reKnYxtqiMAVMdlqjQtiHxXFotJa3jAlNqS
         FhD8B+CJCjqR7HnSyabPqmbaNo0T8CZoP9T2RvFK/GWuuV41Cteb08x/oHRRyH6H8KZn
         biwje1ZTHOqCYBqNDg5OQQF0jSN5gDTT7wk2Y2RXkbeUFkkaOkER85C3ndxB4ak7m/Sz
         ZB8g==
X-Forwarded-Encrypted: i=1; AJvYcCUocIdwI2zZrCxqGriqeClLXY84T+EvJAQQU58mVcU7IURQ6zqOBHqIJLZgjrSy5GeBNvkjWdrSa8II@vger.kernel.org
X-Gm-Message-State: AOJu0YytEBVQxw2M/9S/hQ0ylsNQVUDN0k0Y/28IowRtvawDKBmVVOiv
	EpH7ZAJA8kxrhiy243PB/tZZlkZhcRSXKny6O8/RbqMCYj2uvEjNw5vNz6mHjbXwj8s=
X-Gm-Gg: AY/fxX7JTCBFQVHmVkfRn1LEfal753EdkEK3b+JRpj2XmU0Z8IfQ2+GUkOsjkdcOFnt
	bbPTry60JdK4WPBdkfeM62PjXkipIirdlfKl1Nx1fSutttZVey4Ev6PTsrIZAJOBm8cYJAvtO4X
	ldua53z42xJK1x5WI1DGxIenlBrMFXYLrgBgVTBSkhnunzZpCfMdTkd100zMfZcU+ul8SR7dnHJ
	m1WSPRuoFq9BQDHi2e7DKHzOfH4vBtLIlC67/JIXCf4TgpWMOt94PwXZ/V+K/Ytjo4Zfk8GKPNe
	8ahkwQCkPo641gjZkhDTB9yhwWAWsc9SmVWRjU4crdCGboUhJw3E+USnLRhaATcaoyEe76ArYJA
	Tar/vUG7zQb+rJVgxiJGNnh9+oX5D+/wopHThg9K5E1ohzBqmBdlQzyQmZopyf7UQ87ZuKX4YAB
	zT6bHQWeGv7EqsnXigsHSZfQM3357cUoxkYkZbsLOMo7FunFJ4YJvwixcgDUE=
X-Google-Smtp-Source: AGHT+IGpGUTfmTjjMZKy2QBCAvJlBUchPXUnicz5vK5hr4yUtWpAevOGzUaVRi/M2J0DORHwlKVGHw==
X-Received: by 2002:a05:6102:c87:b0:5dd:8a21:4abe with SMTP id ada2fe7eead31-5ecb6669206mr2360650137.8.1767886203513;
        Thu, 08 Jan 2026 07:30:03 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec7702eb72sm6524954137.4.2026.01.08.07.30.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:30:03 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ed0a9cbb3fso1094525137.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:30:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXGbaJLC14f9f5BvCMFE5YhgIPV9ZZ5z5zfr7XwRgYj3iLakR5eaJtWQtfQBrY5LLDGqJmzRWNWUVRN@vger.kernel.org
X-Received: by 2002:a05:6102:4412:b0:5db:f352:afbe with SMTP id
 ada2fe7eead31-5ecb5cbb3e6mr2954223137.6.1767886202897; Thu, 08 Jan 2026
 07:30:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:29:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWtq7Pgc5rcbqJFT3BcL-MvHyuVih+g1iASbCSTOOcq0g@mail.gmail.com>
X-Gm-Features: AQt7F2qqUb7XWItwy_vEzBypL3W9hCnaGdamO5-CeWaKe53eXmGweAS7Tn7G13I
Message-ID: <CAMuHMdWtq7Pgc5rcbqJFT3BcL-MvHyuVih+g1iASbCSTOOcq0g@mail.gmail.com>
Subject: Re: [PATCH v3 4/9] dt-bindings: thermal: r9a09g047-tsu: document
 RZ/T2H and RZ/N2H
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs include a
> Temperature Sensor Unit (TSU). The device provides real-time temperature
> measurements for thermal management, utilizing a single dedicated
> channel for temperature sensing.
>
> Compared to the previously supported RZ/G3E, the RZ/T2H and RZ/N2H SoCs
> do not have a reset for the TSU peripheral, and the OTP data is exposed
> via ARM SMC, as opposed to a system register.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

