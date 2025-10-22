Return-Path: <devicetree+bounces-229732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8CABFB349
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A8B23A6FE7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0036B2FE598;
	Wed, 22 Oct 2025 09:44:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C18F299924
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761126283; cv=none; b=uav1D63XWUYs99T/49Rey3Qi8XIS1kfhvPOz3YT4I4HWswWbpTCPXlBjQKquXDfMPbETiRZ17Btf6tOqeGDYIUJvYB54Os5MIuEXt0bmWbzc4TndNx+lj6+29sNbr5ElsTPYfuyAihwUnBntWQoWbIcdjzkx3VMiL4tjtw4xLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761126283; c=relaxed/simple;
	bh=dFJgqQh2BXhnHzS6LSg7icRKRTpEo7skpwGo1v2sTjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeXNeN/jscU3dwuPiT8Oi6OXK3QMT0dx6D0zqONpYPIxM/nfJ0KwQZi9Omv5qUu/3EhX2UP/pgAwbPTUFhGfnjCoAGaBJFBLiCVe+T9ckDP1tN55PXbDMgQ60A/j/yKsApSYvV2rH6DC1CFN2Uv+hxFKp51+7PHrxouGifR/ZOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-88f2aebce7fso950173785a.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761126281; x=1761731081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWYnqPsGR/+m0VSRYyHFTH5ffcOTH5Kpd/uIr+BQaho=;
        b=L5v3ElyI1y/E19W5fii+tayBAnOM+WDoLY5siUm6+hB+WXISYkhZbm2xj3gmKpM9wN
         rXaI77q2tR6YAmGCw6rGCNH3arJcIAhZg9XU4j3ZZj8xX4p5MyQeZdvjMP9/gzq2bpV6
         e2S8YUjMhGQ6p28jOtGjLI3Z07xlFdc1D+HS+bs5oO/c4QaxdUUGtPbeOtlPj29BxX9o
         XbLzo5Qi7xxdDzkGSY7UNQcPhBNFDk6JQC0pzOf+k6YYG3TDoDvMA5PO76ahD0e7gXwR
         /cmxPHogupqGxwPMqCvOB0mI+jk9xNv9TWuwvdxC1dJXvq2JJftFxvTN/AAk14NgeuCJ
         0mZA==
X-Forwarded-Encrypted: i=1; AJvYcCUs/8Iia7uJ8dFHToPo2iiBp2q79JlVw0SD4Hr+XiSWU3o/mH4MpSDyUjZw65p+aR1qkzPTei14WcXH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywch9aM9GhN/8fFTBMGFdO1aq7YLj27MuLOqDTuflUEJPt5EeaZ
	iStP1vLwXO/DcQEWM34Dbd1mHJv55H6gglcx4VMJTBS1lRfWtsC0YRy4DuuqpJlv
X-Gm-Gg: ASbGncu59An7X1aiVlv/OA3ohhPVk3noVKY6M/97hWggYy7Nu6CjQWp/aweBNQk8Obd
	XU1jZiroVBVWZmYW4cm5refQPm9Owd9dkY5hljrkoauvYWY8f5o8BQ/oW6xn5wHs+XHvXORrYmA
	0F8AKfKgPppL49ycTy6J2gbJErWpPTLdFU8+mUExoIW0fFuiRz68DymWqJ9ihLzCsXG7MeiZpAE
	tdEF86cKUfk+8Kr5UO7OfE8xqiDJs5RWPiqIhzGy9n5dZpudVlkO48SAjVip6q6xxttZBdZ2aDI
	a21Mpb0g+69Be3fsKTL0jIvyqIpVsk3GoJemNKIogpuyMHjWE2pbRPHBgpySDhgb/AC1LBy+upN
	BHTx8nPm4LAUssZYCfGQayLtiEMWA+nw8rM4TAeiV+oHHSPZimS9e+R5+mKvm/uXGY8QbImGGb4
	hNsf6YUh5B19/jE1bULC51LP5ZW8RXCMsZ5Am4o7b1L41nfUxEwTLI
X-Google-Smtp-Source: AGHT+IH3LjtnNcftWec8npP8YkAkzcYRLvA3RYnEduugAyOPHKjdzG6L/9klkqqyxcIeYuDvhVMQ/Q==
X-Received: by 2002:a05:620a:2586:b0:844:c04c:6a9f with SMTP id af79cd13be357-89070603bf9mr2147986785a.72.1761126280984;
        Wed, 22 Oct 2025 02:44:40 -0700 (PDT)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com. [209.85.222.171])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-891cf58e67esm936533785a.47.2025.10.22.02.44.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 02:44:40 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-890d9981983so886182685a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:44:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW/+ox+mPJ5dC6p2Ds4/X8LFGA07eFH+L35RBOjWHo6YsCkCQQ9jOKPOY76YJAmgPWw1aaJDuzSF8Tq@vger.kernel.org
X-Received: by 2002:a05:6102:a4c:b0:529:e9a5:c216 with SMTP id
 ada2fe7eead31-5d7dd42f318mr6592013137.4.1761125935974; Wed, 22 Oct 2025
 02:38:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022033847.471106-1-marek.vasut+renesas@mailbox.org> <20251022033847.471106-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251022033847.471106-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Oct 2025 11:38:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXrFTnJcQgVaCZWeMEHVCg3PbHd=oxzTQnDCixc-NDvwA@mail.gmail.com>
X-Gm-Features: AS18NWCUxVmbBX5A4GWgkcFHdLZ81csYvV48uizjGHlywJaqitAbOBSEWovXEnU
Message-ID: <CAMuHMdXrFTnJcQgVaCZWeMEHVCg3PbHd=oxzTQnDCixc-NDvwA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: renesas: r8a77960: Add GX6250 GPU node
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Matt Coster <matt.coster@imgtec.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Wed, 22 Oct 2025 at 05:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe Imagination Technologies PowerVR Rogue GX6250 BNVC 4.45.2.58
> present in Renesas R-Car R8A77960 M3-W SoC.
>
> Acked-by: Matt Coster <matt.coster@imgtec.com>
> Reviewed-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se=
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V3: - Add AB from Matt
>     - Disable the GPU by default

Thanks for the update!

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on v2 is still valid, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

