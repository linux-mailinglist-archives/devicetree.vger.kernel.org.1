Return-Path: <devicetree+bounces-248901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A92CD66DC
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1086300F712
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E6130103F;
	Mon, 22 Dec 2025 14:53:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E302D0617
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766415202; cv=none; b=LYPr9PtM3g5TQXmBCdymUyg/0DLkERPkrtMMFu70nuSoBug+lewkwK6vUihRLHEpJL9OWDV+Y4ZAxD1k98Q4/oKpRYTqZcf4voHxMAMk8JUsExWvAsSZHXflHVJedGNLjjflWzxd85BlPROTOdg6tEQMX8ZkE0LccoWJQOmhZPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766415202; c=relaxed/simple;
	bh=KSRSuFHH2PJSD/CckpNMs8AU7IpdEg1Y2+TdEVv+dv0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hqScjm52h7zUDFJO0irs2qUsvZLVOKHAoNJQ0AnM8EwkO8Qyi9JDN8A5CiXA93k3b0j4t3GRx1RScr7ov8P3abonffVzCiPQrcH9/buT7ZfVij9Ps75Zh+CBwV0Np/cMudwEFgCX0TzJqW0tgL36Pqj21cjsEN93E60xKvvLv3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-55ae07cf627so1058429e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:53:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766415200; x=1767020000;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YSOJB1gMOn5xy6gb3TiloSuayTyzA5AxEWeYO3ZY3ZA=;
        b=bp9ahHWA+Q9P9e8lK+3UBIAhJv9oEykeaefu2GgNTQlC5ZL9tHR9K8VlMJMceZacCo
         yi7sOy/PmDXITkA7SO627Y04N06s0axvcDE28vbkew39qTS5Y2fj5tDYz3UDPgJr1JUT
         BaJrA2X9paakZVYLAVR/kKrC4Ov9h2FHMScS+78ZlM8PK/eusld8UXZIL+VOTkcLzSHb
         38QzfE17zhzUmcqRMqu/MjjU5Bcj5gK5cASQ78cdYdH+Wf9FbJ8wyqmbE12hIKIza3wA
         buDk6cqFBJHRANWHyLOryiFW8DRS69RkNb9rXY4z/5qjBnOOhbtaRrLwimGe15ZDgGOT
         IW3g==
X-Forwarded-Encrypted: i=1; AJvYcCU1dlOxs21tUYTCNy5afCd0O/u0eWqPNnpsR1P3e6Uxm5cLDQIPt+r2V7vnf0uyBpSSooZsch4sxAQo@vger.kernel.org
X-Gm-Message-State: AOJu0YxD/Lh8d4cw2K5yQXpwd0fSvn2FS7u4sA8EnJ/9MfYvlajUaQ0w
	d1TWYDnVc9vtl5srsMwUtsuOtXeQ+pC7HVin7RHUOkn0aIs5OzGhj0mapREnQsD/CC4=
X-Gm-Gg: AY/fxX5OWXpF6cdTuCG7UL4FCi/SrUEo+/AX2WHP4cO1s+uBnOEQZp0S+A1sTm1dm5C
	rIb9GFFcCJOYmjJ973CCLzcjHnWLUw/VeYZP37ckO56Ci7Rrg4accK4baOS7hooAaj8Ayyknc9I
	hycThf/NxjmAqAFu0n4jkj5ZPZnIg+fYtzaJCQlgSA6XkYzrrYOaJQaBepvcIp2XLXgfmbNWq3A
	TkYv9JzyClFWnczno6BVAz2ccUywAUTYe4VsIMbOYONT4mZbZYvLuzdS7pf06Z7r/Se4Ul79QVP
	/OqkQ1CyzXHsUATkzD8kWSi89iqz9vzuv9lbHWPNbphe94ZwYQcKK3okrnkKkbPlySmMBYoeAo4
	pBN3Jg6hxSfOqSJkc4GIZfgOMZhx/oijWTtFIbSKKcE9FS2z7JSYy4Y6z5vuKEgPZnQcHwhaWer
	5jWkzILy+PbvqhJrR7saNMhvK92WbpE4Cn9mw8+/77hmJGQDiv
X-Google-Smtp-Source: AGHT+IH+ykj9fqejR9Aq79pIUFnajhQzntg1oXeQrxyI1KpDLRK4FF600quhsVC6SVlIRR8FcmOd1w==
X-Received: by 2002:a05:6122:3187:b0:55b:d85:5074 with SMTP id 71dfb90a1353d-5615bd3b91cmr3026315e0c.8.1766415199819;
        Mon, 22 Dec 2025 06:53:19 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-943417972f5sm2982355241.14.2025.12.22.06.53.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:53:19 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-9412cb281acso957709241.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:53:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXFJi1pTZle9m7FGk3lsCaL/1ub/5x1n42JblSFutu1/h6m25I3R21/XnlVA2aSSi8OqdchP6fDLNWB@vger.kernel.org
X-Received: by 2002:a05:6102:290f:b0:5e1:866c:4f8e with SMTP id
 ada2fe7eead31-5eb1a83832cmr2847910137.39.1766415199038; Mon, 22 Dec 2025
 06:53:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com> <20251129185203.380002-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251129185203.380002-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 15:53:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXSxYirOtmurtJOCmNMGr=t9R4MfFbM7b+Z0MPZnC9C0g@mail.gmail.com>
X-Gm-Features: AQt7F2qlEkm1wnEZIhCe2vD7ICNydnEQ79zcdK2_BhnMHX0Wu6QyxXQ6x9vYF7I
Message-ID: <CAMuHMdXSxYirOtmurtJOCmNMGr=t9R4MfFbM7b+Z0MPZnC9C0g@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: renesas: renesas-smarc2: Move aliases
 to board DTS
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 29 Nov 2025 at 19:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> SMARC2 board dtsi is common for multiple SoCs. So Move aliases
> to board DTS as SoC may have different IPs for a given alias.
> eg: RZ/G3S does not have RSCI interface.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Collected tag.

Thanks, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

