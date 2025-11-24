Return-Path: <devicetree+bounces-241676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26692C80E22
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C74323A7F7A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08A530C355;
	Mon, 24 Nov 2025 13:57:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF0230C34C
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992663; cv=none; b=WjfFv5HKfc7Q0ctYsJ9fHZvE9syYNWl86MtPzsP1Z+YxqVB8c00fzFIBehCDub67r2FcRkVE/b419fGA9o45wcINX3ZyDrbCJOP9/jQsPXkUzlCRPoU6T2JkEUnr/4Za/VIuKSgqZsQh9W2E/iuD983DnMq3cM05/1hnade7QKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992663; c=relaxed/simple;
	bh=bchZ5tACjnrIGiEU8MABHKftHjQFSFw0IuJycfThXEI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AF13Sl4osKieDg/e1rlBs5RrxZwa4xoQvFfA9MqTAkVZHgmH+q8f3Q74MFkISo1oVVfZRlxOVzHW1XNP4nP+iwwcu3PZB5C0BGVZDElyyTfZEfA+uUiWL12Yg6PkKlM+gZGFhW5+r9RJ1SuHcQfl7upajXSIvocq8mlRg1PvYVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55b1dde0961so2931438e0c.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:57:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763992661; x=1764597461;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPxVfYk4ukv1iM/zrMyVlR4rcaz/JJUYyFSelUS+neY=;
        b=jAWvuIPnhm7ZyyV1BkgDPjwCWgOp9NONNsHOhCWBlwDndLur9j6QOC2cOEY2PObFm8
         7bTUosS6tFp4CzoTcAQBJu0NQuCB4+bht2ymkTI9daMvxzpu7KfI8YHcQd92qPWdx6Mb
         RLojg7E7/KldqCFrBAhxXxVsEwo9hzKjeDIi3ZKccL5ZnUbDFFv5F7OSV1iom9e5KM5y
         xCpnKOGMPjlOPwPOCpc5B/yIqVcvCJRyyP3LEXnPEfTctTxySO2/jCtRoC2a4t/Hu/4f
         Jejx6EfZ9znapUck8ppNaxwpe0rtzn+b1u5atRdMt4ZyLUHuOoCjCtVPWJD+RYA6SziT
         /9Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWo/MZJ7xUpnfR76E0DfZjDPX+MWw4UCoZSWjviDRSjoaghtqfdt+ugZuvs2WAe8qpFIkSs4MJmZZf9@vger.kernel.org
X-Gm-Message-State: AOJu0YwCMROIJiEzzaDDSHlnFR1ZPR/AeH4NcDM7qhlGZITtgY7CYnwf
	5Aoi2UDxOFREahHqIB4aMwzn0yHUZSkQ20CzQW1Bc07+GklDm9KRU/Mj68KZEPp+
X-Gm-Gg: ASbGnctgrQ/uu0+0DMCVfoae7FIheD/1c3F8cY6ZXz90mMHdV85IIjnFwbhsI+JSFpd
	cTpCVKiqXcRg3LNSpPsLtbUfIDTXDJb23SgxEm3p1FyhWMHs8hB9nkUMaRoBbOZeaRd0Lge02xh
	oWf16NYqUBppFH9LOoIWDP5UyrckVFtk6p1mxQUsuE9FxF4ZFHccFKJLubibgPsOlU3QAAZdvYx
	4TSwmneVXwRARPWHC0K9rN05fRR90izVrw16ZxuCFg1c1qij1kSn0dIRxDP3ExVoXGR73XKSWD/
	WU6Qu+YO0VTqaG9Sf2IbrzSq6dLHaibDczSGGL7e8+S0E66xQQAJuEHHi/ZrQBpsFYeZ7DJZCmf
	7oRCdAHeYjP2dV6BZltpun2763dID3Oik8nCPeIdPvhWtsv6tSIzDJvt04QTBSE9WUHCDZFQmx9
	H7S/ZzzpECAhHj8DQFQwMiBEdYg8sFEEpoSZHnuBVVmtQ7+/Lw
X-Google-Smtp-Source: AGHT+IGjQ4E0qs+nsWEXVN0VxXnRhjPG632w14ysFLtcgg4pm1Dz82n80Dfd9g+z1m4WPoSWcc67Dg==
X-Received: by 2002:a05:6102:5344:b0:5d7:ddf6:8951 with SMTP id ada2fe7eead31-5e1de004ef9mr3659640137.1.1763992661157;
        Mon, 24 Nov 2025 05:57:41 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5621ca4asm5775315241.5.2025.11.24.05.57.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:57:39 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dfae681ff8so3073452137.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:57:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUzOFv9kT82b2bOklqFhD61EbljhsrlD2iMOieaKwjj+34yb4qgoXuf6au48/dCLjgVB9CAgRA1qMR7@vger.kernel.org
X-Received: by 2002:a05:6102:5a8f:b0:5df:af0f:308c with SMTP id
 ada2fe7eead31-5e1de345e11mr3648012137.38.1763992659104; Mon, 24 Nov 2025
 05:57:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251119110505.100253-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251119110505.100253-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 14:57:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXO7JoaE+dGUx_AdQfTmxSc9cL8XBc23rMj2HEOqhgGpg@mail.gmail.com>
X-Gm-Features: AWmQ_bnnF32q6DHPAtboZ-Vj8KCfKhuv2OTygkZFZWoBgnWPB8SMEg2sntk8aIM
Message-ID: <CAMuHMdXO7JoaE+dGUx_AdQfTmxSc9cL8XBc23rMj2HEOqhgGpg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: renesas: r9a09g056: Add USB3 PHY/Host nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 12:05, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add USB3 PHY/Host nodes to RZ/V2N ("R9A09G056") SoC DTSI.
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

