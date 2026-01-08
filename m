Return-Path: <devicetree+bounces-252882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C981ED0419B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99D2E3093E77
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE2B344057;
	Thu,  8 Jan 2026 15:20:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9A62DB78F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767885658; cv=none; b=rAzg5moU1mSt+Ro9SiFDEXx6pRKhTrMcSiFDDLvQ4Z7NS7i7nxDnS/wVOkHZu0oLjAlH/4LdF0dF7QcdX9/U/rGrODHTDwQXzkpbXjcI7ud+fI0cOMwmGtlalpritFETRKQXuW2TRz/dkOfwI3U2YL+PvA+0tcEG0P8OFhQvfxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767885658; c=relaxed/simple;
	bh=yNc+RZIcdJZsg7frmkaxTdR4O9ZibSMhT8YbzmZaH+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WEDRviYIHYeITPUlZQg0ZMMkNcu6qx0QgcIhfojAE2g1+6n3NCVt6qutLbGVKelDpG1qaGWBY2B4dEHPQLZf42zI7giWW5OS99Y8G3UdWDNkEZQVSMu367k0DZDvh+gqUJR6fNWpE89qR7uNZ6IALwXB4w/rYc5DgwfUPEhpp8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94124140e02so2042007241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:20:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767885651; x=1768490451;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4XQkxFWUsqFw5LCWwjeRiyAv5WyIL/g3rRuvVx2lSo=;
        b=JzAULq8nYf5s/1rgkT+xXU4rpgx4lFFm0uT/5cn5OdOUeSbE5QaiWvRuFkEqINrOUK
         HVvu8lqOATMSGGF+qvAHsm0/ei9KuD5JzAUKFjdup4kWcayGxa7tSZ3khwQt15zTI7d3
         jo5s/2CeMmrF+9B9DCLFq0GXNy/kDYvSXIRmQOhBz/rDmCXUfN1w1lZLI26bTPRUAVfe
         JWfxm9UOxxwUqFohZuQoABCERF8SrfchZfZ5CZw8dksT45aNcSHGcc4ZQQ3CxGQ36rBb
         OJdUAUhmy44jAR5+wfhS9nwPr5hK3rUKAuJoDekqT+bhUfylEA8hheiEE8ApcBNTLbLV
         dzMw==
X-Forwarded-Encrypted: i=1; AJvYcCXLQ31X5bt0r1jRrBdHCW+p4JAENTPGuWkEw6MoLbNB/DapwuNz68PcHvejwfy3E9duGAslG8Ggog67@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfc3QjEKpQM7bKINgvYlhfDFRQw2xdxaA/q0BdLsNlx2FxpE4q
	DB6sm8YaEHup3GI2CthIp/lduLdRA3XyiqYQQrquapPSTxIJ8JnzYs4k3SkDGomL
X-Gm-Gg: AY/fxX5lO602IKL8hegFsaTSluPw2+sxcU2DCUBXN+few1yE+AjHhXjdaJ4cGsGlb9W
	Hs94R4sQHF7EwUurldGrsX5KViGg5Ctt9poEv3Qw5/njihoUKAJle/3nw6aX6xh7PkeNOcp9fk9
	kwORHuK7npVYFDlilq29HPFtHt/HdkT1Xuc0op0ChiunOzSPs/aSuK1JXKbnpasSYzcQ1wL3njF
	0L/S+1bYagEQihwmW75KoHOgm/kPCSSPz5DaxFxcUJWYIBpLJTURESfaJ5F3jTXgGMGTuFV3xzT
	c/z/i5C3BJ1vvvK5QZ5iQv7Xk6bfS98bU4VwCHBhVD49eUyuO5YzRjb247mMngbc4uJMhe91P2s
	Ja0bW6vNeX2f+h0K7zl2lv0CDpj8TGu0ER40SDdYpLcPnE9aJ1A+oY65eM/vEkLDsZn4ntPhydW
	uCyZhWQ+UlATbjbXDeXm1kYyZ3FGJIXMR/pF3rAXRgdd8Y7UkZ
X-Google-Smtp-Source: AGHT+IF921kikcTkHlIvDzgVsy40cgNzPakf6t6regGsBt/OdL026TR0IgJnZoKbjjX5WAhS35O9sQ==
X-Received: by 2002:a05:6102:f10:b0:5df:b4a8:fbac with SMTP id ada2fe7eead31-5ecb68d4fb5mr2634433137.20.1767885651104;
        Thu, 08 Jan 2026 07:20:51 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772e322asm6721157137.13.2026.01.08.07.20.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:20:50 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9413e5ee53eso1937988241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:20:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUbhdXklSfhRlSwdgNqBHgTC8XrmWaaUnwPQb2cIdW5DEieT81wvQzYxvU172687+vXWkq5knFPRaGH@vger.kernel.org
X-Received: by 2002:a05:6102:dd3:b0:5ec:848f:7673 with SMTP id
 ada2fe7eead31-5ecb1e8e9ebmr2504240137.6.1767885649941; Thu, 08 Jan 2026
 07:20:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:20:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWSJbbRxoY1=U5KeYHm-Ahr8fU_Qzt7B9csfHnSe4UnLA@mail.gmail.com>
X-Gm-Features: AQt7F2q16aDcyNINlNDKVAWHLex5gQZCaSJCRmvbCOMq8H5xzOXqPJrqo2w-sOM
Message-ID: <CAMuHMdWSJbbRxoY1=U5KeYHm-Ahr8fU_Qzt7B9csfHnSe4UnLA@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] thermal: renesas: rzg3e: make min and max
 temperature per-chip
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:04, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have
> different minimum and maximum temperatures compared to the already
> supported RZ/G3E.
>
> Prepare for them by moving these into a chip-specific struct.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

