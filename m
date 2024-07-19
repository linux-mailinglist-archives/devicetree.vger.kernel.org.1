Return-Path: <devicetree+bounces-86883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 931A4937D15
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 21:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 155112815C8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 19:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9401487F4;
	Fri, 19 Jul 2024 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="A+R42Y3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C4A1465B7
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 19:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721419053; cv=none; b=gocWMFChhOZwE/SKifeUp0CwGrh3FmE/mlzflmvk9igVmxFpYZ9tIe+WGW5KfsDAmDgkB4J+gQHcJ9TDWuj8G3i07kAVFKw9WaRHmIYXXDwrKWWl2IdRybUiXAnYy748PotkFYw7+dyIp1d0hfyPsR35UDTic8UheU2glaZGPG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721419053; c=relaxed/simple;
	bh=B8aLNC8rU70Zjs3Uh/UPocyKDEXo99TS0oP0YsHJFOw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HouMdF5RMu6/RUiuCzCfH0qmuXygBG9W8bUdXaPVBg+xbeWB/ppGEKFUzSMAXafY+ECqMJo4uQW/WYaFH4Vuqub0KAZXb5iqrOzO1W/dgHSjDLNgfbhlvXoJD8+s2b6XjB0FYBR6uo6Rea0AYIjyXkXj0KEy5QiAdLhVrOgtRAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=A+R42Y3m; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52e9a920e73so2315419e87.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 12:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721419050; x=1722023850; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B8aLNC8rU70Zjs3Uh/UPocyKDEXo99TS0oP0YsHJFOw=;
        b=A+R42Y3m3ym4LzcnmLSS7/8k7CTsDnmjgpQcStQK2tcUhTLfAqQ8Y0hyBBAq6GIvi2
         kgqLjdUIT3auWETyaWc0OLZtLA4AKh2o9mb9qs7nGju2i9KBx5xJ4IHml5OY/QeY3Pws
         RN/Vy0UWCzP3fQPzVC0hRST6EnRaK/RjZHj/lUHL9+dPoyP15KwCDDSlf/WD/FYJ0f07
         gCggk8+/NLxyjnGNYN6g3JvaMM0Rnqdiz65Ee2em2rWaXhA296hJqxiaKryrisvBW99O
         sWIgayOl1Rb39si1ERv6kfkGeKzWmRYSU6YfBmTrMVp2vd/6jeVzQai4Z6l87LY0DG9e
         51Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721419050; x=1722023850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8aLNC8rU70Zjs3Uh/UPocyKDEXo99TS0oP0YsHJFOw=;
        b=NkzGi7ltakVsf/pUh3PhoLXfpHq+/9z2lUcyRhMuvoyx6h2L05krEH1NWi92sou+aT
         heq6fL6Jiw5o1/n1ULBtRoFImBbM6Cb5yU1jqu7K1OCDWO6AtQDo37149q9+I03ouH79
         GNi8lgXj1qsLoMuFEAwmeF/GsmL9BLqM/O+fdN/drKgEBF6lOs4Y2TVrBUt+ulFhxXIA
         EDAFpvaF0oK+qNYjh44iRQne/7CbuwzxS0ErWWpw/aeJ/Gtm1+28fq7F2hvXx/alOxYZ
         pRl49K465Y6ZMcpiE0kJVVfYTWSGrTY0aKsBIRX8GjVj+fkSK7WFzYEWn83Sa2CGwBsu
         RblQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsXwnMOUKXfv6OEBWJPchs1PeUyfNuO14B3pNEGsdw+oZhhPdVlO72nPf2VhTPGqkGhqx7yuJK8Y+QgZXCrQId4IvozIkOZGfx0Q==
X-Gm-Message-State: AOJu0YxIeLSpUUXH5DhRJXccbirxAkbvJlhwo2q8s6PSTibVq0wYU2Gw
	aiv2UF+N58Ce0pvJcNbVtB6gd9MxKjAamBKtyrvB54WszECIP4Z5z+Qlfmpe5k3UHA92+SSGjBx
	m4nRN9bN37JXlFZFH5qiY2hBbyh/OOu/qzPUobA==
X-Google-Smtp-Source: AGHT+IGLg0Zec4iHQMawiM7bkM9+i3kahZr0JAjZ2I8oWLHvoCCPg25fvrVDiKEktiVDPxl/yiCHdhaZSmY8GsEWCOg=
X-Received: by 2002:ac2:4c55:0:b0:52c:e10b:cb36 with SMTP id
 2adb3069b0e04-52ee53dc66fmr6231799e87.33.1721419050254; Fri, 19 Jul 2024
 12:57:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240717180727.4180475-1-jesse@rivosinc.com> <20240717180727.4180475-8-jesse@rivosinc.com>
In-Reply-To: <20240717180727.4180475-8-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Fri, 19 Jul 2024 12:56:54 -0700
Message-ID: <CALs-Hsu-jNSpoOq836GQjREChEYVWy=osYzS0KQzBB79_uKSrA@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] RISC-V: hwprobe: Document unaligned vector perf key
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
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2024 at 11:08=E2=80=AFAM Jesse Taube <jesse@rivosinc.com> w=
rote:
>
> Document key for reporting the speed of unaligned vector accesses.
> The descriptions are the same as the scalar equivalent values.
>
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

