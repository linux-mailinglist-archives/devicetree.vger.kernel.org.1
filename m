Return-Path: <devicetree+bounces-216041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD96CB537B0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99C4FAA165D
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2395350D61;
	Thu, 11 Sep 2025 15:27:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F634F47B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604440; cv=none; b=I7zSHB0pzncLoLA9qXc/FJsdjNdzyTZqiRH6rylXFvVGkCkqH425j8F/k8DAvi2YZNDc7YN1xlDS0XpxO4X8p4Omiz8g29UR6spo701XMG9Vn5Wl5abbj0gbLRhNmQdHAq0RcYC36H8h7IaE10cPasb29EVBhPZ88TGpOAmCGz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604440; c=relaxed/simple;
	bh=QP8zVxm3a3UK1G9l3fTpfk+VR1gAC1g6wpjwqtTIoMs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B2q9E/4VQYm8RFuERdpUeMW/AYCXGLltWWSKAEuKADHgSOfo5QPgP2WxepghOaBsUXj45sNGxBS2uwp/zdQ1tZvdg7L5WkYRcar2HWG+cHVtQ8AhNqqQzbi8G1IidMi1UzIOkqWKAcCu3NTKC25kBAzEhj3gvpSfiax1qIrga04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5448c576e3bso288823e0c.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757604435; x=1758209235;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPc2XsAxmYi3h6MxGsxCl43YcyPTx0afvcilP6Ob1WA=;
        b=GdOzacTxNU5TNwkLIEi02+BBx307y8ZkvghttzjxL5G/OriGKeodtzKs2C/fjs3mP1
         tgmLoIwgT1HwubwPD0bpYmPqKle3xmjz+IR/irt3DVRKe6f2PQom0aGpL90OKhhwCHUK
         xNeXGRG+dndGxmegGf1s0rwijDQdVu9l2WPzYdut7+84qHSlYGE2I3ZIedIWLNDoJO4M
         OFrFajSkCP2/CeTuXpiTKjiMRCyP1NUAfqND0RXXcQFxmOv5MTNpAQWCHhjpNet40MfV
         xATiNIBSj29nDYzR+bg9BXnMxgxsW59IRHdhRH+h9pzhFmRyv4EXZnPNJFUbh6IXSk4O
         ByZw==
X-Forwarded-Encrypted: i=1; AJvYcCWSli9cs6vdGFxBylx5ecmIYqeXeTz4nFueNtAv6dUzDPrsfNDl9PgUXpYVnvvlA5KoJ2uQsKtMvTJz@vger.kernel.org
X-Gm-Message-State: AOJu0YwYM9uYREPK3aCDluRa+K3tC526AZB2fiVN8qM7h04kLaNm06jA
	/f3GPIo7UzLF6x2l1AT328ambIoe1AW/oSV6Gc8r3YM8j4a6XNAq961/cX9cOoE2
X-Gm-Gg: ASbGncs5mosj14f8rUq04O+8OjqN1ca5Dw1bPyTyhtLFe5sO8ClZM6MgrDnlg6A2F4z
	aI4wKPWlYVogJP4dvEWH21NZ/Glndq0XzW0U/SpW82fE7oG/+LSGAlR4CXL0YggzSSBLRNgexYj
	QB/GHabvMrDl7SbmcCkznQX0UTJp8wCwxhxOWO/YTw7VJWY3sNT9bet5DqRe4/w+LJBJxP7P2D+
	eYlJzWLLBYmjN57eGwEoIZvUHCymMLwYo/5fVRX7rM4euZ3Z/lveBd29USVy8AbpIBIWWYUOLU+
	h6nQVrnHBKQ0uqAfsleTFpET+a1cDkxppHCfeKf5gqlcb7K2iXc3Ubv4VlhQtV0+uFPSbO2ftPO
	RgvpT5fMpHcn9rIreIw/81y29xZKX525GPU6KTmBCnGYfs1cgH3UzwaXOvOGyX5dN4LNyo8E=
X-Google-Smtp-Source: AGHT+IHPtqTqNHGqs/V4TsDcfdEyFHFMK32BdDNWzaXCrarn65seT1++kuh08BAiQOEHSwhcRIcElw==
X-Received: by 2002:a05:6122:2012:b0:544:c8bf:6504 with SMTP id 71dfb90a1353d-5473cbaee77mr5812228e0c.12.1757604434715;
        Thu, 11 Sep 2025 08:27:14 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d3f0769sm296810e0c.18.2025.09.11.08.27.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:27:14 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-52a73cc9f97so326254137.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:27:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVx9NNYaRgr3Jw0SdrOnnNCvw6rbMJ3SQHv+XsGzg5C/3yqty9Rbfc/2iTj+Xg8snEiWikjTm/8d9po@vger.kernel.org
X-Received: by 2002:a67:e705:0:b0:522:2b10:7d07 with SMTP id
 ada2fe7eead31-53d160d3c64mr6513188137.30.1757604433799; Thu, 11 Sep 2025
 08:27:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250817145135.166591-1-biju.das.jz@bp.renesas.com> <20250817145135.166591-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250817145135.166591-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 17:27:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXHzk30U09bLOzwMD6SsP_jVJ60r7feDGiaP=9VFgsYVA@mail.gmail.com>
X-Gm-Features: AS18NWCEx-CGg4oNyhEX62psOpxj-1sWUL_xztZ7vzAgM6MsdT2-vWQYD8op1dY
Message-ID: <CAMuHMdXHzk30U09bLOzwMD6SsP_jVJ60r7feDGiaP=9VFgsYVA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g047e57-smarc: Fix gpio
 key's pin control node
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 17 Aug 2025 at 16:51, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Adding pin control node to the child won't parse the pins during driver
> bind. Fix the issue by moving it to parent node.
>
> This issue is observed while adding Schmitt input enable for PS0 pin on
> later patch. Currently the reset value of the PIN is set to NMI function
> and hence there is no breakage.
>
> Fixes: 9e95446b0cf9 ("arm64: dts: renesas: r9a09g047e57-smarc: Add gpio keys")
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

