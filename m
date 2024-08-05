Return-Path: <devicetree+bounces-91161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C222E9481D0
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 20:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81EA12884C0
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 18:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA17160873;
	Mon,  5 Aug 2024 18:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bXnClPrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9E715F3F8
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 18:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722883143; cv=none; b=aFe+zihZv3AwjEKzVG0Cqv2RxaTLbTi/4PglTThb60/y/YG7CXztiDpT4ObNzbWkrAu2FgM0bwoEiMSfvuuBMHehtr/Z55Pfp+LY+qwZ6JtsgrY3w/nTVYy62FBerY2jNahS7og7saJlfrLrYsaPAykOLS8iT7WwbBKc2hFASl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722883143; c=relaxed/simple;
	bh=Z0fHi9KsdL/dhg3Iq7FZic1Ag2yGSv3KBsY4wPIKoXc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hyvudz1qKQFWyjfsjSc3EerVbAcyuQJId8y4SVhvtS6xXiW+dz6BJjVFxnyP1+UDM6UIPFfTrkTfDRScGT4vB5LPEQr8TH6YfuVt2u3ifaUulDILyWkzsSlWdSUOofZUuhIh1p1XDsRUXhGeFrFAA9B3Jf20GdirCCDmMNCzfAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=bXnClPrm; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a7aac70e30dso437557866b.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 11:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722883140; x=1723487940; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z0fHi9KsdL/dhg3Iq7FZic1Ag2yGSv3KBsY4wPIKoXc=;
        b=bXnClPrm5Vo+8wowLG5mnLFsfE0X3DO6Xn06uYQT4fsbQAlsGbcgfNO+q/WFPYEPZK
         WYwFbNRw/Q0nN/93zpi4xdFi6hZXeMrPVQjPYE6fuBMidBjdEmm5pVbEZhipf3OYSPNl
         FC5kIXBbzlvAtuAuOSUy/zC20f5EQ9e9Xa+oZVhBQ/2QtbbUwaLsFoAEqASeMUsj5Uz5
         u+enWYgzgPIuIilTZLeKpyHe88ejmPzIfI6s3Xvky8PNow5JcJ+G6MGQhtrHbNyEW2DA
         n+R0fTar9ML/DeqYabZgDbczjMqjcVY21PFgRXdmpO6UTZ4fHb8YVXbohC1xk5/gEb2I
         Gpyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722883140; x=1723487940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z0fHi9KsdL/dhg3Iq7FZic1Ag2yGSv3KBsY4wPIKoXc=;
        b=WqbdKmO0Z2fLswb/Iyf3Bey70hgmHPozAwhvvSFqeA23GOxo+AkNJ7s95azEWNmQWc
         QYX0kd736zCeGID8pN5YiYhj1Av0u/i8iHmI1Q4UymCYeyvg5VZjeu3L7vFuPK+zBSf4
         plfPMzRM4JxuGIVDlcOLmwnj4OxMcsntVDfGyN/T7HIsyHCTQIBcXzlBEwN24GZ4uTEV
         LQLOBdpgeGk7HBAFRiYOHQfaSV0DM4tNorg27HQ2kNHbUsIAMTCpn2t6uPxqDYsIYAkO
         UDaWsArOeMVoUhprDX2qWLTE9arI/YVeYmEbYoBHMXfkuWLo/4iTajCGTEhv94dBuNeJ
         RkZw==
X-Forwarded-Encrypted: i=1; AJvYcCWv9n6dpk9iIA8FrRjK7T5+0NY8VLzNLfv+6dnEz2odQvGmaLffM68jppHTCjop3aqb0BhiDAPqsMgF1+kLWQSejmT0E/wmUq8mbA==
X-Gm-Message-State: AOJu0Yzd8kC8RwxsMT8vr+c8EST4xxQp9+V0EL8BCXTSMTEXvi7yYBzv
	Ug/+VHmtFE+Ujq7kXcQV24HmTQrMqS8wTUIQ651soaeVQLA2YRkIbpWo6RKdg+Ihj4B1vC75IGb
	w7PMa/Cp1sIdC5Lqya8ixlvAO50AiSglBNViw7w==
X-Google-Smtp-Source: AGHT+IHGDWiYA4gxxfNGX16WDAPwnIZq8VLG/7+YcSFFrHFbrxAB9lU1euM5kVqthhxJ26B5ZI3RZy5fWZ0Q/yhpQmQ=
X-Received: by 2002:a17:907:7204:b0:a7a:b070:92d1 with SMTP id
 a640c23a62f3a-a7dc517b48dmr937619966b.46.1722883139711; Mon, 05 Aug 2024
 11:38:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240805173816.3722002-1-jesse@rivosinc.com>
In-Reply-To: <20240805173816.3722002-1-jesse@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Mon, 5 Aug 2024 11:38:23 -0700
Message-ID: <CALs-HstYwwgPAOP22V1A6iTX85eRqRp4b4039pewsDHus_dLgQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] RISC-V: Add parameter to unaligned access speed
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

On Mon, Aug 5, 2024 at 10:38=E2=80=AFAM Jesse Taube <jesse@rivosinc.com> wr=
ote:
>
> Add a kernel parameter to the unaligned access speed. This allows
> skiping of the speed tests for unaligned accesses, which often is very
> slow.
>
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>

How come this is a command line parameter rather than a Kconfig
option? I could be wrong, so I'll lay out my rationale and people can
pick it apart if I've got a bad assumption.

I think of commandline parameters as (mostly) something end users
twiddle with, versus kconfig options as something system builders set
up. I'd largely expect end users not to notice two ticks at boot time.
I'd expect its system builders and fleet managers, who know their
hardware and build their kernels optimized for it, are the ones who
would want to shave off this time and go straight to the known answer.
Anecdotally, at ChromeOS we had a strong preference for Kconfig
options, as they were easier to compose and maintain than a loose pile
of commandline arguments.

The commit text doesn't go into the rationale, intended audience, or
expected usage, so maybe my guesses miss the mark on what you're
thinking.
-Evan

