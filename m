Return-Path: <devicetree+bounces-248902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F852CD6713
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69547305D110
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18497302767;
	Mon, 22 Dec 2025 14:54:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A2B2F291A
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766415271; cv=none; b=UXAWLQusH7XHi+c94o7gJof2u9KGIzPDMrgPpsyjSe4xjzIJfjSXse/TJ9KDI2KXEmLl0Mc86yWFLnlXWwR7lSG+gyoP+CvX3EwVw4efHyYY/qKu4Tvpd67OJrMPNJwr0aGR+3I9jG1i5ARbEBjQ0/hgV5o5CVBEkbrmY+FW5mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766415271; c=relaxed/simple;
	bh=W/crAT6LJo4Q3kHr6K4TRNPNZxeeFPpC48n0pdXsNEs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jznPvi88bcgaLTMnCoohj8WvNhoUZru2plj0COpLa7BozzjJEpBuGszdXIx92VG/8c/aFpfAAL1KX18+mFZj8PeuUcq5j5Z7u5UI+6NaUsLFySx2Zf3w8FhQM7uaPmqny1Tp+LeLl6zYADCpYH5nvauaaeqK4GXBxljlX5ndg+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so1348480137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:54:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766415268; x=1767020068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FdTNXu74m6lC+RoCxXIKV4XklNctrQtG+yWlvlzun/Q=;
        b=eyxZlMAHzxsoFQjWtnRwfyMHBtatUmDyjr5qNsahovNM1ixdHon3rFSLAU53os6BDE
         0exGMSA00+18u21lUBvWqhLHEPoR7ahxjTZrDSTzhSIoD55Bnq9lmpJ9A6Vu5xRtT/jq
         KawO4cSXbktEn77oHMN1Qbz8yTQlHl1xC0ZXbWkSHWdUuSWVZ4Uz+36WNsBMIqZFBCaW
         5MokTWs2PWa656p/MTiZ9vuTuUQKjK7dZV/E5Gs74jlcjXlJwkLIeYyjRDiRrb5fHjZD
         qeQp/mHwru2rA9vs3ABpp/MYT/4Zl/RqZ2S/0KVgnXTnKnb9iDM+vR4dmWS0ADGgdqH3
         neGw==
X-Forwarded-Encrypted: i=1; AJvYcCUKxu7lAECGaZp2zhJRgnwWMDTTqYd65Y2JeDCd3/n2OcLwq5XJ8EhBIy6prUrveW1p/xAguNj6oArR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3cF5PLT7Gk45r4uCF17j7ma33pnXbxPI9exvtQ35WkmvaUO5m
	qYjVAaQ+g8ua8XPuL3TuPYSzD7P1SC104IxRw/2Tw4vu7qgqbiJj3EC9jyh5KlEB
X-Gm-Gg: AY/fxX7zuQ+VL/38x7yplhQZjP9ZJ184Tt7OSa/ZmJdRohgqdqLkr4Jx4OZjgU6w72M
	7RoEwM7mhjAPiKlfyKMBL7KEwOdmLmDvr8UZnzzTr/mB3wm2pdlCYTpTXxLFb3eFzHbH5h3HJFC
	7qu0tg7ziTklXtDdo3XIJXOFrwCINEiBRfSyZ6UEy/7WUHA9SChxn3o0MJt/IkUPggXc1UJoUj8
	AremUXuiKjsV4H5FwmULvwEVEVXtTQEgaaifnE83RaCjOR6m1A/EsZH9K7zPXpHKpC5krxpaYRX
	3tlOl29prAyY7sVOLsqNDAjgx5ElYa5zw7BVgvPeMmdf5uyuv8D7miMEOCYrDl3Ou09XISoJHsw
	7yfZnfnRpgr2OkZlOxGLjG5ZPt8G0RMQUv5GEUm8Ne/asSabozK0XvrFKOTXBnJq3js1leZrzur
	26bsBbYUjNckHgmjfJwumVXCc3rDsEPsmBNCwM1nh4J4oJWouT
X-Google-Smtp-Source: AGHT+IFCC2snJTZoYe5REE1jcgr6rDdV7S+l5QxJPRYtiNHqllTPrAU8HvGKfD6m3vC8hhFsqCPMTg==
X-Received: by 2002:a05:6102:3fa6:b0:5dd:b2ee:c6ff with SMTP id ada2fe7eead31-5eb1a61665fmr3039106137.8.1766415268383;
        Mon, 22 Dec 2025 06:54:28 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-943416554absm2855075241.4.2025.12.22.06.54.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:54:28 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dd6fbe50c0so1360039137.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:54:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVKyHbXIHmCkn0a6zsSqjp4kN3gMOL8hFGxut3oqYYlelMMJ+f+zxN4jfaEqlQCXFUfDX0+d0jLGVzw@vger.kernel.org
X-Received: by 2002:a05:6102:2922:b0:59e:68dd:4167 with SMTP id
 ada2fe7eead31-5eb1a6171d7mr3065752137.7.1766415268040; Mon, 22 Dec 2025
 06:54:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com> <20251129185203.380002-4-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251129185203.380002-4-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 15:54:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXPeU=e_Vbr_G=P3UjXgt0EOd3hpZ+pM+jqYoxV=98jJg@mail.gmail.com>
X-Gm-Features: AQt7F2pKNIqVrEWsDr5mq2QiOn6lFfp6Q_VuIAeMjfO6UauwedaSfqmkH0yZxiA
Message-ID: <CAMuHMdXPeU=e_Vbr_G=P3UjXgt0EOd3hpZ+pM+jqYoxV=98jJg@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: r9a09g047e57-smarc: Enable
 rsci{2,4,9} nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 29 Nov 2025 at 19:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Enable device rsci{2,4,9} nodes for the RZ/G3E SMARC EVK.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Rearranged pincrl entries order by port number.
>  * Updated the comments to reflect the board signals.
>  * Added missing pins CTS4N and RTS4N.
>  * rsci2 is guarded by macros SW_SER2_EN and SW_SER0_PMOD.
>  * rsci4 is guarded by macros SW_LCD_EN and SW_SER0_PMOD.
>  * rsci9 is guarded by macro SW_LCD_EN.
>  * Added uart-has-rtscts to rsci4.
>  * Dropped rsci{2,4,9} nodes from renesas-smarc2.dtsi as RZ/G3S does not
>    have RSCI interfaces.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

