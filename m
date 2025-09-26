Return-Path: <devicetree+bounces-221790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1BFBA2F63
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44254189CD23
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437242877D2;
	Fri, 26 Sep 2025 08:34:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBA528468E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758875644; cv=none; b=bpOxOubIRfxiS53tU/p5ThjZs6NiSFngOrQUK5nJq8rE/U7kExx9uoqbrmfbVAi+U0aCO8Ol5MkX8vfEsPP3dn2kkXvZJFwNOesiJP0BcuqWsy1ZGEscUVpff4poFq+2gYco8RWvHt88oLLpK8BYe88eQolt4aNDcdkhC2hPZ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758875644; c=relaxed/simple;
	bh=RGx4pgV29eGmYzmpi2nvGiyOHKStR3tP8Jcqk4BZwYY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nVZOOSl131UAiEZcXjn0iY2UVtMbNWrZ3lUb0C4pObq59FRvk5jEFFLjQmfL7hGSPysdsAm3CB7wecWNLID+O113bd8qpRo/G5/mT1RPjmU+A9FAdZ4w6pBA4sLFLrlXo9atTC+j2uv/je6U6db+52x/xhqGE9b02NeLdtBuo5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-90dd3b43f8eso840039241.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758875641; x=1759480441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fY1rhcUMmAwK/dbcMND+DzQQ6f9robrwHJqphz6/mqQ=;
        b=oRCMmpIJw5hkUdUVKMATBHfS0a1FiLrORvdfQ0+fPVVMYsysLYNBj7MOOT1o5VOznq
         ozNiaoNQwormpK1XzpwgLoR0TOVhYbojhRc9owTpvmjV2uCbWpu+PbcD1wkijkxzXFFv
         p3jnNBo6l53uGSBNusfI6etslzQFPyScvBhnNirmZY6UgRkO8xGVZK60km/VrMiyxi9q
         7V1A+zWbB4zRdCx9QG+agiK3sE4wB+aS8ZBA9eZcfhSS7P+ympQg90pWQUdCHUcH+xMv
         nwge4/lUYgYts+PR5puUlVNTlbdPabmfkijlpTxva30kFEE+lrQUSfoBBgDLr6Xw42nG
         kKjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyG3BoElHb2grn5xAClZPh2btONFMspZX2Mv4INuskSrA97iKfGZtWxNrpNKtV+e5esMRDiADL4Gu3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Sx6GAfQ1XexoiaeFeKcZqvUHE0eHD0+CmUbfENS3XdA0AKl9
	ZEswgtJu036S606TLiqwpk8MaYmxLnSSFnWMx5FBWeElE0bYsPoOkWzCZlO2YC+i
X-Gm-Gg: ASbGncuYGwMsTVfS36zqKZT57cpKf+nImVf6ynPcneUPzuLO6z03atAWuZNkIxaBYCP
	mYTQy0o0iz+MtLUAkYM19TK9QPaEjJzX57fCmXjQc60KNC1GBu6uozXX7fbrWPDDDyVVLtHp1u+
	Jtqnvfkfhd9mzOo9qJLn5gxBx46vzbMcjY0lRfS7N8++C+Yix2ruqXhlOVGi2FQOCqDlF/AWwos
	a/2DjzygfV1sDeJfFYC3tgqg7mrEURBEMPwEajmlI64zkx//XUkgpG79/jHwqBmm9mTfoWfbccu
	ID38SiUMJQLGvQBuHv6uOMeeQ3okw272CMx03w9ojltrq/zK1DGrj9bJPXuNWiXjxV096vdj3hv
	Dr1yMrXRC6lDerbPjq+TluIED+trtbKYSIJnVf8bEhADKb3wDsr3GmFXReyfSxAJJwdzAfQ8=
X-Google-Smtp-Source: AGHT+IE8+lKGChlRkYkFcApyuI3CemKulrexxPGXhiDLNUj9ifAsFtSRVbyWGNaD9oNxoPajXc9JLA==
X-Received: by 2002:a05:6102:5125:b0:58a:e20b:1544 with SMTP id ada2fe7eead31-5accfcb080dmr2484101137.18.1758875641181;
        Fri, 26 Sep 2025 01:34:01 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d8788fb4sm814510241.13.2025.09.26.01.34.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 01:34:00 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-8c0e2d1efd5so635873241.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:34:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXJSI1D2ifVxLxeQXtDc7gQVTiIJdb59gwMdPqYBfVvU0D6lEiE1DpkIddxgyvALmIhCHV9/JZAFJMq@vger.kernel.org
X-Received: by 2002:a05:6102:50a0:b0:520:a44f:3dd6 with SMTP id
 ada2fe7eead31-5acc83f7509mr2683165137.8.1758875640159; Fri, 26 Sep 2025
 01:34:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904202838.172579-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20250904202838.172579-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 10:33:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWyWVU9Tzanq9OY2OZP92AMgYnZtYQZ8y=WsEiRxp6TjQ@mail.gmail.com>
X-Gm-Features: AS18NWCMHBoPzEWPgJF_9P05kxRIgT7Wocv9e9QW467a4AnZ2UK94rlvm-_zDZU
Message-ID: <CAMuHMdWyWVU9Tzanq9OY2OZP92AMgYnZtYQZ8y=WsEiRxp6TjQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: r8a779g3: Add RPi Display 2 DTO
 to Retronix R-Car V4H Sparrow Hawk
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Sept 2025 at 22:28, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add DT overlay to bind RPi Display 2, both 5" and 7" variant, on
> Retronix R-Car V4H Sparrow Hawk board. All of display output, the
> touch controller, and backlight control have been tested.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V2: Build also the plain DTBO for each DTO. Each new DTO entry in the
>     Makefile has three lines, the DTBO, combined and DTB targets. This
>     is easy to miss, so note this down for myself.

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

