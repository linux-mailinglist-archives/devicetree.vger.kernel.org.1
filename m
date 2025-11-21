Return-Path: <devicetree+bounces-241248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E2096C7B868
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:32:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6F6DD355715
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1839030103B;
	Fri, 21 Nov 2025 19:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MPnV9WYY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0668D3002C1
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753410; cv=none; b=AgGE4IKf30PrEigUI4E9G987f3SUvZ/Ye1OjYiljMqjavq04054mSHystP6fFu/Ingjw6aISzCT+vViCQqsv8J7ACK7M7/RZkaGbIgxq3SPTkVEa4zv8vcyhlobt8jNbaKqCymes9PDrCVCjDdW7wOpuR17wmt2GvjjkJWtJN40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753410; c=relaxed/simple;
	bh=CUfsT/KcsbXhjgq0PWj/Jo5KW2KX+kDK6dvLvHHX2bU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sCydWgZMLjwhr46uO6hUhNdlsOZRL4betIObXxzylDXbD6hjumCZOa4FA51M+dV4kUksAtZCyxbVqTgH/6pkfYB4gsetgdK42AEr6evQkrfdTazcE6aH/OvuieGlH+r6BcP0PNu6p4DEvwS3e3VyMr9dkTDu/KU6fDD8kePYO8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MPnV9WYY; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b2de74838so196902f8f.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763753406; x=1764358206; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I+IA53flpYhg7qkM8SQVtCPMDf7Kx/j2jvlkT/E8Ijk=;
        b=MPnV9WYYDJ2lb13frYAyvXyNJIJbdfKK/mQLqZpoAjv7/luh0hFF4ToXSDdBU7uUEn
         Yecfo0lFcILLX99bzHtu7+TlmWMx7UIK2HvRjmstZuoZSMStmOfp6vtdsqH8PsZL35Fx
         dl4lUj0tKxRVyP7DztioV2qRrcbZVko5vcWqghzIYFm7B8O+9Xuv0YiFOpA8aVqEVp5O
         1vsPrQ5YsvDIcHU04wvHX9Namve18oelAJ5cREV0SXMS7qc0sPT/5sNf43ZPfDAeI2Qc
         UthWxg6tv3JuYvhZi2ziklv6FAtzS8SnWITpDgvT13x97N7/fphDWiz/dk6h+nPV0kEN
         E02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763753406; x=1764358206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+IA53flpYhg7qkM8SQVtCPMDf7Kx/j2jvlkT/E8Ijk=;
        b=Ur4u1vSSqYoQNnOjws8JwE7OGp/2ICkF+V9YKYluJTYr6G6+swxyJ5dp4HmBHzk9wp
         FPH6CQiBOPqDpJijCCKmRu0e5xI2cyknm08XuNXV/FTxDI0scR9VMa14QRywCj4Z+igc
         MgXfkRqZ/Oc1CXQSKMfxewAh5oS3abYN2vDvi3NRXVhNCPDcsII0+aJyiNr/ElY0a+Uf
         bHt/Q9WgQ39BFtgpvnDIwCG5wIqBBLrC3hrhB2/VZfMQOpkPEUkhbqbj3Fe/tBJc+yHU
         1pxxq75vKU+dhzQC5pxPJlNj8ZhfqZrZgUGxeDTkChFr6P1jtE6RNal0W1xxxuxysQow
         YBnA==
X-Forwarded-Encrypted: i=1; AJvYcCV5eN157FIeO1vni3kqKIpEYdCktGL5Sb4np+1CLMbU65RKDD5RDd+c1p6Az15bWXXCsNKmq/j860Jv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfnmf3zyTL8eNTpMw4xHRXAdoRtUO8EyaAPdOo0ewzLQvDZZt/
	DilE+5z5qrcewzRQh3c4fx/ZrNba1LlIqSiThGkvDQ4lHudfzGqrNlrG
X-Gm-Gg: ASbGncsUD3fNhoLPy6Q4aLI/ngk2slyLbHPGuNKFv+EKr7DRRfcT0hZfqvsP7Xs+/dG
	yDiYj/6Aj6KLN3tmImYKiLu9xz4MfeUoDpN9KRUR21ACdyy9sACoyCgqt3/Tms43lRWvogWYDOJ
	IrRSxA2qSEhAMpuJmLovDPcAOBDjUdjJA2nLAKT4LyLHLBxumE5L8aA3a7/24W8SNEDpY2jb+ew
	bNqQMKBKue10MgZf5b0853Fs+xu2j4q3lGHS9w9ptBrY4tLV7UhwatW+0ryzyAtbUqT/Ol9Nfor
	u+JyW9kAO/+nW+gkU6eByCc2KSKxQwyaspzOMZD+K2Fb+kUywn3075ZBNIwm3AI3XHa0avn2p6U
	kv1LmX/3lhHUbmXKaPtu+1CMaK7JGO7bj2N/5aV7VAYEoWLzo/U+pQGlQKPrb9jggc9CwpaKJhL
	+NHYNMGnICDiZe3w==
X-Google-Smtp-Source: AGHT+IELA4YCMaCt5qqKwWNv4I8LUOWdDURkACst0WKaClQVFLuv+pAGeVXkVIUOYdREwkCdLPYHDA==
X-Received: by 2002:a05:600c:8905:b0:477:c5a9:33ce with SMTP id 5b1f17b1804b1-477c5a933d1mr3450945e9.4.1763753406047;
        Fri, 21 Nov 2025 11:30:06 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf1f365fsm56874185e9.8.2025.11.21.11.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:30:05 -0800 (PST)
Date: Fri, 21 Nov 2025 21:30:02 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH net-next 03/11] net: dsa: Kconfig: Expand config
 description to cover RZ/T2H and RZ/N2H ETHSW
Message-ID: <20251121193002.hzjuijrs6gtoibuv@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-4-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:29AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Update the Kconfig entry for the RZN1 A5PSW tag driver to reflect that
> the same tagging format is also used by the ETHSW blocks found in Renesas
> RZ/T2H and RZ/N2H SoCs.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  net/dsa/Kconfig | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/net/dsa/Kconfig b/net/dsa/Kconfig
> index f86b30742122..a00eb3bdcd0f 100644
> --- a/net/dsa/Kconfig
> +++ b/net/dsa/Kconfig
> @@ -159,11 +159,11 @@ config NET_DSA_TAG_RTL8_4
>  	  switches with 8 byte protocol 4 tags, such as the Realtek RTL8365MB-VC.
>  
>  config NET_DSA_TAG_RZN1_A5PSW
> -	tristate "Tag driver for Renesas RZ/N1 A5PSW switch"
> +	tristate "Tag driver for Renesas RZ/N1 A5PSW and RZ/{T2H,N2H} ETHSW switches"
>  	help
>  	  Say Y or M if you want to enable support for tagging frames for
> -	  Renesas RZ/N1 embedded switch that uses an 8 byte tag located after
> -	  destination MAC address.
> +	  Renesas RZ/N1 A5PSW and RZ/{T2H,N2H} ETHSW embedded switches that use
> +	  an 8-byte tag located after the destination MAC address.

I think the device names are sufficiently strange with that forward
slash in them, that you shouldn't make them worse with the {}, at least
not in the full help text, and spell them out instead. It's hard for an
unfamiliar reader to know which punctuation marks to take literally and
which not to... (plus it makes it more difficult to find through grep)

