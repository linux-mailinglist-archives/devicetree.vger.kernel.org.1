Return-Path: <devicetree+bounces-248855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96CCD62D9
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AFF2303524A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B3D3176E4;
	Mon, 22 Dec 2025 13:38:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1E830F93C
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410688; cv=none; b=EwpwkR1pJ0OpxoBDuucn5Su2evPAQOgktZ2wtgYLDIfvOQDbF4VHKLccSURrbumUXAbUyHQNt4JAcq7vY5DjThwuavBf43cAhsPRxstlGQghV51PJUQPm5GbRbxzQZwn2OodgqLDLvh8mF1cQ6v2lxR7YOIkit1+f+T7FtyPA3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410688; c=relaxed/simple;
	bh=atMu+NMNWGp92ZN8w0//KyU7iObU//7MOE5nHVDMOIE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lxd7AodJ6F1Cx31plnRZO5wraKU8EjMpcdD77s0rCXyTvRoB6vZ8OFgJCBaz9LlbUAC8uvCIapEH+IKOvyL/iSQIXc+ZC9m8hHbfvpJsLTuPyG4yhJJNIl0gNYqH1FoUgzzUsO9kFotXAVwzY7pLQwalHf87c1a2+buW0FT2WA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55e8c539b11so2730066e0c.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410684; x=1767015484;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8TH0BuDPZuMG5BFci+UieKJnAfdJDwgudNqJd8FC3hQ=;
        b=sN+HrMxQoN7EJoPnMjmFVJZYW6madaYYyjZDpriKStpUMRKksfJYTqJH1scpxtdrYT
         GOZ+URLHthAEqj2MWjVQLc+D/HsA7LQpbBxFsJYllAyCAZJxWhUchAEEkJ2RrccpcQr2
         EMYOJVNklvfMzWkrK+RiuefAoAJFbvl8UKO7Kfb37w0Vaz664FQ/9Mf454o0bKztc/kw
         EeRKS11PDuXJwGPvEJmG38kgGafEJbgHrccc2QTTCz6bReoXGapvSR1Rb4FQ1aDpsc/u
         Lv+Kf7iWUfVXD0B71uY1Ag4yIyVMV4PsWGYtzxCaRgJyHh7Pm66gEoEARqtK4p0/bRFq
         pX2A==
X-Forwarded-Encrypted: i=1; AJvYcCWZiLE+X5rlFWeq9tnDOl5nyykcylOdWnGTFw5grSAFzwi/+nGUd6JHcXMn+uC1g3WdcldCpaUTHhBI@vger.kernel.org
X-Gm-Message-State: AOJu0YwBf5nCk5Arg9JnA9veYxNvUN/lxMfBE8aVm4X77fPqOLSLRhr6
	iU1GBmJekRqwVK9KErdirEWIWE9mCLd1mtksY8jRjKt/bh3OaeTKD3kg8E/5F/hB
X-Gm-Gg: AY/fxX7sFTucZrfdH8XmZlMrZv2LMLxKzuFaIusMSxVNxCAb5Q3DPqwywiOjKI2LLzX
	qHA/T761zHh+YVxKqx8zvUo35Lx5nZfR4BCHOZoNIbnpqhdhPtMrI/Lrn9bIzo71UCfGNBE2g/3
	ZJ0DgWLC6GeF9TGs4BlMGb9Gw/wizMiUXy54N2FSC7iwc4NkJMJ+jMrHxTebDMXjKR9kLnBEXpi
	9vBzoKAaViVE9yLVXcAbs058k5ZywfrWRxKLdZN7qfMaCkpBRMZ6cef/Eq1ka5njOUmSOnBJHxM
	TSHitu5edvxtg2pRgVH1gW3oaivzDvzOHuaEHgPImwdENDgCiPk8M2ZYBw9OXU/bhcilIyoi2D3
	Bnaa6ZhMy+csbwB5RLpTdLLybGql1SM+b8no6AJpHJ0hBGq/J+E8rzKSIwRgmB2gG4YF9ZAmXoz
	AxnQTWdqXNtC4giqVJ/nft07cblM1fYX4Y0RIWz5b5sTcCSZfOxtSO8WIv2kxCHQ0=
X-Google-Smtp-Source: AGHT+IG8uQjoAybYymqYnoSpm7EgOB1u46BcUEky0Bgcd1HpSaT1BV35gdm4UwWdSHfLoJqOWF+y6A==
X-Received: by 2002:a05:6122:1781:b0:54b:bc2a:f58d with SMTP id 71dfb90a1353d-5615bd19be1mr4118928e0c.3.1766410684525;
        Mon, 22 Dec 2025 05:38:04 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9434176bf72sm3026441241.10.2025.12.22.05.38.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:38:03 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55e8c539b11so2730051e0c.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:38:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUSswRA5fH3nOmJTpQ+a3E542aAOtoos6StF3oPS/kpIfoXTl58Usv48KKaSNtkQS8pb9u+/gObP/YM@vger.kernel.org
X-Received: by 2002:a05:6122:3c86:b0:554:b32c:6f76 with SMTP id
 71dfb90a1353d-5615bebc60bmr3088446e0c.15.1766410683522; Mon, 22 Dec 2025
 05:38:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251103200349.62087-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251103200349.62087-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:37:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVcb1A0rOHgpHNUjOGTtfYxpf3Xc3a5wz2gs7_qq8K=kQ@mail.gmail.com>
X-Gm-Features: AQt7F2peHUmX0Fbl7hJ42VjvAfztqaghIr10Zy2HPLV3PPh7RJNBVjXW7tAqsc4
Message-ID: <CAMuHMdVcb1A0rOHgpHNUjOGTtfYxpf3Xc3a5wz2gs7_qq8K=kQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: renesas: r9a09g056: Add DU and DSI nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Nov 2025 at 21:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add DU and DSI nodes to RZ/V2N SoC DTSI.
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

