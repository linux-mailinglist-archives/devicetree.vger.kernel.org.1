Return-Path: <devicetree+bounces-215743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A73CB52836
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A1D3A4E01D0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 05:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA46924290D;
	Thu, 11 Sep 2025 05:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lhKFSt0h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD1C748F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757569479; cv=none; b=Y0LRZL7c3AAHmsIJii0v3v99d8T1pp4Y9bwVLMKa6wnLYZfral+cxYYgctLMWhtxQRbsFtJq16ckuPyTAxUc10DVESDu11iiYs9Zs+pQu1iDIcLpkMfwwzPhPDp7EJi4qjaXkHcx6u3e0IFdOA7wyi+UWMO/JKs9Gfte6Nducds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757569479; c=relaxed/simple;
	bh=OMtGTExh4pcQAOusF0QsuJQZIODVOUx8i1XlOSomzSw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZgMuA/h9ubBhn0f80i/nDl0izxQa/oja+Ejp+tg/2Kat1h+yeag1xC0rYGBqwzWCbuTe5hps+pYKQrtgqLjGfKEYWEzteX9KAe54C92kV76g3wbJOJ0KGrlwk0CpSAG2tNOc2Bpn2qLaiSJxxOYar5rzMZQ1jY3utoG0Ks3USZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lhKFSt0h; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f720ffe34so400333e87.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 22:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757569476; x=1758174276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMIGN5Dtji/fICaLmPTyfkuwaheBNYfZUOrUfndT+g0=;
        b=lhKFSt0hwtF6TfrwI2wueGcL7Wfq0xNOwStJA0w9gwEk7ldzmuwHCGH6gKeUBoaAeS
         BhR7mgGveTJrsCbnO/mGtabastbqHIUxagnX931QRhcv+/yGtB//FB9wkM/Nna9kxZDH
         k/0Xd/6atsl5AU6SDNCZs6xSmQBiMlx6ipYZHxdq2oEqs+AmOtcy2GftAG9hiaz69e2g
         QHdmIOenNa+ZkWXFKwSeKv3pMFpny7zZc8mTQzWlgLszFjRvWULN+/HYFZDFc3+UONEl
         ri8P1e0JaYokT0gOJ6w/1apYCXo7CFRrUHfcIl3Y5emDRMjh3TV4moHATRFt7c5CWxBX
         Mbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757569476; x=1758174276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMIGN5Dtji/fICaLmPTyfkuwaheBNYfZUOrUfndT+g0=;
        b=SltWJN/9c08i2LdtZUg5oX5m8Ej7jkPx39xFhUi5LQ1oX7h1IAUZyRcSi9O0gKifhX
         m9MB6quiSKkqv8FJJZ4ZyDvsp02/xo00ytS0qeTZ1u1+fysiBkwAI82/8AX78YlxAQzM
         Na+l+ib8Z2LZ7e8fJd9gC3E6stRiPxQ0Y02myg0usm9/yIWK/3WoKEwb4BvBZugyhaz3
         LtME8jozR9jM6FhcQhrTThHT89mdKdQPkrzN45Oq47ui5NJb8iESOrZf6dNUCySvjNVi
         xsT3Z45jfxVFncGrETa/+a2A62Zy8JpVJgwA659cfVz2ntS1Zlt+YtDhugsAAjflUh7s
         Grgw==
X-Forwarded-Encrypted: i=1; AJvYcCXYVUCDAk09BuikdeMSem4GQdaAJmC/9sNr6BIbkQT/oRq9h3q059SmSZ70ub+ky/HmhUpXtpc/qrvb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx0ZfogM1XKbmi5nh5tBxLpOdRy2NRUIYajv0YSi/i6JWR3N8Y
	5Xyj6MJN8IPtYRB4yDv0kPgF0kgoDoJzrMXN13BheEvUJtkmob5eXTgIa/h3k31DLq8auB30SdO
	1jQ4yxJpM1wdSp1ruK/BuU17Arbnrh/s=
X-Gm-Gg: ASbGnctoBvrWCAngMVRdH7C90koaQECwgVarupmPBV7t2YIxOXQTZwUZPIJzTZufh2W
	GmIGxs1DFvCL5gDOUBKBwe8Nrikt8jW5jQ2dleUYEZSPCqwlTCtz1/EWMQvxDKcL15B+C5frIRm
	/iKDM8wRig/dp3jRDKUBCFtH2NgkPUY0pqiKFTk0o6lX4IuyJh+ybl2+95dcaJL+c1eXdwHgNd2
	JDjT/EeEpFjnLKW4EsjmoSg1qUqSQ==
