Return-Path: <devicetree+bounces-54048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C871488F500
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 02:59:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B3441F2D8F7
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 01:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BCBA225DA;
	Thu, 28 Mar 2024 01:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QHkR7Hqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00998465
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 01:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711591138; cv=none; b=ImX5ekm/tnAZ4HS30CRWrZxy2AL6iFcRRBdpyv0EC9Y4+Un/CuJ1pfw1IquZyd5PZ3Ogw55bIe8e8GjbvOBoqG+LhOJd6v5sU9Sfo/WqDqCQcAJRltEowFnpCuihWfdMkb1ZW7MLHR0KMtIGkPVQfplsEqg/XV/27Iqvj84x7DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711591138; c=relaxed/simple;
	bh=V+fLpm5BwwJrjo47+xE5Bs0hRX9SdNxiYZIHQUfxlJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewpsMKtCJrMNyW0M0Z3/nD4ZlVgNLsDlPmd7AHa6k4Uduai9F7Bq/Twm1FFT3T2DBjRVBtTgTmQp9auYs6X1uEs+GCdt1XzWQt9+/+fu5HDjWFTUp4GssH6scEk/Q+y9iptat9D51+1ankIGWMelorpJUdpruQm7z5ke7pGynp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=QHkR7Hqv; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc74435c428so488446276.2
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 18:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711591136; x=1712195936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ixVd6sHhRte5be07PDHwpHq0YTAzRJfXqkR9VbnbXt0=;
        b=QHkR7Hqv63dY018Mcrn1ZXAxEeU1PFlPbKCAKcWmJHQqXcbhx+BE5RupFp/pGoKa2+
         05ZJnCe7n95N2mooj80s7KgWKJFT11zoVaZblbEN9OSpaodpgMjx6GbZ/ibmIkBq7Zu1
         e8/iKYEE4V7WVugDg0Jb/mVWGpg5KyQNW/XyTHJ0KGxc8w1sWI+hvRIKxd6r2CaJ6xUf
         L2uxWokBPS3DsIDiMINb/aIlF/5EpGRwZsSNbzx6Ss+EuEftv9Zpj+s3yZxK7B93KRgg
         SDFFAkYB5pVBCZxByJ2PTCsbsxk2a3Rw7FKWov8JOixzLV/zJEseXs3lxlYWr1eSj97e
         rXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711591136; x=1712195936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ixVd6sHhRte5be07PDHwpHq0YTAzRJfXqkR9VbnbXt0=;
        b=KjJflxK2dMc4Hp0WkrHvh7znikju8XsD8+vsCtnPzpKpkixodWB/FucbloKcdoBCgl
         yddfWcHQGskykn/WlvpUCQg7ZoPP5fU7of+wAY5SfJK71B0+bz+21SL+LvmpAcvib+tF
         f4VutmJYZb8kdYWvG1OwFTmaWeycNB5k/Dp9HL6kmmdOQWMSJIdXaF9tcWHzt0asH3xH
         JkjmsGPBwUw9dAsqUh6yN5uKhajIMC7AQmbN8IzGiZTn3Qc8pydwEdhLKDlUK0QqrZwZ
         KmXc5lN+PJp3a4/8h3Y5+JT3BokCzZlq/fDYJiMskMrvPyKS3wEfCOGtR2L/+FlL9QnX
         XfNA==
X-Forwarded-Encrypted: i=1; AJvYcCU03brctOh5mbd96Dn7pZA7Z4o682uzjhHAOiaUHNB2EnCfT1BGEeKF2FsjFlCBwbvZZkeinc04bIn9ubbOWOmWSOst6lHgH71F1A==
X-Gm-Message-State: AOJu0YyGd2XnYrncM+T3NBig24+0mmPBjGWfxnSoZEUyOHpCvgZLd/hb
	BIy//uQ+SfpONLBxwbnb4hUF23GjpP7y2e7Efr/CInseBediNN324ArsZe0qzYSa1ETmRs/r0Vw
	ZyAyPr7O359m9wXOpum6jHXOp8RuAVGBCmc8Wwg==
X-Google-Smtp-Source: AGHT+IFVk742SrsLxx/xN8qOIT0jNnA3IKiDDXlmlpeVRfNvYaVFpDTr5g+tJ4iscdYuJ4oZ7FJJqUipXvjVYpIdzJk=
X-Received: by 2002:a25:860b:0:b0:dc6:9c51:760f with SMTP id
 y11-20020a25860b000000b00dc69c51760fmr1468859ybk.56.1711591135824; Wed, 27
 Mar 2024 18:58:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-6-samuel.holland@sifive.com> <CAKC1njSg9-hJo6hibcM9a-=FUmMWyR39QUYqQ1uwiWhpBZQb9A@mail.gmail.com>
 <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com>
In-Reply-To: <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 27 Mar 2024 18:58:45 -0700
Message-ID: <CAKC1njTOgsOCpLMCch_YBE+qDoewADhzWwjjfX9nhWCS9hs0mQ@mail.gmail.com>
Subject: Re: [RISC-V] [tech-j-ext] [RFC PATCH 5/9] riscv: Split per-CPU and
 per-thread envcfg bits
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
	linux-kernel@vger.kernel.org, tech-j-ext@lists.risc-v.org, 
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Guo Ren <guoren@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 19, 2024 at 7:21=E2=80=AFPM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> >         else
> >                 regs->status |=3D SR_UXL_64;
> >  #endif
> > +       current->thread_info.envcfg =3D ENVCFG_BASE;
> >  }
> >
> > And instead of context switching in `_switch_to`,
> > In `entry.S` pick up `envcfg` from `thread_info` and write it into CSR.
>
> The immediate reason is that writing envcfg in ret_from_exception() adds =
cycles
> to every IRQ and system call exit, even though most of them will not chan=
ge the
> envcfg value. This is especially the case when returning from an IRQ/exce=
ption
> back to S-mode, since envcfg has zero effect there.
>

A quick observation:
So I tried this on my setup. When I put `senvcfg` writes in
`__switch_to ` path, qemu suddenly
just tanks and takes a lot of time to boot up as opposed to when
`senvcfg` was in trap return path.
In my case entire userspace (all processes) have cfi enabled for them
via `senvcfg` and it gets
context switched. Not sure it's specific to my setup. I don't think it
should be an issue on actual
hardware.

Still debugging why it slows down my qemu drastically when same writes
to same CSR
are moved from `ret_from_exception` to `switch_to`

