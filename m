Return-Path: <devicetree+bounces-241207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F95C7ADA8
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 743003A121E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438F21FAC42;
	Fri, 21 Nov 2025 16:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF02A78F29
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763742676; cv=none; b=S6/kt5/kuaJp0aHCcYSdFkX5Ajzm3tM0J53W3Kn6ASy/3HJ3kN21tYfvTx2GN5wLF8EjRVwOu9x0b1UmHi5McSuEImzk60y8KryuPXdqjOc7SVcG/W477tzhCVD5cOs9FiMXmbiJSTbWNxZwPgyZGqs6ymRgOwV5C4orZA4/WuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763742676; c=relaxed/simple;
	bh=lhJnTFSYaqFxGiDJ66CKnPLw5yyRjVIh8xHdvbto7PE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Heu/LL7Zc9ryQrQVurglD6+SpPFtILEZV74LJdy07Mz2z5c5eLaApjz367MrApNgGd8rivonJ0ORAwsfRwB4brAis8T2HWkNrlf+M4Xbcj2eloiAKgF1ybn/cm//d57O28pBA9lwToEfrXPgyXxZsmDhZfLH2igfTg9DRqR5E/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5599b119b4aso570844e0c.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:31:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763742673; x=1764347473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12RgMynb+6XJB9cmwgvbL3fWVOlbNJIbw6uaCnaFT2M=;
        b=WKVvvB6rz/gYINvcxdLOomVk4VxXE9ZGDvtITmJDBtvzFoh3BJOZ9OqGfa2nmasiKT
         z1XUvM3BtoD74UC5wUb0p2qst6VpozZM+y7DUmXsEKc3EQsCl8FlEwfF6bT4xkbAxLPW
         Of3UGrlgtpAsHwAchOljR5LtwW1Ac0j4JKKgm9SwPW+27UKaTQ/c2mZomUJfe1YpIRYh
         NfNPdW20bsosrLJIESZjD2j5A4PcCgFJuIJdTKejRuu+jd5aEi/V57hd6IZ3PfiDdEEC
         /mDU2kgXg9M8dY04MvZ0cgd06pIHq8fkZwV2j/fAqNyfs0edJESGSKJGp8rP1Aw8oE5w
         qTMA==
X-Forwarded-Encrypted: i=1; AJvYcCXIxyCCpGwTVcFabQlomCyMArm2zHHJFlDSgvubX8mUpPgiV7Qe+MWy9qjXuQKBOIc/c2lW4ehdiymF@vger.kernel.org
X-Gm-Message-State: AOJu0YxdONb9gH0lcGb2zIg/+2JureF2SCoU5QFnBKjK06bv87XFmKzS
	fZ+v//K+QjD6FSbpczG3HrgDdSvu3QF0RsoVmLHp96FySZidWxRtfy3X+2z1WXfB
X-Gm-Gg: ASbGncujPRvW5eQwlF1yRTdMXoXA+0PtCeRmdqj+qrONrSTDq1slSERymtLhEiZ/bxF
	T5wdW8rhpD9NRRpfVSFRFQxeMqIQuWe1dNrgpD+22C8iAdnfK0qRwqILaZQsOsd/IU0EHSoaJLw
	a9OS246Kt1MpxOUgjGw/i6X9Z4cI9khrG16dA7XMvJsvwnPfnirkhU1aYcmgy6A11mMwfqNgWus
	jn4T/wB7kvK9gTEUhczQ8gGOImZjcfU4EGnHS8F61YDQDsRTHCxNhwep3k4gt0LLF2zdfEcrqXt
	W0CbLqBUhthCnxYrySk+ylOAqu2c+6dXsNoPioVDmmCmasbXJVQq1PGokZme4JUr2SYos/omn6M
	+Q1MM9QK8tYuaJYPbsjIftqylNwNd19jOm4Vg+b2b9THTyrv0yIJKVIezicPZpAUSt60meeo9/6
	lI5G8dY1Lc3YgzDW/5/o4vbsm7FfL5tvxa1j65Ujtc+ycWT/u5
X-Google-Smtp-Source: AGHT+IH2WO4hxYtJwXvR9Oj52rWMULwW+EzIrdp+rmRyAHiBGaVOgyznY6bvXZNvxi1y1UBwL8niVA==
X-Received: by 2002:a05:6122:3a11:b0:556:92b0:510a with SMTP id 71dfb90a1353d-55b8d79f00emr789281e0c.14.1763742673529;
        Fri, 21 Nov 2025 08:31:13 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f60308csm2617267e0c.2.2025.11.21.08.31.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 08:31:10 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so783975137.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:31:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV7cK8vujStJjpm+mRDglNAskfI1OWDirDJimjVCwrI40klpIr6HyWphAMfa3fs8ADZP6fFCxiSTKiP@vger.kernel.org
X-Received: by 2002:a05:6102:5983:b0:5e1:839b:4540 with SMTP id
 ada2fe7eead31-5e1de40c294mr825277137.44.1763742667723; Fri, 21 Nov 2025
 08:31:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-11-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-11-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 17:30:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdURoSs2O5GW_0n9PbWsPwSM+eNueB10scJR=NP5_z+_aw@mail.gmail.com>
X-Gm-Features: AWmQ_blt3ZYDDqvSHDPvJqY1vebthbmFWNaVCZaKS4zbbEcf1TD9lOCuzfAaaBU
Message-ID: <CAMuHMdURoSs2O5GW_0n9PbWsPwSM+eNueB10scJR=NP5_z+_aw@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] serial: sh-sci: Make sci_scbrr_calc() public
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Make the function sci_scbrr_calc() public for code reuse to support RZ/G3E
> RSCI IP.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

