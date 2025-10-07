Return-Path: <devicetree+bounces-223974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB3DBBFE30
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 03:03:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C48F83C2754
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 01:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD261E8331;
	Tue,  7 Oct 2025 01:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="X7/3C8PH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EEF1DB95E
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 01:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759798991; cv=none; b=Aa69qQM8aljcZtw1cekt/1EJ/7RGkqEe+OlDW33SF7sszBGZh4jq7C43scPUq4N83bVC9a9JEBqTZApocRLQjqUkS1R0tBSqvvubXVwluYV95ZczphJyOnEChveKx3veCVqf0vrS5K/Ya2A5uR0jwE7ZVA2WEJz5NXmRGTBdPkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759798991; c=relaxed/simple;
	bh=eBIOQd4QaXOsZ3ZFa/G0uBWNq68iI+2RMm0FI9CBzIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FI0u7cwKIFMN+V6ZDWV75ViDoq4vkGQAKSEPxLeVK2/ij1EoPChelfzglfM6gH1Ta2lqMwuXjQEXZRi1VPOxutaoVCMYLjhuUuC+824nxgG2DYLSrChBz2L29h0zigJgHT+PmfGHqXMaLmE64NRXYUHtnV0LtEcI94tq9vQX1J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=X7/3C8PH; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-63497c2a27dso6894476d50.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 18:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1759798987; x=1760403787; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eBIOQd4QaXOsZ3ZFa/G0uBWNq68iI+2RMm0FI9CBzIs=;
        b=X7/3C8PHnUzlDkgsLtvRE8Zse10Stue/QfUkqVEzZK9pRdxqbXzGEcEWoRbHPT2zek
         +bumE00nX++XU0dh0mV9nnAtVKizLCHXdGmDaX/taSVGr5WZaCtHwg1cO7YFn0Wj+f4V
         6U4NauhAr/XkLItJm6zZfbrw4ChTKnZn6pfwgzH1UbZrZy6NPlT+YeHumiwRf/Vl6Gtc
         K6aEECpICnj480KHHWH+hxG2dvKZbB6TxQP1POzJbuOB5V1m0lp+hB7uu7AfQ5a2rqix
         06W/iTcdL4y+a8G9DeJI8O3CWmdbtnYhGEhZZcUXfO/nI+tCrv4OBcJjzU1fsQWOHlH6
         Cylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798987; x=1760403787;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBIOQd4QaXOsZ3ZFa/G0uBWNq68iI+2RMm0FI9CBzIs=;
        b=b7j0GtPsu7hfuMNeO4UZmP6a7LYCXBCV14khMTOes/ThOWf/Vyz0uuW+7DiKwcFfch
         UnrHk8hF+0XnYgwzOO/7IWDxyxon4EjbBQckO1iIw9OsFSh9rbzDdqT6QfdRY7+nYH0U
         zOyh/Jb0RCuggmy59snIEVXhD4XRii5FbfH0Ly/6Gi4Qs2ZFBcRMvhwrKseX6d61SD1t
         1p7Q40U8ZcyX2sXjlYfdxaK5NW3sep5sv8VQUJn2rvs5SJF7IEYSlCMeGr8NrnGH1zLL
         xdPEQJ1SevuZh7j9Ef9FDtuEswJpvOmyLMkP6DU9sf9ihx4RQk/JG4w1XeSJbj5x50ub
         BrSg==
X-Forwarded-Encrypted: i=1; AJvYcCU0oX4qMcI/H4znYHHjhD5fFuw02bpeDLmPaRC/gU3H2eeSvRvZ7vwuNna8yWGmZXnSfOYf5pzY8SP3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8o6R2mL7W562ekUkAkkcN72w81awPyKb5wrrPrYbMF40NaicC
	4sBg/JEzjvHwvT5FliD0KT5oOj4U7m1Iz3PDWbKNcLim85E3HIpi6meigX/IqbxMH8V5xWXbUvw
	b1jeLENWyyOjnnSpdOvXUZGGI8EIFdEt5Zw4LDaNH7g==
X-Gm-Gg: ASbGncsEucMKcBUaDLFTzhg46ACClvBIFvWvh5VVujwfWAUxHf9FNvUwbukfhDETtbm
	35RsxK64rGTMU70Oq9f06EbEm9YJbZO9sKo4wHXNs5OTRffwrx2O64MlEmbUiP8ye5XaYXGmoil
	uQtviWT7J8iUbjDbhJSIYugZDxOZyp45GfIW/UWp36y6Jr39XgF50ncRLPFV1ZCnMTL5/ny5ZXz
	mKW/mmMuhgnwyVgLkivOeiKSZWa9Cc=
X-Google-Smtp-Source: AGHT+IHPqXX/Ku++G51JKZF3VapXuzBNkhQUq1V5rRTsgDMDDHFMevDekfr/eOl8a0tgu7pm4weDxaifuaPSOIzI9qE=
X-Received: by 2002:a05:690c:6e8e:b0:772:3578:2ec5 with SMTP id
 00721157ae682-77f942c2c16mr273915407b3.0.1759798987633; Mon, 06 Oct 2025
 18:03:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-tt-bh-dts-v2-0-ed90dc4b3e22@oss.tenstorrent.com>
In-Reply-To: <20251006-tt-bh-dts-v2-0-ed90dc4b3e22@oss.tenstorrent.com>
From: Joel Stanley <jms@tenstorrent.com>
Date: Tue, 7 Oct 2025 11:32:51 +1030
X-Gm-Features: AS18NWBn3AFicAlvLl3lNmePYkN8YXI8pNMvhAKDlltC4-SqQFZLgr1SznNw2gc
Message-ID: <CAM3sHeA2HUpcFJ7LOw1XfjJjLA+A5KsnqFoHe03bv1wHJ_zoMA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] RISC-V: Add support for Tenstorrent Blackhole SoC
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Anup Patel <anup@brainfault.org>, Arnd Bergmann <arnd@arndb.de>, 
	Joel Stanley <joel@jms.id.au>, Michael Neuling <mikey@neuling.org>, Nicholas Piggin <npiggin@gmail.com>, 
	Michael Ellerman <mpe@kernel.org>, Andy Gross <agross@kernel.org>, 
	Anirudh Srinivasan <asrinivasan@tenstorrent.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Drew Fustini <dfustini@oss.tenstorrent.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 07:51, Drew Fustini <fustini@kernel.org> wrote:
>
> Enable support for the Tenstorrent Blackhole SoC in the Blackhole P100
> and P150 PCIe cards [1]. The Blackhole SoC contains four RISC-V CPU
> tiles consisting of 4x SiFive X280 cores. Each tile is capable of
> running an instance of Linux.

Nice work Drew!

for the series:

Reviewed-by: Joel Stanley <joel@oss@tenstorrent.com>

Cheers,

Joel

