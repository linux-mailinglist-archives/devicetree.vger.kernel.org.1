Return-Path: <devicetree+bounces-252431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2FACFF165
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF0A832EB835
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8AF362157;
	Wed,  7 Jan 2026 16:03:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com [209.85.221.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C468E318BA0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767801784; cv=none; b=D3EeJXG/M+4xLOLBREuF60k3hGJrgohOYse5Jlv/mtTnzIxx4cPLXfgcWEjHADfo0d1HNbLteIbiMHFySYrWAgpj1jUKoXrLyAMwTNVWXM9RsA92i3QvreaSMquWZuN4EgRMpqhnCZJB8xIH63+Eu530B81S5c/3DHXt4lLe/Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767801784; c=relaxed/simple;
	bh=9lIABe66qX5B3ULWKN7dRGrBhHh5eVyA9SZWghC2qpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RdzIbwW05XneQFn7Sr8bbwQvw0sCypAFvPHtuqAxCHQsgJUHT9Su/W3qzTtltwjGIrsTMHuAfMioUWUsM4WJsPCs4SJzC2J0sNO8gR6iPjozFtzCcDQes2FLir1NB5oW4B6A3rR9uQcPFHTxNZeASD7lDP67mQXAx9A2pkK5r5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f194.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so746045e0c.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:02:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767801770; x=1768406570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8hrZyBiZ9cPjNxWra6rK3FeRhusMqxhmxYkDFplK87w=;
        b=VHTOEheBT24CQf1zkxhDdbK7qPHdACrAlshRwuRnpjM2uTvd8ET83n3/AzeJ57dvSc
         ZPgO8MucQcoi+Vrs4GCb2bP+qDiEgY++Mkl9VzQBbkRZ9eoYrwDujLGDZBrh2RAznn0n
         4Krz/wTducGfwYQXOFzUh+atvqoApBzaCJ0np3bysqa3FKaQrFv4EUJJu6aAHRzvVo6b
         MG4IrDDOdrn9HQJTtcEKULZS7DuN9UDhqCZ6fwbnD9ruFoqDJSgAm5hndqTF2QjqhQza
         psrwsJVIel6ZzB+rtNQ0fr2bg9UMrUh1/isYRv9wM+WeOjqcSc2ud3xr2jldQHiKBduS
         Bjmw==
X-Forwarded-Encrypted: i=1; AJvYcCV58H9KDLT8TUYYnk+ZOebBmY5xe+q/N36dpJq+kfHDPUMxpMtMrXXGATpN2tUDWk+3jN45tePzBc4K@vger.kernel.org
X-Gm-Message-State: AOJu0YwazYWUrlSCqsPjHGOZF+YMl++9pH4k8y2PIeCiI0/VLCMk7ZrA
	1OVSNwdram2UtTEuhKjXN+jnB7iYey6SR0EPiyAyFhMuzcLE6B6YEPPpxHGTGmTD1e0=
X-Gm-Gg: AY/fxX5jMe8PSgSW6nkI4Y2Vg9oBMf5rLVTFl0TQ+Tt3oFkEoeORmoODlx5S3dyZpuA
	IEwHJyohuth2cohbdfCALIQ6cmq5Po2QOq3tbbMTXdqQfd3U+DDFLeRc4KOI6m4q9IzUSBsjFdI
	UGd9rYxF01uxAF/OtgUIshwEVG8fG8H+g/z8xtfcxm+tNd/bwxPnXsEFSz2G1tKM77935HIZw0B
	QzGcCLtI3dFFv4acghtqujeAydO8/1zFKDWFcScngYCC8jyJM6isRchrTioA/Sf3FS5c5Z+TsBK
	B6yOAh0ybQ+L2rFYGVYUFkkCAB9zQfXN1PbwqjpRcLK6hAfEE0oCtdsNUyYtBfoy/aINfa2NNxC
	uHayOkxr3YwUkINLhNBV+RWSG32MmHm+kz5oPg3Y0CAM1xUp071HmtfVZMt5/xI76ByEwlZIrsf
	M99S8axLNxPUlffC9cwOUU9YEOfIW1SV1R8aG/KOU/Y/TAuyfg5urc
X-Google-Smtp-Source: AGHT+IF/5ocOx/wv5yz4XXwFB98cmyJGxZ0pEOXiuoOAcjuA4RlVwH2jcnRZwQgoEvDjuHiVNL6ETQ==
X-Received: by 2002:a05:6122:1d41:b0:559:6b7f:b0f4 with SMTP id 71dfb90a1353d-5634637da35mr1250419e0c.5.1767801765320;
        Wed, 07 Jan 2026 08:02:45 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea753sm3416040e0c.4.2026.01.07.08.02.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 08:02:44 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so745989e0c.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:02:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMd5She6tiFrvJLDIVefII77UpKOS4LipBvH8Qd+Zqk4pvW6DrLbcK+M5HHwsSvI+N7aqlWKuVAaVd@vger.kernel.org
X-Received: by 2002:a05:6122:3383:b0:55e:82c3:e1fb with SMTP id
 71dfb90a1353d-563466b1471mr1147392e0c.10.1767801764769; Wed, 07 Jan 2026
 08:02:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251230115814.53536-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251230115814.53536-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 17:02:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVQeO6NmrCESnKZkpHWLN6CzrWR-q3VNW7gYMePUP37ig@mail.gmail.com>
X-Gm-Features: AQt7F2q12M6ufG9O3zwEr8RO6qBXtKdp_ZqxDQ3r9v7omAoAEJN2ATl2yMiroJE
Message-ID: <CAMuHMdVQeO6NmrCESnKZkpHWLN6CzrWR-q3VNW7gYMePUP37ig@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: can: renesas,rcar-canfd: Document
 RZ/V2H(P) and RZ/V2N SoCs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document CANFD IP found on the Renesas RZ/V2H(P) (R9A09G057) and RZ/V2N
> (R9A09G056) SoCs. The CANFD IP on these SoCs are identical to that found
> on the RZ/G3E (R9A09G047) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

After downloading RZ/V2H Hardware User Manual Rev.1.30, and noticing
CFDCnNCFG.NSJW = 0 is no longer prohibited:

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

