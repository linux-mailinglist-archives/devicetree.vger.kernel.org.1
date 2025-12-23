Return-Path: <devicetree+bounces-249149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F9CD980E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 86F0B3002EB9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B713F2741B6;
	Tue, 23 Dec 2025 13:53:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509229D281
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497985; cv=none; b=TGbVwwrEAp44HjNNqRGPp9J+i+fRlTwN7V3S4sTyzEP/o5SIDRP+ghiXtjwUOxM6/k3gYzlhDfqniqlGo8wZ7fDoQh6Oh5kzQCU4FSQD9mhppBaKYYRpRTADX9B/t/5NUpdAqqQ2BI3kA+yVU5AbV1BhS27TIamCfLuF3L9R5d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497985; c=relaxed/simple;
	bh=U4SfYmuMnXUUFIkmYEIYImOxbbZck0BsbU1+cFVeHuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=goJpH1w0ze+4vtQ44ek25EsDk0POBSqxtCMmeV0jlxEyifCeaC5F/j95tVUlqcOy4PQeNAEkwldCFHSQBQD1wUHWf7ZekszVrFrJCrqSr8S+/DDgYD0SHIgPYylr/o1xS/lKnHqK3QMNOigNU8/Qdji6uFR7vQiO19RhytZTf/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64b791b5584so7151283a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:53:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766497982; x=1767102782;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FRN28FWPMAx4S3xSEvODZwJug4RA84MF55jfYOksySo=;
        b=qqQa52UqI0AQYN43DSvhROAclTqabWhOyA/U1oMX70BBGa0QZzXX2Nve30rQlrLfwa
         xZhr5J+S1Ng7I+apD/MmcSjGz2pYpwQ0RsYYV2qfWzRGDKdZ9+LwgSh8/8V54aZ/8Ikh
         g9IwoBBl+R1SwvvPa/fzY+4yxolYadt/yz2niUQPd/vZYBoI2soCDbR7jtGBrfE/f7rg
         9/v0rALzOP3ezWx/2FeVJ7NJEJE688ICVWXMhzAMMESJjrfpubGh0QNK2gIijN/khkkY
         1OmUAUQ0sdtcx1b/ir8IlrtILR9yv+BCHQjWAOCAO5s2XtlG4KPN657F+HfLxTciYfI2
         F//w==
X-Forwarded-Encrypted: i=1; AJvYcCV4KuQjQ+M4cpigzR5IFCbNqxHvaGsUVVKaLQAlcrkZhqmHcbwScgM/K+mJzRTw0ehQ0MAtwVTjGjnN@vger.kernel.org
X-Gm-Message-State: AOJu0YzppqUr/h7hmEFI78xUdwyt4HUBiiVrErUC4ux8V12y7muF0CqU
	X3ODjM17x57RYEzTg9HVEnt3qo5K3tx2mPgzY7uq3kbaFIaBK6cnDk5z3+QAHJ2JTbI=
X-Gm-Gg: AY/fxX5sb/aaIm96glBzr6MQDgCUQhmEsOhxRTvHw4Pkt59zJRb3x6WowY0J56hjje8
	OdBw0JcIlF+OdT489BuztlIB5V1hYbZ7IrKAwIf79z0OkmU4Q/k3VCS0yN3SUOjygx32zuELfU6
	WinyZqCXODrPFYNND7XSI9s2MnGqB2c2ooP3eEuYdzE8PsVz/+rJ9Iwe4aJCWNzZLqwS8bBvUVL
	6ZKbx/FX0vlvdHkLz5yOPOJWho2shul6LAI55/8RpiHsRhTJHHmSb3tbGEkB+sUm/1bA+2qO7eZ
	rjB9Jw9SG1v1JHqRwo3Jv50jldmFAxgkPDrHZYFIh753qsAfjA8ubYhio7pPqTSIiPIZlaGO7sH
	hvMnE2A+P1gufkWgHA9rU2HrHCDjF84ICTF2wj35j+KkX1k4/aRgR47qG6tswnhFd15EH3KA9sN
	c+dlqHIRgDzFL+NwPaenT4mcB3iF+2/lyg93WNKRiHKRQYuPDo
X-Google-Smtp-Source: AGHT+IEAQ4R7E48L8peFjucQd89EL/zkejq3HkhwyTTM2Pp9nwjNksDjWL3GhwOGs+S+CUa+xIBeIQ==
X-Received: by 2002:a17:906:9f92:b0:b73:880a:fde8 with SMTP id a640c23a62f3a-b8036f0a3e8mr1651893566b.12.1766497982149;
        Tue, 23 Dec 2025 05:53:02 -0800 (PST)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b910601c7sm13768433a12.14.2025.12.23.05.52.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:52:58 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so7205277a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:52:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW6xBT4UWpS20BI7nyV6JN8Tz7UOcsg7x7VIlxbuGsq7XxY1KwvlthfQklDMtmqvIXVM2NDFusE5lAC@vger.kernel.org
X-Received: by 2002:a05:6402:3596:b0:64d:2889:cf42 with SMTP id
 4fb4d7f45d1cf-64d2889d183mr8234029a12.2.1766497977682; Tue, 23 Dec 2025
 05:52:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-7-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-7-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:52:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXwi-0DcCRgsGat0tzBu-UOpd6Vws8Dny5zDyWwTuJ+3Q@mail.gmail.com>
X-Gm-Features: AQt7F2oADPw68F4-oj_Q3CgG6voCKpe7dhfvSuflJPl-MkOYCou6cY57D35QDac
Message-ID: <CAMuHMdXwi-0DcCRgsGat0tzBu-UOpd6Vws8Dny5zDyWwTuJ+3Q@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: renesas: r9a09g087: add DMAC support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Dec 2025 at 13:50, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/N2H (R9A09G087) SoC has three instances of the DMAC IP.
>
> Add support for them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

