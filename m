Return-Path: <devicetree+bounces-222434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18634BA9117
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:39:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C45B63B152B
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D419302156;
	Mon, 29 Sep 2025 11:38:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C143019A1
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145905; cv=none; b=jaCwa/jSflYVqw7Oi73182s/fd0pqwg6e32IhR3Y5lVaVNeeSnF57NyKm2PqnpOJ0gtIGls5PSCjuY6ZLbuO4zGbgiJwbzwdbBxrKr0qnsdQmC9oH3FNpIqNqXOw/2MV621cPQBi+eWZA5TYJYcc6pU43uYCH8bNgFGcMKd79pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145905; c=relaxed/simple;
	bh=rQxIntxCaMjAl4ZMKvmJmWmfz83LZmlH0mwttLjRCPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kTlDxPRyWUWdmyqZbUWVZebceL7eFQWmVlGqk+rPx7Rj2JBUHEhycGVqUzgk8rT8FlhB3B/9rVQCrDOqsSeNpiPWH108NNvWNKT1PahSstv5zctJ+WRW+nTviA2cnIQrc/M9rI2X21De2EKpBgqp6Yq0jyxEzQQFMkvAg3K2P2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-89018e9f902so2380278241.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:38:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145901; x=1759750701;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L+DvsJXG0G61gRFxkleWdib9RoQxt94Uw42byP7fd3k=;
        b=ngSXoJ6XVD2i6uLCxE2o3MAXDTRbLBaHNHdQA5l63F/uiN0JyUCYar5U7WT/lhhnFE
         WPCJ4ZI96NZGZOxGjEtPdxSdK0WpzcV4W/j4ls9qxiqvlTxdzFYQDPErqaDZVLAz4grs
         7FLMh4CifHDdRFQc7VMTtV6/zLegbN2dPkdXsMcsbb2oqaJrVqah6VZmMS2QfzcihOaf
         OuJWlglaCVAZ+i1a4lJH9i04LVnir9y73X++zMMT9aQ5wD+l8kAkrNtPn4GRsXPn3vth
         NIcTsiFa2BBeT8dh16dhVTXPbVgVyyBz3QiZb0cVWl2PhqaotwlMKM81PZF5N/zU/45t
         aaSA==
X-Forwarded-Encrypted: i=1; AJvYcCXOZQ0nan+vc05jNbtrhOXvggIyieCWJUith0FWljpOXmTb/uwY2MgI2AQ0PGVSxbXMrl8MuIfcGsPE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzew8UWac0tv8ukyaOVEy8j4kB0OHw2THOEwfhYpPUOnVA2D1/b
	ewQ4KtmQJKRbesLlpXortXCUVm4lg3RRIBbnX1/Um0czz8RFpXWVBSwoC3y2OIHB
X-Gm-Gg: ASbGnctj8yzk7zy2RCo8W3mJuCJ7UGbikAP8yEbg7Xca6wDBGGcAYU2U65RdJ3ZnFNR
	kg3Lm7KBtoUqPAtTYdXWTo0bstRSK61ZcNkfNHP5jLOyOKYpPVG+/OGxOX56JWtRiVkXFHdOdvu
	bdzn6haE9xVWzz13lZVzZmsjqx4QJhauWOif1fyF8GVJ7SztOjsJ0Uw2VE56dyEAbXPgA7KGaml
	zcjZ56qwMctwLwDFH8ryOEj4oTP/Gq5PHrWGJquPvqnWfMUoil5i+zDi4BPUQIoBSt3JzVaT06o
	3V9i04BHtOOX60p3hzKMTEIHjaTyvU0Q0B1lx5AcJdflo6de+vNx4LnNu2ey1xX23XGa6x9MX/r
	NwfNfqAbtbmj3kxFNFzDk6BJ5SyfkDSBQRyfxRseLQtma1KrVxD5bOZyAwwcI
X-Google-Smtp-Source: AGHT+IErpRs4QVLHSdLxC88SAhpaUFisXWKCwVtZsh/KBPaHb9NmI5Y6Srgx29ww4OXTXezFcwSwiQ==
X-Received: by 2002:a05:6102:38c8:b0:529:fc9e:84ae with SMTP id ada2fe7eead31-5c88b9821bemr1045389137.24.1759145901023;
        Mon, 29 Sep 2025 04:38:21 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bed88199csm2173013e0c.3.2025.09.29.04.38.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:38:20 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-55716f2d3b9so3913205137.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:38:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWvw7QHp3NiCnmIEksjgjQdfBjhQ5Ar4hXzqmRp5/xkz5PiweidwgJPCHQH2Lbvmmx6tkdBAViqdD8N@vger.kernel.org
X-Received: by 2002:a05:6102:32cf:b0:519:f3b6:a1ae with SMTP id
 ada2fe7eead31-5acd10ea445mr6745656137.22.1759145900183; Mon, 29 Sep 2025
 04:38:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250810122125.792966-1-claudiu.beznea.uj@bp.renesas.com> <20250810122125.792966-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250810122125.792966-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:38:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXhgGGYAYnR1cgWVtFCdHEQZWmfx_KY3Z3keDHxTp_drA@mail.gmail.com>
X-Gm-Features: AS18NWDeDP8x0wSmUHzwgi3zdRuByvOv6E-OXpBdrFgnvBXmf6gvI4PDDQHxKx0
Message-ID: <CAMuHMdXhgGGYAYnR1cgWVtFCdHEQZWmfx_KY3Z3keDHxTp_drA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] arm64: defconfig: Enable RZ/G3S thermal
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	niklas.soderlund@ragnatech.se, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 10 Aug 2025 at 15:03, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable the CONFIG_RZG3S_THERMAL flag for the RZ/G3S SoC.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

