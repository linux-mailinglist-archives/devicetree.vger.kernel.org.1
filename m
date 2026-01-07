Return-Path: <devicetree+bounces-252450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7A7CFF46B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1371534F30BC
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D01D38A2A0;
	Wed,  7 Jan 2026 16:37:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DCF36214A
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803875; cv=none; b=evriCig+9mod+acTGo1bLvb6okAl6Jlj7wJ7BdNlZteaTtbIqK7NLWVouQbU1/gbcHbynkxA9frGmkuj3hzCT9OXzlrcbfYyNnFjNFjRrwzHrKSeAOKJDMeGpgqE+34fPf5bZpLmKKz1POKnhf7+nAmKSBGQaPIGhBPKFFnVQRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803875; c=relaxed/simple;
	bh=lUkjukYyPvno8s3BJtqS71STl5+uBWJ649WSJU0Z1ms=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m8bm7kkdZGKBE7WCI7ad6h/5nAcbCx8Qh52y8EHmiPzzvZGho+oYPAH0c5LX+Wshdr5Lib5qPV1a0oMcSJo9M9/EPVSXFV0YvvPUeaglRqwPa5oXPO1dx9Ak0L5fo8hu+jeVx4B9hEJVe4f9RmJAYflBVkqpBiKU6nV7MYklaIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5634feea416so356709e0c.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:37:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803865; x=1768408665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UosJZ8iJR6qWLllsBRVQrPIUMjEsIPO/Cc8wz2jLzzw=;
        b=jKcmhwnwJfWGLRsj/hj5CW4/hAwm12L78CHo1vLbGedu4ZZWIM+vF1lNDpY/9yhFlL
         LHgoJ5jiKoUPBFmAPH7ULDGaMDc63MCwhAMnDiS//sDhXlW8ZqFDSBXH7r0ucqLhzLMM
         7YUcpLqEVGXK/hpmfhqrsaC7ICy0ztfhTqDSw4L3Uj04rvqXu4k338MFiKFxuZzhkRcc
         GeZQ7tdeqKOi4OmwDYesQgWo7DCQ5/JdfGz5GM5UvMnvKM5YGdOgOROI7NrEtOcc0cAi
         hlulwK78eB+OAlwH0oOkIsghPfrYDuz4qT4dR1J1oY12WJkpZlI7RR81wywQ0W/OIXX3
         Fh5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQWRw7NOelF/CiXmBh8zhS1cQqIWDUxeqZnH8V+X369/IhaC9uK1MC11zfinhm4IGV2cE/eQfRAeSo@vger.kernel.org
X-Gm-Message-State: AOJu0YwlnTuO0ucMxOSNGBWLGtGdB60/tdlUCao6Zi0nERrAQmxH+T1Y
	ZnCC47DXW0nDBJbtjpyKw4QPIZKVpVePnGf20lE7yaQ3leKALXKYkG491H8wVuLS
X-Gm-Gg: AY/fxX6i23SsCvzZ0kSeSrffQfqgzC7/EBRgFqJE+1Oi8s5OHfRAwML/llpYUHsGfSO
	GGq94rhBKLFb/iYAQG09NchHive9YlOBDPI2Jsc+5uGR6jrG54BlQly/zTMHAm95CRbeLUaQmZc
	x/ev4aXcFEEvV64cuqHqUYrz190+5UYMi3i/2QldpUBbxgotBfIhNeYBTbsYlAeGyr7updP4F7u
	0k3vq+ZyMMoT0kf1scZjlcz8V08h8/UVUon8hMi19LaSdgVk1TPF7p3cfrsHzGKHKLv297IdZFC
	ST7tp434x678EfNyepfyNhX1icZVW0Ec32OY09CzOH30NIASt+sURTxkLgby+CX7hog2l788EpZ
	DGzGmJajcBPoJQpzN94O5tsBhoS4xkHQ70xDPJjDDJow613KWu8LlU9MefM88V/Pm+F+H0yFI3X
	Gfah5J1LYWURNeLWrfK6SAMiWRToyawDd67Lu8f5gI4NohYgip
X-Google-Smtp-Source: AGHT+IGt3wOdm6YaYriH8P+C0XmXl2eEzbAQUUdjHIDHX/Tbf6AZMGA3/qJEe7SJKQ91Rb0+ns3v+A==
X-Received: by 2002:a05:6122:4885:b0:559:79d8:27a5 with SMTP id 71dfb90a1353d-5634735ce03mr1203763e0c.0.1767803865560;
        Wed, 07 Jan 2026 08:37:45 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634d9162a4sm1670798e0c.15.2026.01.07.08.37.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 08:37:45 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ec8781f5c9so587428137.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:37:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXug2My+UydRubuo/fkMDkM08e14EuCXnW0331hbXBZ/9DZc2PMRez5tM28A/L102YHIgkcTslSWxMp@vger.kernel.org
X-Received: by 2002:a05:6102:9d4:b0:5dd:b2ee:4423 with SMTP id
 ada2fe7eead31-5ecb1e904bamr1400550137.11.1767803863532; Wed, 07 Jan 2026
 08:37:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251230115814.53536-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251230115814.53536-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 17:37:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com>
X-Gm-Features: AQt7F2p4l0yE7BHZfa9XEcOswGFhJAJZ7XFevRuwZFhhiVQ4xn01o825gjpFphg
Message-ID: <CAMuHMdX5_TkFmgqv29Nddo4bZzEWQrL87kwqTdiLwfq+qMtsXg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] can: rcar_canfd: Add RZ/T2H support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The CAN-FD IP on the RZ/T2H SoC is similar to R-Car Gen4, but differs in
> the AFLPN and CFTML bits and supports two channels with eight interrupts.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

However, compared to other SoCs, CFDCnNCFG.NSJW[6:0] has:

    0x00: Setting prohibited

Perhaps this is a documentation issue, as the same limitation was
dropped in RZ/V2H Hardware User Manual Rev.1.30?
Linux also has no can_bittiming_const.sjw_min field.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

