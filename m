Return-Path: <devicetree+bounces-141469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE88A20D71
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 204F7167F1B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731891D63CC;
	Tue, 28 Jan 2025 15:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NxBpCUpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8738019DF61
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 15:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738079252; cv=none; b=agQtqzgLkhbBWdlCJ1pprxm5VkzTTJz1yzbafrcQgEGdfuIOPwWZbSiIiwdBepOsTTDDcFDpuBNLKphE58e0/ZmWs8WBRjiRsnvDMaurOkuovvgS5jgh9jKzuBGjCL27ibAwi09B66LsvjwqZRh6VAVj9Ulbw7RFp9Kj5IDKlw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738079252; c=relaxed/simple;
	bh=ORpfm8gqz7BJwSi63RXYjOXHuDS2RzlvCyhJKnf9cco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=smk1ptIrKCr98/lzQrVe3sqf/E+mYVCP/3bbf5SJZiHZHPvbh7yecmAa3BfDQZ1bObIDAgICWcEjxLU4LCPFyJivcO1X5W4rsfBj7aEDh6y9h4K9C4HRosZ23if+lHGzv3dqtEb24zm1m8DRgpcLzK2g/7TOqkAzhqxVBamk0oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NxBpCUpb; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3072f8dc069so61711801fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 07:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738079249; x=1738684049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ORpfm8gqz7BJwSi63RXYjOXHuDS2RzlvCyhJKnf9cco=;
        b=NxBpCUpbTd37+jRA4l5TsQ4NW4iaAg1mBr2hYu8v/WMNc/Rq5w6wQ5KCK1TPajNeGs
         QSb92YLGFhffN9LktqByjZsUMDYZ+0gJW0m4wQqebzBzZEmXeyiovBqmYKh6ojuju1b1
         Ewy0faaYc9Gzyr0Q3itBmnm4Y6vjYiHPjzb2nlAYN4RneqPydmqrwP3aKL8sJ6c2z9wm
         w+uqU7YR5yJuIiNOsVx2SHszb6l1ZGm6b/Q3dHF/978LBZ1XBaxXUnR8bHJlYz6NqwZi
         ci4VO3VXQvmg6sspSFDO6F73bAdldMx5aWr6l1tswziMp8dlQ6hA7nemSFUkXhVHKk60
         iavg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738079249; x=1738684049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ORpfm8gqz7BJwSi63RXYjOXHuDS2RzlvCyhJKnf9cco=;
        b=S3eF7KnVELYakkPhUPf6C9GUcx+fpIIObVwXQzZY0ebGCJv1lDZFx9zqBNTvINbPbH
         KS70rFV6wK3MV1frCdFbKtb4dFKG0hnKVFv3VjoHk1qw3WvVv5henkLrQL9gdGdFp9zv
         phFuXyq8BUHV991hZCxc3q99A1Do6URQ/+zyr4kQAklj82dzq1TiSCOfGxgZyVLOnCii
         7FrC3H0MPLBH8mnsFkHNuCj9zYHs2RCPKDGA+VX5JichZltoJtvkiqBWmnD6FUzHb52q
         0oTiXaJn1oL8q/rbgSr0gE6/5ZdUJ+9D+lh2LsHptxVZT8/daJueAMVpCRFAEnGneSOu
         oNHA==
X-Forwarded-Encrypted: i=1; AJvYcCXA24FyH5Or5viKoy1uT/eE7mxE3NHWhB6U5fxTyaBPktY6wD6VMoQjMZszx2WNez4ROOe+HLrG7SlG@vger.kernel.org
X-Gm-Message-State: AOJu0YwUggrhh0+CVem7+0BFM3asGNhlekSwoll0T/pvJe2+qNPt+AHQ
	q/uB/is+nA5+Ccd01I73EEvdkjvJfZh2Mu/4kZ3iC6jRjrbnsx+aNK4d59294I6DDxvPbWVEZeu
	VehHjV+t27l1fggh+Hhf00Rww7QSZUjQ1vCiSvQ==
