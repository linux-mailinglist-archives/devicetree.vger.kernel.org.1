Return-Path: <devicetree+bounces-223872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DB1BBE831
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:40:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 865C7347806
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4B92D8783;
	Mon,  6 Oct 2025 15:39:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EF72D839C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765197; cv=none; b=OZuFpzYCIBjOqoT6KRn3lVg6QD4dXhH5+l5v2FfBjICWX8FMbyo1Kz8kLgoM03hCcsixfr9wvvMAWJEMst2SNeFDhqYKyC+pml9IrJ7hvz/GcJfPwLTLUnF6bo6U0j+8V9WRhs9kQM2Oc3h2oxLc17ERkaXjS+VuhdFU0bVbwP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765197; c=relaxed/simple;
	bh=ZGZ6W41F5hyMN9Lz9qV4NeaICUFsf/a81eKCiYeiUgo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I8Qe7aa9RkF/CyBSjjVHrsU7p8fHVhFryspvpCN49lxmG2dijnUNxiic/+wgchoxnRp63yQLgn/cmbVL6h9yg6vFCFeklfh2K3fXblmUgxGE7p2nV9gidila0LeuzCb8dusKrjAnXYdXXqtUB8dZeH5dhpLqbp5rx7iMYX4HCX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-54bbe260539so1977348e0c.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:39:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759765194; x=1760369994;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nhgYL7g+fScggMC2jAjhtmBZb7F0ZaKL6l0wWE2+7hc=;
        b=YNY9RBhVkZrjFlvcGCG/tTYtWIiLXx2tFoCM7qx8IMo//kgsi09JItsFcfKXwNb+9/
         95GzkUqixh7lvyrxcl7UEjMpX1CcSGkDPiRAkKIEvdi0E3Zn2jcU2C3o1Ch4eSNCDNgS
         M2kywZ7KnXJFk7v5WezBPVx8susL5YGVRD7DlzTUfkbpkttgDf5xK9//bO07ofn3DONo
         TVjfV7mHBn8YqwAPG491Dn8CWSYA9wlbHeRUxnKhRfpqh/oI3RmQlvkaR9c6IxxUC+HB
         GFcwqSMxt7McRMRjGnkOjUVFPd7DSV7xqu7cjpzLNL6q/lOa2T46y935vIXWE8ACcp87
         JReA==
X-Forwarded-Encrypted: i=1; AJvYcCWJLqhmzGoULA+qFpaqOJFAgcUjtSlrTfCvrVtaGV6/DV+JWWAad1aXqg9uzi1kPqxVv8ZIEXUZGtLx@vger.kernel.org
X-Gm-Message-State: AOJu0YxNKQIBZOfM7yC38j6ALuQjP934meJWB3G3/hv7ytmRKWlvgdT1
	YdwMpF8dT3DgkNHatTexdYt9rGRGOFjUEL/82eqn+Bsy2w/V8HMtnb1/bIDRozlR
X-Gm-Gg: ASbGncuU+TPHOfUkJ3TqEYsPBspV5A7+H7wsCBf6zYqyUrEJjx2NRmtf4+3o58EC5hR
	pSeXBX1mVqjEec/HpWgpsgnthTrIZ4DdBh/k2pG2hxeAxf3VlyoFhd/pDKUXm7VK33mKo+OBkHC
	SwU1n8rQf68QcI8qZIuJ1uBPAokuAuAVQ1HbIs20DkFzv6lpnrGjnMrHUNhHaVc5suVYkAMYqh7
	/imR+g7n9z01b3qLbE8xofPcDjmaYM6fT0pzm2Mr7KkGsFzk77sGjNGZQ8a1OeyOXv5XaM/Lvah
	1crsHCUlApThvbkuSAG6UQ2/X0HH8xZ7va0N8CPHJx82HaUtT2KCUp5RkxdVvEfcilxb4TQ6TJO
	oPNGckwTcP8MoodHZwVCpG5quhqwuNYPOmasRwr3J1/+Fp0TmEsIDJeXAXHnb+24XrF7SOzgiAO
	FGGpMPjIrKYBp2kp1mcX6QMxJZcrgOdw==
X-Google-Smtp-Source: AGHT+IGu0B8rRNzNhyOHSEjCxte2M3cUXE3hNNUpOCpS4T65sJXoLdvZTif18/Xt6RFJnXmP/GgGOw==
X-Received: by 2002:a05:6122:1812:b0:53f:8fcb:b630 with SMTP id 71dfb90a1353d-5524e8a6bc1mr4495076e0c.4.1759765194017;
        Mon, 06 Oct 2025 08:39:54 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf64c29sm3056850e0c.20.2025.10.06.08.39.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:39:53 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-574d36a8c11so2149566137.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:39:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW6nQgkUu2/gLMUFWzLLFcdp1yJjvF0RbENIkYdrUkEpusw8AY4owI/WHvgWpywD1wUzi7EueLCDk36@vger.kernel.org
X-Received: by 2002:a05:6102:38c9:b0:524:bee7:aea7 with SMTP id
 ada2fe7eead31-5d41d134539mr4203099137.35.1759765192596; Mon, 06 Oct 2025
 08:39:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-18-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-18-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:39:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWKGb_9eigL7CK2F9S1cv+=FAoDTmz5QLS5Q=UHu+ck4A@mail.gmail.com>
X-Gm-Features: AS18NWCJPjSlTYzePnAykrSJHnTf7JO2kF6RhnncH46J4cq1zhMSr-LjoHgPql0
Message-ID: <CAMuHMdWKGb_9eigL7CK2F9S1cv+=FAoDTmz5QLS5Q=UHu+ck4A@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: renesas: v4h: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> V4H boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
> @@ -17,3 +17,8 @@ &rwdt {
>         timeout-sec = <60>;
>         status = "okay";
>  };
> +
> +/* Firmware should reserve it but sadly doesn't */
> +&swdt {
> +       status = "reserved";
> +};

This hunk should be applied to white-hawk-cpu-common.dtsi instead.
I will fix that while applying.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

