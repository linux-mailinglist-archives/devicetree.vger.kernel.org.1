Return-Path: <devicetree+bounces-252773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F37D0385C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A46A8309049B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1854042848F;
	Thu,  8 Jan 2026 11:03:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180B048692B
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 11:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767870181; cv=none; b=c34s++erkDk8kbHs+0XY+p6lvoqsmwYK9vEBkNSgxyUEpfe+beTKOJGOzZ9AXn69r20vA4GCodqR2AOcHHwkKkV3gXEdtjnVo42KSETzwy9IZzDnChNEX0hLMC9/nJJMDugFXAYUmsUVVmzCKssTX8Jf5NFyE6wuhz8grXCv0HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767870181; c=relaxed/simple;
	bh=9pjsYg6g6Z5yVGQL5SMh8FgG19+X42pgBIntAFg1Sbc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c+NLuTf8cWyvG69XTHyVmaP3dMdiHMW8yFEKkgw2DVU1XZoBVKYLU6Zo/gEuX/KSJKKFCIZ8qvvQtK2CU1IweV9s8cpSJTZpIW/dd7plKpblLER/I71W4syyMMqsLNSvf3M2Iep9m0+zmSYmCg4+/J3JgbWI3apGIzkvJ3SnOtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56021b53e9eso883204e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 03:02:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767870173; x=1768474973;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xy73dxu85wsryj+tVzoQnHxxuOeOWru14RBsTZB7r8I=;
        b=lbPlgKITC4vYnSDhDb3Ra72K98jLV8m31/PsK+NlvRFyDc8jszJl1VVFh5aeuWAJJi
         Jz/rvF84ZNGNvdJJ9SzYdnHwPCtE1SKbihtQJeKC0EMne01wXa4u9NqS3NqZlE54Exhe
         jRuM+7tAzTPLDuNOvvXu3uyCdF7I+94OLeEdllKN1k9fgIQisyCYsM3OmhNwxWTUqWBG
         xR/CBzeFl/vmMR+jsJMVB+zZG7rLEIntzipxnEEunsrQmHRTL2L2hddP6OA3hse9MafM
         SPH7lvfJ9CrurJcdGwO1ejy+6EjhO/eDBrnt1W/YhoBBKinATcBLwYC2iY9JhjsRHPr1
         BfjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvyMFBSWEwpawhoTSD5mLTaaS4Lsk8snHYx+ZkhPZc60+afPKU0HZG22G7/tixz3gs1O1TNwctBzP3@vger.kernel.org
X-Gm-Message-State: AOJu0YzFFinaqVrqy2DTRkH09fVdMSaJKyCPO2UDE50/aAPdz4M4U49m
	DYZxgt6DmVpORcvuuKW8Mb63JTwKZnKztK3VnxnhVPkNk0S/ozR9S+i3AN079Em5
X-Gm-Gg: AY/fxX4j0cqwPDk3G2kecz9rde4KHxGFIsWVPHE70b6kV5gZXqt9Mz34TxzqsxmTaLz
	7sfhrrwFT+waxMlLvdqp/dKwTOCWZzapRpaFe8zetNGWHUy/RHvnGwA0zJHalyugOasqZYFWFq6
	REjMDXe4Vc6qmzaNEngKRtuN5fUCv9XA8vDSko7pg1JfcJMYxwFp758/NIwg77pGxYvvQ4GqKIC
	wciwa6VCkKIqOd0+9jZTCCGRS4nC0hLHdd+mLKMzRgL2FQuRsEvvjiqWwM/P0BLr3aqXzOkSUet
	UZaOzC8WxDp5YBUqshq8Efh9c4MJclEfTz0ldPxrdmAInxljXMfUSYGEFbloN/pCCEYoMzx+0Ps
	F9Lsoe8xjxnHJeNLlQwODlh2n69vtsC8OjbzmUFe0KNlLkjsXR5Blbqmt6QQ7xJbJTz4/xsue1m
	6D4Tiu9/ySFQxerSowpNdXpAGZ1/YpbLNfo/Mq09C4aNEsmlMu
X-Google-Smtp-Source: AGHT+IFNVgcZU85bPc1Fwdzi/Wm9FxwVsbUcbHVP/LCjxhMLp0U3+299r31WDgxNOZ1k62ONGQjNEg==
X-Received: by 2002:a05:6122:1d49:b0:559:65d6:1666 with SMTP id 71dfb90a1353d-56347c354e9mr1785297e0c.1.1767870172969;
        Thu, 08 Jan 2026 03:02:52 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a41f813sm5641639e0c.18.2026.01.08.03.02.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 03:02:52 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93f573ba819so1047890241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 03:02:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUVi96ez2tRHzbin4FXQL4m/T3Lsd4oL9Y1qBZ8thqL+R3HF16NcPLk9ZFDrqevhkYIAEPGHFWDugMB@vger.kernel.org
X-Received: by 2002:a05:6102:4a84:b0:5db:2b4d:f1ee with SMTP id
 ada2fe7eead31-5ecb687a389mr1813465137.17.1767870172180; Thu, 08 Jan 2026
 03:02:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 12:02:41 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUCos_ZmnJWXL7ELScTPjqCMyY0Jwwg5kW6Dknq97-cpw@mail.gmail.com>
X-Gm-Features: AQt7F2pRN5f9gLfqruKSlmzOD5BROLUZ5LeNS3iibk92SDwjrqzAak7JISwhCNE
Message-ID: <CAMuHMdUCos_ZmnJWXL7ELScTPjqCMyY0Jwwg5kW6Dknq97-cpw@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Enable CANFD
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
> Enable CANFD channel 0, which is available on the CN55 connector.
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

