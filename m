Return-Path: <devicetree+bounces-252727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B681D0219D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26E8C3058A03
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09C23ED621;
	Thu,  8 Jan 2026 10:15:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400DC3ED10E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867319; cv=none; b=tTbh21AMPCLLo5FmBISZSplECHkEXSOqssPBpn9VS6gfcjCfOuluH/Gj6qZTKj9y8N/EWRQkWzRIff6oYReWang9pQrpXZHkFKI8opJUKNj3uaNFbkvZeTUFBw8+FKl1bfqEG3FIXK5V0c9lRPLV2VeLJUT45QMaOeofXbdTxuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867319; c=relaxed/simple;
	bh=qUL212flFDahD/6ffUYSCcqiVwzBfficZRvhB/Cc01U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E3yLqU1Y1QISXxzF/7OKHUvxvf6ximUscg7cMnLV8lHCJXv3d6rdEY8cs305qTYtj5NiDOma+9LU5d/NMqmUgT7ZbZ82vmU79MO2VWODAkr3mHA7PdnCzBA4fu2TLMsbMgOwARuq/NGfVtubfo5erMGj0uwHwN3YvAcQ+JNCzHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-563497c549cso1132587e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:15:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767867315; x=1768472115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Maou6BH7r6RH3ZaVPVn26zKFMmYODSOolHw6UhWYin8=;
        b=lAwsBVitCfyrdVZ7dlN6z1zZf0w3syYVlRrYXjWznL0bYAS55VfXS8fDu9MlLVpDww
         b6jfBaVmEOAueTsk/5xQ2gGqaumbFKk0rJu8Hl6FM7iwRjhAPYzu68nlJtRhToT4VDte
         pKIjf06821tG+M01/UPftF1PC5t7nMCel/LeESVNbcCKvBUrdj7eVCegWkZIDVvetcFk
         /7WO9QcP/I8867E/l245C5bZbkyXD1GUl9zIXYYJsD2z/RmgZPPDRFuuTWvzhQ9/vFZi
         vuRs+7bKjBvI2BhbzTHryMnZ3OX5DF2kHCsHL2BbQfNy9ygvmpL0hAEUFtfNqxx1q4z8
         iyGg==
X-Forwarded-Encrypted: i=1; AJvYcCW0iQl3dLKcd44gMCQkA6+RmdJ9CuxLlVu2GYoWkiOV6UVp6GnvYB2aOXX9Gk5AXi+SSoQMiv2Y4RSW@vger.kernel.org
X-Gm-Message-State: AOJu0YxnA/EBmiHluTtO4Ic2bsm9feDg5v7FjO7ZmcDp9EYeYh0FUDKT
	fvhgTTEbQ6gSGpO7gdG4ve/fymqC6lIJ6QBsfVrQ6fpVV/BCoGvLF1ns0eJg54Kc
X-Gm-Gg: AY/fxX5dufS0GBiJmP7XXW0k7/N+/tgSsSyQ46Jux/Zz9FBYZO9Vh+0q7mGTGxUfrvN
	7qH5TG8j9l7TVZf6EbDKMOcqnFWf0CQB33saIRrpUG9kVXW2o5RYYDQLLFGNZww1rhQLPUbvOLb
	9Qobyn4uBz2xbIzPKw9LU4HNlO4p8W24CRPT75jTQHqx4POVq6DyIqmCW6q5ovxOlWngTGpag7+
	Uw3vsNROjEF8OwJ5TtzVr7TOWBp9LyLNjPAKGbH7NlEZfrVxbYbkhAgYXGwN5HaASybUFnlHlmS
	QmxIArNnniowPYOzZCHxA9yBgH+Fjwkt2u3ACj9wR1Po2l+SMIbkf539dCHMlB7xQ5S7DIhWsTO
	3X4z+4F0r3jidtVqEbo+JtnxedpKLEEXkQ0EMhFcWT6QgxFbcF+WoSQvYfisLDb/EsSWHdI8wXF
	KM8knuG/T5Gzuo/L7gIjlCalTLhi3DlY/aMldCb3P0nkFyfsuY
X-Google-Smtp-Source: AGHT+IH+ritYbxq1y0aSf0E48cK6xr8hrYNnFh+V6BDOJHf1gM5XHRZvstidH1fZm/S30r/wQ8DGpA==
X-Received: by 2002:a05:6122:616e:b0:557:ddc4:dea4 with SMTP id 71dfb90a1353d-56347d7f506mr1874495e0c.5.1767867315158;
        Thu, 08 Jan 2026 02:15:15 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634ca16da7sm3919883e0c.17.2026.01.08.02.15.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 02:15:14 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5ed0bccd0easo984010137.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:15:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4NwC+umFPW+gp9I0brZtCmDZ64bch7ARRMc7txjAhGg7UfdStEHrR1rAuOPS5XVSbNqI3u1Yh6RxN@vger.kernel.org
X-Received: by 2002:a05:6102:510d:b0:5df:b7f3:5875 with SMTP id
 ada2fe7eead31-5ecb1e8db9dmr2052457137.3.1767867313695; Thu, 08 Jan 2026
 02:15:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 11:15:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVxAXM5uedfTEhz0e77d540pcPm7Jt1+Dp413EdbEcGyQ@mail.gmail.com>
X-Gm-Features: AQt7F2rKOKuH7gQUPtii3LQr-jq-bYfIj9QEIEOOmeiAbmQQSfGdkB_nOYjU61M
Message-ID: <CAMuHMdVxAXM5uedfTEhz0e77d540pcPm7Jt1+Dp413EdbEcGyQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: renesas: r9a09g056: Add CANFD node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 18:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add CANFD node to RZ/V2N ("R9A09G056") SoC DTSI.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

