Return-Path: <devicetree+bounces-248034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7DFCCE37E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E9F8300BEF1
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 02:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9700D29AB15;
	Fri, 19 Dec 2025 02:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0fUXvrYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAD728A3F8
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766109819; cv=none; b=ZkNtRNIiKSU90TpKC21+eGGGTP8bE1OHN8wbYrnaUNNUBsIxALSC++eqvc157mScvZhDEWrZ6GfNVxuCYVDiNBDpABg0JzkB10b0CdsY3Xcq7sW/kLmyzQtxQ+U+q9R0vdqjiFAXknmn4FTQXtjF6egTRkJcnBiDwNOn7c/Dfgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766109819; c=relaxed/simple;
	bh=jn6QuPA++N1bgXfpVmlEfC+EqcNWQZM9P+L4OYC6cOw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BwR4APxMr8Nff9+zdZ59+1lPpxWP5mZlr5aIS+33azh0ZTBn06VEvBIhWdlrg3G5Z4VsloE4pO+1uEOhOM615Tbkyawv8xxGfKkZqJjIk7Dl6Ra8nYBtOk4FgKMDqVYXnws1O/nmceiglLKu9TXAQqwGuzclqp9UH18y0WQupWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0fUXvrYw; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-787eb2d8663so16909427b3.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766109815; x=1766714615; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4uRThTCFzR4PpfCdouHob+PVTUEweX/F6eTcDNk5cc=;
        b=0fUXvrYwF7oNNCKeCsGKL6qb3pM9FZNE3EXmqBtmqKdAUcbwgzKtXzMC8CSInZcund
         ZJw8dyG+1C1Imyrhq8MtTjB3GaVLDFgykq/lUQz2FmEZ0yfno6ROKDJuEdoB5NRmdhTR
         /u1lfy/rGS5vdq5TkJQRcjCKq5vP2sQIf0OIHYQ2doANXXCCiPQaFLC64KLwsc8yE8Sg
         On8479W5Ffd2D/cPl1uUg0rm7gdNHuDf0f/rOM61Hy0dx0p9CLhCjRqnZBHu+SCslxVw
         tAIKe+9KtPCnQAu+OG6TE+4DCBIdsE0ff+Tp3RY7yflT1DCEgmXSiR9O1DiIKLTigCIX
         INFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766109815; x=1766714615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y4uRThTCFzR4PpfCdouHob+PVTUEweX/F6eTcDNk5cc=;
        b=MJAXrBfVI9wxxL0Bj4CusBlwQBqYLhbR/Yrp7Ffp2Z8uuyDOdHryKo1tEvrg7a1qbP
         FoTFtw4VaC10yvRNOKlYB7Ui0XpihKpOBqzcVvNC4zHqfUw9oOCn2rNYuD7vPOE6S9m/
         IP9BkRy89Xq1f8RnVJ4uKQT/pBSw6hTCP5JK5OhVFzbO3F4iNzA0JUFwTU2Y0s1M93ay
         o+1d9Yyv2t+2UD14wOq220zYpzm4vWMlbVrfhYgmtorq/qBxPsyYGoxTzx9hkJyghuxQ
         gVjAcQF3cCCTPXa0mJzpFkSBznwaqTMCFv3H9gTW3s+pfQFCucy00qe7RM0zWRjkDoNd
         Ilyw==
X-Forwarded-Encrypted: i=1; AJvYcCW9jM/+iP1LnCWsrSVwRC4xDXRzaqhMfNZGsFQafJPuGUGnlXf1lDC0A2C/htMqpj8JFHnD6RWwpl0I@vger.kernel.org
X-Gm-Message-State: AOJu0YwthAeWXhS44O6fP8vqD8ONSzo93F4Ft9mHkn/USxemCUDXrXRS
	DojJI5WhLO2YsiP9IKMAAW5kuXRtkuYrUuvw+6H4jO43AGGNOKxWnXdlo0VVxKQ184DPJe/f4U6
	MjBINwp/fXh6/vVFzDg7KiwPZ9So4UBRjWa97C+Ft0A==
