Return-Path: <devicetree+bounces-58822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9108A3449
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 19:05:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEC321C23037
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A40514C5AA;
	Fri, 12 Apr 2024 17:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Xr7YNenY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F7C14BF8A
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712941496; cv=none; b=kSziFaTdi51NwjGf6yKyXSc6BLMmuoIhoLLhjc7br4Nzj8yKhHIsGjY63MlTEPJsMiRASgnq+qnjaF+64FfpfqAPs5m6eN7MiSR1bJJNF+aXKzWIFj9u9uW/zOQJC6fmjySM/ojMQIqeZa3BhyR8cil9Qg16KwLiA1lpnpv+Wdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712941496; c=relaxed/simple;
	bh=tYOCD7qA19/JAXwkJAfYs6ERNWjQ6TGuUnce7Ev3h1g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tx1R1jYXfZ+LtwF9KSO2FukKJ6QhmtPYDYD/oUQgLQxvAcaiiBnihh1xWHON3fpneG2IZtFQn09I6vA9WjFvQClWnp6etHI4FFY75tK7raC0EhPNnfmbk3ZwvKt808uPx7rzmATqKzazIy2CFOZT+Fwu4tXklmGceI48EJHxWUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Xr7YNenY; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d8129797fcso11554781fa.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 10:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712941493; x=1713546293; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tYOCD7qA19/JAXwkJAfYs6ERNWjQ6TGuUnce7Ev3h1g=;
        b=Xr7YNenY6z2UXlDKpvatz9/y1VFS2A730bzjHAjR79X8VFwTti2DMi3xML+1KdltHW
         D481BNNJNaMn82LYh08nxknUD3HZhhUuTB9CScjtNbIkClnjmPgIriaj9+V78+LyYgo9
         ov/9zQvH0yMwqe4rD+uonDlmQnsQ8f0AThhngxcA2quv5Jw0E1edq7znJpigHEcn+Jef
         VN6+a0YxzHcO2vLQvfPrXD0M92LkZc1NOVs1a23n6R8YlIEoX8V4xFjeM9F136dSSW80
         Eub5ov14n4cpEpK6aXVPojI7nMz/6qidBx3qkqUrj0h9Q9QAuBa25sNfueiSaAlpuBC3
         iL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712941493; x=1713546293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tYOCD7qA19/JAXwkJAfYs6ERNWjQ6TGuUnce7Ev3h1g=;
        b=ZFf1ujBwuMRAnvQ/NKEZy4Lmke51tkohZQ8+DUePbSok3pF/ntE/Q70e34wgbArih3
         x8gZwXtSN1A665ioCGSNExGypiLMkNG6erS8jBDaNvVLomdkX+QpPaPLDFXs8wtGMq0x
         fm9dkjCfdV9pmek2d/FRVVuTYo9vkPqNREfWsN3WkanpsE0DQHx6MP/5NZ3Q5yVCst8e
         s6+M1pPUwb/x3JaD9H0Kf/MF0xTXO/xlawNlgU2jeWBMsuqhF8QlpFV9WW7ZRHaZGYSt
         AoOoWl+dkaHkn3aqkjoG/QOA9SL6rXufoQS4NUc2PDWR+tNvrwBaxGRdm4fKL1THzF7S
         wQKA==
X-Forwarded-Encrypted: i=1; AJvYcCVuCid1YA0GAMUdrXvqaFnThAAIzh6iX+ZNN7+7jAJj0uZX1kz6kjK5lcOiE2YFLe1mpYTB/tyPdE3OsqiGX4ZoOkyULtjnk40WqQ==
X-Gm-Message-State: AOJu0YyiB+kqdubkx8F2pjbLZDtjcT6p4bXPZhe42wrPmC+kjD4ob+K4
	6DjvJhcL0BusUxCGfwvK8yHRAi5wiI1PR+ooBAh2AT7naAlXUkfkgHag3+nl8bt+JAMY0pD644c
	JELCvisOaaA7VhcNTV68KHJOOijTKnhrWJ+O2JA==
X-Google-Smtp-Source: AGHT+IEVhmpSPd185VDGAisXX5CbjlYY2cqdA2jBznkqi4gMJsx6SWiduJXurWu4KxUaLTi372RCaB93r5g8yMqVxEs=
X-Received: by 2002:a2e:95cc:0:b0:2da:7af:e6a0 with SMTP id
 y12-20020a2e95cc000000b002da07afe6a0mr2360061ljh.38.1712941493181; Fri, 12
 Apr 2024 10:04:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-2-4af9815ec746@rivosinc.com>
 <20240412-tuesday-resident-d9d07e75463c@wendy>
In-Reply-To: <20240412-tuesday-resident-d9d07e75463c@wendy>
From: Evan Green <evan@rivosinc.com>
Date: Fri, 12 Apr 2024 10:04:17 -0700
Message-ID: <CALs-HsuMZOMpDh8kwQx6FE2mawzt+qTD-WZ6Mvhrt+hUhkZimg@mail.gmail.com>
Subject: Re: [PATCH 02/19] riscv: cpufeature: Fix thead vector hwcap removal
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Charlie Jenkins <charlie@rivosinc.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 12, 2024 at 3:26=E2=80=AFAM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Thu, Apr 11, 2024 at 09:11:08PM -0700, Charlie Jenkins wrote:
> > The riscv_cpuinfo struct that contains mvendorid and marchid is not
> > populated until all harts are booted which happens after the DT parsing=
.
> > Use the vendorid/archid values from the DT if available or assume all
> > harts have the same values as the boot hart as a fallback.
> >
> > Fixes: d82f32202e0d ("RISC-V: Ignore V from the riscv,isa DT property o=
n older T-Head CPUs")
>
> If this is our only use case for getting the mvendorid/marchid stuff
> from dt, then I don't think we should add it. None of the devicetrees
> that the commit you're fixing here addresses will have these properties
> and if they did have them, they'd then also be new enough to hopefully
> not have "v" either - the issue is they're using whatever crap the
> vendor shipped.
> If we're gonna get the information from DT, we already have something
> that we can look at to perform the disable as the cpu compatibles give
> us enough information to make the decision.
>
> I also think that we could just cache the boot CPU's marchid/mvendorid,
> since we already have to look at it in riscv_fill_cpu_mfr_info(), avoid
> repeating these ecalls on all systems.
>
> Perhaps for now we could just look at the boot CPU alone? To my
> knowledge the systems that this targets all have homogeneous
> marchid/mvendorid values of 0x0.

It's possible I'm misinterpreting, but is the suggestion to apply the
marchid/mvendorid we find on the boot CPU and assume it's the same on
all other CPUs? Since we're reporting the marchid/mvendorid/mimpid to
usermode in a per-hart way, it would be better IMO if we really do
query marchid/mvendorid/mimpid on each hart. The problem with applying
the boot CPU's value everywhere is if we're ever wrong in the future
(ie that assumption doesn't hold on some machine), we'll only find out
about it after the fact. Since we reported the wrong information to
usermode via hwprobe, it'll be an ugly userspace ABI issue to clean
up.

-Evan

