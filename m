Return-Path: <devicetree+bounces-252722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C182FD023F3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B272300C6EE
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC7A3EFD27;
	Thu,  8 Jan 2026 10:09:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1D13D6664
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866987; cv=none; b=N6Y15X3HIoGISLWHFvY6Z3fQADe40IcMDHCLFZ2B6bXaShtP303IIRYPHFH4IyASCzxJ8wEx00LeikNWCmBIuQrKjDR1FTb9CFpiEKZC7vduGqcETKW9IT8eKFDQ27DuETFAckX0xKu5upBs/Ng/GP4b4iWVWPS5nC2onrEfZlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866987; c=relaxed/simple;
	bh=hkFV6sCHTP5qofsPaY/YbOdlIOAJzAyWAh6SnNrhtec=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RFMpDS0R5jOj5OeblAPMF11tBjVzge5tuXoFYdXStW+BFr3Fp05v5OYCvLC3LKovHOU0106DBB7zyfQuce0mo5vAFJt9XrEeMaEoNDjsTDUSzzV27gT4gcjqTRGUzHexmClwq3cwKsc29VIBuFCZ9/RTWnD5Wu4tavwlRDldbuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ed09471ab9so474601137.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:09:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767866983; x=1768471783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyrZyGcXAzKiCKUaV1wObD3EIrr2gqbfMM/IKLsGvno=;
        b=rzG91N4vV83dCFnipShgc0hXT/b+/GlC5Zds4RTni/BHqlzow6ExLJvTli1Ts8l01x
         jmRv9ecqtdeeFbJWVHsQx6nOz+7z/2ZhJzewOE+jP5qUtvCQLn8+xhCDr0fCK25ja544
         Bgm9q1sy+hLqwIEe9RJjiwnRTqum5U48OS7OG+w8+RNzJ2/aFerSyYdOeq44UY148XjY
         Lc4itQx6m4iFhDXHFUeX5MdyR8HooDSvymxlw52UYmB0aWkBkpp2+FpSwdHCEJD33RP1
         U3UVR/6wBFYxl6m82BhxeGfeqyEKZB8EuRZaGVfBWVQ/sGURalXElBUA2vwjCZNu5++B
         KJaA==
X-Forwarded-Encrypted: i=1; AJvYcCVcZgEZvj9VmA4OPsziJVvRPLGjEfrtAnCEqIk+i2Tsslztdwor+6KmhDUp5mpMviYj/veAFp7oxGZ+@vger.kernel.org
X-Gm-Message-State: AOJu0YyItwsiSi6vmAX2mIk9dZtE1wq4ecjMvwAIwAFOr4xhungE2EZe
	KQu7dUsi6yh7fvWs4PmNRRqHc1Tbow79wAlUAqk+9I7WFGwhrIw8xM2iV0MmYrDw
X-Gm-Gg: AY/fxX5m0/UpbN81+MRYU9eGJc99LeeiDSE+0Q67OMnUCHrZsxPteAzb2s//bDewgCw
	cIlauRO5QqFJKeoZqMn0g6jZz4mZM8csYKV94hfcc4lrBIxBYYLiDu2rjOIv699AUm337oL/tWC
	4Trz6fGGDayGupPksGDBuUjLajyeXhDs+MjtLLTfU/pEWBaQoXDO9KQKNSPMVz217Ekjqti4NOm
	gVg7I02vxR6N5pWBKsZaN/OLOSgE8Cpm5Dc+TltuHOueFf9F2XcrMJXTe/Azyf46P/HOhbEHX0/
	l51FbNwmR0KlqiMGZsGtWC+n4bOBpT5U2WEeSO9mUycwtrBUpmMicff4BH0HDXEqrKzItnyiDoi
	V9Dac0IeSr7zcBP8oC28wqgXZDo7i3bGPo7OqIKBYrbaxzjzJ1CqsKE5WE5ugyNm40Xjczqs+je
	/zc2rajsWfEqzmky4pur63Hiuxwzsl4JgsOa+E1p3kcNB6ywhQ
X-Google-Smtp-Source: AGHT+IEORjO9TOJllz6oZ5Dunu0Ocl4bOjZ2iqQKDhsatCcXu1+0UgYLZxNgvLPbx+UNw8/0M0gweQ==
X-Received: by 2002:a05:6102:644d:b0:5db:ca19:f048 with SMTP id ada2fe7eead31-5ecb688bd07mr1744871137.16.1767866982698;
        Thu, 08 Jan 2026 02:09:42 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a3386sm5319005241.11.2026.01.08.02.09.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 02:09:41 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so932080241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:09:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVcVapGEj1l9IEC5DjAB+qdCStrtVmnctp8Wj3hPC4CRUgB7Jc+YgJVJklQ2VxrCLypj07qO1v9bEP6@vger.kernel.org
X-Received: by 2002:a05:6102:334f:b0:5db:cc69:739c with SMTP id
 ada2fe7eead31-5ecb688c1a6mr1774956137.17.1767866981047; Thu, 08 Jan 2026
 02:09:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 11:09:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUYSOw3SvDqYfYTEjBbe=jA3fsWWa+yEpuFsVk0J_SuDg@mail.gmail.com>
X-Gm-Features: AQt7F2oOCBWKRpGjqkkzd6TZOmQAOeycJcWHvdzKUvJorqk3GvTHAiV3Se6S3gU
Message-ID: <CAMuHMdUYSOw3SvDqYfYTEjBbe=jA3fsWWa+yEpuFsVk0J_SuDg@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: renesas: r9a09g077: Add CANFD node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 18:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for the CANFD controller on the Renesas RZ/T2H Soc.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

