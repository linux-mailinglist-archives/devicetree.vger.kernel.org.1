Return-Path: <devicetree+bounces-229741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACB4BFB4BF
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:05:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D077E4E6F00
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046CE30146F;
	Wed, 22 Oct 2025 10:05:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF0027281C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127537; cv=none; b=Ae3EXPs8lDGnLwVdU6DsSx9Ii8Fo6LKJNNuRZDSPFAS+0O1I8wt0399sKDbLyRDrK4fFiG7LwdYYycRkaZHO388t39Vv8mbttdImD6qlfecKfROKFaxWNpwD3vH0647uglHPuJjNV5677gBynB04+d2bvCt+7KcKc1z/01mxqnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127537; c=relaxed/simple;
	bh=59/49K3ZN1tUBWEWYa+DC5Kzr4dbDuxfMnqefZEkseg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MWVujNHLZk3Cg5GVlSzsYQA6esNmF7ISqUfxoticqS22HQyDwZrW0zmQbzb0frjFaM7x0JMhJ3f04sriC9CUlCCTdIJPr5EO4Xu7EDOpa3lxPCXyLfw3dlobyTqmx96iVLg0H30jMN9taEj7rMd8x3b1KEzBUKpnCjaZq/pcAgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-932cb562289so1149839241.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761127535; x=1761732335;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j9nsZS9cf0Yesyto3hqsvaV4sJKL6LJk8tudSlukngM=;
        b=O9Ha54gJ0+7CNIX16g58Hh2sP1nus7bd2PACs4bIxb5YRnjE09MhaCdZ6geXr9Kawq
         o20Gaui9OHKQ5LPYiTGT5jJlwNSUWml+dZjQVeK58HJ7Ha5FcfPGBTCZY6MhoEZExm1R
         +GdC6bpPiX1mZKX9I6SLZufLj/DgczhmLx11/LKPbMLRgoCVk6ghE3t/8b9h15Y5U/CM
         tnZtsufrE4HW5Jwh6+u6sD+rP2J7YFB8S49/R6sxUZeH/BWrYbkOz94jnkCT+GGR4ISf
         +0bZrZW8SgOUPFFKK0qxI8O0M54n/fd40Ojyq+ETmsudwE3Um293afQIUmrZ4G/PzBDH
         N28g==
X-Forwarded-Encrypted: i=1; AJvYcCUkv/q1bgrAd2AlkEW6hLZ+bboD+P2Y9kJ3jsjHiKgObl85sVRieCPrfzjl+fsN4COZ5Wcb/zUfgH+T@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr9V3KC3pfJSKEy01eOnFOTDz/1w+Gd/xTRhLhYlbn9isWe/H7
	Y8jM0/3CDibwjFBdunKMbepE/CWAL8LyUeS1dRQYZw7YltHCz1JwqH2jaZM11eBK
X-Gm-Gg: ASbGncskw6OiGTPNQf+JKtjjcfgGCX5S3efs4Bs/6a6Dum877As6Nf9dUzur3DYHUZf
	wOxWqXQIFHxD5vbtPX8L/eW3YRIgtKDPm8bmCk93kXL7hOVN8hBT458PjtTHFPMuPQGIurMyFD9
	xYC3/165NgCJ3UEMC4YxwuIys8SlCkb339IJFjFk/CB/lp4+8GVGkz3L6Wjvmigl/PA/v1mfce3
	pu9zwsv2GC1OiCqr+w1bd0eVhLqPtS7jtY6rPv5cnZoKGheTKJadmsqrm5L3yH14yEA55mrqJ2N
	d2S21OO1v0FnzYRMmkBmeYylH4UAtMzOEn1WFAfH/OpqHhr0rTkPbVA5LRKWe0/nAa7UvvQUH/w
	a1M4b1tK94JjKngher5cy1hxhoAjPzuS2S+zHQ3XW8Xn6vuiZLVRByiEmNq0EsezzgDybEK/51p
	c+Xh1TMh3OwYl6nPkZSy5czEHlXD/ua4NZ23CDXvxVy1t0nm7ybzHLyOhvVKI=
X-Google-Smtp-Source: AGHT+IFjG4es7i1pLPFPFbqdSuacR4dg+IUVfKWcNoO3be6YJVV3cen6bEv4QOegWf2qBnu4H3A7Wg==
X-Received: by 2002:a05:6102:30c5:10b0:5d5:f6ae:38bb with SMTP id ada2fe7eead31-5d7dd6ddffamr5061648137.36.1761127535170;
        Wed, 22 Oct 2025 03:05:35 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-932c3e46c39sm4244027241.13.2025.10.22.03.05.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 03:05:32 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-932bbd6ba76so1617171241.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:05:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUhbjv+Qd/KZbVzWKyn/uTEsdZ8L8GrwR+irPIrc1/gNsfV6MWrwHxlxeEinXAWQ8uEthH4zibSlM6w@vger.kernel.org
X-Received: by 2002:a05:6102:32d3:b0:5d6:fcd:dc86 with SMTP id
 ada2fe7eead31-5d7dd568745mr5376089137.4.1761127531051; Wed, 22 Oct 2025
 03:05:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020101311.256819-1-richard.genoud@bootlin.com> <20251020101311.256819-6-richard.genoud@bootlin.com>
In-Reply-To: <20251020101311.256819-6-richard.genoud@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Oct 2025 12:05:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUVf2dgWqsfVt9HCytJmmRLYiCkhzSJVp3drZ6KDq0Wwg@mail.gmail.com>
X-Gm-Features: AS18NWDWB3ss9iz68cJvppf6RUhrU6v4v0GhpWefkhntn5szf5Osn3JvNoovQ3I
Message-ID: <CAMuHMdUVf2dgWqsfVt9HCytJmmRLYiCkhzSJVp3drZ6KDq0Wwg@mail.gmail.com>
Subject: Re: [PATCH v3 05/15] mtd: rawnand: sunxi: rework pattern found registers
To: Richard Genoud <richard.genoud@bootlin.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Oct 2025 at 22:51, Richard Genoud <richard.genoud@bootlin.com> wrote:
> On H6/H616, the register ECC_PAT_FOUND is at its own address, and not
> part of ECC status register.
> So, introduce the pattern found register offset in sunxi_nfc_caps, along
> with its mask.
>
> Also, introduce a non compile-time field_get() because FIELD_GET() and
> u32_get_bits() don't work with non compile-time constant.
> https://lore.kernel.org/lkml/cover.1739540679.git.geert+renesas@glider.be/

FTR, v4 at
https://lore.kernel.org/all/cover.1760696560.git.geert+renesas@glider.be

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

