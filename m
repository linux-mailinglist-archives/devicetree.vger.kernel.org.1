Return-Path: <devicetree+bounces-229228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEDABF50CE
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 829BE1894CEB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E832848BA;
	Tue, 21 Oct 2025 07:47:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8682928000C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032838; cv=none; b=KFlJt8F18D8Vx1OwHDSuHXpxpLEMPhljwvCun7gHTIBUJQe3OeF0TO8kRJ9nO2IddteMbllNt8cAIf/UnuG+fqqvBlkJUpI6dsX83sKboyVqe32Qs7HIHV+OrnhhtVJWiG8KjyRB04ZHRqBu9mA3HUzcx3O+uKjo68y0gyW/DTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032838; c=relaxed/simple;
	bh=4rLfdYNYjsSbcnQhe0QwWJ01RmTVRIBvCLsXhlunggg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ezPd4kgxkTGGnFh/xXjvJmslfzXa5BOX6lcUa7It63V18urp4dEsqjLLqvxwSEOO5AFGR6+vCkvja2Ug+VPDtxQoraixY5W2+LGykwLX35kN8UQHQJ0sVKDf2dTpjW/TU32vUD/ctoiSNNQJjjwUz6eXRbNirH+lwoZnpFEosIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5d5f8e95d5eso2269064137.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761032835; x=1761637635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hyBTSkqNbsTAr96ACFRRuX4nnSDrq9+ChtxprKl4p5Q=;
        b=r/WeJda9SQByeaa80XiVycamfKPzmTKiZh7eQ8dLoH1+aiH2JexAY27KTshSWLGhgZ
         EejrIgut3byyeTaLxtnrn950gPMoBWKlIE4YThJSg/fy8UoQ+aBlL1ED8lPkH5mGI/4T
         HaDEEeIEu/Ps7fshNGvkVISf/BBSa1fhz8HsSWdPNw6h1iCur73O+wjo4F8DRfrSCZzU
         2JlWfhNScIGA3xBxNn/Nuh7rgNK0wPcVVzAQx9V4pyg5NPOgdjjNYTFVtLzu4asa5PAC
         gfKq1NuIV6mFJYfPG+M2bG3beod4jSf8vgaO9TLcYbDOHwXr3Mxb4L58rKXf2tdi1Zbn
         BMpA==
X-Forwarded-Encrypted: i=1; AJvYcCVzUZ6/uYXmJWBh4vRx+dEN295bunylIm+JMLfqDQlyxI0bMY7z6LIQuIQTApzs/3o4yhxtS8ZHiiLN@vger.kernel.org
X-Gm-Message-State: AOJu0YwteHN0XMVhGhSR6EfEgbI96Ttdu2GMBYobpomF87mDmbOtwFA8
	omi7FEN713sic+OPjyOWnTgKj1hEfrYT7wbBc4OP4kzRksiF6pSL1/VleLNWvXX0
X-Gm-Gg: ASbGnctMCTfDwIowTGjMGwADWy86zqDvEZllK6DGJjRu8sq8NRK/x3E2EQtcN7vmskG
	cpf79wMdGZPKn/dvfrIj7JsOmg9/QPJWXCsstNJJdnVyXirCcZnglQ6SG6fVeLtVRHeOXqqhVfP
	pD1Zmsn6mjti+f36AgoYFVAKfWtcIi8QkevMF9hfIMYa4Z0kKE9KtXWFYV3voNOC8qfJ0PlGxrV
	t3S+C2FLnp2k4UVCyzCC3jF+OwTjRMuWJDS443azUO9Po4XQ+fT1ON8/NIhuBy4VCrkl+Ev1159
	NzeyKQ/SQFusyTDtXt3E19m46f4d+QBZ09jCX0WPxWivYgdMqPk/rWE6JyvNIQ+y2HduVD1+56K
	TK90eSFtPjAS+DuGFAdn5leK7FjESIgucb4kqmYUip1axWIpXVXruzys44A5kpJCZpWINJYs8Ru
	i6p+I8RM0VYKKAx+u9WSlkX1Z5Ky4cFw4N6U52VJy6a1RfXppSITdvaUsf/qs=
X-Google-Smtp-Source: AGHT+IHc4z83Pc51nfMiPWxJJCd/ELp7aEEJ9m4qpiCbKlnAJn2CTD8x7LlUrDBMUSmxCd2JIHZ8YQ==
X-Received: by 2002:a05:6102:40c6:20b0:5d7:df1b:6f4f with SMTP id ada2fe7eead31-5d7df1b7504mr3156969137.6.1761032835218;
        Tue, 21 Oct 2025 00:47:15 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d96c278cf8sm3335754137.12.2025.10.21.00.47.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:47:15 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-932cf276843so540612241.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:47:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXm3owfz9Vb2/HOGR+ESmR4U+VQ9LKn8jUIcb4h5M485J/pbCjj/mVacMYH5cHyqmze+GdbzwQIAi0B@vger.kernel.org
X-Received: by 2002:a05:6102:548d:b0:5d6:687:ac with SMTP id
 ada2fe7eead31-5d7dd67f9a9mr4245252137.31.1761032834720; Tue, 21 Oct 2025
 00:47:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005111323.804638-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251005111323.804638-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251005111323.804638-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 09:47:03 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXDGJyp-aOWSMuPR79heRGg07VMd_F_GgV7j7yb9k+RSg@mail.gmail.com>
X-Gm-Features: AS18NWBfETG-hXu7wbnQOlGl6tEMYt_Vg7yeLyUKLs2dRaA7g8MciWHBy3GKdoI
Message-ID: <CAMuHMdXDGJyp-aOWSMuPR79heRGg07VMd_F_GgV7j7yb9k+RSg@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] arm64: dts: renesas: rzt2h/rzn2h-evk: enable ADCs
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Oct 2025 at 13:15, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The ADCs on RZ/T2H and RZ/N2H are exposed on the evaluation kit boards.
>
> Enable them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

