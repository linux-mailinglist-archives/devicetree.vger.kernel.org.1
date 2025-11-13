Return-Path: <devicetree+bounces-238242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 913A7C59548
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACE2F4EF5FF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561F4343D75;
	Thu, 13 Nov 2025 16:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E91BE49
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763052815; cv=none; b=YtuwrQRyyY5hoLag8EHU7Rb9FRm+2sgqAvSY7EtVjwu204vyyqojTW86F6Uu9shat/hhROMdDS8JlGudaKNkwpH6oOHyZC0q9N6k73maC7djqETFJSHaKSVb4T/f99S1+KnrC92SuUlqlktFTQGpB7/euoFhGJaYNrZmB9KygCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763052815; c=relaxed/simple;
	bh=Dbv+NvA54eQnU138bJCOz6IuOnEx2OSaA5K0SN9S/FU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gKIiUsgw4TeTM2QAuglAcMDOiNmPoiWX5qpD7NJkMB5umk0z8/noImJsl0R8w9HCQTB4iCGlwT5AeRqX69/v1AgAPlx/Dd4iVmA0PZesG3ZUbPGRfyD/fP4ObAFWieT6aE6VYcmxTtIKcE7Qmq/XKOgJhCRdq+2hCw7YRP0MIfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-559748bcf99so789137e0c.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:53:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763052812; x=1763657612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbQvAYO3eNdTVb0fT9wjAGvduLlBPUoVXxd3qKsckAE=;
        b=ZTp4jpTitTSqgUQYYSxuf88tja7txXb6c/ypcyZ4N12EGKS4S8+n8TsNu2JRCObdlq
         Kj0OOHknOBv84WDEqfjp/VqSy0+o+dJb4xYUiVCn+7uhWUhwJXGhP0BME7d+MVG8I234
         +pe1X0rARBhoC65Tq6Vk+2WovtfxLjblIuhxYO0WPsif0J6AclWXqK7qjNwTRJwrNwsG
         k7oRALm6QvGjGxrUFEjL1Aa7jf4COVWhCtgNoVHJ/INXBlQ0MBCRfXDboRcXidf16j8d
         ljWsghaN06pXOUK/iEd8KoSRcchH1IWoSgxFyiKsAnZ8qJSkQes1VuZF3ZZr9+JO+W+j
         R0Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWkk3XUAa/oe+M/xWdKdG8pBU5tXRZy/Sy7EwVbQnScAYyWLhmsBgFHjmWUd6XoaAwWu2fv1bF5q/5v@vger.kernel.org
X-Gm-Message-State: AOJu0YzZpWiRFEJaklLSPthMxp/SnXuNAVMI/jXt1mK3YHIyzoK6ZB6r
	pkDPCdhC57SCvLhKkk/i7+mj5PInsmpO3XY+FTrOBcWYhOxVpefn0ecM+6JLYqovnAE=
X-Gm-Gg: ASbGncs2FH+tErE+IJN4R1/wkKLSpGwn24rcI20NdnD+QO0m6Yif7CqRtvkHgsdCPpG
	/TYM1rFQ/rG0yT8kmSH5k9IAsZv1sj7ocBGBs6Fq9HPrqTishwZXUnBgU2p1S4JNARNnMdG8oy4
	mDRLDoJ3E32L8gLt/PtHdtGnxICKXMJXg0Yu4tigVtvTFwXS9x0ld+J8AN+FfSXhQ/tO2nHrUAP
	eE3T0/EzXbqFHC/3i0uSmmoD239StwVdvDQk/nfV3KRUlWhy9C7djysC/fe3DikZ5hzxm9knAek
	LvxPd2Zd2MMBVoIOIeqrQjWtP40U4cN+48C/WhgGlnQnDMl/oJFy8CL9aeFQrO1B+FqFEsDyBEq
	cD51vqYUWc1E5SVHEtExg0/DAMhy1djkJevdh7EZwXAZe1Aze/LZ1X9vOmC0ExPMXGUrvMlodE8
	NQeuXg1UNfkyiHNzM3hP+Ys2kaQE1pP6p+y8WHOA==
X-Google-Smtp-Source: AGHT+IEfObXReeR/JKAGpLOG1hLSBFKHzpYOA6Hr+9kcYM3tXj48pMPZDgNY3Nthzg15rJEeo9FUfA==
X-Received: by 2002:a05:6122:2191:b0:54a:9cff:6fe7 with SMTP id 71dfb90a1353d-55b1bd4b7b8mr196381e0c.4.1763052811964;
        Thu, 13 Nov 2025 08:53:31 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f35a6d9sm843465e0c.7.2025.11.13.08.53.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 08:53:31 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5d967b67003so707758137.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:53:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVDUFMwi+oOiKH213Qf0LdiFMGqG1hrKvUJztv3RMKqQnK4bIdjLuppQZozfwIfvUW852yGPhB7jfMD@vger.kernel.org
X-Received: by 2002:a05:6102:2908:b0:5db:f5d1:5790 with SMTP id
 ada2fe7eead31-5dfc5587ea4mr226528137.13.1763052811529; Thu, 13 Nov 2025
 08:53:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251101050034.738807-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251101050034.738807-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 17:53:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVo2DGVm0KMx10Heytif4aQTRU1OcXb-xSzLs5SP7Me+w@mail.gmail.com>
X-Gm-Features: AWmQ_bl5EDLinjz9IEQUBnCdqQ9y_TsmjBBKKZa6y0pw8az6LRSt_Iws6T3ZPNQ
Message-ID: <CAMuHMdVo2DGVm0KMx10Heytif4aQTRU1OcXb-xSzLs5SP7Me+w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: clock: renesas,r9a09g057-cpg: Add USB3.0
 core clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 06:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add definitions for USB3.0 core clocks in the R9A09G057 CPG DT bindings
> header file.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by clock driver and DTS source files.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

