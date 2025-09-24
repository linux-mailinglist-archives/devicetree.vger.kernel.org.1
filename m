Return-Path: <devicetree+bounces-220758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF96FB9A229
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC99A19C7BCF
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7971F3054E8;
	Wed, 24 Sep 2025 13:58:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97982E2657
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758722331; cv=none; b=YdqVBxm/5yrHzvTnC1nRMInex4Hka2VDJ2kybe3qdH8UY/WHqXiN8pmtotk667rZ9iqZ3P3/XsPNyvmTYvZblLSh57g/XaOVaDsAAvhIOZHQxWQe7WLcFK1m257BLxF3Db2qGb57n3/WD7f3s1nPqVjAj7PDZhjatgjlP/CbVow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758722331; c=relaxed/simple;
	bh=z9AOKPs04tBQ4HuQHD5qLwqf6qq8m12qH0VEjcOwE/M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ejI3OYiwcLzZOLfjcJ+fjZypQob7tNaWt5JFhkMSWpMZsCnKxfTQ1sS81/6/BWqx5h/y5LBnD3gsUtmtApyza5ppxcQZvU3q5JmmqKc+TKgX3t25x/Z2GkWWazPtfEO/7B7AriM4GDIqHLJlW2Vc7vC/NlfFE1BwjFjwrbb6Nzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-904d71faab6so2755427241.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:58:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758722327; x=1759327127;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JsHa4BTdlxzG8oL6cTUTw8znwap/WVMmft0DoAQSEiM=;
        b=ZWuORYZDvJl35s7xOuaIoII+d+3lBg3Uzf7r2eJ1yUUbjFF9u1S8SUn9EoFIwjL5up
         hVo7+SmSsS60V9Rhfm/3fW1p/km+HWNrzR9Ca6RFqa4j+OBrHwetJ+UFbPiemV1XoSd/
         UV7MUr8DsNL52fztaPPdAp9W8sLWSK0vb9eLdtfD7dQ22gjhoQdI2NgkOylhksAYJPxZ
         4+H9HXWQsu0V+0RZ8ZO/SGCIA1PIjSly1UElrqb82egQjDkIbjfrDv5AdYacLaL6ITkr
         v0AETkn0Ci1g3PHFtnlecMRg3lgP0Zm77pzRNNEPyZbgiArFJV0G4llHoxhPisibIBB8
         QCiA==
X-Forwarded-Encrypted: i=1; AJvYcCUwj756mKa9nRCYrGwjqGe9+Dj9i0bYDmjPSu1MAxLOqIz2vzb5bJut4A285cdPjUG2j5hWOYEEbnd3@vger.kernel.org
X-Gm-Message-State: AOJu0YwmQWwXDP3oMwyOEqx5C4lliDCK+Zh1qmHCvzxarzjEgpoyDKME
	OSe/LM3inwSa2Jyel77e3qWdmB1ueNYblxCqxaTVQnywRQab45UJmlGfCD8rrW9O
X-Gm-Gg: ASbGnctcTXMmahGraAjgfmEmxp/WArFnQZck8sh7gIjlvJpUYrqnWR3lAp80A11wR+V
	dyh0AJwV4lGtKGLEcHl6r5KC1KHX8iTQTXlL407hlKdXWylmL3AEKL0R1GltkFWPWlyeWa/kQET
	Swy7QNBcf/21uzmgou1doI0UqQziyCWaKEeqa8okSWoXubCS9I9LsoS12qHnI+WqTcesYMVTogU
	YLXXHpAm9KHk3QTuyhW3Mwwxa6suLqVyPCFMVsUS5PcwAztGowJzbG1hPg3F9snMbwk7x7CK29u
	OJkk1Hy0Td01C6w/Hr7FUFxtr+aw1r0O0sLR9xQNL2uzdqgW43luoriDPj4L1GABZ472Gyn3LSq
	VtO1ORGZVlmGHe7hJYqlDu+iXkfdDGMDJFZWURMHjoEAi5TPlY/hitdDroUebCoT7A4ZuzPY=
X-Google-Smtp-Source: AGHT+IElAxQwGzhkVX7ayD+wSamegjbGW1MlvNxmBCTF8fvMIVsfqyHYppSMjOY76hEf7Q72vzRGLQ==
X-Received: by 2002:a05:6102:4426:b0:4fc:1987:fc84 with SMTP id ada2fe7eead31-5a5800d9397mr2358122137.21.1758722327386;
        Wed, 24 Sep 2025 06:58:47 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-58de1185e4csm3635629137.2.2025.09.24.06.58.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:58:46 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-904d71faab6so2755398241.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:58:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV94K6UhZ4BwiXAyxsJEpWJv5Hva8Ele4Bxn+ml0o1jbuTtrHbSG8yMiQZTfyw1hQf+ALZ+n4Zqd0Eh@vger.kernel.org
X-Received: by 2002:a05:6122:3115:b0:54a:96ce:786e with SMTP id
 71dfb90a1353d-54bcb0b6125mr2198963e0c.8.1758722326099; Wed, 24 Sep 2025
 06:58:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com> <20250910140305.541961-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250910140305.541961-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 15:58:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVrGbRHXa+13nGTf-S_cgHvDASvDTUSqhiC8updddJUFA@mail.gmail.com>
X-Gm-Features: AS18NWAg1I_dL3GYezwY1MvHo4wl2EuUyKfvLAv7l_tUzF74SJUhWeo0uWlshA8
Message-ID: <CAMuHMdVrGbRHXa+13nGTf-S_cgHvDASvDTUSqhiC8updddJUFA@mail.gmail.com>
Subject: Re: [PATCH v6 6/7] arm64: dts: renesas: r9a08g045: Add USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 10 Sept 2025 at 16:03, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
> host and device support.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

