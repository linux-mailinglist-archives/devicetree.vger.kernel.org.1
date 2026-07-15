Return-Path: <devicetree+bounces-326777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Us4ZHMlNV2q9IwEAu9opvQ
	(envelope-from <devicetree+bounces-326777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:07:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF7775C3BE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:07:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326777-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326777-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92BF23257603
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6767D3DBD4E;
	Wed, 15 Jul 2026 08:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1EC3DA5A6
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 08:58:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105936; cv=none; b=hyhaGEaN+/Q8eAUnPzxJ8pOhpxPowcP0BMHHwDT7xQX8og8J5hktT014FD/t9liuOl2fxFnwa1dYABCzbeKW/8x6Yhgty9unY6pZO42rFjOneLEUSTi5lZq9ZJgXPI98MzaW4eggXbnktvQQSCUR4CmaNuaQ6gkVXO3YhuD17Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105936; c=relaxed/simple;
	bh=cd7DBG096VF7/MN3QhC9fHqLP5wSJXhCQl8cwkt8dzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mBxcBecM3xEEr2VpiGi2vZVvDrUVjcO31BJw2len0uh4BWZNeuuKEsXKkPoFXBwO6vCxU01P6CHxJpxcyOyA/C4jlT0CVmcBx5gdY/0OMD7JrfKa9ei5CeJMbZAC/ZaB5Jqe6v+5+A+ypAsnd2QbzKJar4lb62Hj5n46AQ/y0Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5bfaa014978so1744678e0c.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 01:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784105932; x=1784710732;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Em+8fgb0ygi1i2LhSV0Cm1ShdIUU1QDIn9O8w7QaQ/k=;
        b=beJOa4jXLIOEfsNOPN2sS1sg6h+kxjEvFP1HDfdJshq+jwl3j37zbzTp5gHZ3q2AW/
         pmpPBrTa/+g/OJuodF8w8k3GA4Saj2KzKajt+/XxvYaBC1ElpeH/ZD03V7pRyPWBHJIE
         AXp329Lw9fVPtoiOQiFfFCyAP36Shu2uN5MEBDValJyFegnI3wH8Cd+fc9ZPkdqJ/YXo
         bwrjMC7Gqq4AeGWyW1Up3lWPvrbrdP9TU23VkSn84OIz9aPt1d5SRDQKB0TThlt8kJFT
         fYiYJRQEM/AXJoTXa+bk6JSf7zoSrfh4YjghL3vDyBDU6J0Ha19ervROAD5LzH2uiORQ
         j2qg==
X-Forwarded-Encrypted: i=1; AHgh+RoEx5SX1EhGBCADyPGwBfrCHx3BcOy86SBfDBvFUFNqN7i3yUWi/Db4ZEvoHdVURiXh6+WTzIHNgnXz@vger.kernel.org
X-Gm-Message-State: AOJu0YysMerzgGEd079UxF1YBh3FTU6WMOdQ+0lLrP+9HvGzPiSiU1OH
	tj3ieCzJjIY5PztJgjjb3iY792/N6uFdhq+9hyL9w4MjNiirvCQNEpVfhB1vEO+QieY=
X-Gm-Gg: AfdE7ck9+Aeg+FVq7FTd7lNsUof2LkVVxdjpcubcfDMROM08SoVx0GVGDTbRsK9A4Xq
	KJXaVjQh76IAniXxV6sXS7yTZDqjZk0T2+WGa0mpXnhztPoD/SGZwd8nzXkuw2B9Kr1ms739Ec8
	bSjb0oWQ5bvMBRgTLS3zryz5mSdJiJ/pzGCC8pFb4Ht+Oc/0w5aW48t6SvHK82OzjS8FJl7kq66
	27+032i9tdIov9qJHlikGyu15HRUXnfnKzaefpoLE/WKem6RHWsQLlWDnanveKCQDRaCmCHWH8C
	TL5+lSjcnUfxnvLcfa99PxSem/tPkkwarBQqVzG0kGaWNI0eRvD3YAto299iYKm0S3GExtuEoPb
	R1CLNse042jFk8pSWL+SqkOp4eQBpOLu0jCuTh7mEq4dnE+gMO7AxoWF9vjWTY402ZQK3kOFHel
	kRDCOLKObtHAFoMuPnu8gowFSuadL8iycG6f3/MQqFW/FkzdP95odXOA==
X-Received: by 2002:a05:6122:546:b0:5bf:ab99:ea89 with SMTP id 71dfb90a1353d-5c10ee42832mr3435511e0c.12.1784105931579;
        Wed, 15 Jul 2026 01:58:51 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bfc75d4e77sm6771044e0c.16.2026.07.15.01.58.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2026 01:58:50 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5bfaa014978so1744671e0c.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 01:58:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpvyOldgcM3supmbWuJGwKlA9doXDJpbgKTwleVtvKagfcnJjfmBFuWmVYZRpGxpBoIzLTAaT/ezB6U@vger.kernel.org
X-Received: by 2002:a05:6122:82a9:b0:576:c4b:460a with SMTP id
 71dfb90a1353d-5c10ed0389fmr3961224e0c.8.1784105930097; Wed, 15 Jul 2026
 01:58:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260714173315.1981708-1-claudiu.beznea+renesas@tuxon.dev> <20260714173315.1981708-2-claudiu.beznea+renesas@tuxon.dev>
In-Reply-To: <20260714173315.1981708-2-claudiu.beznea+renesas@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Jul 2026 10:58:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUgvwjb7zNnsRXX9AzaUVAhVmks4yU5P+pJ0in6NyA+ww@mail.gmail.com>
X-Gm-Features: AUfX_myYPtAhsLzqsMqdAVX_MCR49rN5A1iR-oDlp3d9aq2XNRWC9ufPlL95oJQ
Message-ID: <CAMuHMdUgvwjb7zNnsRXX9AzaUVAhVmks4yU5P+pJ0in6NyA+ww@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] clk: r9a08g045-cpg: Add clocks and resets for CAN-FD
To: Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: mkl@pengutronix.de, mailhol@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	bmasney@redhat.com, biju.das.jz@bp.renesas.com, 
	fabrizio.castro.jz@renesas.com, claudiu.beznea@tuxon.dev, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326777-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:claudiu.beznea+renesas@tuxon.dev,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:claudiu.beznea@tuxon.dev,m:linux-can@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:claudiu.beznea.uj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,glider.be,gmail.com,baylibre.com,redhat.com,bp.renesas.com,renesas.com,tuxon.dev,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,linux-m68k.org:from_mime,mail.gmail.com:mid,vger.kernel.org:from_smtp,renesas.com:email,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCF7775C3BE

Hi Claudiu,

On Tue, 14 Jul 2026 at 19:33, Claudiu Beznea
<claudiu.beznea+renesas@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Renesas RZ/G3S SoC has a CAN-FD IP. Add clocks and resets for it.
>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v3:
> - none

No need to resend applied patches.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

