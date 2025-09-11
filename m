Return-Path: <devicetree+bounces-216039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB7BB53785
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CBE03AADAA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005F4338F29;
	Thu, 11 Sep 2025 15:21:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E513D76
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757604104; cv=none; b=hwJaB8xyseka1uxzLOoF2/Zd694NtGAr2KEnhdnMiMyu2KtEkGyNntwIEiqgjzXTKVzwigie0heheTqcXSClA1q7FL62Sw0+uYTalg/ezoCgwpnpbBAEbMnRh7L+OdAPbLKuIABo6tgCrRwpLChyM+7WFjxXSTy9o49BLiDMwtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757604104; c=relaxed/simple;
	bh=oC4vmluiwrX18cIeVqBz0JWNRurMmcePlH97Y2tSYjM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HZyezxLH2MlNGFFEnCu432BKF6HICA3CP9C/HSlpuqc2JHg+PIRVe11EDO938IJkIeigDkcq796snuzEvBi5Ms5EDEae19p8ip4sMwwYNSP+4wWL3rr+h1C+i4pxdlPg6MeXyfa8kVH0seVde8P595u4GtkBggfqIR3+UFEaARU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5448514543eso577328e0c.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:21:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757604102; x=1758208902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zw8eBQvDUCVhODh2n6UuXo9fuHt2pQGWUMRk5klLYM=;
        b=O4xwm+6Kftss8fzeiDl4KxPqI7r2Z/2/JO8u53SbDdl7MkTKKFllKkWtUmp/+Ubm4b
         F2r8X3WP0yZEKM4CJtgAErSzECs0cErtdkofb8OWBE3vI0zyUfJcn50xSBEOVp3I+Uyd
         GiwgbdL4abf8XXKVaAvt8YKB5J64SLQz6mffzYQZZiejPPAmfTTl2WRHrRsVD2d9pVJX
         VKqMappwUHXrLvPGacGIIqe+sifqr41J9eFvkbb6b9m0ZVJliKuWcAkjjecnR5YeHZpP
         TlkjIZCrkgkM+xIfsRv0K3Q3w9tbt/hSzkYNYsaGZnCy/zZBaF4LoNR7x1uzb8UxR8o6
         YPcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCZyLRBkoqQEzd3oekx1sXk738KPvMKpqpY2OcwF+9srrZxu4mx1SZRwu7FzafkFmSP5LxjF6+qAac@vger.kernel.org
X-Gm-Message-State: AOJu0YwZFS8GwCe4pL7G2U/4IR3Yr794z5RUz1TscM7idQIWiJ7NBVkE
	jck8qJ6jhCPZaR0B+gWPyeJhUPLZmUCGBCMJDRiKZOvsLsoSD5Dw40k2qtEDj/E/
X-Gm-Gg: ASbGncuELaIIlfAicMVXh0CNmg1RxJ17MC4JS2QmHMubQEvvl1fenaQzZLAf4dsAiF0
	pgESCcv8woTmYd+nf9j7r/t+YcLbG1D6QbxoTYjwVVGSh5x2qcsZFDJLau8V6GZij8MnpghPxfc
	QukI4JUHtcm9r1+78JLbeg5yhcntEkN+vNayZcx1wxopBE48b77nmm8oOVlDmkii5hku68labh4
	lZWTNVPJKf6rj2lG+ODiV9A7TTsoJWHmRzkrEFhcb1jXQi8QLqhrfMEHbJ1PC9KWhpnOuXfVcu9
	16+/ithEIwfWrIUao7YADoiKJxtTsGkxlUBxbOr5+g1QaIj/G0iamQOmv3WDN+azcYQVkxJ5/4N
	p2j/wq7YtrlIrLkvF7d5okIY6Af4wftxC9a8ExCNh/i8HEzoasB5BYCGOniIOITnlEmAKez8=
X-Google-Smtp-Source: AGHT+IETwpKrX2Tnmj8hfqKO5f5hyNwLNQ4dpAc6DAg1y9LBG5Fv0LPOnGQe/K9P3puzIAgzqA5XkQ==
X-Received: by 2002:a05:6122:17a0:b0:535:e35d:49f4 with SMTP id 71dfb90a1353d-5473c5c6269mr7180204e0c.11.1757604101850;
        Thu, 11 Sep 2025 08:21:41 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d1df6dasm310772e0c.9.2025.09.11.08.21.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:21:41 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-8c1e1b6ecd5so503193241.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:21:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVygKxK56Y266qHr/BFvl4LhNOKxKufa1bHxZKkJT6VtSeXDJjwGqOwYDQuZkwYD1bfFLf5jcgTtC56@vger.kernel.org
X-Received: by 2002:a05:6102:14a8:b0:529:bfd2:382a with SMTP id
 ada2fe7eead31-53d2490d25emr7502207137.32.1757604100881; Thu, 11 Sep 2025
 08:21:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904100435.4033858-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250904100435.4033858-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 17:21:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW+YXwMCbQy8g88s8hQ+zzV8Vqr2iaX98J5d+RR_q4QiA@mail.gmail.com>
X-Gm-Features: AS18NWDe3BfDNkISbgAn9TPJsLdnq75CKg4tLUlECWyOdSKnu33jwgTzPbJMnms
Message-ID: <CAMuHMdW+YXwMCbQy8g88s8hQ+zzV8Vqr2iaX98J5d+RR_q4QiA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: rzt2h-n2h-evk: Enable USB2.0 support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Sept 2025 at 12:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable USB2.0 support on RZ/T2H and RZ/N2H EVKs.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Reflowed comments to adhere to 80 char width.
> - Updated comment about simultaneously using USB host and function interfaces.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

