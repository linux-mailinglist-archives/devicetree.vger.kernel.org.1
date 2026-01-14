Return-Path: <devicetree+bounces-255097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DED1FB37
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EF73303C239
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C5C396B6D;
	Wed, 14 Jan 2026 15:20:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228B1393DC2
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404015; cv=none; b=NDNSo2y2Y9lkWdjd+gTaiyh9hcjGn4PwNhO+RaQpvBiV3j2Vp/YbmEjFOJrzm8DzD6WgprGvsYf+fyu8ep3aUHI66ZS37AJbKlava9aSp0y31zM/Tmw+o3S25SBHOlbAWoPro84D3s0vwBXzhTBhfJioIlVz+izCpYyBqWUZNfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404015; c=relaxed/simple;
	bh=rTRyXahERnqy/2b+PnsI4jr170HiD4jbIMfzSBqGSyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jPTaT/keTYb2Ngy/GvHoFj7hErv9dw7IedLRooXdobyxVlJ7WjTqaSWpOe8zz+ut6vTTtzsXPN0UALG71BIQaU54wBN9uDdOFvG9bHNRLMxf8cgVD50G1CKvjOoXOfGHXyIzpNadT4GnMQcuw1iMhPWFnv3w9MlXlPFdcLbJeO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5637b96211aso3454393e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:20:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404011; x=1769008811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTf4Ia98cnNEFdpDb8exU9CBi6eG0s42SPNHJEcig2U=;
        b=AfqDWCw4Zf3Coyh2UxgYv70jVVbdmcBbB2ek1T1QzMHMyfMIuvk0A7xcbLaSURUsZv
         +ryV/ERXbb1uonXXCWs+jhHTKLbR7NMgxV64onhXYX7TqTmbQNYLSxnP7VsiEv+irBDV
         mWta9oltgdaWm9TX5qN+ODFTveJhRqHbkB8DRco0ajisuykI/c+YhI50VmzxjCeXgWjx
         mw8Vcn+9ndimzbiH3ilt+Bf2zRGNyvZFefkRuurD83FSgNEsfq7WXnwUwXvuZwqe5lrC
         mQ2vzU5qNERIQtbo1Y0he+Xj66GRPMrrH8U/yR+mn0mylOvZRsUhgXB2pPy982DgEHJd
         FvYA==
X-Forwarded-Encrypted: i=1; AJvYcCXPVhsL0Sul0D4PAKRHq8GnvFNDRk+ffhuUwKFC4DiW9BmYLKzjt/yG9QtYRkoUBPt9gMieV+R7uY10@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+rAu+34WAw6MGfUX3jzfaW5eTt/21KQv/3EZWXqV57dabqHDE
	B6jnzEejgHmcROufBC2pBfjcGKajGjsMpsKYE5lr654iJqTK7ZX8zRFbShz9Dp7N
X-Gm-Gg: AY/fxX7rQju3lO3LJOVR06WDzT5+UBEJyB7iWxyfrjaWUgi5nddDDg7G86h9W/sai4A
	YXer6TItt7BB2tcmayWpG3DsUkZBc6XtQWqmUG8lrAJPzjljK6QE0je58J9p3CUI8dv+S5/qh6I
	X/BdKsvzilgB8y9IAWUZvpw/nSS53mOlRT1YpGP0ntvtVFlWRpgjMKtmA2jfM/FcykkuEd5tdVL
	cT5kDrXDrLOqSMxLnSTcXRQ+82pj+NcqOGF6dCzYtAGLSLuwVkgBToLZTbfD/kI3iL1tpfZm0C4
	m8wo7T96Mk/Fa3maHyWxZDOpLGEDFw9W5D6zj3d3kA9eHtjZ0+aIAReaTRfQWti2IC4DCjsrrnS
	1f1Dec5Qke7nfefrY1H1aH/4yFkagrLJlBFrgdFvR3Y9mkXbwlWiCixECym1MKZtmkOeWc+myTn
	STfwx2pfIxlagy5QctDHCY6RISD9CV96HHU2Gd9rOCZOd8i/az
X-Received: by 2002:a05:6122:2105:b0:55b:305b:4e41 with SMTP id 71dfb90a1353d-563a0a23658mr1176108e0c.18.1768404010006;
        Wed, 14 Jan 2026 07:20:10 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563667cf148sm15699203e0c.2.2026.01.14.07.20.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:20:09 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5eeff7e8bb3so4086072137.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:20:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX4cjAcDZLLlgnMKYog1Iq/tnACIdT7S1Yfd/TyOUn6KQEWNklsUMeG3fLRFdSluatdjDdFL2+73mOg@vger.kernel.org
X-Received: by 2002:a05:6102:644d:b0:5db:ca9e:b57c with SMTP id
 ada2fe7eead31-5f17f58e48cmr1339389137.27.1768403555913; Wed, 14 Jan 2026
 07:12:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <b77b95de299de70ca78f62274d2bfbbff8bfa0ac.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <b77b95de299de70ca78f62274d2bfbbff8bfa0ac.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:12:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWwvY61-cei8_6Z_TCs7EKmY0Wj_pV0Gymq8k4KxYSeAQ@mail.gmail.com>
X-Gm-Features: AZwV_QgBsmdOL1CsIZxC91XqWUZahJaPBp6OhsrHXMfNCw9hk5svX0lNu6KcuTU
Message-ID: <CAMuHMdWwvY61-cei8_6Z_TCs7EKmY0Wj_pV0Gymq8k4KxYSeAQ@mail.gmail.com>
Subject: Re: [PATCH 17/22] arm64: dts: renesas: r9a09g047: Add fcpvd0 node
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 15:10, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add fcpvd0 node to RZ/G3E SoC DTSI.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

