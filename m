Return-Path: <devicetree+bounces-304115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGNGAKpQGWrzuQgAu9opvQ
	(envelope-from <devicetree+bounces-304115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:39:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6055FF529
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF8B1306B17B
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F143B4E98;
	Fri, 29 May 2026 08:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986B83B3888
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 08:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780043701; cv=none; b=q3CafDwPC07HCuCB6XB30vv6G/i3/YSnWUArPJQxNjfFIxUB5PQDdd7fx6Un+/wyG1tf7zy9cLBVfP5M2QnOWMMrpJMYJsZDMFgVQaVIbhqunJlW1x6lWBqMWBGu5ldHcW/xwQXYWM+wU+HUzfm4MorAh6Kco65wJv4VSE9eGM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780043701; c=relaxed/simple;
	bh=ek3qk4m+/2gBxopYsug1++/DvNEbzXlTNyoVd3g+TaA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a69W3NKfp8vWtwXkiZYzxsxcWYWUJ0///fVy8sc3fsdjgWEk6vn9SilYmxwS4keIEYB+Rf6+RXp76mZ3CWKp0W2tI8LfcAtQqYQ4lOhdXxGtFDIIypWBIc3scIMXB2mGr7wWcRAgb/ReLzsdtNnhlW2XJq8QN/8DELK7+SLZXVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-9639e91e773so444892241.3
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 01:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780043700; x=1780648500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Q6zzuN3Y1XcfvM192VXxH5bPBxYyz0/XT0mI+jj97c=;
        b=RE0vSrjc25Jq/XC5rXvhcdZAj81exTOnJligunXZaWeEAmiZNsE2cMkf7lM/NcutpM
         wuC1/TcFPOt2teU4xWC+B4JwsLp1ReNBQohXvkcNgz5x1DmKcBUjupiq29y9BVnprKt9
         09PBrRswfrcV0imVyIVkBwYMWru0z195POqGcD5iQZjrvsdZFgEJTQhPn3rNxXUvTpVT
         Ll2aU4adgewLehQjY652cE0yjp1kv/NF94EMtda80S1Z0li/q5Yxz4VwfMd0AFPKP6Ng
         1t6fkIebNMr53IEQ4FxX9PtNucuq8pdqyhAZgJFSH7yoMKzINidTiGhyMI7AVcFD+jmK
         pu+g==
X-Forwarded-Encrypted: i=1; AFNElJ86QJuOcjUBLcON766ss0vCW/GNoacfg8W+oFx2jcoW7lngS7VDjIMD/Scs2BALcUXV4TQLs/Zsl/p7@vger.kernel.org
X-Gm-Message-State: AOJu0YwSYMW5z77YtZicxDMfxKyNtiHUgbMgtGTIBP5qCVfe9CDHWxwt
	/BT3eEFQ1lm3ocw03AsDOQmezK73ZTB7WdBYBvNSxrGn6RltWV0KQDBIS+LRMNXvBRE=
X-Gm-Gg: Acq92OFnn0UK70mDTvT5rBRrboChksY6h+D4HYsSD53DT8pOQd99MAyS+y/br6NJhZN
	K/79KKJb//RPgV1gmSi8yoEndaFA0qtJflj3Jv02+vCwaXjU5NXYIyAI1qADN6knUoVCkRIJXAd
	r+7QOm6xeCowy1P8+qz0jT2HBFN6F6FBmL4OSTaNS8ot/Tvj7i9fsgcWuRLJIztgvevoVb53kwJ
	b7NgUhAlrnDgrk0wzlEOdrNwB0oQgNjsqgfmUzbjWDQKQNqqWuw8fy7i3DOug3sW37HxCuh7Cnt
	rbAYr9h+L1rf2rGv1Qwg5OY0CNNJimWajn4C+TQyczqjiqfOPAhQnizrOUQ+/KZaUbkVfKwM93q
	/fXPazQkG6kT8csoe38Fu75TRVpGFY1dle+J62OmdhZD7Zpebu9WuAgeaEkWZV/BZH9LzPR3jEf
	v6kTZFHvloGXLU/eiHSuoma5J4/XAn/L04qrmdED22e1vrOQFSmpxbQkaLKmSdF+W7evSHMlICT
	tMGf0oLUQ==
X-Received: by 2002:a05:6102:6a8c:b0:6ac:c0ab:5dc7 with SMTP id ada2fe7eead31-6bf264835cemr653948137.5.1780043699609;
        Fri, 29 May 2026 01:34:59 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-963abeadd1fsm499288241.12.2026.05.29.01.34.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2026 01:34:58 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-6c1f4439688so48899137.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 01:34:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8oXlhRVZN5v8JlzOf9W/2IOUMMuYmy4wQcoSaEWhWBgbkaHBiYy4CpToipPmIsAB06uE+ij27KZlNL@vger.kernel.org
X-Received: by 2002:a05:6102:3a0e:b0:632:29a5:2b28 with SMTP id
 ada2fe7eead31-6bf26482f08mr633139137.6.1780043698317; Fri, 29 May 2026
 01:34:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260520132315.944117-1-claudiu.beznea@kernel.org>
In-Reply-To: <20260520132315.944117-1-claudiu.beznea@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 May 2026 10:34:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXLmoOrx9+TngcOK7_M=oKgJRcxmPKGDetRe++hX2vDPw@mail.gmail.com>
X-Gm-Features: AVHnY4LJbRYzzzwKxtB5OZZtYlbRSFCPZZqg47A89j0pRjOAgDTOMrGCgSK8kjA
Message-ID: <CAMuHMdXLmoOrx9+TngcOK7_M=oKgJRcxmPKGDetRe++hX2vDPw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a07g044: Add DMA properties for
 serial nodes
To: Claudiu Beznea <claudiu.beznea@kernel.org>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	claudiu.beznea@tuxon.dev, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,tuxon.dev,bp.renesas.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-304115-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,glider.be:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EF6055FF529
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 20 May 2026 at 15:23, Claudiu Beznea <claudiu.beznea@kernel.org> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add DMA properties for the serial nodes on RZ/G2L SoC.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.2.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

