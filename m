Return-Path: <devicetree+bounces-255519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96747D23C9B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1424130196A4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7076A359FB3;
	Thu, 15 Jan 2026 10:03:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F7D2DECA8
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768471428; cv=none; b=a2ry8M7D9X3Q4kkV49CeYGrutoQYOKAYOQuWAfXHGm3isPUJMyBqD8CS3Jck2K19Xy382fFLkzhpSLXj6t8+UAD/xeGL2gbj67hwdcQXRe8QJupZQYkzCEgchubCT4eee/5kY/JV/Z5NAxWxedvhg5uSD63pDkATeS1xaguWcnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768471428; c=relaxed/simple;
	bh=RE+BJgoRw2g5IS+v92/qs5tkLXWM/g8t4jE9iLZlX58=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VX0Y1mvLR9nAdu3ngwxtjYbbcgRzgvhB86wGNMKaF2LXat0i+5f0qYrrCwnKQqzX4p8I8yiar0Zc4kZA6b+0SP6RZEbsMGIQOmUMDJ7UccuIYBK/zML+PaOkjwFe23WAYVm8WrY55bhifzWqeq9N+lWt+edSlUBUANhQZQ56sEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so239533241.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:03:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768471421; x=1769076221;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CgC0QjrYtZFKzuf+BESjeNcO1FE23KHL3L5ezRaJhpA=;
        b=inPfPkSjBEUCZGWyNQBEnjpT+ZSMdvnme2QBVfg5khSLRCdPU/kLjjiAQ4ApDIGMq4
         IAYu9fablKwB2c3WaomAzvTKNQVN1b2T0seMDi9FMET0EjjoUs7O3yJXIx5vAlSudSlX
         vXanBQvpxTOgau7u7t273OzCl8H9x8QuHLautGlsQ+lhKE0FJG4Ds06cZaOiWNBT/Px9
         Gj+3pnBKCCc60rmRJ4zaYLCwSyjhUV8LNOXr8ezfnTgRq6FpOhmtkmEUN010emPd4p9P
         kR5blAMJ+bFuuvHwWIVbKjjasdOHCZNOcfVW9dS3o2oUKAZ6bwhoeUbyuMbIUsmkUYj6
         b2kw==
X-Forwarded-Encrypted: i=1; AJvYcCXvLblarHmmRph5ZPgFpcF5vX6FslhZBnPPxES9VYpwWRYiYjYiPAB3594rWSD00FwJod+5wtogMD47@vger.kernel.org
X-Gm-Message-State: AOJu0YzaL7YSCfPo3RXofKvaC3B17eUi87r10Gs3hc1ReWUVVlFYVhAM
	xFNNSPv6p68o/2euT28qjj+A2jwEa7iJvlMDHf6nad5Ra8eYru+7m/T/qIwdIi8m
X-Gm-Gg: AY/fxX74pyhWB0QO6YASDDgv7HL/ur6nU6//h3rAgwlWsPTUggmEMihA9gtiBb63x1c
	VrNVgeTL9q08lmxEx+TQ4QGnXyvqEn0DuRh2WFUvkTYF1JciJ/Y/+3F2DDihH8x2niCL2W52t0n
	MCEettcDTkxAVqLxt/O9XAwC+r33YnKW0zTm6J+BN90Fer0XXflhpVpKxZ+Vm20JDU/uUk/TubM
	9mwCmPLHOsrMFgz3UYnAhlpWeZdgtNhnq9obRsdR7WEp/WqSvaxnhIbnlLRWau7sAd1U9eTtx9F
	7vvJXG4M63LG3dFb1OqV+/hmvLw+U+PMdukiZ6ApuNkLSdwVqBx8RgAiA6lD7EhTH9qiHhOJtPn
	NPfdvA9vkpQSn9/dVQ/7vbwOgkaUpZgsRTBxE3tgtd6XrYS7kIctFA+XKA8Ky8DChSanTE1ajKC
	C2/Yoro8Sioky8Fuw0Jn/V4ItWEPkWxEzS462PV+3Rs6snCqA57suSvQolkY4=
X-Received: by 2002:a05:6102:8099:b0:5df:b5d4:e45d with SMTP id ada2fe7eead31-5f17f65eb87mr2424108137.33.1768471420611;
        Thu, 15 Jan 2026 02:03:40 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ecdaf1bab4sm25539707137.2.2026.01.15.02.03.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:03:38 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5ed09471ab9so238021137.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:03:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXkY6wXeloKWcwE785icqH8CwKIiZhwGUJnKfFw84345mdJjPXlVrmFrnqJkTMN0HtWxsibD5k2L88e@vger.kernel.org
X-Received: by 2002:a05:6102:3913:b0:5db:e6bf:c4d7 with SMTP id
 ada2fe7eead31-5f17f5c0ffbmr2421625137.21.1768471418298; Thu, 15 Jan 2026
 02:03:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260114154525.3169992-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260114154525.3169992-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 11:03:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVjYLQJDdqi_hShbOzeCQ6vcC0KCox4GqYTuGpDpF_FWw@mail.gmail.com>
X-Gm-Features: AZwV_QitLLKMPfpHq9dKw_djeiwJFqwAAQTIpORIKL7aOAuxz5cFYxB71KZhGwc
Message-ID: <CAMuHMdVjYLQJDdqi_hShbOzeCQ6vcC0KCox4GqYTuGpDpF_FWw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: can: renesas,rcar-canfd: Specify reset-names
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Jan 2026 at 16:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Specify the expected reset-names for the Renesas CAN-FD controller on
> RZ/G2L and RZ/G3E SoCs.
>
> The reset names rstp_n and rstc_n are defined in the SoC hardware manual
> and are already used by the driver since commit 76e9353a80e9 ("can:
> rcar_canfd: Add support for RZ/G2L family"). The reset-names property
> existed previously but was dropped by commit 466c8ef7b66b ("dt-bindings:
> can: renesas,rcar-canfd: Simplify the conditional schema").
>
> Restore and constrain reset-names in the binding so DT schema checks
> match the actual hardware requirements and driver expectations.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