X-Gm-Gg: AY/fxX5I8sDaXyCIEKc9vdShXCoyNMOCm9LhK/8iziF4RmpAH5i5rPn4I6cC5HTC5gv
	6sbg3lPKtPjpM55fzztFw4M7+QRSG5PNNY4Dvso9GMmZT+hDemhp0yRZzwXen86bMaRM3iH+tgP
	lQopu63oqbJhIiDLStXVhuMhpe2UZBchD3rU0ljyO2rqqOk7fKANrUXCR/seZwdWHvRuOilID9E
	Xd2XrUQYlsnYeTP5Hoj47+3lh+Dds7qb9A/w2waCpJ5uHqg81Orv9w+FTdyY2GZ157bwdSfpgTf
	g/L7i6iJUYMTERmPv4KVktJTqOGjKUxVr1M85jCfwGXC
X-Google-Smtp-Source: AGHT+IF3DTQjhYXxXW02+36G3FZkGzFfPUCBGdfYMLCgAD9oY3x9lyfyI9hU1jICZ90CgmmUFuzjagYwpgVNhEXch9g=
X-Received: by 2002:a05:690c:e3ed:b0:786:5d0a:c273 with SMTP id
 00721157ae682-78fa5b378bfmr42599997b3.23.1766109815187; Thu, 18 Dec 2025
 18:03:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-7-a0d256c9dc92@riscstar.com> <60948ca2-ed3d-485b-9b11-15df7ef8791d@canonical.com>
 <CAH1PCMb=+TvB1w+G6a2ANDp05HUwC4r6CFBDHXFwSmoP3Mm8xw@mail.gmail.com>
 <f9b6b5e2-ec9e-4208-8267-77020e0a9411@canonical.com> <20251218-basil-quantum-225ce16e4699@spud>
In-Reply-To: <20251218-basil-quantum-225ce16e4699@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 19 Dec 2025 10:03:24 +0800
X-Gm-Features: AQt7F2pwbMDoA8a91avNmO8QE-jXZtj0DvWYaFdgnJLNRPa-LseO9ZnPDmTIGAk
Message-ID: <CAH1PCMZ3KM9-D3NJ1N2LUHTHFSDVKmGKT5fU8knAL7NnV9E-gw@mail.gmail.com>
Subject: Re: [PATCH 7/8] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Conor Dooley <conor@kernel.org>
Cc: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Conor and Heinrich

On Thu, Dec 18, 2025 at 8:56=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, Dec 17, 2025 at 09:07:14AM +0100, Heinrich Schuchardt wrote:
> > On 12/17/25 08:11, Guodong Xu wrote:
>
> > > Specifically, I must adhere to
> > > Documentation/devicetree/bindings/riscv/extensions.yaml (and cpus.yam=
l for
> > > properties like 'riscv,sv39' which stands for the extension Sv39). If=
 I
> > > add extension strings that are not yet defined in these schemas, such=
 as
> > > supm, running 'make dtbs_check W=3D3' fails with: 'supm' is not one o=
f
> > > ['i', 'm', 'a', ...], followed by "Unevaluated properties are not all=
owed."
> >
> > If Documentation/devicetree/bindings/riscv/extensions.yaml is incomplet=
e
> > with respect to ratified extensions, I guess the right approach is to a=
mend
> > it and not to curtail the CPU description.
>
> Absolutely. If the cpu supports something that is not documented, then
> please document it rather than omit from the devicetree.

Thanks for the review. May I clarify one thing? Both of you mentioned
document them, given the amount of missing extensions, is it acceptable if
I submit a prerequisite patch that only documents these strings in
riscv/extensions.yaml plus the necessary hwprobe export? Leaving the actual
usage of these extensions (named features) to the future patches.

To provide some context on why I ask: I've investigated the commits & lkml
history of RISC-V extensions since v6.5, and I summarized the current statu=
s
regarding the RVA23 profile here:
[1] status in v6.18 (inc. v6.19-rc1):
https://docularxu.github.io/rva23/linux-kernel-coverage.html
[2] support evolution since v6.5:
https://docularxu.github.io/rva23/rva23-kernel-support-evolution.html

Strictly describing the SpacemiT X100/K3 (or any core) as RVA23-compliant
requires adding these extensions that are currently missing from
the kernel bindings:
RVA23U64: Ziccif, Ziccamoa, Zicclsm, Za64rs
RVA23S64: Ss1p13, Ssccptr, Sstvecd, Sstvala, Sscounterenw, Ssu64xl,
          Sha, Shcounterenw, Shvstvala, Shtvala, Shvstvecd, Shvsatpa, Shgat=
pa
Plus 'Supm', 'Zic64b', 'Ssstateen', 'B' where the kernel supports them but
they are not literally documented in yaml.

Is this approach acceptable to you? If so, I will proceed with submitting t=
hem.

Thank you very much.

Best regards,
Guodong Xu

