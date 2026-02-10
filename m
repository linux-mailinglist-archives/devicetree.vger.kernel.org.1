Return-Path: <devicetree+bounces-264526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LYfMQCJi2nUVgAAu9opvQ
	(envelope-from <devicetree+bounces-264526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:37:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BD011EB05
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C7DC3024178
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 19:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EDAB3164DF;
	Tue, 10 Feb 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R5fefDvU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B232F9D98
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752253; cv=none; b=YLHnYYv0iHpxSCs98PJFQLLGU4kBP6lrXCq9wIC4M0mLgmGualS848Zx3yOdlqALyn5U22sSbgJUO0bfDlE4SFSHGj02+Wra3STMhUIAQbsq0QMLlh6ptSXKOqi6FF6JsqorWu7hv3A/V2NrpRvPqCKnIhhQgJ0OSrJ2YbGgIWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752253; c=relaxed/simple;
	bh=fRur79AaHqNQV3fBr4hf5Rrc3u8CGGPgcbZLe1PvlTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mY0sMlZrwo/lWKEDJ2qTYM//GFCq9/w/Tyqhxzj4qCCgdoF7QvKqEKKXMofz9taCsXKitJ/r+GOc7FfndyaUxzN7CNBgdOavUQs0dzkb9rJsnrVWUTZRf+sUfwqpB741Yju0qt/ixLxnOsQukulUiPHjqUFsOhNms4NYDjaWpOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R5fefDvU; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-436333dcc42so449370f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752250; x=1771357050; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fqDz8Drx8XjDtZc8LsAC+uLDhKgLLYdxTPVtiF/ij7I=;
        b=R5fefDvUd00un7dIomu5/1O1/MvCC9JM8X4upAFz60c/ub91qrSPIuetKpbXV8gIqi
         YFQIyDLbTcJi+H4iRKR98ib6Wi6unP8GBW2b0tXYrRr5GwVkJcLlqUfhi2p/ot3Qv61t
         vurZ0WJYck/zenfGJSe0krk0uxKaQ4n9EfvIbRZYhbS6Ij42Bx47J/YbkWKXHOqvpyIq
         UzCkfipCNL7e2mC6H4SRCiOWeuDoaSnAqpvZzDrXKQpwh7H+d/ZQQ57ImxsLihOgZw/D
         ZxsJRacQL7ZMjkUamPG8ethuix9QCUOVfa/mWYeTh/25mymB0VRVXzFhZWaZznQmPEbC
         un8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752250; x=1771357050;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fqDz8Drx8XjDtZc8LsAC+uLDhKgLLYdxTPVtiF/ij7I=;
        b=WFUJx3usugW4HouyIJvpHNpp2mF+y0/F/xPBtD0B9vcQi2WDlxryfaFybgBfNLjy+K
         mPj0GrmrwKsop/cbMzbSWsGw2VWwk7EfGAmYW5GmWh4rC54AYgIVE8TZk6FrRwgkaBYP
         vzLRt2rTYjxsdzocMqCCqBMLtdDKvrzwwKYts1VG6tAc8tZLBvlXnmtQB27WZZ63DvUB
         Fzq9sD4uSr2nErsWNtKo7KBD1H8Vx6+/4Z1zqBe3mRqIUMKrH69Q0g7rI4uQAVau3lTu
         iYCrp/+9Ly15PsJu/5k6aHZ3Pfav+RKqPybZBta/drB/lQl+KImkx0ZtqSPozlpt2yYT
         h0nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUVbooJzsSGC8af5F0AwfDJd54fzKPfw+DOnUSGvO23znI6Lvii6mkyp/ybN5EDeKLeIrrhs7fRWEP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3uZ4R+OS6EA+8t3PVRRmu6BBHUWZBoxAphHfYjRfaFa+LB4ho
	nftlPjzHGoB9UnMWFmjJb1dEC4Y5mODYzEsNwonLbxavEDq7FRkTMopM
X-Gm-Gg: AZuq6aIgzhb69XjqRDlKoZrXQKu8kp9GV1mYnJTjB/dD+aJQPQssOFN2uXZ/9Eekg0o
	sqeX03ob3xey3p5Zrq3EYB7ZnKDthuovurVsv2R8cIRdjXf4VImS+AWuK9VmF/TRNHuoCyI5szx
	9Q8wdiqjMQ257j7WM8x+FHYa/F6CG0h8QA8Nn7IwWie1qY6MHGFidFa7OOjkQo1+hSVubFzq81V
	U+N22VbKHpyZ97TF+PM2pNhfqLuWhe1f+CLheUSmcHVapkaufSmn5XKdZMD9vkpQyeZ3MTackTW
	lvhW45zOoccnI4CugSjXwyaoIF/DVGhXZbBFJW5z3tZDEZTLAQ3q6oTQOIqs0DjYGuGIhwKW1LT
	I9b//kAVX1I/WgyqiVx4mk7j9YZj+6ZuwoisgqmYmWwR3JUy2p16A1H4LA3WBFW0ImIJRE95cb4
	8gFBkB2TmGu/ayfWI=
X-Received: by 2002:a05:6000:3104:b0:437:771e:9dbd with SMTP id ffacd0b85a97d-4377aba5bd2mr2497517f8f.0.1770752250206;
        Tue, 10 Feb 2026 11:37:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm36328520f8f.17.2026.02.10.11.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:37:29 -0800 (PST)
Date: Tue, 10 Feb 2026 21:37:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: =?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 2/8] phy: sort Kconfig and Makefile
Message-ID: <20260210193726.h6fc65gekida65la@skbuf>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264526-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 20BD011EB05
X-Rspamd-Action: no action

Hi Theo,

On Tue, Jan 27, 2026 at 06:09:30PM +0100, Théo Lebrun wrote:
> Neither Kconfig nor Makefile are sorted; reorder them.
> 
> $ diff -U100 <(grep ^config drivers/phy/Kconfig) \
>              <(grep ^config drivers/phy/Kconfig | sort)
> 
> $ diff -U100 <(grep ^obj-\\$ drivers/phy/Makefile) \
>              <(grep ^obj-\\$ drivers/phy/Makefile | sort)
> 
> Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
> ---

This patch is appreciated, however it no longer applies on top of
current linux-phy/next.

Since we are in the merge window currently, would you mind reposting in
2 weeks (or as RFC in the meantime)?

