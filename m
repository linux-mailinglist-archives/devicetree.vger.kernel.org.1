Return-Path: <devicetree+bounces-223745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E801BBD390
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 09:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD00E3B702A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 07:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E231DF271;
	Mon,  6 Oct 2025 07:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E6618DB16
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 07:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759736120; cv=none; b=RwELpt9eFpZT3LR1WXNR9Ts866ThVskG+cEpWKT6jHBLT27aWHQXkR68MiLQ2tJCUaxvje30JHNXCl1TMQfnifWOtThd4bjTu/kFeyJgdSeJcb6czaI6+QcxhvwJIBrYhP1D6WpuUUTQIJI4h3jI7tmOZuuHrz38U58hhVlkaG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759736120; c=relaxed/simple;
	bh=Seg/zBB5psfsVpNwNUkdV6jEHpzqviCUZwoGlYe5ov8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gtFFnV0+rpDKKPILarRXjQXGLrKMPzUvqfWH0zsqQDxKsyPhXw/QTdw77YQcwPsF4J28bSKN+d2ofb/7hF6ch8KsUz7w3Pp5BaTSX2oBzK6IAJKDXfPwPBSLFR3j7vE6bAO9OBnchcJh2FbYyVwW1q5AaINd5fOclpGOD02Wkoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-54bc2d1feb2so1260820e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 00:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759736117; x=1760340917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gi/dIonYfUmmwW2Vuh6lMeec+QtJMKdHIzm0Sdbs67c=;
        b=BKKI42W2qjmDWQ8hKZzDm5TEIo2MrPP1rMQhqnZLJR8gf8W3VNl0FJ/MFtsZQ2ScJU
         cinsZvkU0MQ9JPGFTLrdYVD47NDgTEPEbKnTv8ta24X1I0xhYy2bSuJOg9emCY/kAgQE
         vcmNyyqrlxxZOSvQvdW1GIIg1YB+3GnI/EMWK3i3zN1OcCVuf3wuLKMVEr66+lgYtss6
         5QQVS3HtD24Y1n90T/7BC2zl+ETh7sbeDknAMCUTUCvWwXjrjbrQIAPwMVfXjzTRvUy6
         kfA4OwooC2HsNZM3B+ATzhU0lDWnUP7ITVE17TFkJ71Ub/OTAw6gej9FhfeFnxzkjoQl
         z2Aw==
X-Forwarded-Encrypted: i=1; AJvYcCVJvK6oF0BPRC2qn+VtVwRWyhAhqzW0nTZfL4QQgyFOwKY3XNOe5a4ZjDEpn1TRqtmM7mBKZmEPmxpw@vger.kernel.org
X-Gm-Message-State: AOJu0YyZLnH1rfALQ7I8rdscw2cj1vbVCOZanu2Zd8ET+wdJEGUVd1Xu
	fHjKRNyLftYf7WpCxGKaw2L/YM1ZUci+fdocfVYFMo/Pr2Z+dl3AR9esaJOWiO/z
X-Gm-Gg: ASbGncvECgjOxGiKhL5WkDGE+TG5dKjkeHlTyrJwYhTpj+1sRUC6Qtl4z3zojjmU8r7
	YX0zosXX0MfXn1Suo6lkXy+Gp6+daO1ORPE1AnyIXe8Omi/7h9QOwqSQAe2JrFog4yHK4rAMRgt
	SuE7/9SLkEoyJCLlVdYqIF5lpMoGusBibBkmhxzLvAIRqSTTVJAMWLSj/UPK8+bxqOeIenKFduT
	xTUUKYzMf1Y0hukMzAT50Y3q6bc89IPe6kzDzEJ5dvW/Y4pu3RgN6u3dUFgxFxEKsbTOzU9BgR3
	kWMDjxNk+ZVEs3ntMkMaIQQqFJs9KJAr2MCeBs2uN3YNTXE1tNgnO4QNbknG5lVT4zsr8W86Ygx
	0LLZleVN0XJCsJaZ2CQpAT1DIeoW4k9by1HjbzHNWP90p3NpP7eFKLCGBzRGQmK6KtTpGrukVpo
	W4DM7hypaV/P5IPdZOA1Y=
X-Google-Smtp-Source: AGHT+IFTnQbECvKg+8GSkhubavh9c61ctgMpmi3VMzTj5Yexmr585zzcvPURJ8VtqMcM/+LScbvMew==
X-Received: by 2002:a05:6122:134b:b0:54a:a782:47c5 with SMTP id 71dfb90a1353d-5524eae7490mr3786150e0c.15.1759736116640;
        Mon, 06 Oct 2025 00:35:16 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf96587sm2819104e0c.25.2025.10.06.00.35.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 00:35:16 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-8e352f6c277so833861241.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 00:35:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXntDi2FELGaBBGn2bYOryhf1bbplUTJU82dNWEiHt/+bOStZKuX7ybOAVBO81qrK2LEWMMFtAk7pls@vger.kernel.org
X-Received: by 2002:a05:6102:3e2a:b0:528:d2ad:1f54 with SMTP id
 ada2fe7eead31-5d41d0491aemr3884804137.8.1759736116168; Mon, 06 Oct 2025
 00:35:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759485668.git.geert+renesas@glider.be> <98e13934d06116d5c116bd2b2187842ec3a8c11a.1759485668.git.geert+renesas@glider.be>
 <CAL_JsqJACXgfgLBn4bpz9uG2zEsoH+FX+8wHmTSj2rLVV59=hg@mail.gmail.com>
In-Reply-To: <CAL_JsqJACXgfgLBn4bpz9uG2zEsoH+FX+8wHmTSj2rLVV59=hg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 09:35:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWBGzLmpNeYtSe7SW64X7EQ8chUxrjKQpfhBdz0tHTRdA@mail.gmail.com>
X-Gm-Features: AS18NWCQxcI8Hk_xi-9INpQRnbcE9GVTQoTyTKCepWEClduajoLppt0iBQuvTmQ
Message-ID: <CAMuHMdWBGzLmpNeYtSe7SW64X7EQ8chUxrjKQpfhBdz0tHTRdA@mail.gmail.com>
Subject: Re: [PATCH/RFC 1/2] of/irq: Ignore interrupt parent for nodes without interrupts
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel@sholland.org>, Marc Zyngier <maz@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, 3 Oct 2025 at 15:33, Rob Herring <robh@kernel.org> wrote:
> On Fri, Oct 3, 2025 at 5:08=E2=80=AFAM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > The Devicetree Specification states:
> >
> >     The root of the interrupt tree is determined when traversal of the
> >     interrupt tree reaches an interrupt controller node without an
> >     interrupts property and thus no explicit interrupt parent.
> >
> > However, of_irq_init() gratuitously assumes that a node without
> > interrupts has an actual interrupt parent if it finds an
> > interrupt-parent property higher up in the device tree.  Hence when suc=
h
> > a property is present (e.g. in the root node), the root interrupt
> > controller may not be detected as such, causing a panic:
> >
> >     OF: of_irq_init: children remain, but no parents
> >     Kernel panic - not syncing: No interrupt controller found.
> >
> > Commit e91033621d56e055 ("of/irq: Use interrupts-extended to find
> > parent") already fixed a first part, by checking for the presence of an
> > interrupts-extended property.  Fix the second part by only calling
> > of_irq_find_parent() when an interrupts property is present.
>
> Seems reasonable. Why the RFC tag?

Perhaps you might object to putting interrupt-parent in the root node
if it does not point to the root interrupt controller, or if it does
not help to simplify interrupts-extended to interrupts (like e.g. for
ARM arch timer)?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

