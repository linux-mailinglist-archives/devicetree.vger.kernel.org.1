Return-Path: <devicetree+bounces-93689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D68FB951E85
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 17:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA59FB2450D
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 15:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E985B1B4C54;
	Wed, 14 Aug 2024 15:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S4r4zYD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BD71B4C45
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723649224; cv=none; b=ME9hhVAgnHmYKo6TFphP6974Q0CXj+M/CYqC/DJMVvM8Eax0SqaWnf1TwF3jQn1R89ZFyxeqggWqO9cW3FLcyK/1Af3lieGRgFLwFJRRsXnhdZuIHgaTiiwLVTwoA38YToiu2KbQkca2zv8uYpSkGc48JhJy/44yjWfxIRcTGDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723649224; c=relaxed/simple;
	bh=YdWQZHLQfEOlIvZzzDpAY/ZBXs5czg283ng3qf4BLPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lSpnVHd/AIgzs3F1RYQnh9C4kKGNoo7Pgo/O65lXnQqmTg6Jc32Ei6o13IjK3qeajd1Z7c0+bBp7s+MulZZBVH6gYbfRyJZAZXISwqRO2a6kxHo1Ho7bmGYgn/8LMg+7NLR+kqlV0UqrrZxTTzsOVczUVUfXUirKmSbLtdFvnuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S4r4zYD1; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-49288fafca9so2058137.3
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723649222; x=1724254022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tGZroB5X7Pl+enXhuskasq6wF2/j8/lEP5i8DomsFLE=;
        b=S4r4zYD1EzptXUHDHKhjPsq0r7JeUL3qnvgHC5RzTnvdNu25u1QHvcF/DNnABmbgDa
         YRUXrHdGfqIhkl7YsYtXWqnlvjX1pqPJ4mJOAC/7KmLa9HBK8cok3OLmysnCV55+TZLY
         9vZLcWMIgZsR6eoB3+/QG8uZJ5k1V8Cv7zT/UdHvNN2EDokEP/7z7Kfuk4UL6pS7ST5j
         RkDxIhGVjf0etbOZxibnWN3ZaqsaTXhkCakUu30Gwd1vthTUS4JAOfwJdOsxI2EvYYEb
         AZzo4HlpHZJiFudO9FgU7gIf6jbpFdLqPHUY4lLeNeVr1TMorlioJhlUDTxaaeT6MU/0
         tRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723649222; x=1724254022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tGZroB5X7Pl+enXhuskasq6wF2/j8/lEP5i8DomsFLE=;
        b=V6NZH014qMhk1+6r2R2S8GhZisGwq7IpuWNgtpnt6z3BER9VS7agQqzhSqLKglJIRF
         GvaakOjoYYjJx+oZLklIJIB3mvg3HNyJbelBsxIF/SSoemDy0Xc4zPNx8jNzKgs0Ry5f
         59nR2fWkyTu+AgqXrLWJ//8Mbz+GiCUjfNQmkYBE8q4Gtq9HyqElXAKjTt5JIwu2uGd8
         NWO9R89t9v1jZpzRVOVAQaLl65oF3CFc1BnWmapjnrgOA9TCHZxNb02IoH9gfwJ4Omho
         J6uE8gjKJIGbZFl+6hW0R9rXtGeUQ3Sd8G/HE1nfst2nKL45oSQku+9MRGs2Q3c3M2+l
         WAcQ==
X-Gm-Message-State: AOJu0YxpyFC2Ol+tj9CjKX8Ahx8gsAqBNEqOGshF905o1pGp1VXM8flD
	L/F1ORrS5K8iL/TXpuJV849KuXfLV+jLwrajE8+KnIqoKNIf/Kqwcj0WCh+QMxMMpqv5VeMH7v4
	5fenL+8Hqm/bAf+YOI3SmNXm1/g8S2XdOQ1FywlpK+2AFLQQxciQ=
X-Google-Smtp-Source: AGHT+IEgfzR0FD1O0F71t4quG2CcOM5Z6z5auTwSCp+8WSlc2ZtgyEZhNZCJdIh7MtVeZ0TyFrPhPkiwMsa7LXRZiTE=
X-Received: by 2002:a05:6102:5107:b0:497:8f9:e7c9 with SMTP id
 ada2fe7eead31-497599c6d40mr3988947137.26.1723649221744; Wed, 14 Aug 2024
 08:27:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+G9fYuncv0fuBSC0A1z1G_UOv_XuMQz=DsrLZDK-Wc=10ghag@mail.gmail.com>
In-Reply-To: <CA+G9fYuncv0fuBSC0A1z1G_UOv_XuMQz=DsrLZDK-Wc=10ghag@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 14 Aug 2024 20:56:49 +0530
Message-ID: <CA+G9fYv2M8tqwXQF5At4KmG3PFJoiv3D-4Tn_q87MfBvAqLmag@mail.gmail.com>
Subject: Re: next-20240814: bcm2711-rpi-4-b boot failed
To: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, lkft-triage@lists.linaro.org, 
	Linux Regressions <regressions@lists.linux.dev>
Cc: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <florian.fainelli@broadcom.com>, krzk+dt@kernel.org, 
	Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Aug 2024 at 20:54, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
>
> The arm64 kernel booting on bcm2711-rpi-4-b boot failed with today's Linux
> next-20240814 tag. The boot failed with half boot log [1]
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
>  GOOD: next-20240813
>  BAD:  next-20240814
>
> The first investigation show the following to changes and I have reverted the
> following two commits and the boot test is back to pass [2].
>
> $ git log --oneline  next-20240813..next-20240814
> arch/arm64/boot/dts/broadcom/
>   6e7b99d720da6 ARM: dts: bcm271x: add missing properties to local_intc
>   eb81f43c901ff ARM: dts: bcm2837/bcm2712: adjust local intc node names
>

Anders bisected down to first bad commit as,
   6e7b99d720da ("ARM: dts: bcm271x: add missing properties to local_intc")

> Links:
> ---
>  Boot failed log:
>   [1] https://lkft.validation.linaro.org/scheduler/job/7799601#L430
>  Boot pass log after the reverts:
>   [2] https://lkft.validation.linaro.org/scheduler/job/7799885#L440
>
> metadata:
> -------
>   git_describe: next-20240814
>   git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
>   git_sha: 320eb81df4f6c1a1814fd02ebb4ba41eb80a3c7e
>   kernel_version: 6.11.0-rc3
>   toolchain: gcc-13
>   artifact-location:
> https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/
>   build-url: https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/
>   kernel-config:
> https://storage.tuxsuite.com/public/linaro/lkft/builds/2kdXLykPUNEquDyvXHZbubB5T4p/config
>   build_name: gcc-13-lkftconfig-debug
>
> --
> Linaro LKFT
> https://lkft.linaro.org

- Naresh

