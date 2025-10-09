Return-Path: <devicetree+bounces-225035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8E2BC9BB2
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:18:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17C2E420021
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4538918859B;
	Thu,  9 Oct 2025 15:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF824C81
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023118; cv=none; b=Jx/dUaOLylK6RhKJgk8VlipRAqOFyLY4WwPff9ZWOMMlgWsttCB9jTRGA7YHZoJ19f6/Q22EZxMqRI6RF2pct6Pq3OJGfuPIR3SJ0BqMgVdKV71fKT8Klwl3nO4fy2mVVrpcpxy1fgJU6G8LBhcAKJrYyP2ullSgHzHriuj38mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023118; c=relaxed/simple;
	bh=k8sKIXVbebvapbPiAiig6INW0PFARtsSFfEQsQ5e2yE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TZXkDcEFMR6UALxh/UKrLbuaqQfKTezL7/ds5c2ot6ybiZo/iMj9ZtleMBFQSNjeggseiXJqcCKBlBui+OROaqPIIA0hxa1mAAkre5OoSHdkuhQiVzjHyQZrK78mlc04dRA3puJvqa28aW/QpdpeZ/ZpTfrwJQ0NSiCKe0ybkbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-54a98bcdedeso193316e0c.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760023115; x=1760627915;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+v4U7mwsla1m2LNZvOQWh16q48gBGZybSJTeno9Yj/A=;
        b=wBc0GKMx2HRcX+PJePLNM9Nn7rryCjobNEV5MiGtbof9gOvhq+jhM1o2oC60FlHnA5
         FRmtRo42jyDUmbOoMgCI00ngB1V+Peg/KNAqq4hjA9F6K2kAESu0+/qCBywhalPIm0jV
         XV3MXFuJRLbMVb0aFbEIaYDkz40qhVR8YVR/v23kGxbqDKa5P7nrH0fyJO3uFpKfXE8w
         Z+RwrYB2DhtWfnsYAH8NAPQ1JGQpxnjbPlgRMbUzXQbkrnQxVXzdY2kxc6r8ucNWrsMB
         TvsLa0Go8QsuMAm7JfGT3kH2qwlfPsYQecuuw69oCdp+07BpbXuzzlbA+tx98Vjs+gYT
         EPhw==
X-Forwarded-Encrypted: i=1; AJvYcCWjxtRWzgpPkw9Dqs8XOWyexKHlroxgsc3o3777HBZk+Mj1Bkn46OZRsJqGd9qGmtInKwrcwsNWkuY0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6E5/XksDd/HknLIuUzLBAI6GBB/xSELAcZdGZYgKtcr8HenFP
	U5wxmmYUaASIm7jCXKVtGIG44iT5XEBl1/7GQnESaqW/kdXPn/be94TPfQvdAJXQ
X-Gm-Gg: ASbGnctKfGiEEW8aVic2w8IlIY9569dq+6ZRYxXHqxfvbL1oqbopQyeQTfKQgD7o5rH
	L225D3N4/oH1iVOnEk3TBxLT3vOnTWS1qssQq5tONMlP8IhbqJgiv2mpSmUwpV5G2JITqVoaNbw
	CZVAqJq5rlKHATWBOWPeMRwI6OIosH40JSbUqJf8Xz7V8x5aucF4LkJu+KwzaRL/Ou43oNQtbK7
	AmMuiy6GZMWvwsRXXH/R3AxPfqWrkd3RyQo/ZTbYReaNwgeBiSvK7fy3oVvAlcHD977cxmRiUmb
	6unQlaA5RSbh9yFIoH0x03gI1ml+qDpthpFuiphkSjeQyz0j7rVxmRYIdhCp30dN73VFEewuFw5
	2qknP8f4AEJ4h5OJFpK3jkJ0q71PZtYVZVAUhS1ybo1atevVvFcjYRFTOMV0/lmecaZioZ4I51A
	sxXcq4Q/u5Hu6c8mueNzWNdjhWoFqncw==
X-Google-Smtp-Source: AGHT+IFt4Mr5M/mDpIW/YutwSbAik7R54xnXPFsrNWufxLir5qyZvMqF8xuj83EWm6Zxfplc/1nlAg==
X-Received: by 2002:a05:6122:45aa:b0:54c:da0:f711 with SMTP id 71dfb90a1353d-554b8bec72cmr3131847e0c.7.1760023115387;
        Thu, 09 Oct 2025 08:18:35 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf3e0fcsm5393105e0c.17.2025.10.09.08.18.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 08:18:34 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-8c0e2d1efd5so335747241.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:18:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU4803RYf5rGr+4hZo+79duAw8GbJDljXAbQVFfkiehe4hiOps+XB09xzGdgdcrXQULLa8kNfKATSWv@vger.kernel.org
X-Received: by 2002:a05:6102:6202:20b0:5d5:f3c4:bda1 with SMTP id
 ada2fe7eead31-5d5f3c4c16dmr1008026137.28.1760023114539; Thu, 09 Oct 2025
 08:18:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923161709.3110-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250923161709.3110-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 17:18:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+0iL0fjMM+_vPxsOmPXW72X0_=X2A=ZA9gRf367UB1Q@mail.gmail.com>
X-Gm-Features: AS18NWAsf3LSZ9p7awAoyWuAhPYszSm_a94Q--QmnePbABWHS8PoBRWo4ys5kmI
Message-ID: <CAMuHMdU+0iL0fjMM+_vPxsOmPXW72X0_=X2A=ZA9gRf367UB1Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: eagle-function-expansion: add eMMC support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Sept 2025 at 18:17, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Add pinmuxing and configuration of the MMC-capable SDHI instance to make
> use of the eMMC.
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

