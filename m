Return-Path: <devicetree+bounces-252830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6CD02FA7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10B9931256C8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E97C44B660;
	Thu,  8 Jan 2026 13:04:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBC428FDC
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767877494; cv=none; b=fJcF7aGSEt2ValAIkStiyXyqwcReIOWDm9oDSgUL6Gyobqkuiyy5gjTwhnW3AwRUAr7u6YO+RYlX4AzT76HkLbd7D7zTwtKC/3my+FAFR8AFhlkeaFj9cWe/n0cEWaYeGiWi9xLiA3NJpb0uIgmT3wM0vN2SqDpS9mSbbxXnMfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767877494; c=relaxed/simple;
	bh=UZBP9LltUKCgdKghtTpFSSv5shldPOHJBJ+GUwodsig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u3GcRuSNdxq+X+VEungIVjFBjCykvgcqbl3qggiebzvyrzMCvGdo4kE7v4AMQaXNUz5ou9RJ7JXodqeNQzXOBaM3khDLHWLMOLye9dTq3PerbVH4dCwZbRppBGSjolgE49MefFqv6xwjieJ6+2y0DXoV9M+rW/cnlzKoozkfVpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56021b53e9eso924925e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:04:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767877492; x=1768482292;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbirfKArtvPXfcrolWVTN+mUFNZXS0ov5PTdW+8bcGw=;
        b=hYNgJNTfhMLXrggK2IT+bns8AJqX8rMlpcnVUdFY2KzG8EDuaqSctkl6+5wmgZ5wof
         0/wIR2CoCy1scWSsagH9xN/cJ8UuutRPqUJnzB8ThQMb1VgyqzZ8OoJeV4QS1kzvKtHA
         WcP7V77MEuVlav7F7oQJ4Oi8BuZasdr6/JGAy1RYcXL9ZxoG44s8rlfvD2wYMJTSzrwY
         Pn36/jXfF2cPGh7rs28KsSUI3V4OXO6jWFoLKlT4vbcmB7ZckTRDZs9LUnBEKjZhIW9I
         iiBS+/W9mkjB1xQiJIalKNlJ+ZlEuoth7EdJiB7MdLswbXCuT+qqAnDnw0zKXvZHANl4
         eCkA==
X-Forwarded-Encrypted: i=1; AJvYcCWMK8rPkL3bS2iFKT1anvv2bfi6sMsJqYeHD+45ZgQ/zjZTayYPSJs+3si1+siDHHjRStYDH70qiVxF@vger.kernel.org
X-Gm-Message-State: AOJu0YzdRh8D2vkaMFA1ZkDX04TCEE1reIL6lf41BzEaCTXBPyCFoM2c
	NpfoYBdKNBakZFBp0dBSKDiu886GDc3roGe/RjZv5Tnjd/Y2wcB+jxzD1IFU9CN5
X-Gm-Gg: AY/fxX4MiUAN6lXs6eq0A/KS0RVlad2vBqcxOn22hbOGuIVtlouym2iNaK5+EL4gZBP
	t0/Y5F5b5atFMr4WlnUewWSx/npwz0WE8pkui8bB/ikMtIsyK00UztK/kvHP07aPJ7VNVDLLzc5
	oLiLGd4ZPri3E7spH9PZchEI2H6012s2PZgJy8reHvr1MOnzc+bt8IPPbA+W6zxaV8+tzSu433f
	Uaj4WTGq75ZLKqzIIXJxJZr3YSGtrZijHnjaqti5DQNqnw+lq4piyAJoM1wTLukt08bpPoxAXVF
	ZAHTbpDv9WoN1dBnpY+4Wu6JD/grUyWwm0vzoT7I3UyJqibrfSJJV1nuvIJ+AIKQddZb6cH7I9Y
	Sj+QvzTS5NnOb2ntgY1/P10lgDUeoRWfkViSckvTIaPHB2WdeRvmJIwZHnBoaHmXvwwfoheBR64
	+pmnZBRO0s13zPmzcTADP1nHBuESZspF0CFQR4CmR587v1yLrdGGtMn9BwEDimJgE=
X-Google-Smtp-Source: AGHT+IGZQiI4Gq+yMySIKmhGKXqVXhgkiWAQqjNuZhBkLzACA7ArwKY0L9khkSLUeLmbs+KgvHY3wg==
X-Received: by 2002:a05:6122:312a:b0:55b:7494:1736 with SMTP id 71dfb90a1353d-56347fcbea8mr1687481e0c.14.1767877491842;
        Thu, 08 Jan 2026 05:04:51 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a378csm5732331241.9.2026.01.08.05.04.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:04:51 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-55b26332196so956635e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:04:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWeyJGHyWwfMWc5b/cv/TWoyx57rfxuRkwCU0HmS4SwEDrxUoi3kh8BC/jad9oboaWaYGoKmrMr63Hn@vger.kernel.org
X-Received: by 2002:a05:6122:2210:b0:55e:76ed:e6c with SMTP id
 71dfb90a1353d-56347d4b3cemr2104979e0c.7.1767877491037; Thu, 08 Jan 2026
 05:04:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222164238.156985-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251222164238.156985-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251222164238.156985-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 14:04:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVaYnFnu3Z0F1xCYkCRXRapaSfnyQEjWZjXMN2P-V=xfA@mail.gmail.com>
X-Gm-Features: AQt7F2r2vN35MH7pxD4ru9ycuOzZa4x7pBwoQoSqGriaeLsEyjncMZxDZnkFNRI
Message-ID: <CAMuHMdVaYnFnu3Z0F1xCYkCRXRapaSfnyQEjWZjXMN2P-V=xfA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g057: Add RSCI nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Dec 2025 at 17:42, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add RSCI nodes to RZ/V2H(P) ("R9A09G057") SoC DTSI.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -948,6 +948,226 @@ i2c8: i2c@11c01000 {
>                         status = "disabled";
>                 };
>
> +               rsci0: serial@12800c00 {

I will move these up (between rspi2 and i2c0) while applying, to
preserve sort order (by unit address, but grouped per type).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

