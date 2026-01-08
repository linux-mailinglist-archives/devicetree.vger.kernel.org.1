Return-Path: <devicetree+bounces-252881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 146F4D040AE
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E35153104AD1
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7AF33D6CF;
	Thu,  8 Jan 2026 15:18:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB4C33BBBD
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767885490; cv=none; b=X8lkVQKquO8wrf2qbTSe7xH152UQMh0o3mJE4kNCc10nfB2I+17R8p0RMd9MlAbU14Dx9odFNdHFLk/wToKVSSqTBpp2xwpazuRW4Y58Fzle2Zzkwjq50Ku42vUzgZXtaufQ6QcSlldR6fNn+vj1KGMsgK51BVQTOL6R8NNqRJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767885490; c=relaxed/simple;
	bh=VOCoSE33VyqEDpE4ACcKTOqSkK66W3Ph4z6ZWtitcKc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pp8pS3ZoatZXbUVcGTbkrZqbhZgu3WEHOTMSu+4A7YY7pnTq8KHlXxmONVFhMXVS2O/3uQcD3HBLZCmorqR+BcmushmfGTL5bn64DYDeOPCJoypItTWvypdvQiSu1QfWFCRVB+KPK6ms9Abm+YAkFxBo4d7lWYMhOtVHZsc81OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5634feea416so1159202e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:18:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767885485; x=1768490285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K19XWsL2sU1kQtxYfF0RYQ4zBuQAgGCyhs+nui2BEig=;
        b=ZyGdADbHQJMAEF+RRAYjmb8lDdzsPUuN1Knxrjg7MGybFRzv+k2a2klv49Zv9gpllE
         2GN6fBJnaA/doCUsP8Fz8Nqm2ADgjQrgbZA4OgLc0lezMpo9VCJkEiHMtJJxwM4V7cE8
         W0a1B2Jq6CG9fQOk30JulXac6wsf0Rfoo1wrEQbTNcBkFetu9GmvT2W8IBuKfzcWhJwV
         +vS/ls5pCnjYUL7/ydHxl4lw3k7nd1J3tKYD+0SZRXqj0v8BRxihkPa1k53inzCWBw1D
         NY8sNH2WYhteghoskACS53ls0dclfC8YBuleXsXP3nP4gDz+H2uOtzGZ64lrugK/3x41
         PQ2g==
X-Forwarded-Encrypted: i=1; AJvYcCV+U6vZ00M+1eYrrtsPB+hN1SX+DwUJhXjG0ccgS6W3pjqtSWu4oOxQmAkyhHs+sNPy/4tsfN+P5fez@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/ti9PG3R24w2qD06IEcLsfJVvdIqVYFVwbLlmIL3jV1s3fFOi
	K0irqCxKH/m7kNOX592N8hFB9VI6r+7MczxP0uzuKf66jxrJ3AEqayHysIM9VLIf
X-Gm-Gg: AY/fxX4dZq+ZJxZcyXobHoPZJATPTuHrm40/8iNtADS7wygHwqXMFS7W33nC+YZ76se
	VJugEdH7C8kHwr1NUpSzBkTxAnPcIWk09YLMYe94tNXhMkK+0KegI8IIooTPHyHVrOEftLk0psH
	+UEo4YmcLvKFmysXkPRx7KSSsg8WVgdXaBFb8IIfE9Op/dk6gy6Mim56+b/P32SiuquCtSjIUdq
	asR1X84O9eXXfNyOheaJL+RxPwXIZilhnemr7K+UyNBYo7rMzLgL1Oj+WxkKxtwy6Cre7PhPL9+
	y6btyrQx6LwbNdHdfqi6l0zrOdHV7GLT7kmD8OBAjMP+mIOazjlQCYs1GamApXCx/VxQtP7Z1jK
	qcIxWoq+mxIkUDhLD4GHqj4gmWK5rKitVOq2ndkEENTOYJ4LqFIxgSyawxyZkNj21GC+zYwbrrV
	YvJCxQL71DEUE7KA8bS26NKLQAi9lbPhT+HttCR2E+D+2aLcQc
X-Google-Smtp-Source: AGHT+IGcPAW9tz56WsiQ0O242tk7Hes+1vkfVC2zjMc/YPDOU8T28QeI1VP/B2nPj0gtG/hc7qUyQw==
X-Received: by 2002:a05:6122:8b8d:b0:55a:ab0d:bf74 with SMTP id 71dfb90a1353d-56347fc993emr1942301e0c.13.1767885485336;
        Thu, 08 Jan 2026 07:18:05 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea810sm6241700e0c.5.2026.01.08.07.18.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:18:05 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso1922053241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:18:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUZMnnLC1se7F8RjTVLqXi+V/hh074AsMtJQnLR7vcK6T++DGk4f+TN51H1nortos2zIYP1Ey8AuTQU@vger.kernel.org
X-Received: by 2002:a05:6102:441c:b0:5df:af0f:308c with SMTP id
 ada2fe7eead31-5ecb692dc87mr2494543137.38.1767885484850; Thu, 08 Jan 2026
 07:18:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:17:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV9jwRL4=hAKgakymVY1fyUHG5ALg3Dd19aKeCNTC+ZtQ@mail.gmail.com>
X-Gm-Features: AQt7F2rGh841rSfsaYiGZnB2YxsDi_NtDLARw02BQ55fscjhbxfqeMGfvtv6Y0A
Message-ID: <CAMuHMdV9jwRL4=hAKgakymVY1fyUHG5ALg3Dd19aKeCNTC+ZtQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] thermal: renesas: rzg3e: make reset optional
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
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs do not have a
> reset line.
>
> Prepare for them by making it optional.
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

