Return-Path: <devicetree+bounces-323922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DJjvDAvET2o9oAIAu9opvQ
	(envelope-from <devicetree+bounces-323922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:53:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFCA733259
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:53:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323922-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323922-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E1A873063964
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 15:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1E5423160;
	Thu,  9 Jul 2026 15:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DA8426D18
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 15:52:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612357; cv=none; b=HHxlKZe4QSKuyx0rHmN0ThtHqebaFBgoTWgIE+vPOyjrwJ7CBaXXYLMNBAxlO00OsbxDL3brh79g/hcyMyzdVX309LMFfkd4hNrsvESNfdpK+TA8yCrV1ACTX9JHk0wcluqpcOhGxZPd7syfaTUwFgnSUKKL8XiVP8tqD8eauqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612357; c=relaxed/simple;
	bh=FK7tiZEI0WffDbTlu07kAZuJRwj0uLdhH15mcZOjFjk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=siaaqBU/5vBmdZWiHRCHOaI9QyPGRTYoZP4YdaG9JambsjOtebcmUiVVIcjwfb037TvbUIpixjWdM7TJIIkAwDGCgDXyAAQB3C+P6gYi52PZF/QImXtzAJund4GcuUK4B3RmvVOFhjGDSzqqTxPQ3XEiaF4noh6l6BXQzTXp498=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.161.42
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6a354eea06dso2263eaf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 08:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783612356; x=1784217156;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=iqrcHFDoPWS2t5kW57shcQV+qLcmaCnZOWUcXcNxWfY=;
        b=JH054x2n0+jieE0xcyd/jQr4DJ8JqGOZEFFNx/r01dEGwcSsE68lbEnvFfjSWrg8EW
         qW8WgU69/iwaCH43giFiD6dfnqGMY0gQ0skcrKyaK2e0qKloYz4ovNKu5mqXxx1vZPF6
         GXwTUsA3QFthAy0FYl4U7JmDCRSfPZW9MJ3OOHVcsf68ySepdiMMj6s3xbANY7/pEvhn
         PqYGJnDRGCw1zl2GUecPUvtms1UUIlyIB39xRTYJYWtmkXWhimDDefOeTqdG5cShjLnB
         m8UUJCg/H8GbdV7XUblJICdAWPYLSik8ABtWVNFBXBMm9jf5i6qmJP+adah1G6TYwDMh
         MkqQ==
X-Forwarded-Encrypted: i=1; AFNElJ+j+87OF7KUNZoopd26SovoQqgLENH16iGTaY8zO6YNnjZbPjBUTUZZRrc1umneMBQguLMD9e2++ac0@vger.kernel.org
X-Gm-Message-State: AOJu0YwUQvk2cY3fgM6C16FXoU6iTiqpd3xSxLjfmwsugw/kx5LheTrq
	XYcgoTCybq5/KmzpqaHZwlj2vDnROa5TEa4/Ea0u+RgDAgMZp1Fwo2N3BXZOZEPgpJ4=
X-Gm-Gg: AfdE7cmqicIstXTfrCw/sMf06Z8dJ2RqiCNy1sDkiX7VywbWxEEQSIKeYqmf3BdLbDy
	YYmrXx5vI5PhUg3CC+4d/eyO6jK98NmJn4AA/eoDSVewmm0GDQxlNLRANkWNvQZ7loU0wmF0y7S
	tSR4T2oapQHvuZytlR3MOpQHw0kboA+5J2m22JoCFKJZRV+/4JynUUBjQEqWmw80zXu1jixaG9a
	GBTfj0idoEc3t+klY7izZ2ENu+oJzCQHhke11eY38yEUIOvTCwxk4UvpfdaC065cRCmRMMTZ96D
	KtGcebNhUaSYJsXgDnwUm75njf7OP4COCx2Q2vju6xFziv1nKa78e3QDn9va3znJ/ifX5iPh5J+
	UUoCf9/JFSIlveFcUnWcBi7dkje06ic34gfut3+C4mPgiAc0IkkgvYbZpQtzKbzHLDLS3ytpauO
	wSRfhf8CsCTjTbwAawfjBKZPhFUIrHYLSexOYbo4QyiGWMwaIwQQ==
X-Received: by 2002:a05:6820:210e:b0:69e:c2ef:617e with SMTP id 006d021491bc7-6a36d8eb23amr5303944eaf.30.1783612355560;
        Thu, 09 Jul 2026 08:52:35 -0700 (PDT)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com. [209.85.161.44])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-451912444f0sm2296484fac.1.2026.07.09.08.52.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 08:52:35 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-6a321bb0328so2073eaf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 08:52:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8QhbCsUshsHkp6+FHvVFG7ssb/NIgSSNPdOSd12zyhsrmoG2LQP+EZiwIexRqpMrciZj6LY4IwxYGp@vger.kernel.org
X-Received: by 2002:a05:6102:f8b:b0:6c2:e290:cc69 with SMTP id
 ada2fe7eead31-744e01021e1mr4657081137.23.1783611946911; Thu, 09 Jul 2026
 08:45:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260707102418.1646159-1-claudiu.beznea+renesas@tuxon.dev> <20260707102418.1646159-2-claudiu.beznea+renesas@tuxon.dev>
In-Reply-To: <20260707102418.1646159-2-claudiu.beznea+renesas@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jul 2026 17:45:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUEQVN7VqsmQ6EKWxazrFyQdY4edaHyt8pPFEaJfGgbpQ@mail.gmail.com>
X-Gm-Features: AUfX_mz8Do1OkGKS8SDkGEbLBy8tojYuESbee1M6XmgysSPwrDRBiIuowYvmngs
Message-ID: <CAMuHMdUEQVN7VqsmQ6EKWxazrFyQdY4edaHyt8pPFEaJfGgbpQ@mail.gmail.com>
Subject: Re: [PATCH 1/8] clk: r9a08g045-cpg: Add clocks and resets for CAN-FD
To: Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: mkl@pengutronix.de, mailhol@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com, 
	mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com, 
	biju.das.jz@bp.renesas.com, tu.nguyen.xg@renesas.com, 
	fabrizio.castro.jz@renesas.com, claudiu.beznea@tuxon.dev, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323922-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:claudiu.beznea+renesas@tuxon.dev,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:biju.das.jz@bp.renesas.com,m:tu.nguyen.xg@renesas.com,m:fabrizio.castro.jz@renesas.com,m:claudiu.beznea@tuxon.dev,m:linux-can@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:claudiu.beznea.uj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,gmail.com,baylibre.com,redhat.com,bp.renesas.com,renesas.com,tuxon.dev,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBFCA733259

On Tue, 7 Jul 2026 at 12:24, Claudiu Beznea
<claudiu.beznea+renesas@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Renesas RZ/G3S SoC has a CAN-FD IP. Add clocks and resets for it.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

