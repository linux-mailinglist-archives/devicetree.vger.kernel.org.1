Return-Path: <devicetree+bounces-252451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B664CFF01F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B77F5347C82D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC1139B497;
	Wed,  7 Jan 2026 16:38:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A6D3A9DB1
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803882; cv=none; b=iLZp1zcj9Wkx5u9tIf6Dx9w2XMBQGdrwoxdOPknUT9gb6gCqkYw4QX11N6AClFyiLs6GT87l0+cLbsxp3+z/XsamND3IAyc2TTOSCSu45zYzhY0FnG3Q9HibInWcqkaoPREf0BifiQpeuYGbbbKMP6Lb5wljpy4ggxsenWxMVjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803882; c=relaxed/simple;
	bh=GXHtf0v34l9dMsk5oXU662hmJwODCVQiZecT5r2kdds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ozqRV1CHvYADm4Zyb9oPcszuT6kjqOEmuMl3BXDXVD1AXbmzTnuNgpcW1WnpyTtOpeAPJ6Q01FqHkWgrpdrE0SWdHT/12yeOpwhbDNpHpR/V/0jwHz5jSJnEc4Wq/OZmlXDsHGXDLx7J8cb8c4/7PtAOP0ad0Oh2290t8x2lVB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-55b26332196so693206e0c.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:37:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803872; x=1768408672;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKu9A7wTbG+gOHLtE+m+HecdyeAHdeY1vKyGmb5DtV0=;
        b=SZAukGX3tkA8Zzk8xOJK8bxZIp7IxP3xtwvJPEc9gwctoU6QS+nK5WEUNEVHws1rzp
         RfY9KLI7szyiDr527hyO/rw7Woho771Gy96YHeFFR3P800Z+lGZHXICp8UNfgA9tE96n
         w8n5gxL9/3AHJXIVjnky/IKTzaAnZUH1Po4vA6pGYoxWj4I8PG/motVT7PlDnWZlyCKx
         V3JSfNNkjZ78qBsz62Rd8lZcD/fyF7Uo4fTcXT1Hz4rpj+hjhEgvdIjwkOsfBZxHyInS
         ObvCERPXnIeK3N29ESyZYdjqsbS0ZKdFMv7I3AVf0d0a3BMKTTupAvPT7Vx9ZLpu6n1p
         4oaw==
X-Forwarded-Encrypted: i=1; AJvYcCW0xu+S27oGC881cgsZAWWIk/MH76eHMhI37r5dThBzJONjGMXsGxD06ZF+nSTM0SsAfI0iVbZtMhQC@vger.kernel.org
X-Gm-Message-State: AOJu0YxJfVbLxAdjCKEomPHHzee10tzE8gmUVAFJtOR35mNSJ3lCGqE3
	p2G59TDXwxFF3fVpPaAOCujsxEqHjI+pcTzGCU/A/wbApCfprE8YW1MHtg4D2Cw+rQY=
X-Gm-Gg: AY/fxX6VOpJLjYfVPBFxeISKC/tc6xOFw1Y7hBur+kEcXDAyXCSbmxVmGJzqyeTnnl7
	tJNOjo/EyiU+Yv70LfyoERcCVYkWrzaC36bHDFD8h9CM1vGfkabl1iEuzSONHO/EvhOj6sHawRZ
	0cuLvXOJZSc0epyVsICf1GnxiT9gk+ECfewhZPgmurTPIGyQkvTMw/ZE0evGdyNPP2zuUoPTNVN
	BSV/TovEXHtpw9ZSsPgmOhpv4ZsD86jiwJoDoKKmQL3ct/GDUAq8K8sv5FCiRIxktRrXYOmtqKc
	z8usI0Of0iJcuK7XyLuJOcfViUqbb3q5UAvj9tXopxiKbvO80xmzvwEvpkop+T4Gd5v/wrxtwHp
	zngmqJmf6uHPrQvAYQeN79TjawEmKXV4N69YRg1k8cfX8365tmsBhg2qbH20aToBhMto1Ohz8D+
	Y+YKmacpBhyZAEKLI3CC984kLmEI7bXflYr+9q/9qNAyAN54+v
X-Google-Smtp-Source: AGHT+IE8pwC9Fxslyf+eBF0SdA7Xd7vRhQgH4oFtsGuAoeJehLYy3A6iybyfDmNWZ3kjtueGdx/efA==
X-Received: by 2002:a05:6122:2210:b0:55e:76ed:e6c with SMTP id 71dfb90a1353d-56347d4b3cemr1108320e0c.7.1767803871855;
        Wed, 07 Jan 2026 08:37:51 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a443e32sm3492678e0c.22.2026.01.07.08.37.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 08:37:51 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5dbd150efe8so836952137.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:37:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVB/CJL0+5ZFQyKsmDJnCAls6Zq42Ts07ZhFrwh5hkoGI2NFWeJzEV+M4KdO4dGBOWyBKWa+fGwIwHi@vger.kernel.org
X-Received: by 2002:a67:e716:0:b0:5db:3d11:c8d6 with SMTP id
 ada2fe7eead31-5ecb5cb9155mr1165051137.5.1767803871092; Wed, 07 Jan 2026
 08:37:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251230115814.53536-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251230115814.53536-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 17:37:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWYuq=x1hDb1m9D=H=rY83pqcJztXW37OA-ReXAaitGKA@mail.gmail.com>
X-Gm-Features: AQt7F2qaXZupH8vZG5zoME2d29ysW6TbxB39ZBn0ObCH0qVc70nPQN5riXV-6zE
Message-ID: <CAMuHMdWYuq=x1hDb1m9D=H=rY83pqcJztXW37OA-ReXAaitGKA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: can: renesas,rcar-canfd: Document
 RZ/T2H and RZ/N2H SoCs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Dec 2025 at 12:58, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the CAN-FD controller used on the RZ/T2H and RZ/N2H SoCs. The
> CAN-FD IP is largely compatible with the R-Car Gen4 block, but differs
> in that AFLPN and CFTML are different, there is no reset line for the IP,
> and it only supports two channels.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

For the content:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

