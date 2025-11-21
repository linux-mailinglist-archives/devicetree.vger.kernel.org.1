Return-Path: <devicetree+bounces-241164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E0399C7A70D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2392C368B02
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A5B30AAB7;
	Fri, 21 Nov 2025 15:01:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3032D47E2
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737268; cv=none; b=duHAkVlvr0jyyjjEjt1B0oa9s230OZLgcwzbXHakaJnB6xTsaKoFDMmBPvPqVGNJLvldXezewe+zGKB9Pa+SIayzskrr9Z73SefLF66lP59qAqn/iKTpLbAxlyD90sVSG5yCyZH8dQK+/XRa8XzFpOXu61i/W/at5w3MiWpiKtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737268; c=relaxed/simple;
	bh=/i7nXXYJ/S35e1DDoqCsekWeTret9cPBtAsRNgYtitk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mXMTkxjwN40Tbakc4XIJ6oGdOBN+7iICLjA4AvRSa8ZdSD04fPgkvbrmF3QDd5pHojE/lpTmgZwHEqaEATSWfWO+fpWsZCgVuKp5JukW6dPMQyeAVTNSUxezO4IIYMZ/xvLlYjHQKe3h3TMQm3HXRwZwXuJfapRxHw3YkEMWtno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29845b06dd2so26509745ad.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:01:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737265; x=1764342065;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1emL/2BfYYpJgkMipS6IyfAGtl5eimxGIDnmxM+aDY=;
        b=Pj4mrkSm5eKZTlo1ozUSGyeIMyfpOLVSpD8Nk5HImQoJQ2gG9L18Ybbko+ZifF17k8
         lGM4qedoN1XgH47bvNE9CgkjqXz5CMlyG+XbNnIQ3PGxVxSI8Mfz3r28kjmneB6tr9vn
         aZbPtJlUEDa0f9jmtIICZjrLzytcEWqiQmn577wsp1Shg2Y60sTs9AwKX+zfH4YKOYws
         BidT+7mJfHGNRjuFj0nU69/fyNXRpjkf9+r1+Li9GVhy9riFe+nspxrIx2KQteWovmm2
         Y/vO7+cpQYTRL3VADt5bkegFSXIOuXw1gzGbYtJujwNL4svTNQx3bKQfGthtS/Uw6m0e
         z9+g==
X-Forwarded-Encrypted: i=1; AJvYcCUgfPBYL8Wl8oXeLkz9OauSHLY7N1xH5t5p48YZb0MlD5j0pSpGKTvhlBa3EsIMoLwc3T+qkjyclABk@vger.kernel.org
X-Gm-Message-State: AOJu0YxfzmveGpBV2+8V+x4tsIyvEmf+UPrDC1Ya/uUvjJQ0AQtW2n7S
	0+OhUb973KP94+tOQAGLaxaVKcU2M9tZ8jSLLy5zend454ExfLNw07UIgwhL1dKp
X-Gm-Gg: ASbGncv8DhawuxzHVanuJEbNH0GGScqmBmfqIs4thDAbXa9cHA2vuqalTeqyDI/u70p
	J5n37Eppi2S2VpkjV0ro/q5r5rhY11Fi/LHpuHyLNJVQLDLd28hoIz6rTlorid2//tavJRPQPsI
	+wy+vC13mR/W8AvrkebvisxuMjjHsbvj3NmHdizXNlwRE12PHB+DnYDXzFrkvaUCPzydoVF+mp7
	MV3fH8w4GlXOGEEkoIlgBYuE0CtxbYkQxG+BKdEzLfUMMpL9ZFX4sKxS5VHwQNyUR2bOiMve8vY
	Lsz4/KeXZnIrOL/Uy1xX8OFvpyyHFMpQnF3HHSIdSFHwcSxLhGhTKnY5rPwvmGrRpDFI5F2miYx
	GktIXKzlO2DtsbfQKmZtVzZ5D8/WGQ1iAF1bGLQoHlYCJHPQkIhgCYCninQIsgVkI9ztvWmfaDS
	c+vWo0nCMubnbAsvm8c7HSoZgfJZeYAbo2lN3Av1AqsP+ZOjGaJrBl
X-Google-Smtp-Source: AGHT+IHNNd2RJXcx1Yj+oySvpOR6Cp3MCdBj0idEpct4bzm1A7f7H6KxKwzD98EqI6UZlPh+24LzGw==
X-Received: by 2002:a17:903:b86:b0:295:4d97:8503 with SMTP id d9443c01a7336-29b6c575180mr35386665ad.30.1763737263509;
        Fri, 21 Nov 2025 07:01:03 -0800 (PST)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b1584c7sm59397915ad.44.2025.11.21.07.01.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 07:01:03 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-29845b06dd2so26509315ad.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:01:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZcxyZeGNGZhbyKGNKsyBaTxQxtnLn7dm4vWWNC0jzlVlLv4yI39wxjI5SEsA0PygalGF5gqqfXZ9J@vger.kernel.org
X-Received: by 2002:a05:6102:2914:b0:5d3:fecb:e4e8 with SMTP id
 ada2fe7eead31-5e1de13755dmr737744137.5.1763736838284; Fri, 21 Nov 2025
 06:53:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-4-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-4-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 15:53:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVBoRtm8ULLfUK_cVECfx47tRArNHFyYD0C+B7MM9Mneg@mail.gmail.com>
X-Gm-Features: AWmQ_bleERgqdogMt-KCM4u2kemacgqay0PsYPcAY6PFTObuXA-J-VDhL_sWOrI
Message-ID: <CAMuHMdVBoRtm8ULLfUK_cVECfx47tRArNHFyYD0C+B7MM9Mneg@mail.gmail.com>
Subject: Re: [PATCH v3 03/13] serial: sh-sci: Drop extra lines
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Shorten the number lines in sci_init_clocks() by fitting the error
> messages within an 100-character length limit.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

