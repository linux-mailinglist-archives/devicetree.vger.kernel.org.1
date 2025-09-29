Return-Path: <devicetree+bounces-222464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3347FBA94F1
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9A2BB4E1021
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EB9A301474;
	Mon, 29 Sep 2025 13:19:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B115B2FD7DF
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151976; cv=none; b=ClxgQyfwQ5i4+GvD7ArdcNhkBZM0GvvzZ8POwkeuo2jazjS3R40/UV/SS4K9xedpsxERrM2I894fvR5/q/Eo7urS51vzFBoT2qHujVuFz9jKlWCGmlQzBSQ7KjROFLQK7/+oXG5mvELnUqOOJO1TnJhbAYSfAu6eRIe2O2irDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151976; c=relaxed/simple;
	bh=pEkTaCCZWG70H0lfefieqbAauc9NRZK0uyojo9a7tkM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BChlU33Bj/kMN31PomzO1PAofcDIEGjACcDmlFwRp0MedeXYFq6Mlc3IEwCQ6XDxH0SieRPmsIt6YdXq3h6/PO0NmCTsq20h0Gb/NpzZMNbkdliFvN3FDa2+3GfBPs1WTQhpmpO82V2TCSSIfPSY55Udx9oxg5OrGyGpdd71nuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-54a786ed57cso3611206e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:19:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151973; x=1759756773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ziGjcbX3YxyO9gWW1bZ7XuZg1AZUgMMf9lvpy90fmU=;
        b=s+xuSpAIwR/D/nKx9FVFSJU56QUKqvhWjNWcwWw7faOGjB3KOeYkZHoPHWHYxmMp3J
         Ui4UZBpjvpXsTCWk6QW/gggW+bcH+To69/hoiRTfJ90vln1IvoyrmU6zcmeGj/NT2ABu
         WiKhHlcR2ghhev+3muOaWD992TBbiYtAL+4ihNQ6vI6H5/Lmi7WA4tD28wBNRWLe7s/z
         BRY7/MW2fzXjaRhOfQgIhe54oOrEnFAqaAbJHHW0dqu43mr00Aqt3U7puv6s3BgekdnJ
         DhiJF7TP7YfeA6E3NsQHIamYphO403MZIgyndYTN/sR+8ytfomAYo9vB5iiYjxA1QxzE
         IbiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlhbsOw6oOQarRzApT2+KsMSeKdbmIQRq2o11cV4XPt7u7uLZ5UnwQ9ib531bpHgxswhHXqtWTZT6e@vger.kernel.org
X-Gm-Message-State: AOJu0YwLCMtutOfp7/CFdOm2rXVFHKSJ/lGbsxnu5+OoesWMeKbH+rHB
	LT8sdv5RHEkCc0RVnPwFVlAFI02cXCyx29GXMwBLqxWoZ07IX9xxw4fAjsdj1N27
X-Gm-Gg: ASbGncuBcSL6pQTSkrklm9pa8LZl/kWEM3t+EhVdf32tGGslLbzeGcZQJN7ZNxYqUns
	FLAH7DJDwzMg0qJuZS3m+a1diNxtTNN3zusONbNV2hcTRpPn3BvXzTSdT6fmvPXYoSLMtXi9lcp
	9fML1o9X+O28t+CUfUasUTT0piZOpMAXRGe9H97thr/uT7UV+walDxiVX4Tsn4eVkhWBHImwzdH
	Gdm86bLpG6kdEyxo83+3pnU54l0XkxO240nJFIn4t+MR7U+fVf3uH/s40wp8QkQR1i0I7W84Iym
	HXtMwwH/Kgtf+NG9tpIeNhRjgEB0H5exb/Bgy51G7j5SGFSHgvZFTbo7F8MJ3H3P5GsptBr6/U4
	MCWr3xpqaNVXi2Ic/mvGX69C8Zpkdp2bo3qp1XU/Jth1WLBYuLWQ8jCwTYN10
X-Google-Smtp-Source: AGHT+IEycCnZah5zu4u2mBAWBI2yMsXThH3J9u46D4CV6065Afvvkiwa5+JcE64i4aUwAleYcHGjug==
X-Received: by 2002:a05:6122:7cf:b0:54b:bc2a:f58d with SMTP id 71dfb90a1353d-54bea1b541bmr6384088e0c.3.1759151973320;
        Mon, 29 Sep 2025 06:19:33 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54e293f2583sm608865e0c.7.2025.09.29.06.19.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:19:32 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-92cbfab6c0dso92312241.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:19:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3dj5EdcTWOBbez5PVkaIOgZoEiiCnaMM7IKtGWFL27Iypp28NfOiHh8X0DRWkxIL4YKhhh/OlxsfA@vger.kernel.org
X-Received: by 2002:a05:6102:1165:b0:5ae:f88:23eb with SMTP id
 ada2fe7eead31-5ae0f882444mr4172157137.30.1759151972263; Mon, 29 Sep 2025
 06:19:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-24-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-24-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:19:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWYkge-itUd0P=twQMRcOq-Q-7JipN2b5Pisw1eq+h80A@mail.gmail.com>
X-Gm-Features: AS18NWDYOYpwpVM9qncESnIW4aPmEZm9f9uNFviw27svpxW8G9fKGF__7TmdRu0
Message-ID: <CAMuHMdWYkge-itUd0P=twQMRcOq-Q-7JipN2b5Pisw1eq+h80A@mail.gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: renesas: draak: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> Draak boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
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

