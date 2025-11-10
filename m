Return-Path: <devicetree+bounces-236785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A31EC475A9
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 848094E6905
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CA3931283B;
	Mon, 10 Nov 2025 14:51:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F04313E21
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786310; cv=none; b=YhG6ErRyJ5ZFH1kp2l352OapvM2fZwk9DRIkx4htoETOVv0L8mZqnIND9upH1pv0PvGw+kxwtIOsh56aZ97JxaRQUjQhgedj/orgcPUsaN7w+Wfc9uxB0V0qMoRn2rmamq4gCXWeOwiKN9hf3MrLM4QAToKSwJGyC2x8iw4828U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786310; c=relaxed/simple;
	bh=CCvKEtAI6jJe+wQ+hvQBc+gGA4o7sIkvHAFBhmYQfzo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pf8ljsTj2EWmxmD6UYfCl8fySoMavdUrsHDSPimxB+VMW7ddiF/onLNnDcPQmKGT+uSKM/JI3L8KME9yJngAxkYcd3SK4rb33DdJhFNFldP6CdvBVf6bV6ALQHqlmW1fGzRZubKyEksfIT3rFK0xrmtERpwCFwieFmCYRTKwZV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ddc5a5edfdso722357137.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:51:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762786308; x=1763391108;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1/xU9tR1E4wV7DQk5eCBvIBzhbojswkrBibvtyFHs7k=;
        b=Uk3z/YTc32uheR0oha6ajpml2XHE/Tf8ezwGFv40Vb9H8mMrOe6M3O0/iCCJ5I9Dkl
         0/VLtwvReVLcWY+WmLEfZS342YNXeEZpXNx/h37ntaI0mi7MmMwME9YuQPGFa32K+YQ6
         YhA1FyZhvHVBgFeN2tqDhGSUmkDiR+h6xP6hOfbYmb7MfhRi3SwAeCFIfFscqhnSCkTo
         gAISLLMwD8uAzyyvugzQntPEFTUvGFJGGVWIji7LnEe+ixdDCguF3q/bynKEQ0WXkjEm
         j2RGRPhYR0O8XvzCc4Av0HoG2z1KFFq5MmF3mT+rT1wlasIKF+SCVXFWJVQhGGXeUeUK
         0dKA==
X-Forwarded-Encrypted: i=1; AJvYcCU5+l1jvnRn00H/r/njevwQ7RgKCSK1o0IJDSotZw+UjQsWYPSeC5a2jgtYyPL4IW/Z+TlAuyGJajEM@vger.kernel.org
X-Gm-Message-State: AOJu0YyeP74CYhYEBeoUTNcYOlinaY4DNUHfngLLQDIeVoUqBhmIKmdg
	0dP+Rpn9LgIupVu5ZWLeeCJA5Cw9PaCuCJxw6bT+CxuH+Z2SRdSPfFb0dF9rjPMp
X-Gm-Gg: ASbGnctXtFv/6wDiQZrczT5Y9P3ZOlenzg/yWzAqljfh5t6Q0b4x5RZEvNNKVaRLY/J
	5WhYTKErSYZ3fB92RKKwQN3Qncz2BPJO60rKKF4ex3wE74sj7b1Xh6ikf3p7w0rxeSFqDCMEJ+I
	MpZ6220A4TUP5W58vcw/F/Fy99eZt5fNbZlNOn2jFOM/TJz4RjzfrFg4IK6T19gRvHiYCBvaxIA
	SGhVfk9zDClRlsTJIpj452CtF7S9KL3SiMYQ3pCEUz13JEIX3Ofe6pc88P/LTjqNcCGSUQlxFDB
	P8p4wW9r8jKkcaUgUEVeZ1OXjzG0KWecdHYmniVjcHEweNbgG1fn+jvoZ76fSa4BTD0ZzbcHig7
	5sRJFN74ePmjOsTp/Dl98FlUTlPoes+oWJODSUBnQq93UUgWmVhyGZI5DTK9vFTFlRU0v0ZOpwx
	8OKxq/wkRYDBT7H7Sc1h0Y6jXm7NEZTdIs81hi3g==
X-Google-Smtp-Source: AGHT+IGqvA/ANrDblPWFSmrbz+Ma0VTN2RmqBjYSX+G7gveB2iFe43b2K4u2kCE7IqKs2ao6WjlPuw==
X-Received: by 2002:a05:6102:3581:b0:5db:2867:5699 with SMTP id ada2fe7eead31-5ddc486b184mr2434604137.44.1762786307677;
        Mon, 10 Nov 2025 06:51:47 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93708522abcsm5961198241.0.2025.11.10.06.51.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 06:51:46 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d61f261ebfso1213803137.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:51:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUN887fglgQ9PHdFpz/XLx49yj495VLCG74yLtckocNAjHbWHdxKF15dWIpc2ged/RnUsic+nhISZyK@vger.kernel.org
X-Received: by 2002:a05:6102:c90:b0:5dd:b100:47df with SMTP id
 ada2fe7eead31-5ddc467f9cemr2192981137.4.1762786306367; Mon, 10 Nov 2025
 06:51:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028175458.1037397-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028175458.1037397-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 15:51:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdURuFbC4U7_G7nfCFubcxj=3MnrFp4S5Ez-pe8bF-MeWg@mail.gmail.com>
X-Gm-Features: AWmQ_bm_zKD22m7Lh9siCarTBK_WgDcNJsSbzh_nmteCRcAMLoqoVhrNrXJOf1Q
Message-ID: <CAMuHMdURuFbC4U7_G7nfCFubcxj=3MnrFp4S5Ez-pe8bF-MeWg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: renesas: r9a09g087: Add ETHSS node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Oct 2025 at 18:55, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add an Ethernet Switch Subsystem (ETHSS) device node to the RZ/N2H
> (R9A09G087) SoC. The ETHSS IP block is responsible for handling MII
> pass-through or conversion to RMII/RGMII.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

