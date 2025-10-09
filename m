Return-Path: <devicetree+bounces-224964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D71BC93C9
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:18:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06BD71A61661
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46332D879B;
	Thu,  9 Oct 2025 13:18:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9552494D8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015889; cv=none; b=FmPfeVRHNKhRhXkOy9+kWkifVxTitg/zoremV3uSOZfyz4hfjlyvlIpsya9sodxp3fAovnYeD1lOnikBd/5OPBhEmlm2zc15uKz/Ll7lhPMYjWn2DdaO9MS6cfq7swkpNdYM8A1ZJw6oYoExt9LcPhbJDSKab1M3t067z/5muBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015889; c=relaxed/simple;
	bh=INP3l40ADCP2qA0fbJj/+4957OkttXt9E+1u5k+nI6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JoTjXSWYmaRHBJWhJSGCMvsSS7Cff4H75aL1p5IwqF9Oa/xZgLn+nPpIhDRGoDhOSYqmyPlmlGmpcB0i/bpsYjYESLvw7w36/Mw0NXW3hCrH1dr+t70zfHezYAydetzSa1np+KbUCL4jOnMH9IouhyQgs+kffVY11RVcx6XtTW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-54b21395093so693507e0c.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:18:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015885; x=1760620685;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=si5sH6w3BFJWD5m5kkucO94XpdquBxJbgVQpUyKDB4U=;
        b=gJipIZRRw3B99JbLxoFRdseTJYFVYB9fUdB/3YcfKI/dJxEcJmME+JNKeZjQBEy2Yl
         NbFqSsJOhrSAxLXfcfH9bur2gYBn/nGX0voDOYxlCQtas73r+nXSr3JdqmU0uf4HuFLL
         c55QvFXBZ/DhrlwtK+26D6p1onPYhzzbls9rTHLU+TllMGebVaKcMuEm3r2Yt80ZgJCG
         1L+j6/xdymZgpnJLfb+hVCM7+oaJyWXXvjZ8mv48tPVMGoexrwcNnVotwD7jekPgXKCs
         WiieohsUQ3qOxc9t3RnP5ebapwYhOA53zOvdtoP/F/O55lIFADys4v4B+v8mWmlJNLAz
         yLZA==
X-Forwarded-Encrypted: i=1; AJvYcCWW8GDDKQbYR2y1/7qdowSSX10sZYyZMdcdGYrTkuFC+/9XHE7IgGlGrlRyQgP2W1R37lESDb7/pA6A@vger.kernel.org
X-Gm-Message-State: AOJu0YyhMMu2qNWi16SN1ThSiww9WQu4+iTNCnzsCDLIV0ESt+HddOYU
	+pXTwnOC6z4hxeQF3KOlJF484L2+ys2rFRbbC81dXgm8LfGNPVdV7CuRL9g/oS+I
X-Gm-Gg: ASbGnctlVCAIWTEqtXwoKkjtF3D9MSh9ZSPfvwR6WwPOYtJfMhUmObYeFmQm75BG7Dg
	eg7aRMxUtevBz3uneioWLudeWZgFm3v72bzFNx2cP5WNIBz3u77v9GT3hvx/kk1fN2uu4H+PrIj
	BuoGX6nCcf5VAQGI+Z8KEHw8uYl6RSLo0Y5JqT81sZhsRb06hVpdpiopGJjCgIKe6QhRqvpMKx0
	Fo8Ax7et7LYZpw+HgKdkp4f4pOvXB21RZ93yqQS6lrwGzMumUQ3TnZBmChnHuZd9WwY5lxod+sJ
	ZjPO2jyYBK0t5q5ICUEeI2Tl3E9ANmXQe1Y9UC7+wzDZB7RDN/OyqnCKeLPBeSYFq7qLdZrEiB4
	RdHhLB93cUH8R1rBBkcGqb7WXMI45LicjdmM+iPf2DVeIrA9XiJMc92iBXeNhYC7+Q1xCdBBSoC
	J2mRowWM08k2Jen7HiCYU=
X-Google-Smtp-Source: AGHT+IHaamZfRdbHpRCUTqQ6TzsvqDHlpQtAJ3Qtb1xZa4pTEivIjOsayEZaCcS/1L7SJfPnSwO7CA==
X-Received: by 2002:a05:6122:511:b0:554:b2d3:4e17 with SMTP id 71dfb90a1353d-554b941d27bmr3180410e0c.5.1760015885482;
        Thu, 09 Oct 2025 06:18:05 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf63c6asm5271191e0c.19.2025.10.09.06.18.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:18:02 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-923f46f6c59so1295584241.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:18:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVWEp/PcIY1MfYJDjY/piPQJH1MEwNjOGPp9zOIWAmw1LlkLWP/VCi/eKujKIn5n2GrtEAsV4l7qBz9@vger.kernel.org
X-Received: by 2002:a05:6102:6211:20b0:5d4:1499:99a4 with SMTP id
 ada2fe7eead31-5d5d4dd9e42mr4653097137.13.1760015881596; Thu, 09 Oct 2025
 06:18:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251007121508.1595889-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251007121508.1595889-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:17:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUrwNzSmqi1u_4PkN-JURxNa3X7fSXGzSBjLtA+wB_JKg@mail.gmail.com>
X-Gm-Features: AS18NWAki8Ee9WPqdnF2AgHvCLiMuvZq8C_MZHp2KGuv1ErmWlK28JGc1FB-3qw
Message-ID: <CAMuHMdUrwNzSmqi1u_4PkN-JURxNa3X7fSXGzSBjLtA+wB_JKg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: renesas: r9a09g077: Add Cortex-A55 PMU node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 14:15, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the performance monitor unit for the Cortex-A55 cores on the
> RZ/T2H (R9A09G077) SoC.
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

