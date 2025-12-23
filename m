Return-Path: <devicetree+bounces-249132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F53CD9718
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 52AB93002507
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11EC4340A4A;
	Tue, 23 Dec 2025 13:33:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE06331A4D
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496830; cv=none; b=jffex8C7Y4HmItHOX2h3YA61K2JyesQYNTYUXYDNN5GV5zfbp6EYLncq/TQAHSmb6bfKIGXx2u40AMAKZRE93Qew45Y9s4Omv0gHRjMKHdtQGxJkyiC5ZiypyNhYn3fTa/A7D5VI5SA5Ublla8aYnlCPVk19Kn/7PKTwaL1dXHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496830; c=relaxed/simple;
	bh=d+EZghonelPXBgUA78BQ/tWJ6ckYSNKpR9OnMalTYvw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cFfC5uDrY5QMl0+s63acJtEj9FpwZefPp0EfqIEyxJF+a/Y1rQ1vNwtr5LSGYOvMPFvmreHTyPYzwpez5Oe/vBbwf1W76z/Qb7vep9y/tgopHmbs0TSCC8PAjT97QAOzwSzPUUbRSYSzQXt2+RMBerGSHrLNomfU66A7YXCEoW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56021f047d6so1473323e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:33:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766496827; x=1767101627;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2q1TCGysZZkk+GHmS8vt4l47rdLT3znEaGV/tAdcUUc=;
        b=l58z83esymkziv9VPFOKQ8kDPJqOEKpj5i9yYNBqEYCnI1wU42NTxXFbeEHg7/1LDc
         xMiR1rys3Sh/OdsL6WD0nmXCKEVgmn1FmXskW5IgBHWUXdqqice99zgLGPUi5oYjOtf7
         pyuvI5DtNpuAVjk+h2nSt7Ou5pGtJLS7udA4Z7IygCvWffLepQLuJ5MtaplYeHnnt62V
         X66yN7Ay89l2MvE+IPBL+mnbjP6GYdEytx/Za9E3KynXuMNFvw4ZyS+j/MIvMGQDAIxG
         1omsQDKTYqY/yqPyr0D6/SB8a8zuRZ17hHhKfVV4QoccIOJVSXX6WP1qObZiujHoGmSL
         jKow==
X-Forwarded-Encrypted: i=1; AJvYcCWGrKcm9XX41qy3/YJ5CZBzT+hdhAUOCdbZ/JkTj1hcyaGzHQrASRbPQUhA5Ihssu0a+8OE5J9tN1g3@vger.kernel.org
X-Gm-Message-State: AOJu0YwEjz0EIJkcRste1bDR51DYrhIBGsj4hOjyaGrjD+eIEOcLYmaW
	AWAm5+RTp0LFxjVNjR0G53DW+pd8UnuNMQbZRNGObbKRrDeihvtspxkynBKXw27M
X-Gm-Gg: AY/fxX5NDU3H+8IlM4wVVZ/eU8Hm33k5RCcH7jOOdTAtigau60y5Xx8NnhVMTjorSXQ
	nbfOAXAlRPSmUphUUnvbIb7g8zPpsBwFADQn6U2dLsIXFtATNl+FlhdWwwZiDHxd4oAgARPe8rx
	Nmjwjm59fF9lstnNLkbxreTb5sY2rHnHHQtrR6/xpA/sgBHycxieVCj3uR1kCbx8KjC7oVBv5Sb
	k2+Us4gVcP/fsUfW9kiCQYByl9fJyoX+7Zb+nAYd0Sn3QZcpHUd9LljWRILdXqyHfWTZ+dL7LDg
	0dYLGbebqHSoIPRECxwx2kqcYDOQcATN20AK8Jv3FALvuDsppR0h6m65Djc2PDxf6pdZwirOZAA
	91qMJPBz26Y+cPJiaKD/dxKQnMtpZMqrVjF5hC151we/mL0EscDf7G/6XKLu1UXgfnkiIX79NIj
	2pEm8b0eqxw43dn5dMswdAhmgxv6NN3VFfeu6DQybZoVdtcV/P
X-Google-Smtp-Source: AGHT+IHYlDEvzwyC7NHqFb3MnPF4Sw51Cq/ha2uuUq9HASKTwgX1C/sx1iiKG83gPg7aPd2d0Ft3Vg==
X-Received: by 2002:a05:6122:f06:b0:556:e951:b544 with SMTP id 71dfb90a1353d-5615bdf7134mr4234519e0c.9.1766496827240;
        Tue, 23 Dec 2025 05:33:47 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d132efesm4421864e0c.11.2025.12.23.05.33.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:33:46 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfd0101905so1412035137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:33:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVb5cH2RnRPak6G4I1jrS+SifGpIga3jnugbKCQvhOS9b7REdTV6/1Exm0qGV6tnkSbrK2sL9e7xJX5@vger.kernel.org
X-Received: by 2002:a05:6102:c07:b0:5db:f573:a2c with SMTP id
 ada2fe7eead31-5eb1a67d804mr4132076137.13.1766496825417; Tue, 23 Dec 2025
 05:33:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:33:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW8WK9EXjJ8bkUV_f3OgG2wv+QWgPQi-rPLFh7qcxjptw@mail.gmail.com>
X-Gm-Features: AQt7F2oA8sVMWIIIOjyLh788W_awCND3GcqvNsIMfjLaN-ARF4rTf9K4TdiA6zg
Message-ID: <CAMuHMdW8WK9EXjJ8bkUV_f3OgG2wv+QWgPQi-rPLFh7qcxjptw@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dmaengine: sh: rz_dmac: make error interrupt optional
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Dec 2025 at 13:50, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs do not have
> an error interrupt for the DMACs, and the current driver implementation
> does not make much use of it.
>
> To prepare for adding support for these SoCs, do not error out if the
> error interrupt is missing.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