X-Gm-Gg: ASbGncvaZCQDE5jyuE3sKFePXk/rI1gIPea8cD+R7xO9uwtLn4wzA7aI2pvD8Kxcd1R
	10AqbXtWHAHLcEAAwEqCkpU8PxKfM/M2KZLQE7L0CkTzunXsqGpWp45JXZWFbqEKEK2a6dqA=
X-Google-Smtp-Source: AGHT+IFzJzZ2trars/DKC2OeK820bAEA4OESZ8xv0fZ7CNGPrWwWN85tqO2dBttYZ+HZbEEhgHIzk9XO6G2yur8X4WM=
X-Received: by 2002:a2e:be27:0:b0:302:4132:499 with SMTP id
 38308e7fff4ca-3072cb22561mr176573531fa.25.1738079248573; Tue, 28 Jan 2025
 07:47:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250121-03-k1-gpio-v4-0-4641c95c0194@gentoo.org>
 <20250121-03-k1-gpio-v4-1-4641c95c0194@gentoo.org> <Z5FPJLzAEVXGWJnE@chonkvm.lixom.net>
 <20250123113042-GYA38135@gentoo> <Z5LOdh-4UxRtteOy@chonkvm.lixom.net> <20250127181726.GA538260-robh@kernel.org>
In-Reply-To: <20250127181726.GA538260-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Jan 2025 16:47:17 +0100
X-Gm-Features: AWEUYZnoc3lmDNNFG2cVuqRGGhatacTuYZ1Uow9WWWXEfz68QbxO7Kxh6hOpHpw
Message-ID: <CACRpkdaj+cJFsYqJF5OY0v=Och6nxnBKV0C9aWb6-aLZhZobdg@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: spacemit: add support for K1 SoC
To: Rob Herring <robh@kernel.org>
Cc: Olof Johansson <olof@lixom.net>, Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 27, 2025 at 7:17=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> [Olof]
> > It seems worse to me to misdescribe the hardware as separate blocks
> > with a device-tree binding that no longer describes the actual hardware=
,
> > but it's not up to me.
>
> I agree. It's clearly 1 block given the first 3 banks are interleaved.
>
> If Linux can't handle 1 node for N gpio_chip's, then that's a Linux
> problem. Maybe it can, IDK. The lookup from a DT node to gpio_chip just
> needs to match on more than just DT node pointer, but look at the node
> ptr and arg cells.

Any operating system benefits from modeling the GPIOs such that
one set of 32bit registers [r0, r1 .. rn] becomes a discrete entity for
the OS.

Reasoning: any OS will want to be able to control several lines in
a single hardware operation, such as a register write, for example
to shake a clock and data line with a single write_to_register()
operation. If the hardware is described in chunks of 32 bit registers,
this is easy - Data Out Register, Data In Register, Direction
Register n bits, if an multiple-write/read operation hits this entity, we
know it can be handled with a single register write or read.

Yes, the same can be achieved by hardcoding this split into the
driver. But having the binding like such encourages it.

foo-gpios =3D <&gpio2 0>, <&gpio2 7>;

both need to be set high at outset, well they are in the same
entity and controlled by a single register, so (+/- overhead):

fooreg =3D fooreg | (1 << 0) | (1 << 7);

I agree this hardware is harder to classify as such since the blocks
share a single IRQ line - if they had individual IRQ lines it would be
a done deal, they are subblocks - yet shared IRQ lines are not *that*
uncommon.

Does this modeling reflect how the hardware actually looks? Likely.

The way GPIOs are built up from silicon io-cells are not that complex.
All the 32 bits from the set of registers will be routed to consecutive
pins, looking at the pin layout of the SoC would confirm if subsequent
bits map to subsequent pins.

Yours,
Linus Walleij

