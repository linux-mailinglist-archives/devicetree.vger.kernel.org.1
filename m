Return-Path: <devicetree+bounces-88193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 746B193C889
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 21:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E416281764
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 19:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434274779D;
	Thu, 25 Jul 2024 19:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="1488DJbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDEF25569
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 19:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721934017; cv=none; b=cT7b5dtHDiSVfpGoOcL4ltOBOUZbEnyXmMfxo69gQD7WhnPrAHg5/UDnKKbu4AuMPJG/GttkDPPMI4VLiDcYC71hbv2QDrvxdFd2v7oT3V47hPc98qt8kXcuygc8duHj4/ZW2qLAwQmPAPBJCv+YXRlbM6MRQCAY8x6SG8FpoHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721934017; c=relaxed/simple;
	bh=1SXRSsqZz92FEOTrBrR6i2ym9WcdF3m0UDq9oqJ8/V0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WUVmxqJcp8w5TW47gI7oSI1SCGXQZ+LyOvbuZXD7u9uiWyfbCFebWXDWYHYqP57W+49zSlIRgs47W1z8fO+PXaW0R2JoHfFxaEMmLQ49R4+V2s30Xi/NNb4VVKoR/fmeEgVtC7eNBP57GJathzjEHysqpvS1CCdW0x7nD79wSAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=1488DJbz; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5a1fcb611baso1573572a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 12:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721934014; x=1722538814; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SXRSsqZz92FEOTrBrR6i2ym9WcdF3m0UDq9oqJ8/V0=;
        b=1488DJbztqYCHXzB7B5mGAk/fo6Ugg5q6sb+n9cCS3SRS1qhZuEDxglsrVxZWUEGG3
         SPI9+gfxBm008vrHfocqcVP3YhDj/W+zgeGnvM51C9qXoor7ZVJBPpBaNEXmdjCVft7N
         DoMPSGBP/J+1uwnZrr0Aib0aZaj26+CaDmOXp6FxQNyN++qh5c9HXmtNzNs1qI3IJuNY
         TaF/L7J4Tpn5OIokWvNOhi8Hubs47aa6/uRtBJgKx1kagvQqrcTcA+Q0b8SJJILQP714
         YPGJI5Y+EeGj9XLNKa34xsqVx2S89fPlwZFTXTeKnY9o1qaouLucFKlQupLDee42HrP2
         uIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721934014; x=1722538814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SXRSsqZz92FEOTrBrR6i2ym9WcdF3m0UDq9oqJ8/V0=;
        b=em4ril9u4BSVFtKVI+Q+t+5GBF0gokRenz3nyXMAetjW39zxxJfwxAZLO/1uWA8Mg9
         awrMYYV+p7aPcr0B/tUZfRkxjmKhIY1VBlDHHtQ7q4DnvhL5E6kvkjfql+sRVSt03aJs
         DIHE7Zpys9lO1zFzopq2voIHERoXCcNYPcI2Tx+TG8HyVgN/V9pqZeCTI+bPiO9v8epn
         MNraWp7GflvO0BcBeF0AiriQo17LkFY1GKWJ7+d0BdbnT8ECY9odLFNEDJuXR0+YyUUY
         DT6YYe4SZTWiBGgjvPXhaQF2xMcmtq9qobaND2ydh5Wj/izIiIUOkfFOMM7GggDE4CL/
         35rw==
X-Forwarded-Encrypted: i=1; AJvYcCXjQ1g39iqD9GpZZ6YWcIbC5+lHI3EmdZbH5PhzDwOv5jFdAbFGqBVeDBxZC05Xi31Nf7pfJOQ1kxtx1ZoDy40+QyelqBWhO3HScg==
X-Gm-Message-State: AOJu0YzaShmHmaMjSN2hMHUPjV/JCOwd34dk5HIDvsD9a4PFZMc5ZgWB
	kCTg8LIJYHDM0yqP3GlnWK72WM9uGSonDgT4KpWd+iDoVEbEek5aUUKhZFxryNTCEkGcqELbN1J
	M7OMkPi4z14V4+0XZgEYwKkKysyG1JZdFHgSo0A==
X-Google-Smtp-Source: AGHT+IFHUqdSVej/FJ48bmkUm2ijOZ5NIMkgNmJ5x7nyiK8ULyjrs0OUa2kOhzuQ5Wr4IrghMERmj1LuPI17mje/MmQ=
X-Received: by 2002:a17:907:6d0b:b0:a7a:b9dd:7766 with SMTP id
 a640c23a62f3a-a7acb4f9362mr226470666b.31.1721934014047; Thu, 25 Jul 2024
 12:00:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240724183605.4038597-1-jesse@rivosinc.com> <20240724183605.4038597-4-jesse@rivosinc.com>
In-Reply-To: <20240724183605.4038597-4-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Thu, 25 Jul 2024 11:59:37 -0700
Message-ID: <CALs-Hsv9KTz8crZ3BROuug-xzA-d6yG8wQR-Ny+5qmazhFHWBA@mail.gmail.com>
Subject: Re: [PATCH v6 3/8] RISC-V: Check scalar unaligned access on all CPUs
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
> Originally, the check_unaligned_access_emulated_all_cpus function
> only checked the boot hart. This fixes the function to check all
> harts.
>
> Fixes: 71c54b3d169d ("riscv: report misaligned accesses emulation to hwpr=
obe")
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

