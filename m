Return-Path: <devicetree+bounces-249121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 718B6CD962E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:00:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 81D81300C1A5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B9B233D88;
	Tue, 23 Dec 2025 13:00:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A88331235
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494812; cv=none; b=lIaeYL6Jv18v0gF2yQDBMRuLSN47lOR5vNrm1kxnWCjchJRrOPjBrjlhJiZDjST3hmPj8K3fsdeiLrlPZjEW+11HrAYh/G0QtZo+cT782yqS8M2l5etYxGBwLa15Pk5eHV+pqpyazbtbu/XwWrZz26vJkcaZO9p0i60QwJgeiSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494812; c=relaxed/simple;
	bh=/HGcUjd+rldHrGgw+/2LMI43pg6m/SpY71YJmNi45YM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jvf0QrE7CcPObwRO77A4K3rDtqR9MmAkQXRiccIPRZUTxVVqPx4HB8cMxnPlRNZoj0t161u3e1lF40nHt2KV/L8x4wt0bwd69j0kIlnS8sD9AYMU5Pjpb9UloyMDwQdtK1GkGZBaDUYjCd3Fo9tiKr+y2fPlBBDZ9OSh98UtVSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55ad466ad1eso1256036e0c.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766494809; x=1767099609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TTXbUPXuA0xDnhafe/vn+TvF0Mds5OJ7HH8a+9lQG4Q=;
        b=upyfpP70GLTlIwGWHPmLJH8RMEJCKe8akd3XpaoYm7deexxY3reTiTO2jiNLTymTR8
         +Xhni1xosWlode/WPMOxHwn5mvHQXDAwuIZYpJd17sQOH5AaNZGHOUZlpWTRci1wu4IK
         EdKJUmW2ZnE/RJ/qKj5rZzk7WDqKvDLWzg01LzCRJ2FrydYVxTigiF7ElxKWEDULF1xV
         jE6usPHucHd6ZUGLh6EexQmawCONl2J2WFlubqZtX0wRYf51vuD9oyFxq/d/INBAjVPY
         yskw/KDHND5Lt/qMjDesdiaYkKe7KPA5Lx3b4kaNTs/gaVi5JmseTtQ9NVsSnZ/P0Kw8
         8LVQ==
X-Forwarded-Encrypted: i=1; AJvYcCU167WAApKhRyiCvpFEzskarnzM+v02P+V2IXIHqCWvYc1WHOUj1dtVxv8PqEkCtXs+SlOILhlr+xsy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm3w01fN/J464XR2GM7NnK4f5p4ECm/J+pI0VW5uylmUYgMWYA
	iOZ5C83LAw0jCs16sXJqdNYcyWZUVAQmpvI0yD0PV4tMBBZMjXLeAH/bdHFqqbHM
X-Gm-Gg: AY/fxX7kladhnxncatabsVhioLPlqFJ8TJ2RgcSyZpg3Fcz5G7bgX69pqsvVkIe5ySz
	Au7jKGSaZGSqkkDsgqPzpW2a0UVzqN1cFnzI0rBTySSVw5cieWz5y+tJh1WA11SdCCWHluA3PXo
	dTauYx1/TaMpotVT+AQAcy095NTIDTgzf8WJPolh59q9wZ5s1cDLpCFnCZ/oF2bb4g/Yqngs1mv
	fUDOXuBA/PqweyUmtzHkzr/ayR/Z7aa9769rtt+tc4XJ6NtQ3c9y0xwgOHvdbqkK64OF570SUlY
	Dr93Gr9E79b8I2olY2ER5zeTBXTS/NEFv/eYWzisv/+R9/v7+8Z+UxP7SQbjl5CTeYGUDu4C4cx
	UeD2y8OC+s/IRpoTwyR1R2KoVME1SNmeQ/V/jUeIqBwJ976UBP5uzvlB3sUDSbHl4MyQX4aOPL5
	dcj/kdb8W8m7RzPA6OFDBjidsjQROkeAEvQ4qQJrfY3mp3b3mx
X-Google-Smtp-Source: AGHT+IHSpsDk7mOIwO9VBvTOsHgVbih9umoQcmKal7HWVGjX+8l4Y9QIgFefSSQKF04Ztqlr8YugJA==
X-Received: by 2002:a05:6122:883:b0:55b:d85:507a with SMTP id 71dfb90a1353d-5615bd2a12fmr4343368e0c.7.1766494808844;
        Tue, 23 Dec 2025 05:00:08 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d1665f2sm4578444e0c.21.2025.12.23.05.00.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:00:08 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dfb5fcf063so1597930137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:00:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXCqzD8cOfG4rAupMbO1lOTOpEGILCXhOt9bgVnpAzFpH/YwfDT6OX3c7l7A1R91diIuZc0GlFtdr9O@vger.kernel.org
X-Received: by 2002:a05:6102:f92:b0:5de:694:15e0 with SMTP id
 ada2fe7eead31-5eb1a836ae9mr4138531137.45.1766494807481; Tue, 23 Dec 2025
 05:00:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-11-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-11-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 13:59:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW7hVALx0pWb4T1LzwCWYGUAg=rY=fRA7OiKR1ScvD8rA@mail.gmail.com>
X-Gm-Features: AQt7F2rcODnJ7kIz2qCSlRU0AoTajvhbnpqvSDaRnRnKco6ge-a6KDHZReHmBIM
Message-ID: <CAMuHMdW7hVALx0pWb4T1LzwCWYGUAg=rY=fRA7OiKR1ScvD8rA@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: renesas: r8a779a0: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 15 Dec 2025 at 04:48, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Tested-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

