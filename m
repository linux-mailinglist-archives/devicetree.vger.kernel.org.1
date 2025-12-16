Return-Path: <devicetree+bounces-246937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB9FCC1984
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63F3E30319A1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D509430F928;
	Tue, 16 Dec 2025 08:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dPUTvZsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5AF2E11BC
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765873882; cv=none; b=QBIix5h7VjKXjWrIfGAx3eb+mFStDbXlQzemmnO1/3yHj+EN88gg9kMszduI33Bcw4pldkIwe2hvCYTye0/2Wt8y0FSGi9/6AFKsBHCAe0gjIruLSI2wgurz/YXwz4ppKxIcgxDpgQyBHknEpiGfZ88a//KHa1t5ShPcsZp3KDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765873882; c=relaxed/simple;
	bh=Ne8lJ2W9R9L98LT3IXnbXQmyBQHpIK5exT1M5+MN3nc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lf0QIoqryWFqAS74OtlPZWucF3vu21QOXH2dNHBclOiSKm/YD6Cr34WDKWuhpHvsaytI0DA7yvSn7sxa9Efrc2qDGIG7WJDB+V18NuM8N/6HOeXyEOZxkIv6HwQBIFbwMS3Pj7LfCDmUX0zLCNOjQsscqerXtw7YTtiSLmo7og0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dPUTvZsQ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b734fcbf1e3so884294066b.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 00:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765873875; x=1766478675; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GQojXGe1Xon9EVHvdwzM1mIfwrJqJkUgQsQeeW7RD5g=;
        b=dPUTvZsQe8fYWGyydhkf1cvyneHSrfKljJFuGuXcfWiuKNxU+LNiaWBih7LNQfAJzx
         QrzOHzgL8hjUjRpxCOlPVReqy/IF8lD8hBOxM7DxoCsZLLwDuKcxrJhYoXSfFnHpnWLC
         80s7AFuoZoYu0MBNrlNeiezqUyk+sib1FNkLjIuJQoUo+O8MmKuYbciVQ0QaQm7u43ay
         xFqfTH4sOrzGmeM8TDToNFl0MziS3Rw+pWoSNO1kfpbHct4Tw+fAFRMWs09GRrI2hS8O
         YHB8s/txHKzDBP0BGDr+GTbkRpPhVSn6E8BafnVyDakquuqPFYoA6KvxTBPbJC2cwaJs
         BkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873875; x=1766478675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GQojXGe1Xon9EVHvdwzM1mIfwrJqJkUgQsQeeW7RD5g=;
        b=XX40WFjSS8UfJ6Jz6x8xg5IiQfAPyT56T/RLNGEWSyZ4kU3wLwft48z4q0zonkFv7u
         K1CJhJiDk8TH+k30qD8fsKpUZR1U0ClwJQ0Gf+B+0r/OJXqo4dwCNCAmQd9d4mPBdq7g
         7gwIlatQHEp7srf41FvwaqMNJGtCXubyQZBtRfdVxwXW9wWdPyZnXXdQe+S8mm+wYMhq
         K0//6zrzDl0wvA8KCGqDQ+MfGgFtNEInjU3XldWmQBGLXG84TBI2bASCWzAW9REabHVz
         pGkmiQyJPEp2oPiy6BZlUywOirBc1ikgUrH9Qxa2QL8dQAOUxSpjZE0zS4wcDt4ofY3b
         oU1A==
X-Forwarded-Encrypted: i=1; AJvYcCW8iDsHZkfOiT04ngdL6HdVHLjDcXbGKp1/aaaLxSa0JlqPQaE7i+cTF8eI7jYplRjkMBjnNajkg3RT@vger.kernel.org
X-Gm-Message-State: AOJu0YzZP4ocx6m8z7QVj34rj8vT72LH4F7sZNqbQLsFmQVqOwJkh+Pd
	7xkVhS6tntUQ5256cxPZ+RFPK34XPcyXvnguP2awalALSYuQxbKhF+WlKBtc2/jlaUP9a9X0a+J
	BLDB9fp923OmTARtJLuN2rXj8P/nMIwI=
X-Gm-Gg: AY/fxX5CpREcxfUfTa06w41jh2Xahqv90MsOeuYKkDDIyyKDgVMM4wOejabYiEnaoQQ
	7GYLwNo59CZCDpNNiFwXj7h4Wm96JvzTwmQWelSDOD6SaccSSjf5fih61X7wJCJgNTDj9im5oLl
	bHzqWGNQI56nfJD2HXjrijgzW9/a2QYwpvMR6cK4u/i+lABOdklBm4wGhEup4KmqXv9B0mPYCgQ
	lnRCX65dsbIyEqrWNqmqGL8P6yRoABcdbyEvtQGxJH/jYUuIEHS1Myo0GSFL4IFMcePpG3Ntw==
X-Google-Smtp-Source: AGHT+IF9oQk2FiXL5zw3SFPOMjxnMAfpDixNAE5HmYPi/w8LYep12XKMVrteyQ+sNlIsL0XbXIk47PaTSEnkkhrP/LE=
X-Received: by 2002:a17:907:2dab:b0:b71:29f7:47dd with SMTP id
 a640c23a62f3a-b7d23a61d28mr1488792866b.46.1765873874874; Tue, 16 Dec 2025
 00:31:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763018288.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1763018288.git.zhoubinbin@loongson.cn>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 16 Dec 2025 16:31:03 +0800
X-Gm-Features: AQt7F2oYbSmMbrluLzV8GzEoG22ADpKx58O5i82UYBt5JYEe8XjPc_KZEsh9Cl0
Message-ID: <CAMpQs4+W+kLbbm2ELpLbZEFq0mK-x0ftLYJ+xd3MM1uDz+DUuA@mail.gmail.com>
Subject: Re: [PATCH 0/2] i2c: Add Loongson-2K0300 I2C controller support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-i2c@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all:

On Thu, Nov 13, 2025 at 4:48=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> Hi all:
>
> This patch set describes the I2C controller integrated into the Loongson-=
2K0300 chip.
>
> It has a significantly different design from the previous I2C controller =
(i2c-ls2x),
> such as support for master-slave transfer mode, and DMA transfers (implem=
entation
> in progress), etc. Therefore, we try to name it i2c-ls2x-v2.
>
> Therefore we try to name it i2c-ls2x-v2.
>
> Thanks.
>
> Binbin Zhou (2):
>   dt-bindings: i2c: loongson,ls2x: Add ls2k0300-i2c compatible
>   i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller

Gentle ping.
Any comments about this patchset ?

>
>  .../bindings/i2c/loongson,ls2x-i2c.yaml       |   1 +
>  MAINTAINERS                                   |   1 +
>  drivers/i2c/busses/Kconfig                    |  10 +
>  drivers/i2c/busses/Makefile                   |   1 +
>  drivers/i2c/busses/i2c-ls2x-v2.c              | 513 ++++++++++++++++++
>  5 files changed, 526 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-ls2x-v2.c
>
>
> base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
> --
> 2.47.3
>

--
Thanks.
Binbin

