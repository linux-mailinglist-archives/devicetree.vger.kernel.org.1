Return-Path: <devicetree+bounces-223873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F3BBE837
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CDCD1897C64
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B8C2D738B;
	Mon,  6 Oct 2025 15:40:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41C0283FE5
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765228; cv=none; b=uNj9jXOiB9n9Eeg5HnNlrE+cSt2jDeNBYp7HJQ3G2Dx3l13i4qVgd6vNmbhSRBS6mooPjtVK4l3M7X+VU4ZbZoWs1fZgoFB5K4dkFVvgBdXjBl7cy2dXyvxVpxWHQ75CZFQDR7ODJdruZVHwegNLf2oI5IDP4oGFUkabaMFC8Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765228; c=relaxed/simple;
	bh=0w1ok/EtSBxIWpCinjD6MCuITSeNqV4MZrLf0tJK3BU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Csb3w9OUwoe5tfDMDVPy28rIDIrDTI4/WOmnHFKuqqzC4fGbhZqpBIBdQH3Gltlin6/qpZifkgT7TMmupRF/RP2n4g2fxLNyqJb9Ux+SZvv+oZ41rjlmEXGYjwq8d91wN3TlqY0ZP9mtV3NaeNFKKVaMY+nTTLEUdqVBrEcBgaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-89019079fbeso1186518241.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759765225; x=1760370025;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZNZA4DBYRhj4ZPJ7vYe/0KXzQRusoZfXTcALhEPPko=;
        b=cs/HRyyxzZpBOL1LixuhjsKE9NX0e8Bt8yah4F9I1aFjmj8Kt4W+jxrs5z6c+ZEJzW
         TzJb1T2Al01Di1f/brhw2Y1sO3uutgAxuuSRRE7F+6eP1B3q5aVrUUiCYXw3HApiLsqn
         RfqCoeAgNU6xsycL0Q31ZQHMLnvsSh7aX80Gy8mqWInQZsxSGoyqt389w+Wxet0e1E9K
         XoLddPTLPpk61yvA2ozkz2tx3ne4WKQtCxIXwsrY+gvlTTyGgv1uvv8J8eSLguVQzq7B
         /39UTazWOQYuvgYzJ1QaHEqF5R8nqi+9KzLRmMvIFE+exbVVzyBBBWxUhn1Yx3xjx+/W
         qL4g==
X-Forwarded-Encrypted: i=1; AJvYcCU383hKQXiBhN+WoH9P2gIJsrumgDYuF4rLutrI1jkoR5FauvTWKRz5I/sfXwMc+phnlbQDNFulVQVo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9HMvd+f2tzgIs/7Z0SadPaqJyj9bXRMNWmh4k2EP462L3p42f
	jwtkV1DqfxytAu6NPzbxQYzMNbAEHeYR/S++uzQ4U/InOVh49bzNgyspMKDmYoWa
X-Gm-Gg: ASbGncv2vfQR/OSd81uGbDBjYZaB6mxc3lKj/i09KdOLvJInRXLSa6u26J0aNKG0Z21
	0HjSQxtJ5qNNWudFF41Ko1pjVMJoEH9aJRTloN3NyEcIaZT2Vl00SA40unlAiLTrZTurVRPXpAK
	sYfgs29X24p5uWyps0zzB/E9Z6sBk+wwZiVLowrkmbiq7pAZ+4CL6Y+Mp/VVVrzKP6drn+Isf/1
	4/9FwbZEUc2JKWfjS6GABFWZ62uBkuU8Jcfrdyrn4PccgHG+2orZJ48bYdKW44hZ11iClXgatPt
	XuB6Tmw+nKdESAyIuZl2EdbW53GfisvP9NYSyib4Rq7EBPOnHu1YxPl/Lx/duioqYFYihcJWFLk
	pw3b+ydWM66E0MxyRpqXO2WvnKCs/rV9pp2j4wo9GvAVqus8OIiV/wrR/d+AmAOPX1CVkVK+4mH
	dogsDtO3aF4XDH362MRGZ1As4=
X-Google-Smtp-Source: AGHT+IHXlYUp/Oed8Io+jYILrR5gI663KMEGJXkqDRRGZcyptUbUxxxzu3PIccfyTSuoEa3jpmTy6w==
X-Received: by 2002:a05:6102:5086:b0:51f:66fc:53b8 with SMTP id ada2fe7eead31-5d41d10c1e6mr4259374137.25.1759765225103;
        Mon, 06 Oct 2025 08:40:25 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d39aed4asm79506137.9.2025.10.06.08.40.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:40:24 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-54a8f6a2d80so1831706e0c.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:40:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWrQFEu2QO8YbsiVyvxM5l+hbRI8/NVK5uswUfkWVpr4nvnbGu9uV6VHFPvtavJFsyhb4bQ2IpsNpE7@vger.kernel.org
X-Received: by 2002:a05:6122:32d4:b0:54c:da0:f708 with SMTP id
 71dfb90a1353d-5524ea54c8dmr4392841e0c.9.1759765224703; Mon, 06 Oct 2025
 08:40:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-20-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-20-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:40:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUTsX7=sPHXoWVuFtXmr_-cJGu2g=jyEm1aHk7113_tYQ@mail.gmail.com>
X-Gm-Features: AS18NWAAoQ3nGAXRtFcEFxkFUwakmeeJVLltROoxiixXKP7GESz5G5hOJakm7es
Message-ID: <CAMuHMdUTsX7=sPHXoWVuFtXmr_-cJGu2g=jyEm1aHk7113_tYQ@mail.gmail.com>
Subject: Re: [PATCH 9/9] arm64: dts: renesas: gray-hawk: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> V4M Gray-Hawk boards. Sadly, it doesn't mark the node as reserved, so
> this is added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

