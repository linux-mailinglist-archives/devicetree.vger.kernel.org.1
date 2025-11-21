Return-Path: <devicetree+bounces-241165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B59C7A737
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 118844F49C4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5576434EF19;
	Fri, 21 Nov 2025 15:01:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DB22D47E2
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737306; cv=none; b=YnTaH/B8OGhS/r8moXYHFhvhiMd3prpjElZ8vZ4ILADCA6NhQXRkHsmpW6Rymsd4rBkhZYeI/Z93r4wytLu/n+9Dixr7nRiHZANh2yTEwDmg3H8RIhjgU1FjBmDk3T1ORGQwsQQoc7kbY1kgZ2ZR59OktGM5HkY2rM9tut3mZ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737306; c=relaxed/simple;
	bh=vI3VJBqMB6UVFPD9Ba7gDnFi+751P10wK1XAYBA0uLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hnorioFeWjv+lyeBI//1DME1zEI4aM4o9nHuARX2enrIp/fNz7v3ycVV56QNECUD+DixMQ18nTDScs4dPiyG+MSYSQRqBVnlqhnUCiywKlAy6HJ4H/OmAtpq1Eauzpz28QVGcr1Wz4qXp9qUolL7CtIRl752ep5sGVa7trPBBoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b22d3b39fso617403e0c.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737303; x=1764342103;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Hu9/ZOjaCVFQuFvvSTQPc5EwpvfeC5sctnt4yJdwpo=;
        b=wE+RXOwocwhCZ71Jo746zBVQRbux+aompa1Pq5Mq81SGlE7cTXM4km3pZ501d95bXx
         W5fmTwrffui3vQtdMNYIJlED2dxUmzBeASIYc/cIk12JF1NINDOQQyAUKDbk06rHKSaa
         J0LHPh0ne3rLYl7/F3L2euebq76wzCqimq7uu2b+X5a6DnMfg3dCXWYevVDjhXZUxJEY
         Rsb8NEM2P2BQUDtDjE2AMw3B4o/dMGXzbI8fcN1oth2X7mFrnQRHSiKv9VeKsh1shScp
         fWK0PbXgD1cTEOKq2Ok25ZlKjelnNpVSJ8XQ9euq5Fo/lN2TtOIuJqFH4i5yOCxibG2L
         dRvA==
X-Forwarded-Encrypted: i=1; AJvYcCUWN2YThOSt4XwVehALS3N38jFZqlnW1pd+vtxr6CCVwY7vkndt7GG62AIFJ4w2m4GFxM0DcqOZraZN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu16SF8mrZE4er2POGFgFVoApJdFLhBjeHU2eQLItblr1J7elF
	59AJ3Wp/Z3xxjAIeDpQ3OPCQB2Mhrm7Aq0RRUhkuyKNm/6ArHaw7xbcePHQV9A9L
X-Gm-Gg: ASbGncuxxaARMXN/pigurJwyO/F1oksOKBGL+Ox8Usb8ogDMNBtdg/xPIOPuPmATfxL
	AG2+wmgVH7QNiLJwNL//p0dlAhkrRSWko0YbTzFLt8RNsp/ax+EjktH8z5hcqackBUZotZrCsRl
	6cRYsKs0QFPaSppI3e7q1L/HCz7ntBVe3JLZ99hpNxKpm2/FrlTf9ZmIoExKKgsjnHNLZSaWC5L
	3pKPIIbjGdNRL6hVZxIm7RMEgfprHCFarpgihhQS9dqkWK/Y05Bt+F644Ez2F3eqtRVppdKgm1S
	adGhlTLODg2aR8Gzh/6P75VdBd+Y6wQtEadmTopseX7Ae+pOn1vSEQZFFTk+SjoxI9yd6G5qkh6
	F1WIJBfNEY5WVjhQ9NRH7Vy3nLBU8Y3d29Rxg7E7/a4eR5+5KpuAKio0szNqnQtZyqZUwmDE77b
	cs+mHvuhRpCvQyxAmvASMHox1koMDMKdhlDfNjr/OgJykK56qojiZC
X-Google-Smtp-Source: AGHT+IFZ2BGJmyeN2TvG4EWOagWmLveTxNUI4tNdM8Lt+8zsnimByQpFNlwzFqZlDFoYrdEd/Ucrsg==
X-Received: by 2002:a05:6122:3d0d:b0:557:16bd:4e52 with SMTP id 71dfb90a1353d-55b8d6c599emr786940e0c.6.1763737294148;
        Fri, 21 Nov 2025 07:01:34 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7d462fsm2514362e0c.21.2025.11.21.07.01.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 07:01:33 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5dfc6be7df3so740147137.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:01:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWKkkoMvK8s1j3OwDyHvLXxASSz++hvI5mPpJFhXuUnadUvchihZSsepSMWC2NxEd5f/WO+a4kDA1uO@vger.kernel.org
X-Received: by 2002:a05:6102:644a:b0:5d5:f6ae:38ce with SMTP id
 ada2fe7eead31-5e1de41851dmr731948137.45.1763737292917; Fri, 21 Nov 2025
 07:01:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-7-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-7-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 16:01:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXEvF1Yj3UQdiOGSUS5XvebTGgxNYL6aXO=eot4pVWTfQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkASQlYZ1Tl7IpB3SsrSPHfV8TVI0-GSyVXBwHUiWQ3H1THbLLQ3yOuRbE
Message-ID: <CAMuHMdXEvF1Yj3UQdiOGSUS5XvebTGgxNYL6aXO=eot4pVWTfQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/13] serial: sh-sci: Use devm_reset_control_array_get_exclusive()
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
> Replace devm_*_get_exclusive()->devm_*_array_get_exclusive() to support
> existing SoCs along with RZ/G3E as RZ/G3E has 2 resets.
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

