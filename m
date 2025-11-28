Return-Path: <devicetree+bounces-242909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C4768C9124D
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 72E98347A3D
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D4D2D5932;
	Fri, 28 Nov 2025 08:29:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBA115278E
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764318549; cv=none; b=Yod23gtxuggZ651mr4aYr0C8U5t8zN9+TSamlPu6uW6vwWk14dA/KKvgAAQOiC0CSb8WZ7p4OLWuqjspIVfKcV7yiY88LqA0pByCIeQbGurn1+NQ5lOGxALI7qC0A2rU43vmu0b84AuGvKIy4dULXp9J0p5yBfFsGSWZgGOB8wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764318549; c=relaxed/simple;
	bh=0ZgCTv/Geux3x3SUFX8YOIFnK7oyYlxxmU4d1i7olsY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b9Kg6QLHKwPzx94zT+GEjkrKDHypdYwt5E0Qft/YPATDTqMXhpwGzxZSfdAqi78/GtuALAGWdmY1MI2ZZG/nO6KNuIaBxuaRh5nLgsnslxGAhx8Awjm4d7e19uyZseye0AiXlV+fILU948By/b3cD+IZNOW5jiXaqjhgkGVnxcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b265f5122so420245e0c.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:29:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764318546; x=1764923346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JdpMn32zBbLdSwv++ygUci+KXGTrW9TQWy7WAC04eCA=;
        b=LuJ2XD6pgimgpygOYtI4yHQdWoGORtPBMAxwo96QHfoBqrlGRH/oTeXIO22C/Rc9ox
         iI7bsQZNitnWbXhzMmnaWqGlSOzKs+wgpL9Eq0mWqidoC9HpMDl/St01xIgE7jDm8A6r
         L2MAT22Yx2TVeNUzw2dcHTEbvAm8hCsSQfMkiGL/5O0SXR66mhNmgrN6GFLpAi+YVfEg
         EehKCcBCExQ5/O10Ki11UHuPtRwgcVfa4PiyZ9NykRGFqvXaNhKMnutpf6I5T6cSh+7n
         kSdZs7S2MadWQ+LuSojvdSumZKii7EICH60tYH5ZY83YgcXl9vw3Rn0R9WOtuHdj+iag
         nCgg==
X-Forwarded-Encrypted: i=1; AJvYcCUAoB0FcE9MPdInjGu8CFapOU0eoj3NdHNu9COZydF18wjN8h15sTLZNICpMovtUrCARp9Y1CWH7cEk@vger.kernel.org
X-Gm-Message-State: AOJu0YxiroA6hYlP84umKfhyxiLQ2SAX42FXwU/L41bWREbf63inVaaT
	K/n+mqNlcVzYB05rvPTZOqklHnshe0h0cB2aWdHuIaA5fVaNh3uRaCaED+6Iav/3
X-Gm-Gg: ASbGncs8DrsnpkceHdc1/W6Wri1zcBMKr6vQK/g4nwS9XuQDOBrcq78MITWsPmxnjJ1
	VtjGyt1j0wrtFKr9f8oLJgD8/J+wyfNZq62gn6UsCgwfF3FW3Dko7US4GeBO0dlfHJntnak8dsl
	XER8x4U1SQebFXX6V1KYzeACDfTpkBdcKMZCN/GPziHsA2dhsC0DhNg4rcZlD7BSPr1B32xa7Gb
	DVrF6btj2fn00ZPXUi/dI44FaIjYkynA9YnjhnY/1A28uDS7gyLQxVhMAgwTccyQDaklCo4XbpT
	Y0EpPJ+zmSLhSKnJTjWrQaacwzRIpwSleAqozmi/joTEO+wg8p2DJO/YbnT4zik1g+C33cV+wWm
	oQNr1ZyG30yYfXriMy7U6g14kpf+1AXQAXGfORx1XF0Fupa2dJ0Dbm8aWl4eGtAUAeq2lvzVpxh
	bg8HRANQLIlrT7p0azI4AqTWZqPHmtuI9XmJigj9X6CDpi0Itt
X-Google-Smtp-Source: AGHT+IErV35UNkF6udSMMSh5QA1ZbMRPKLy9u/HAZmls9Y8UCOkGMQZwjqThJIcrxcuf2GqldiMVWA==
X-Received: by 2002:a05:6122:c81:b0:54a:1e96:e958 with SMTP id 71dfb90a1353d-55b8d5aa4a2mr8741714e0c.0.1764318546540;
        Fri, 28 Nov 2025 00:29:06 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf4e1d580sm1521338e0c.1.2025.11.28.00.29.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 00:29:06 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5dbd9c7e468so607966137.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:29:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWAsiehm8kIDkXZvr/Y/U+9hsG5wI92qAHzr8bJIY7vz5AJ0K5N+TqEqjAORB9hylAhhH74WI2RIzU7@vger.kernel.org
X-Received: by 2002:a05:6102:510d:b0:5df:a914:bbdf with SMTP id
 ada2fe7eead31-5e1de2fdf3amr8043647137.27.1764318545497; Fri, 28 Nov 2025
 00:29:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251125224533.294235-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125224533.294235-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 09:28:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV+zGd5vjw7i3tah_TEsC9K2QtV-SshTdfZHt0y4fhkXw@mail.gmail.com>
X-Gm-Features: AWmQ_blxOjK2K0cDtOGsZALn7AfonTpGtKH-CtNYMSf-HQs578XzjUSEy8mUZ4I
Message-ID: <CAMuHMdV+zGd5vjw7i3tah_TEsC9K2QtV-SshTdfZHt0y4fhkXw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Add NMI
 wakeup button support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 23:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for the NMI connected user pushbutton on the RZ/V2N EVK.
> The button is wired to the SoC NMI input and can be used to wake the
> system from low-power states.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

