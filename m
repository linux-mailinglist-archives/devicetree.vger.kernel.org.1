Return-Path: <devicetree+bounces-220732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18109B99D40
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D43801B21842
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D418301011;
	Wed, 24 Sep 2025 12:27:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CFA22E62AF
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758716863; cv=none; b=lx9Dh6K1DoRjCB1isQpJCcfx1CDpi9YnwdOMc5dbqLx15TZKD2cKlefDgFKF+nqYacO9TYMEslN0OekBODoQkGwsJb2sfKivV5Kwo9CjHUVTVxyoTwSVlb3gi1NJYAOf6Qwsh+lfsBw/Sb6ocxsD2WUmLpHPUBNbpLi5ZLWcDs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758716863; c=relaxed/simple;
	bh=m4UMSJRwUb34SEoWabfjkvMgMST+WZDrebs6YW1/cBg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S8aStmKjQ2PK6q7/N7TjFM8E89sPrQTgxFrkW0Aax3Fvz6yslxl4kEr/HvWMi6a/6cr5axBauGgIFGutYGhy3c+TwjpNa69D7e49F9mtreZoDoGh4BbzZAftdq0fubLxB2u+xtUXo0CJ4NABkZNIqjlBNJx3OiZx/TtJKRUGUB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-890190d9f89so3104364241.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:27:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716860; x=1759321660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrIcrX+WqLkK/OVX26j4zeOlHzZuccByNgRjxzFWguA=;
        b=MfyQdLqGFhMESrHZ83DEdiqK8br5K+OVDeYNRMcJpPAngSds2h6rcnL4Hl9S2j5xVO
         fY8c0X8HczHefktsFGTy9/1zLJ12V49JF2hyBam8vO5BKSrtdvTKo9RkOqDu9MapAEbx
         971k0CGDO3ewCn3wXihY9P89CKot9MWAskGnVI5oB+sfZ9PQVmos6Nbsy15h4PA/Z3eQ
         aUm8xXaGVkGWUl+Tr1rwz15NUQZ9xDLlVC13y3ImRjq0mua24P5jEgehjpCrPAWNw5zu
         eRxNbZAwstDpm9edwiSbTfMg3kDjpG81t9V8mbswXmW/bY5mPFDuj1C9JHAfusC3Ch6s
         T9Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVzeWBNr/3xae+REj36NH8HdTJYpkVF4E9igH9abAHuI5aKSezBfvg4Rt4hNP5H/39RaiKAXG7APhZz@vger.kernel.org
X-Gm-Message-State: AOJu0YwJlzkd+WPa7bnalILMzQo6MXp2c//c/xkzt1C0kzC8fBn791HJ
	cSkYi3AtXuoMjHQOuluCKQch4jYFC/Y+X6iXAvVzsddi9hOZEQZwSjhCBodd3En+
X-Gm-Gg: ASbGncvCDfpf4si7Du/qgO+AD2BT7z4KllLoaY2t977pE7NkAMkyDraHNtq17rf4YGf
	SIFkuCoRBCIqXDeIE3rnr5rPwKDjK+L9Pwb+8nHrczApCEn3LzhsV4O++RNWeIpRK9KzBnTRxV7
	65X+yZLQcWdo3NKxvTNRjVsbRZIxvNZmE+KN0oF2xTdatnVlw+4JhsGu8cxBMxyjPb6Nw3j9W+3
	xNzehAO0glDgI0AuxZ0J1v3NmjZREBWQZc7AwjI6/wLHTMeJqXGu+k41txoE3vNl2tvmrh22Hfk
	eJxkJ0ZjdcYGQYGqHoUiYT66lZUIRcO4lgVBYN2s66GlVdeaF4dwy/tCM+DrT540xCeb07IykIt
	oxrukfQHSqm+vcdlf8gUxTd8bwA5NBfTjlPVQQnY9mnFRRJvnodesvnTKQlNu
X-Google-Smtp-Source: AGHT+IHxw4mMRmfdXrZMJAExOFe+QCbaGksJ5ijM6NEAWH5waroTp3j0wy/vgGa+Xd1LKpE1y9utcQ==
X-Received: by 2002:a05:6102:3a10:b0:527:d1de:893b with SMTP id ada2fe7eead31-5a5787b0623mr2075004137.18.1758716860297;
        Wed, 24 Sep 2025 05:27:40 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-581555b2842sm4467951137.6.2025.09.24.05.27.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 05:27:39 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-58d377d786bso3580374137.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:27:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXnp2fjbbyG5z12Rbpm5mvAy4QSK2s63HqJ/R4zf9x6g6NnIjre6Utywkgc6hfy4Q/gYmJoJqiywpqt@vger.kernel.org
X-Received: by 2002:a05:6102:32c2:b0:537:f1db:76cb with SMTP id
 ada2fe7eead31-5a579b1e1eemr2463960137.30.1758716859238; Wed, 24 Sep 2025
 05:27:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com> <20250916150255.4231-9-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250916150255.4231-9-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 14:27:27 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUACU1tPKDgoOhgBW8KkDCxSEzqb7TnucYk2dW2jOet5g@mail.gmail.com>
X-Gm-Features: AS18NWCVenDuOrUB7TMiuq4fiv2syjlHZqz-8Xrb3HQqOfe_05Duah7vTFUtX5c
Message-ID: <CAMuHMdUACU1tPKDgoOhgBW8KkDCxSEzqb7TnucYk2dW2jOet5g@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] arm64: dts: renesas: r9a09g047e57-smarc: Enable USB3HOST
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Enable USB3.2 Gen2 Host controller(a.k.a USB3HOST) on the RZ/G3E SMARC EVK
> platform.
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

