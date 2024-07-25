Return-Path: <devicetree+bounces-88195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9110A93C891
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 21:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C28CE1C221D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 19:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B14245381E;
	Thu, 25 Jul 2024 19:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Ka/P4w4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F0328DD0
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 19:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721934031; cv=none; b=srL20UfwNtCvsmdlrQ1g4YYUyokCR07rz8+WrVsZc2B4dGDwTRyUZ85gjzAb3TyWZraXeYFRWXZGRQuBjNe4v7d6DugZCtLVbsSTYaGM/KZalAfW5aMabJzbsqoMD5nn3ZsQN65XlbFmMvVi3vBFwnFogAQjbToLKA0l1q69vY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721934031; c=relaxed/simple;
	bh=AjVlzTF2LGrnSzM8/4XkZMhAnv6fs+uvqifqYuqWfq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yro8dFWd9VVWzA+JYZr1gP/DZZFvCINYkw5KBiahE/jW9da3+1HIwqmiQ5n6QkLeW2AXF7MR7y3rbcUZ/aKrzgNp4KtqR2HjgfiqAqU7gu6l2movP927OQJJe8nNGvCltD0qj8TOegHdEd3d74CqW5xp59dgF+YB2c8mfIj3pSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Ka/P4w4K; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-59589a9be92so1730872a12.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 12:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721934028; x=1722538828; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjVlzTF2LGrnSzM8/4XkZMhAnv6fs+uvqifqYuqWfq4=;
        b=Ka/P4w4K/wB4nIi1Nv3SFTKisBqS+Ltg5pHVVx/IvGkX6Y/duVkZzSTC+FJW3ATV+8
         x8HOI0KgbAKKtOTNl7DBs2JPsEfjWPgDpBC3l8tisDffWq5YSf5hVpFiubZMNPQiD/90
         AjwmLFZNcgXHizO4JIOMYYhgMiIKxO5U7DwY4Kbu06Bo2ipVxSPmZxlumGaJLA7k6iP6
         Cs07LBXZLEsWA96dIEYW1gfI5dzUBF7tw8D9szZFbdouZrJ3bTilC+16ojOMFEolsrV2
         i16Ss+KrNanDKUAqBUocivqYw7X0T9tMWvoST9peiKUNpJ5Yn0m72VF5jC93gQqPyTBW
         zcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721934028; x=1722538828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjVlzTF2LGrnSzM8/4XkZMhAnv6fs+uvqifqYuqWfq4=;
        b=bRkxnepkLHG1yLoGD/fydwZLQ7Zr+IMclloHRvzP/TOQrfsxWg50oiXcxuPJw5KY5O
         ZSXGXvsW+8CbU/xxasDDl+mARxPv23EjFTj7uI16BpFnmr2z9SpIfV2dqLHp78eMumqD
         8LsLJ1gLbKLMnxi0S3SDtPR3beleESXf/qqgTBSHRbyGKum/2CeIioSFKcch4pluh3G1
         ghjhhY9TXzm26vput5+sD6ju42Zhc2Z6nIdyboS46V0XTHgYOwrwD6+PYI7A83j7dTpT
         NgEy4CNh1W1ZcbqIHwwggbhPTSas0p2jPtDy5Y2pkx/9EFvwrV1wy+dDpbR8+fwj39fr
         Ozsw==
X-Forwarded-Encrypted: i=1; AJvYcCWNJWgIy2UUyPT8Nn2+dl8ffClOYtT4pWyL//s2+jLHnOstAKgfJ2aT4MX/799McZwIJDahw/Sv9ZA/Cqz230QKLTsXWgNJxJskpg==
X-Gm-Message-State: AOJu0Yxg4iERgLH/kmJvduKzwnr5s/99XTps/+84AOJXZ2JbcZtRucz8
	lful0ZoKnk1eidST3WM5KRdMPeEI9c6IdBvB9tNQ7YC0ALGy+s/d0qVQZFQVEafrZIV2cslIftK
	4yCGJGjenTRRJ9e00WJ+kWNc7CraSbzC2Mvf5uA==
X-Google-Smtp-Source: AGHT+IGWrT6AGOjft7fPxfyGvYvCXJfttPv/nEZHz0d3KcIR2jl3mOL7uB8g8yrYQBh2WMamTXYhqpV0NrzQOqbsGCE=
X-Received: by 2002:a17:907:9483:b0:a7a:af5d:f30b with SMTP id
 a640c23a62f3a-a7ac508ab79mr312568066b.66.1721934028544; Thu, 25 Jul 2024
 12:00:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240724183605.4038597-1-jesse@rivosinc.com> <20240724183605.4038597-5-jesse@rivosinc.com>
In-Reply-To: <20240724183605.4038597-5-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Thu, 25 Jul 2024 11:59:52 -0700
Message-ID: <CALs-Hss0UpyR-NriR1egtBchssqRnhER=ND+4H1TbOk0PerS+Q@mail.gmail.com>
Subject: Re: [PATCH v6 4/8] RISC-V: Scalar unaligned access emulated on
 hotplug CPUs
To: Jesse Taube <jesse@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Andrew Jones <ajones@ventanamicro.com>, Charlie Jenkins <charlie@rivosinc.com>, 
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>, 
	Eric Biggers <ebiggers@google.com>, Greentime Hu <greentime.hu@sifive.com>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@rivosinc.com>, 
	Heiko Stuebner <heiko@sntech.de>, Costa Shulyupin <costa.shul@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Anup Patel <apatel@ventanamicro.com>, Zong Li <zong.li@sifive.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Ben Dooks <ben.dooks@codethink.co.uk>, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Erick Archer <erick.archer@gmx.com>, Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 11:36=E2=80=AFAM Jesse Taube <jesse@rivosinc.com> w=
rote:
>
> The check_unaligned_access_emulated() function should have been called
> during CPU hotplug to ensure that if all CPUs had emulated unaligned
> accesses, the new CPU also does.
>
> This patch adds the call to check_unaligned_access_emulated() in
> the hotplug path.
>
> Fixes: 55e0bf49a0d0 ("RISC-V: Probe misaligned access speed in parallel")
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

