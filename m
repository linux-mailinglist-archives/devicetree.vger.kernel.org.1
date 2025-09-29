Return-Path: <devicetree+bounces-222422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3A3BA9093
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC4933A7777
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DEF3002DE;
	Mon, 29 Sep 2025 11:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712AA3002A1
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145708; cv=none; b=mV3PINh81wPX2X8qE/T0uEI8k/yETYG83DJkoMprCHEK7Jh1gmmykQGN/BgwTH1hE/0pHi946Aia8XbCV/7lokLdqjnapv7byCfuAbbtEeD5RTLpIoqwxwuqKa2RUr6yIxmOfDlSEFHWzChpGF5Fot9qmMyKFv37+mlmf9jZAKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145708; c=relaxed/simple;
	bh=ch7c0GMzEBmON//ATPEGlDV9ckg4jFVTkG+ER5Pa/oU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O8p2zOPwXYGWoH4dNhGaa5Hl4orRgRRhlWZXu122nZ2ChifK6k+C0a4BNDEiGcDuSVl1guGmchteD3L/vR/sVf05OYXTHrCHjnROIJneATPUxhA5u+OdVtCzcgCURJssDqhesE+v9om1XBOiFcmWc0jAVjBMaZfBME2hgGs5hZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-54aa4b86b09so2305653e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:35:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145706; x=1759750506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zscJNsz9LWE1JCbi4f4RqWFcZGer3C+FRtSw/qqEOSE=;
        b=qP42nOvTfdmHgwGNxAZ/hBG1kUcp+5vzURpQA0nxXxDOXjOMfPZQytjr9qSVfIH3o5
         k5OczUsAahPCWEHeUF2SuESfj777i38mTGshmbiDBEf7Gqk1C75sWp1OHcE2JFTBz28q
         AHD9O0HPpjLwG6O3PWX3Nn2Q4zWqrzUyHdo4V3Epvira1rJyFuooCPamo7jehnlDUZ9Y
         erR9oBIkbl1cFj78bKU3ns1vpkvvEuS8fDXsJ8h1xtwiLo2DszHEZ/310AgonJJj2Y7Z
         dAHoeCW02F8uFcdrD3jRXS4iJuFSq0LhxjjQ6O3PtWkKOIYTgez4weRuX2RsMslIgYxA
         GqQg==
X-Forwarded-Encrypted: i=1; AJvYcCXXATS1JI+0a/ZNiPtPYDjKQw7Q2H6UIg4rTq+f35JoBsph1JwzNY8Dqz0SeU1aSUEOpb7KbGAKhIS/@vger.kernel.org
X-Gm-Message-State: AOJu0YzjcniarZs7oV5WG+ytWxPSN0YNYBes6mfuBkD96labncOVmChm
	BcuhDc0kjsgGv1qrDv28w+4bPofTZW0YwrZF8wzGCwMg5cbLSxrAoE4KR6phkHsJ
X-Gm-Gg: ASbGncuTDmpAzCpG7b9j2PmUBwGPCP8B81pl16oxZ2qEaYLImZ/0NLUdooN6jtxIdqq
	jbPjVCdKc5xwSeAedFuiRaCo10Rgd8tBT9ntWAwD9f1yPDMIR/Og2uYztf08+pd2iXWp54DL1jl
	+mnYGWAVrPQsYHIMvz+PAl99pRLVW9VQJufe2SY6JdbpyWF7wG7g3TVl2PElmv8v3+Zu48ffWY3
	3vY3O0FzXRLKtbDqCFizuFd8OeaqzkePadpaoPylecA7xuCbKb6YkHiTupeJJhHptHJqucg6zt+
	vcKubLFwTvzDuLjAoxDqmq+Q49+PuiCBhEu6ce+aknpvSDqARvced2bW0y3RzM5bTbWqg3sQmxN
	jk5qnpqcVdchYnuQxy3ROd2h/+8qmzT/Mo54vGapMszPdQ4NhVSPJy83rJB5OPENspnzc1+c=
X-Google-Smtp-Source: AGHT+IEC6SslM1qPyAkM4mOGvVUqK5iZqdNgKYsAraQd4AiIwyJsjx8QB4+lQPc4gMoKHjJ7s9ca2A==
X-Received: by 2002:a05:6122:3112:b0:54a:8690:71a7 with SMTP id 71dfb90a1353d-54bea2f37c3mr6163770e0c.9.1759145706012;
        Mon, 29 Sep 2025 04:35:06 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54c0c1ff0c0sm1252598e0c.11.2025.09.29.04.35.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:35:04 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-890190a3579so772132241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:35:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXqkpZbAXP7gHA0kLRkT3kuKASW/KV7SIaXhxJAAS1V2XDOW8ji83h8iPixiHL0W7B61dE6yLqW6HU8@vger.kernel.org
X-Received: by 2002:a05:6102:292c:b0:5a1:ea0:f56d with SMTP id
 ada2fe7eead31-5acd0efb09dmr5673188137.32.1759145704110; Mon, 29 Sep 2025
 04:35:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917170202.197929-1-john.madieu.xa@bp.renesas.com>
 <20250917170202.197929-4-john.madieu.xa@bp.renesas.com> <CAMuHMdUw+cVtMkfnWjuO6BUNPRd=gZHhiD=KqPxugrJVLOe+Wg@mail.gmail.com>
In-Reply-To: <CAMuHMdUw+cVtMkfnWjuO6BUNPRd=gZHhiD=KqPxugrJVLOe+Wg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:34:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVazggwwtD2pvtzwTwX5XWf=UWsuezTU4vJnU5gtT09yQ@mail.gmail.com>
X-Gm-Features: AS18NWCxvZMcs4IKeRIKmjN1qwZhpwGWh6ZDTAZia6k6h8LSwaxFUr6lA65qWRI
Message-ID: <CAMuHMdVazggwwtD2pvtzwTwX5XWf=UWsuezTU4vJnU5gtT09yQ@mail.gmail.com>
Subject: Re: [PATCH v9 3/4] arm64: dts: renesas: r9a09g047: Add TSU node
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, daniel.lezcano@linaro.org, krzk+dt@kernel.org, 
	lukasz.luba@arm.com, magnus.damm@gmail.com, mturquette@baylibre.com, 
	robh@kernel.org, rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org, 
	biju.das.jz@bp.renesas.com, catalin.marinas@arm.com, 
	devicetree@vger.kernel.org, john.madieu@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	p.zabel@pengutronix.de, rafael@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 16:07, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Wed, 17 Sept 2025 at 19:03, John Madieu
> <john.madieu.xa@bp.renesas.com> wrote:
> > Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
> >
> > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
>
> LGTM, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

