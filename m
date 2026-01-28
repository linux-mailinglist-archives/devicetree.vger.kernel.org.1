Return-Path: <devicetree+bounces-260582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I/EE7lZemm35QEAu9opvQ
	(envelope-from <devicetree+bounces-260582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 19:47:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E96A7E04
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 19:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5348C300463B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE83371077;
	Wed, 28 Jan 2026 18:47:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1146628D8D1
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 18:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769626039; cv=none; b=LDzj1I0tv6DSFPfNcp8hsLOGl0kK69hXb1ZlWQiBUcIIP1OJc0UBQnXutucW4ivg2G9U69YkmID9WxcNGmFflGvL+uAxg2/+GvyV6SJvoF4SA7rHT454JCqfk/93zZtoanJ/SgIPcF8Ukw+uQzCucwMF3zmonll+wTkAoZdo+44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769626039; c=relaxed/simple;
	bh=P8xj2BK8FjGDivD9OkfHZ4E3MGOAuE4ULGgWdPW5pgo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DYCvc4MG4RsDaVQCBhEWmX6bQ1a8giqnyjI4zoVh1ypE7FFGdUZI29SkbvBAtklJI9Xyyp/j42rCRsR33nhUigu6EaR74zhGKy52sndLfFeSv/Ivhicdd7IClbo92UMaZGkWmylrGtJUfE0DZ4fpWkX6w5Ili2S+/xyE24YR6J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c6af798a83so25200285a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:47:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769626036; x=1770230836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8t6SLqjvsNW00Dj2Hjf4deNPVV8qylbppXyHu+3S3LI=;
        b=c5KaaO41/31e6ROJfvUow8rwl0B/iH29xvMGJQQvaEZiYLvx+MsnJnFClz0eHrNFjj
         s25nrSjKVonXgYEnt8ZWvO5Tt9ZgOJ6IKnI8UZV91x4WHzuKta5yp/m9Jn8ckz+1fnJL
         XEb6k5hVXVbTPW47o9f92FqXHJx08RrjEuZN7syla1BDvQk/J9QYx38tUtCfoXe0p73h
         nPz1wEl5p/CMWBEmIBMWkGoEdOaRH7tFzk5Mrfm/AEZAWIeWtQ1e1y7UVpoKzVzQvoSz
         fczwgsbIAo2AkZh6CXop+YKzMjQUTEpwqPjskh5o8xEqKDq8W3f2ULmU9m6TqDahXQL6
         jWRA==
X-Forwarded-Encrypted: i=1; AJvYcCXf9uRK6Kkw+vaw6UcAmV3Ypyig1qgBs+hRDf+ALie8IX/Vsl8KT3YxstOEex8iEj5+a9aTfdSKSp2T@vger.kernel.org
X-Gm-Message-State: AOJu0YxidphnzWfgQqsIcm6jCxC9AM4qMQDbvHBHrGCuUKQ9DSMrifcz
	QUaYijVs7XGmyLQu7R+ZyHiUvIs3bHSOYZRjnGGx4bB2+RxA1Ju4lHT5Sh72uY8Q
X-Gm-Gg: AZuq6aKcFXKP2t+GFBhTegQNWCyTigCTw6COQeUJCJutki+dTcIrcB4wq+BcH6Fw++V
	e+TiLmWENvJU5wvocohJo3uRXj6cYVKF2vwUbYJjvwFilNBTd3iC1ELvc9BHpIxXxYpf9EZC4Dc
	LDxiAanJrumzoFLf4jqXX2WMFCszRT87EE1Jj/B4n9ClQeajier3422Wi5TLvxwQHm+tshfVk9l
	U54KUz8KHT5gR2ppi76MjJ7t++e0MrqTIjlyNLQ9IkIen3YKAS9nCWmEObL6v39wykih/3s9tcb
	5xN2QXPYpnpJwJ7wXDLstHGF5u6kh1G7RQBPR5GpeAffXzNm2sQ/dFRaqmafcJ4E9tT5qR5OXpN
	xQ825hgUSBZTuHZdXnsde2ONHHbRrJuvCtravulOwcrdrqkSizPZcs++0Lc0sCRImyrVoO++ThG
	X4G/DKaPrCgaqA2qtqqSOqKst1M8mSXvMsXQYAUVGSFOges2OL9CIk
X-Received: by 2002:a05:620a:4628:b0:8b2:e1d7:ca6a with SMTP id af79cd13be357-8c70b90a1ecmr762569985a.75.1769626035584;
        Wed, 28 Jan 2026 10:47:15 -0800 (PST)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com. [209.85.222.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c711d40139sm230753285a.37.2026.01.28.10.47.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 10:47:15 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8c6ac42b91eso22343485a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:47:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiRWwOGFjYBnq87v3hsq6d8O5go+8lUL0B4ZejXOF/by/adbhJaRM7yL02p9RTq4CUIrhciiXFnnWM@vger.kernel.org
X-Received: by 2002:a05:6102:948:b0:5f1:72a7:f879 with SMTP id
 ada2fe7eead31-5f72378e7a1mr2207053137.28.1769625713444; Wed, 28 Jan 2026
 10:41:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Jan 2026 19:41:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUgnVcwo3b=zQx0wVcH53dm6kBz3nQ5T0DZat4KxastuQ@mail.gmail.com>
X-Gm-Features: AZwV_QggK5aoCgxDwMwUamFclvyMAvDW7y1KAlSqyJcViMQkB2_vluWrOqhRb1Y
Message-ID: <CAMuHMdUgnVcwo3b=zQx0wVcH53dm6kBz3nQ5T0DZat4KxastuQ@mail.gmail.com>
Subject: Re: [PATCH net-next 0/8] Add support for Renesas RZ/G3L GBETH
To: Biju <biju.das.au@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-260582-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,glider.be,foss.st.com,bp.renesas.com,st.com,synopsys.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E5E96A7E04
X-Rspamd-Action: no action

Hi Biju,

On Wed, 28 Jan 2026 at 13:58, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> The Renesas RZ/G3L GBETH IP uses Synopsys DesignWare MAC version 5.30
> compared to other Renesas SoC such as RZ/V2H that use MAC version 5.20.
>
> The RZ/G3L GBETH requires an extra clock compared to RZ/G3E and has pps
> interrupts. Document the Renesas RZ/G3L GBETH IP in bindings and enable
> the Gigabit Ethernet Interface (GBETH0) populated on the RZ/G3L SMARC
> EVK. The eth1, pincontrol definitions and hotplug support will be added
> later.
>
> Biju Das (8):
>   dt-bindings: net: renesas,rzv2h-gbeth: Document Renesas RZ/G3L SoC
>   net: stmmac: dwmac-renesas-gbeth: Add support for RZ/G3L SoC
>   clk: renesas: rzg2l: Drop a check in rzg3s_cpg_pll_clk_recalc_rate()
>   clk: renesas: rzg2l: Add support for enabling PLLs
>   clk: renesas: r8a08g046: Add support for PLL6 clk
>   clk: renesas: r9a08g046: Add clock and reset signals for the GBETH IPs
>   arm64: dts: renesas: r9a08g046: Add GBETH nodes
>   arm64: dts: renesas: rzg3l-smarc-som: Enable eth0 (GBETH) interface

Thanks for your series!

Please don't include "net-next" tags in patches that are not meant
to be applied to the net-next tree.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

