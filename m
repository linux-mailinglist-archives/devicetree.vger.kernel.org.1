Return-Path: <devicetree+bounces-252888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C33A8D0426D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36A173078126
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D363E1A317D;
	Thu,  8 Jan 2026 15:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44105AD24
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887302; cv=none; b=G+nloMiES1EFglqKZO19tLAy8+dhJgINQogJ1VNuLNyybGiryLphBiZ6YHpgRZADR1hdRx2eQhirtZtFJMVeCN80+QI9dPTNmfdTgrW9cuxPXgjYwcwvJdxn9PfX7JsmjQSDHbSu+tYYLOTMhjcOWxrFZY/HBLjOL+O3HjbJ+8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887302; c=relaxed/simple;
	bh=T9TwGPbtb/Jk65sCRD6p+Z4CpjSXQctqiN+jSbkE11s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F5rryG94b6oClPYtGEqppfOAQUpcFAaXEr6eR5npp5j/EkMPdHetWlKipVKN06UVRBuZkZp5wJSqAzGL8eA9QU5kSL5xc1LUgUoCzqe9YwfKjWr+JINdAC4GYg11SZ63YT3dqUp+62L3HJx7ZRVRLOhwxNj4ti+Qjpgl+87gFSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8b25ed53fcbso439988485a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887300; x=1768492100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdIqtM+rBkxv36T/mfvwWrTjJhzVX0CXMe7ykzjRBh4=;
        b=YLgeHrHls3nzTS5oWHkmRd4jbeWuLMTi7Lu993j9S5gh+oKxTQ/xOkFdv4dCxX0Jwc
         QHGsX+4XqRArJpDN3yNdfnsINj1jvjmjvKqQLtCpv2lYOX2u1AHJj7ksDCZvVxngV3g9
         Pc246t+58N5JuwEQwPAx6twlgOPxF+RMUbGasmuvS8gwauAYqtcUGPcodXG5MFyXcb64
         LC7Ssp71qvRiI8GHFcraGo750gO61EsBof0+GJ12cW+kcBryMi4vPaILvdZ20uUTFCdY
         VhzUptoDFh96kUYmNYUjVZRSqik+llaPgq+ADJoB2ASI0a11LlGCJK0rSVE6scbr3wUA
         9NoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLSeTL+uDqPTaysnpCpDdagd6XFl/2P1HajCYc+uoOmduaolX0r30JW8Z5O1uFTJBCE8QJ0j0V7Uc2@vger.kernel.org
X-Gm-Message-State: AOJu0YwGoki33vtunlLo48qu+brjwM/yPpiIRorzHgBMXLz0RCc7ougj
	BPvz6sgyVcmEWaDy6f8YYu6pZqI8Y8UrSrpOj8sQ9PqPHq9p7u62d/29xa5kDUA1
X-Gm-Gg: AY/fxX5bF9RiLb7N+Xe+6+cLLNihseyDXrCxB6j74ttIanO7AY6YAwrpqiHT/+489ca
	OPBfUjLRAhLLrvJDK1TE15LswOSZEHX4IU6tZK/hHVPQnIT1zjYu9V6JzJrdXgVq5MjBLwnd7QT
	Ia7FVCigq5uLwdnUuyWOHhRT/iN2WqXIKbpWDAJObs19yF7NnjO5/8Fj0YOw1h8RtkgMmPVgHCj
	OKTT3wbpyibv/j9UkOFzlEHKTEf2bnF4ABv47oKQ6NPgq6scDNjr//8eudGDk4fm5AE3EQm865F
	nsQT6DnMH9TPodrMOIcXhsYEFwt+X0CosY119ZYmG7DIYIfk3yvPXg/i7/V4U+PR2owsPxP/+mx
	D/mqrt9cES+tnoOM8aKDAm7qmCNiPFD4JzrFrmcqaSNGHfENBugRS1tnm7fQyqZMKp3a5Wz8ZQg
	+hv0wRgtJRiKMx76WqsCTb6guhlyobJNYWwxoeHZ6YKn8ChZ/TKNYAroa1EH0=
X-Google-Smtp-Source: AGHT+IEZH/Cho/s44dtDwCzQ6DCJenyb/Gf5FKRkWlTtLKiyx1t5r0ekE6dNcub5zp1Y689mXCMURQ==
X-Received: by 2002:a05:620a:3728:b0:8b2:f0dd:2a97 with SMTP id af79cd13be357-8c3893aa1a9mr936398285a.37.1767887299862;
        Thu, 08 Jan 2026 07:48:19 -0800 (PST)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com. [209.85.219.42])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f5413f1sm602136785a.50.2026.01.08.07.48.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:48:19 -0800 (PST)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-88a367a1dbbso50284726d6.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:48:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVn1OPCOZKzd77seF/ukEEU/4c+FNO5TDao16c+ffdckaInwOIX04ckq5AjSsF8Jwt8oYpEQs/Y4a45@vger.kernel.org
X-Received: by 2002:a67:e112:0:b0:5ee:9e4b:a81c with SMTP id
 ada2fe7eead31-5ee9e4baa91mr722934137.22.1767886923130; Thu, 08 Jan 2026
 07:42:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-8-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-8-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:41:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUVhHZgd7MugxMk85gvzTXPj7GsgmWRef6KjH2j8WUkEw@mail.gmail.com>
X-Gm-Features: AQt7F2oqUJcYTOpHjX-h4M0p98Sgtm1uZRHOlAe1Y5tgQeYww1060qUHgkV9uew
Message-ID: <CAMuHMdUVhHZgd7MugxMk85gvzTXPj7GsgmWRef6KjH2j8WUkEw@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: r9a09g087: add OPP table
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Add OPP table for RZ/N2H SoC.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