X-Google-Smtp-Source: AGHT+IFXXzbUmqfUVHrK9y+Tz+xUgPLo8Z/WQoqhWiJEUjVlgtHkwjMb8D/bEp5cJbkjZ9GKy8JPh87QF0toRaHkPG0=
X-Received: by 2002:a05:6512:31d2:b0:55f:45f7:f7a0 with SMTP id
 2adb3069b0e04-56d7b8f884bmr603188e87.28.1757569475645; Wed, 10 Sep 2025
 22:44:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756991031.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1756991031.git.zhoubinbin@loongson.cn>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Thu, 11 Sep 2025 13:43:58 +0800
X-Gm-Features: AS18NWB5DuSI91t4oeMBT2UUvtcIx7VW5QEF-xbXLNgu0nfFPDPblbd44x_70lk
Message-ID: <CAJhJPsXwT45Q7j5XtEujsMnYgMMAbzg53d0T8YGCv1SuoYFJ_g@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] mtd: rawnand: loongson: Add Loongson-2K nand
 controller support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the whole series:

Reviewed-by: Keguang Zhang <keguang.zhang@gmail.com>
Tested-by: Keguang Zhang <keguang.zhang@gmail.com> # on LS1B & LS1C

On Thu, Sep 4, 2025 at 9:07=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> Hi all:
>
> This patchset adds support for the Loongson-2K0500/Loongson-2K1000 NAND
> controllers, which are similar to the Loongson-1C NAND controller.
>
> They support a maximum capacity of 16GB FLASH per chip, with a maximum
> page size of 8KB. The chip supports up to 4 chip selects and 4 RDY signal=
s.
>
> The key difference between the Loongson-2K NAND controllers is that the
> Loongson-2K1000 explicitly configures the DMA controller routing, while
> the Loongson-2K0500 defaults to using APBDMA0.
>
> Summary of the patchset:
> Ptach 1: Rename all prefixes from ls1x to loongson
> Patch 2: Add 6-byte NAND ID reading
> Patch 3: Add chip select support
> Patch 4-5: Add Loongson-2K0500 NAND controller support
> Patch 6-7: Add Loongson-2K1000 NAND controller support
>
> Thanks.
>
> -------
> V4:
> Patch (5/7):
>   - Split the flags variable into dma_bits;
>   - Chip selects set before requesting the DMA channel;
>   - '|' should be last character on the previous line.
> Patch (7/7):
>   - Use devm_platform_ioremap_resource_byname();
>   - Add the dma_config() function pointer to replace the previous flags.
>
> Link to V3:
> https://lore.kernel.org/all/cover.1755757841.git.zhoubinbin@loongson.cn/
>
> V3:
> Patch (1/7):
>   - Merge the first two rename patches;
> Patch (3/7)
>   - Refact chip capacity calculation. Use a big switch-case
>     for writesize, and sort the big switch-case by writesize;
>   - Drop the redundant 'nand_cs =3D 0x0';
> Patch (6/7)
>   - Add Reviewed-by tag from Rob, thanks.
>
> Link to V2:
> https://lore.kernel.org/all/cover.1754890670.git.zhoubinbin@loongson.cn/
>
> V2:
> Patch (5/8):
>   - Add Acked-by tag from Rob, thanks;
> Patch (7/8):
>   - Update reg-names attribute description.
>
> Link to V1:
> https://lore.kernel.org/all/cover.1753166096.git.zhoubinbin@loongson.cn/
>
> Binbin Zhou (6):
>   mtd: rawnand: loongson1: Rename the prefix from ls1x to loongson
>   mtd: rawnand: loongson: Add nand chip select support
>   dt-bindings: mtd: loongson,ls1b-nand-controller: Document the
>     Loongson-2K0500 NAND controller
>   mtd: rawnand: loongson: Add Loongson-2K0500 NAND controller support
>   dt-bindings: mtd: loongson,ls1b-nand-controller: Document the
>     Loongson-2K1000 NAND controller
>   mtd: rawnand: loongson: Add Loongson-2K1000 NAND controller support
>
> Keguang Zhang (1):
>   mtd: rawnand: loongson: Add 6-byte NAND ID reading support
>
>  .../mtd/loongson,ls1b-nand-controller.yaml    |   56 +-
>  MAINTAINERS                                   |    2 +-
>  drivers/mtd/nand/raw/Kconfig                  |    8 +-
>  drivers/mtd/nand/raw/Makefile                 |    2 +-
>  .../mtd/nand/raw/loongson-nand-controller.c   | 1024 +++++++++++++++++
>  .../mtd/nand/raw/loongson1-nand-controller.c  |  836 --------------
>  6 files changed, 1083 insertions(+), 845 deletions(-)
>  create mode 100644 drivers/mtd/nand/raw/loongson-nand-controller.c
>  delete mode 100644 drivers/mtd/nand/raw/loongson1-nand-controller.c
>
>
> base-commit: c9f62564252c21d739a5003e9b2d6ad0828aa7bd
> --
> 2.47.3
>


--=20
Best regards,

Keguang Zhang

