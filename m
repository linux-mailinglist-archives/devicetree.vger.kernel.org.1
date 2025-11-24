Return-Path: <devicetree+bounces-241672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FFAC80D98
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:51:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3EBD3436C5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D6230B517;
	Mon, 24 Nov 2025 13:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F87A30B511
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992303; cv=none; b=Th8YYJpX7gVmMJ2p0li43IgpEqtzuGLh23DHXjZ5wkM4C/ge9jMQODV47MYDPht6MbVvBJWb+e7M71yY4vAocZRRUg9ADKrvRXJuuJz1XSeaKvxEvwx2TkvzCtvLUxNi7U6zu87SVmrgskjO85AZ50Jw0r0XP7jyIIn6D70PXOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992303; c=relaxed/simple;
	bh=L4xbkeE7UPG5KnFGPHerRul+9Nt17tb8BTLuMDQbiCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NF0ydgs22k7bS3WmRa4JNz69cfPsmG/yYb+azCpOQfEsDeZcD91Dw4gnAB0tGRap5+JVpZCfORb1ooVz1Zzu7SW/iO7r1t3wfY/KDZ3XZsM/COyG0qmPEzu/umE0qvGZMypLwhaEHpDsfdA0R+GUFFXSxpV/Sqr7YYt+LlA5hH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93754419e10so2512740241.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:51:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763992300; x=1764597100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MfH7R9idAwqHoO5PfKbF+ncopsgX2gAzjEnJxQnpKE=;
        b=uPavlbawgWjf6NZVuccuLGhRGEEkY0l+B3jt0BeTuDOU3vfjOg0BczA51OQK6U8iRv
         f705urK2jwwgd+/BpA2C0dnXKnDun+NUWgwCFtfiar3nFAddGWFzneQRkZec+Tm/WwF0
         zbFpny3YWqhjvuDWdjhivJYu5pb3TTUmR8X9f8DZrGJNO3GjHFGkIl6NciqzJpQuPC8h
         M+asYlvcuaCUVyVBkjb9rRzL60h3waJaFdBkv1Zvd4wj9lYGO57fiyBkh7S0DGHI6ELe
         795Njs9S/6zwkng08wTt+/6YUFJyBIVrIdV7voO2jIQ0DKdS7OfBwV9oLVuwtHyVTyxn
         XMLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiLyc9xbots9q7HQDx5FKIgphKRSdHgNHW1huG/8x33ui/Yll/B/Jr4lyg7za0u7Z+17UmdY4olXIy@vger.kernel.org
X-Gm-Message-State: AOJu0YxGF0xg6tlwJIEqQwOrZmniXBp9KKfpc27CiYGUd0b9K9mANYtp
	fSdRtloPOL99SZ0obZzIZA4k8rvIBMj+dxz4C/563d8v5Mp2mUL+SI78CPvA4OkK
X-Gm-Gg: ASbGncuBQfpiCvgZ00SQYQOWLj4vp0twdgiCX9DiL4iQlOP0mx1952t5sKXHravX+FP
	qzCV0SLUBI+N0iv2UtQby4tPOTEXKjYkL+xLs+/ckeO9GHoOuZWcutccUtw2VTefYi0ISprAvyE
	fmQxyf/UyDP0dbutr/SfZez4U1fdQwhsUoCBkOerMYXjwPWaYJhcMaG81ccc6oG0qMy1GZc7ULh
	VdFSlHphjYAmTHdfA+8ef4IoFd+wUpWrEiPLDhZryOTYjkqQNJkK7pMsM6QCGOlD+svAzs/j85Y
	PyZIUHo3ONlJz8ETBNDEkBej2WJtlFezFBmmPyiwDmrxzGllsViECfVJF1ZzYHQBMKZ31EPSigQ
	P+kB7X+DtSd9TDVRtTLxkhzTatbq5yFK85cEzsEPxFop99PG+H0fg4km8q2ftiDwJ+rlqAgymzG
	hGguRUMx4psCARRKQcLmvxaJMd1BCqkfrAnMObqjZa35wxNObD
X-Google-Smtp-Source: AGHT+IEtMl7Ks9UkXQfz9QU9WCWoyt/w+ljerLGSBq4fl7elg7feSx+y6A4N+1XGZdQ3rHB3zG0Qbg==
X-Received: by 2002:a05:6102:3047:b0:5db:cfb2:e60e with SMTP id ada2fe7eead31-5e1de491719mr3490538137.44.1763992300485;
        Mon, 24 Nov 2025 05:51:40 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c561c4c2asm5312938241.2.2025.11.24.05.51.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:51:39 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9354425df5cso2349366241.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:51:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBvNyHmBNCyufj2ffUpWjLwaH/f+dLRAwAJlRJbnTPig2Smbz9u++m2Hlf2FCkVfesvJQcSXity119@vger.kernel.org
X-Received: by 2002:a05:6102:5a8f:b0:5df:b8a2:6ae8 with SMTP id
 ada2fe7eead31-5e1de494836mr3871925137.45.1763992298716; Mon, 24 Nov 2025
 05:51:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251119110505.100253-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251119110505.100253-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 14:51:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU9QGjAgJ-nFhkwwz+dQkLGeNfOESiqFJ28SMsjp0yy4A@mail.gmail.com>
X-Gm-Features: AWmQ_bmPbp3WmYY3bjONnytlO4-zQK26WKCMV2xGP8kqV-xAXNaBMUHNkMBzRLA
Message-ID: <CAMuHMdU9QGjAgJ-nFhkwwz+dQkLGeNfOESiqFJ28SMsjp0yy4A@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: renesas: r9a09g057: Add USB3 PHY/Host nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 12:05, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add USB3 PHY/Host nodes to RZ/V2H(P) ("R9A09G057") SoC DTSI.
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

