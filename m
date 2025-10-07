Return-Path: <devicetree+bounces-224003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 313E7BC00DF
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 05:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7E464E1562
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 03:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6DD1C6FE1;
	Tue,  7 Oct 2025 03:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="U/xq3k/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8D71862A
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 03:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759806029; cv=none; b=kh2LhqZ41XLeOv8feKs6x1oe6pfj3e6VQPF4Kfj4DOht0B0EDDDKlmW7hyqHWEpbIf7ygxGs4mOcWzzKIPTRLlhA9pxzCvjVUHOWQ9bojrFdDNkp95tfgy/47ZvYsfug8SeZZeo+jxDXju5q4uFvswvzkOWp1aIM32NWz0y88J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759806029; c=relaxed/simple;
	bh=DgmUKVVAZxAHjL7E2EyoaY9AqFDFj5rBrGDH69lmLlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MmQqH8ZKIj2mVMPH21Te0V8SGpBZfL2uCD1X5+qUIOZq1Tmf+Nkccmns5FP7J/Ja3Ed1S0v/Uykjswzya/oqLpCI6v8K2bsGZ5cWKez1Kr6aSPvWQf0GBeqSPHnLthSapFEB6IbwD3qH0RV8zxrTtjxyt5KiB/snf9DW5D2UhKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=U/xq3k/T; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-635355713d9so6150034d50.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 20:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1759806026; x=1760410826; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rh3JimG/CE0+qqNKzktY8zBG1UkDVFkdOnHFQNnTyw8=;
        b=U/xq3k/TaiCW4WynxSWpjsJKlWkiRkBeSSfgXbdsdJ5B1BMC6z0ET3VhaG6ocehXrj
         XMELG9vn4x2F1NhX5i7rvWqEY3LV9pETPgETgoyKAW1oHabzclm+slUd//gYhqmCp1ZK
         91vb2s3iWQAvIUY7xtvWVE72df5RxYZTK0adYbS1q17AvU5BEBTapc48T5XEgnbe3Y7+
         /Kj2fE9j3GkLS7eAxVmPHNAzNiAG5q3uQ7KkVbXywXoAUxgVPVNdSJD3+jXsR3wLt2h7
         iuCjnQK+QmbSrOFN4N9moSXnlmU6lGygVFuUKOgW7Rfpfo6cc86vULItbz0/oKWLFwT9
         58lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759806026; x=1760410826;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rh3JimG/CE0+qqNKzktY8zBG1UkDVFkdOnHFQNnTyw8=;
        b=FluQD3wZx7BPaS86W0YdeuaBtUrAz8ONkPQHmqUr4RNDkKxfM094yFmENdF/fBxCGR
         cl8VsNQ1u06saERglSISna9EXYlP/DoDcJv9rn40EYzqJDrq5egfP48BwCuQP9Atvdj9
         312Tj+6Cpi4M8uq0bmtYWJNkP43iCGBpEsg6fgctsDE9Yv3IpFUUFdn1uQRcPI7qwhHC
         pnzpr1P475nFtTTj4AJyj9ihX5srbgSZOurkO8/mA/tFdwuIugaiPLEomEcPjA5ff7BQ
         ojzJGMZu6uVMzoyIzsK00MWPUGXDopWjXz9TPFZ7HMw/BQ6Y+fjoEA4VtmxkG1rESzmC
         2KvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIbQOf7qNqiYQo1E/rYsfsrQtJ1oLwivQZj5xQJsfJNg1sXydxlGEag4VNjR3EsINIm57UGqXyYeSf@vger.kernel.org
X-Gm-Message-State: AOJu0YyVEDP1IKV1c987m4VKFjnzVO0GiFHelqMb2GJ73lbCTwxYvFDL
	RyGxG6Ku/XyfAu9/dmej9EodzZ0Rs79XdUo6hg4SdNjOEQWL+Pm1FYUqh1wNP4eH6xzN9baEXbB
	4vMjdg0miXW8bV/aXe5ob5KTR5/aoi4Aihy91nEob0g==
X-Gm-Gg: ASbGncv9r3xOubqaIaOCRuY0kqW/37HTSKU6kDeyFfPXD1qvwuHIMnj57MRy6T2xyOK
	SGmD4zGnYxKcG1FlHCjNzBbZgq8A7omg3d7SwSMM4ieQeVd6FftPn4gSt/0t/WOoMnpzE55LCCQ
	L6Px5/E5RbCUXspZ2XxBXaJlybl2Qkp9BNSTqTQ2x8NZKo5YQ//uX8bxGl6CLArogrCZromwI/k
	qqH41csD6KZZbqAt5uSGXqt3IeFXRg=
X-Google-Smtp-Source: AGHT+IFpDeFYpJdIwoVLGKv3fyPFV65e4Lo6dOLiNHuo0GiL2CcLB0AMN4rustNbq6B28NgtaFZYGIh1Plud38WHyM4=
X-Received: by 2002:a53:bb89:0:b0:636:1f40:2f5a with SMTP id
 956f58d0204a3-63b9a0f0326mr13414591d50.44.1759806025867; Mon, 06 Oct 2025
 20:00:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-tt-bh-dts-v2-0-ed90dc4b3e22@oss.tenstorrent.com> <CAM3sHeA2HUpcFJ7LOw1XfjJjLA+A5KsnqFoHe03bv1wHJ_zoMA@mail.gmail.com>
In-Reply-To: <CAM3sHeA2HUpcFJ7LOw1XfjJjLA+A5KsnqFoHe03bv1wHJ_zoMA@mail.gmail.com>
From: Joel Stanley <jms@oss.tenstorrent.com>
Date: Tue, 7 Oct 2025 13:30:09 +1030
X-Gm-Features: AS18NWDkCe_iVrENrFktcYB8dLpg514o3M98A_0nmkuNLzig91F_L4PMhgS3hjQ
Message-ID: <CAM3sHeDPN2AVQHL9VnO-Fk=6Vt6Cs6Cv3qTvb1Mtxif2hNseDA@mail.gmail.com>
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

On Tue, 7 Oct 2025 at 11:32, Joel Stanley <jms@tenstorrent.com> wrote:
>
> On Tue, 7 Oct 2025 at 07:51, Drew Fustini <fustini@kernel.org> wrote:
> >
> > Enable support for the Tenstorrent Blackhole SoC in the Blackhole P100
> > and P150 PCIe cards [1]. The Blackhole SoC contains four RISC-V CPU
> > tiles consisting of 4x SiFive X280 cores. Each tile is capable of
> > running an instance of Linux.
>
> Nice work Drew!
>
> for the series:
>
> Reviewed-by: Joel Stanley <joel@oss@tenstorrent.com>

I got my email address wrong in three different ways. I meant to say:

Reviewed-by: Joel Stanley <jms@oss.tenstorrent.com>

I tested it on hardware with v6.17 too:

[    0.000000] Booting Linux on hartid 3
[    0.000000] Linux version
6.17.0-tt-defconfig-jms-00062-g5874d2146391 (jms@donnager-debian)
(riscv64-unknown-linux-gnu-gcc (g5a43bcc73) 16.0.0 20250923
(experimental), GNU ld (GNU Binutils) 2.45.50.20250912) #76 SMP Tue
Oct  7 12:54:40 ACDT 2025
[    0.000000] Machine model: Tenstorrent Blackhole SoC PCIe card

