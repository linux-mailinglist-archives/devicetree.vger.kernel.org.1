Return-Path: <devicetree+bounces-236573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D2CC457FF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 937F0188A51C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D854C2FE580;
	Mon, 10 Nov 2025 09:04:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E622FE570
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762765450; cv=none; b=D4fBncTNeEhdxx4Zw6BBJ/J1gXnybZzMDImAzXBaKpyTaQaLSpG0+UUE53R3cJ7+0hLXFCr70XfWjYMeyMtKPB+YZL006SWL4ZnGmJ81EjtJwIdwdqIK+fIhR25I/q+Z7uvP5JyEoXVpVNnujgjI6kFxb+lsjhZ6+guNEUv18GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762765450; c=relaxed/simple;
	bh=iMmeLUV3xBgFjt2Cqbl9hMdgFQ6BlMWa/0ymtrQbpCo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DVwumalKqKe8Y0HC7tjGxlzGSaaJCXgt/vcHm9iBWMdUKPetL8/dLTQz9u+9pyyykp+Y2g/Fu4Heh9G1j1W/ersteqJWpZTwsL9q5yNisyDKYozN6jg2eWoSpo96BeplVLVh66ph3chIV7qdRp7znfLkfaJcyf5P7frf0MqVTT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5dbd3dbbde3so2326065137.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:04:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762765448; x=1763370248;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gZFprYnk3afJ7bXwWWifURut5yD9UujyFxRDAYwHR2A=;
        b=nEBwOBrpZhgR7CXLvuck55LrCQK408JXPelqjpv8YVUSYCCiTcZESILb5mGdlPoG//
         /OXLWnTpVsWyXIhiSSd0HR5C2jFcPJfuoBjzVA9dHrpYFFc9JMYOgEFqjBRqcxDwifZK
         6laPQ5NWRbp9tAygTqtFtzV+prlqPzXO/tXPYNcyljRQt4zoD5bWmUYrwcP9OVmw0XzF
         bh2jVZ2PiAzzxSXoJp+oJI/uxg4IcTQ5dRGBBp1P8wyoGW409vDRQyUudoOw9FMh1ofz
         F7Ew0MjpJAKpcb9rmqMCoXhdOE5m6sEIm4kCNno7y0CafYjj3BxDaEdn+4a6IRj3HU8a
         W8YA==
X-Forwarded-Encrypted: i=1; AJvYcCVRq0bUuQglid/C251wCQJl6g4enBeUFiWP9LOoilBFXnWG4SbAe/MytMATncoKbpCEPk981GigxXtz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa7pSnezDeTpmxx8rzmWwoViO4rUsmqGdbyFF9cnCsuTCaktdB
	zQ3H0qXp8C8HUgsFOhOtboFDuwuDHRkX8ZxzxgsykyG+5sdRz8A0TctQO7aHCBxq
X-Gm-Gg: ASbGnct67yBhH/lK08VRh+NiKl3TBMNFALBsugeUdTYe2JCgL/hXH/8oQuPBxDJ59M7
	VnvscQ/uUqdCdF8h8gallhasXh1fyTCvijmFSyJeghzCHfMR6Nvby9hPhHyxD3EjXdyGKgEYjXS
	crRhYWVRbTS+RoIWKx21XaGSqbPDXianXRx3yTRxO2vH5xufVOkqNictGNlDTBp80SjMteJl9Rd
	i6CWuMg8/bRlJI7f41tGqK7+sHIoTki6tXyz2JaZq/G/xEdTI5tHTCgIwkgvoqZM7KFPKpU98C8
	NOOUD5uUDfibX6yOw6IIbsPcpf7v4c/98lDoVGFZkdG7pl0L3FKEk7VyuQD2xuyhX4NvTYwwlIp
	NrEwR8cGn0e+zoNwmkPiK5POX7uSfyxZ1qRWr8L26VaF9JocNwN9u4vzd3GhgmJRjtRbmS2zRUn
	VU/3PRudnmhQITuX4g04AvcDCZxtXjgHdYtUvjJqHmwgFpOTg7+Lg9
X-Google-Smtp-Source: AGHT+IHIjjv/pAiAJQMXAcuniYQb0aODZFVe8+2rinQUtI0rUnWmxsh7Xd42KArpKyhjUomte9CANQ==
X-Received: by 2002:a05:6102:a4d:b0:5d5:f6ae:38eb with SMTP id ada2fe7eead31-5ddc47e7787mr2600295137.44.1762765447622;
        Mon, 10 Nov 2025 01:04:07 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dda205691csm5499130137.12.2025.11.10.01.04.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 01:04:07 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5db308cddf0so1568107137.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:04:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXQk/2KCPx7KgIgc6zY6cvv6eF1mgdEkW8Cqf+rc1f7mVteSg8PLd5KnP5ZVcBRt+dkeZr0QM1ss9Ps@vger.kernel.org
X-Received: by 2002:a05:6102:c54:b0:5db:c9cd:673d with SMTP id
 ada2fe7eead31-5ddc4751f8bmr2299299137.26.1762765446858; Mon, 10 Nov 2025
 01:04:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1762588494.git.gaohan@iscas.ac.cn> <bc141425b71f0cfc8f3ef0a3c6d08104fde1281f.1762588494.git.gaohan@iscas.ac.cn>
In-Reply-To: <bc141425b71f0cfc8f3ef0a3c6d08104fde1281f.1762588494.git.gaohan@iscas.ac.cn>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 10:03:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVtAmM6MySzaUZZMZLY2z_99Pb-zcvyQd+q5-NS3A=c_Q@mail.gmail.com>
X-Gm-Features: AWmQ_blbgQuyL2K-QWPxMEybBZ_lWHdEHYJOPJXLh-zobJqSsJnJFWv08QlcdnY
Message-ID: <CAMuHMdVtAmM6MySzaUZZMZLY2z_99Pb-zcvyQd+q5-NS3A=c_Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] riscv: defconfig: enable SUNXI_XUANTIE and SUNXI_ANDES
To: gaohan@iscas.ac.cn
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Yixun Lan <dlan@gentoo.org>, Drew Fustini <fustini@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Guodong Xu <guodong@riscstar.com>, 
	Haylen Chu <heylenay@4d2.org>, Joel Stanley <joel@jms.id.au>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Han Gao <rabenda.cn@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Gaohan,

On Sat, 8 Nov 2025 at 09:21, <gaohan@iscas.ac.cn> wrote:
> From: Han Gao <gaohan@iscas.ac.cn>
>
> These options need to be enabled to prepare for v821/v861/v881.
>
> Signed-off-by: Han Gao <gaohan@iscas.ac.cn>

Thanks for your patch!

> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -29,6 +29,8 @@ CONFIG_ARCH_SOPHGO=y
>  CONFIG_ARCH_SPACEMIT=y
>  CONFIG_SOC_STARFIVE=y
>  CONFIG_ARCH_SUNXI=y
> +CONFIG_ARCH_SUNXI_XUANTIE=y
> +CONFIG_ARCH_SUNXI_ANDES=y
>  CONFIG_ARCH_THEAD=y
>  CONFIG_ARCH_VIRT=y
>  CONFIG_ARCH_CANAAN=y

Other subarchs handle this with "default y" in drivers/soc/*/Kconfig.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

