Return-Path: <devicetree+bounces-242818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 276C0C8F8B8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AB01E347520
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8BD6338580;
	Thu, 27 Nov 2025 16:48:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD38337B95
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764262132; cv=none; b=uJ/+jiXOYiG4RZUFuZzYD+RVDA+a2sr2Fv9ibvOMWPmFF/CGzavIwUlkd9UPTYANgmqbjm8Ch2MqWG2oKgE4uw3zgUzgAIEhPz6CzqMycsg6LuaHW6sGDa1TN1cxAdjlzhj8OcOV/QYg/67XJJzSIfhApeeZ14ybpELClesKZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764262132; c=relaxed/simple;
	bh=gELghKW0OPh5kQTULgvSsg4yXlnP4SGeldvFp7Xpo84=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c2VbtQJObKbILmXDAOBCSV6JDzLmOqAHoQiSL1SUEYQaRMuvjoDJ9VPwK5AXsS7NNg4Sr2knPUw0goejYpjV5uORx2+8y/YCoVKd31dW46sC9rmaUtMNtTg7iapaaaTp3zNrj8VlOcL4SMU7pGrP1JQxUvBexZ1pn7W4LXndJLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5deb0b2f685so1407544137.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:48:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764262130; x=1764866930;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCph/oIWs5n+TGDNA3qr0f5pMAAMvVvpBNho4phGpiw=;
        b=hbPxSOxQAqu3gooQfT3TjKg9IfiVPMC5IwR9Bb+0i6cqK4RMzoazDBuxSdRt3xfGhV
         o0M905HQQhjXozYCXLgWI5GD918hxeAAgFFxfA2uSnDHzP9n/TBGQQyIRNPNlnn5RQkE
         c64aipWHUSgaUtEXqySoEYiTBmjPCtVHKMduAOtTHNSpGFyyx8e2IDBP0AE8VPbtlBIZ
         oFAM+LpzxQ9YMKBlscmTg9+6Ug7/G/yqFI/YjdKkCsb+BQyshkXaD0FM6B8QM96Rv3EL
         RM79+2JJ8rq8P5/nu0nZKgz1IXivsxHQ+C0+6kmlfWbxtsUxGc5decr15605u+JYSQmf
         +UWA==
X-Forwarded-Encrypted: i=1; AJvYcCV2DE5eQTrEqgnHUPYdkOC+mUINPsyxrxXoEmCm5E97SVzPx2B+UVOobKSzrsi3qc7pwl2HQaKygTaY@vger.kernel.org
X-Gm-Message-State: AOJu0YwHSXWbu781Phx8/2HQysQsJ3O6yneBCYqxCOH0DXKwQMLh1dWZ
	bOwBze/cfv/Wm6NWwJIj7opdrybdgIIqrFX22o9pfHVf3JyHb5FSHHZiNzFNwyFA
X-Gm-Gg: ASbGncuhm4++GYsNnZjzaqVfZPvCwwDRcqCn5akd47GsBD1F4Lrp6dBIkXnftgJAn7Q
	YTU1ttMyswB/vG/mLdlCmPIxV5ycyD9lHFuWDK/o3a98nGAa7+nR2DQAMkwVQdQ71uysfz5cZDG
	k17JBnF4YBAsJZ2aSBbR09+DS50+rtFQ19r5Xa6Tf2BsflopYgo6ZIubzkoAT6r3HRoY8kZ8GAq
	5p/G2wQfcmrY3bkiiBsR7qK74QItGll8wySLGs6MElrfC+tQl3+EXO9zI4NNFnUh7SmKTlDjxuC
	H2qlgEKFmzArMiVGxwvRMl7je+6hl6fUzifFFOWm8YMUUv8WhHnsM0o4fB7M4pkOJcl79ankHWm
	0ARQ0WAydjB3bBjXT0cwIsyHrv6Gs2d0SFqUX8WSJS1AHlB1zgRwL7VLrrt+sdbGZjvk9f7+epT
	+ylCnGAhSje9WKa7/zXlSKqbxu3QTPjVoZ2U9cXMKfDV4yvHgb
X-Google-Smtp-Source: AGHT+IH7FtoPm3PLd8uo5srX/9zOX18XUhQk1pTpl0dG72vyXaKiVY9LJSiEall6mTkg40gPawjG1A==
X-Received: by 2002:a05:6102:6cb:b0:5de:a2d2:8076 with SMTP id ada2fe7eead31-5e1c37b194amr11888341137.0.1764262129882;
        Thu, 27 Nov 2025 08:48:49 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd6c68141sm816688241.2.2025.11.27.08.48.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 08:48:49 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfaceec8deso718605137.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:48:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXfj3Mxwhih7UvGX8xjuOwmVilHAn/daOP8kHcgp/BjrARtGBJrQe/+DzEELh7570EJ2YN6Aew/MHz+@vger.kernel.org
X-Received: by 2002:a05:6102:6cb:b0:5de:a2d2:8076 with SMTP id
 ada2fe7eead31-5e1c37b194amr11888330137.0.1764262129198; Thu, 27 Nov 2025
 08:48:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251125224533.294235-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125224533.294235-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 17:48:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVtrAYrkBWOB5ztNu0E6zLA15NP65L35GZm2+NrRJBfkA@mail.gmail.com>
X-Gm-Features: AWmQ_bl-oq7Sx1YxashiIqeDJ0PlR3SDIcdbPQbfrp7IQYko7t0M6eRppYVUS-M
Message-ID: <CAMuHMdVtrAYrkBWOB5ztNu0E6zLA15NP65L35GZm2+NrRJBfkA@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: renesas: r9a09g056: Add ICU node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 25 Nov 2025 at 23:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add node for the Interrupt Control Unit IP found on the Renesas
> RZ/V2N SoC, and modify the pinctrl node as its interrupt parent
> is the ICU node.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> @@ -183,12 +183,104 @@ soc: soc {
>                 #size-cells = <2>;
>                 ranges;
>
> +               icu: interrupt-controller@10400000 {
> +                       compatible = "renesas,r9a09g056-icu", "renesas,r9a09g057-icu";

I will drop the fallback compatible while applying.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

