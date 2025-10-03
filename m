Return-Path: <devicetree+bounces-223498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B160BB5FEF
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 08:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A4E43C667E
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 06:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E98221B195;
	Fri,  3 Oct 2025 06:51:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D031F63CD
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 06:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759474265; cv=none; b=ELfJNMJ/zlAAwZW7vztSPp6xes8E5BNuAPdBtIcI55DnxzA6vsn4uzTSwGCP+/Y9p0a36ipbHNREzwEIsqXwiv/aCPVcn76bTcfzQBDLW8m4OVEhhOxN41dMutDokZhtP9OjI9g0nVY8j09EvrHAY8w0nUVBVwGqzujqMur91yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759474265; c=relaxed/simple;
	bh=dcVJSHkjM/b+CmIXXZsGHyQxX5J+FZ3NLyDZIV/u+Ak=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=siirV1AuNbBaRUPPfLCpXaIuik6VliWrw155sEzeTV2xyxZmtr4xqv/vvp+AVH1g4ZB+jxcwTA1qQ517qt+MEV634WvUmCUhvfR4E3iIZrrbPzUiV+YqGJytXRJEFN0W+u8yM8BLHY/lbis1A9nbnLd3+8xPJfrLOTbELoLVVqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5838680e242so661664137.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 23:51:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759474261; x=1760079061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7QYI64cW+XHmj+sby6MngC+206bn5fsu3IzSbvpr/6s=;
        b=EXnLwO3mGri2NoONT4MSUJir94b8K40tsfeL0yhFgYabZwGT7/vAwdIoubFwXpJ9En
         WJB5T/NOwm/6Nx0dtI5V8zjNIpZ6j9gI4JmCk+TOZXtB2ndHM03dXk3gzgz0++VhF/nt
         NsmkrPwLv14AL/aDi9bWFfQOGSnh0wL9DL/18ngs/pCiDMimEb1cCsmd2sRjC94IhV98
         XOOmWo6cGgfayIyLYtF6sUhRDc5cVPwm1tipP+PUws51YkMG8mA1cnYAOZHGiRaJkCkh
         E/VmgT0Xu+7nRO8j/L8i1vdM6n0tieZe4FqrXeyawM9dDb88J+ud1F+pW0SqUq+v2n1R
         turA==
X-Forwarded-Encrypted: i=1; AJvYcCUkLsMLuR+e6bvJ6O6XHUW7KBklD5M3zuz0Np6vWimWAzTSqwDwU2ZWiDr0jDCWRZOkGE+tZuqI+eL5@vger.kernel.org
X-Gm-Message-State: AOJu0YxZbrs+DFl4ylv5wkxU3BdOi+I/OwOeBWRj2SbVNaTGnEPKfd1P
	/u8A01phexsU7IeF6JNRBp+jyffTMy3aNpEmACiI9CpI/HyO+XWp41Oh9v/VrVb4CwM=
X-Gm-Gg: ASbGnctjhx04XoVvsMKE76/M++YONXqQmQk8GjDSjP/FniNFvN4/6VR59EcnN1PnX1n
	CT/Z+v1lV0GODzElzKS7URhWVPoiTF8TZ+i5Blbto12qnEkT/Ksdud1dI+POrex+aWff/1JW9F5
	cuGfhe+gTamiNRrx9ZBAS9QvUaZmdEgFnJke6TdXmuBOyc/n3JgSWPC26N1C2X3K1WhNmi47aiV
	HmO5Wmuocvec2YAbVn/pvp4oGJdDNRlx8map3C0Rs883yX4SF3DQp2CehnDMS58us4Vnpby76CV
	S4+LGm8R3eHyHm0ULqjQtyRmU33RjvPvWePphrVjpiwvIFNl/AYzvyKay/DnIkXnZiPSBmpZ/Od
	Tx3sxjFjTpcxxFXQ9pgpnAjS6iiFip7z7H5kvtszI9iYsnN1p6wpWWeQRxXGVH8ckzn1Y+xI+eu
	ylNp2k/BQ2lDtMg9NRe+w=
X-Google-Smtp-Source: AGHT+IG6l5AJCiTgiY+wjWiJTdt93oZ37J+3cnzCcyUUzCoTHXysAhcdu4pkjBaVy6E06+S4/7XagQ==
X-Received: by 2002:a05:6102:5a87:b0:521:27b:bea4 with SMTP id ada2fe7eead31-5d41cfd5af0mr523811137.6.1759474261055;
        Thu, 02 Oct 2025 23:51:01 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf64c4asm1016541e0c.21.2025.10.02.23.50.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 23:50:59 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-574d36a8c11so722773137.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 23:50:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWVXvShZ0xQmTrE25bX7LsoJ04JshnQBcfNQum/5jqxXINa0hPWfU0HrFhWgWyPpcex/YXUuMeNSCV5@vger.kernel.org
X-Received: by 2002:a67:e70f:0:b0:4c5:1c2e:79f5 with SMTP id
 ada2fe7eead31-5d41d0e7a0dmr687881137.16.1759474259285; Thu, 02 Oct 2025
 23:50:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002142639.17082-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251002142639.17082-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 3 Oct 2025 08:50:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUZke-=yvKTYdj_K2iRrtiQvw2_papQr92p7qFfMYt_qg@mail.gmail.com>
X-Gm-Features: AS18NWB3eHLy8T1jBKvTcs-a-FuOQsD2BAEeM1FO7vparrzr8v4t9PBKVzDwMXY
Message-ID: <CAMuHMdUZke-=yvKTYdj_K2iRrtiQvw2_papQr92p7qFfMYt_qg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: physmap: add 'clocks' and 'power-domains'
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 2 Oct 2025 at 16:26, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Physmap supports minimal PM since commit 0bc448b49e8a017e ("mtd: maps:
> physmap: Add minimal Runtime PM support"), so support it also when used
> in DT configurations.
>
> Suggested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

