Return-Path: <devicetree+bounces-317160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LKBHBYGTQmod+AkAu9opvQ
	(envelope-from <devicetree+bounces-317160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:47:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 636716DCE66
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:47:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="S4bo1/NS";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317160-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89FEE3157271
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A4B425CD8;
	Mon, 29 Jun 2026 15:37:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D11423A6C
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:37:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782747460; cv=none; b=tmQ6LJQOm/JfdD4HFiDc0FvQYbQToKExQXAaUBQN5+dyVYYNTRkT436RsD5NMBqPABlMY1QLGlW8hOMVfTAl9TyVUXa5mkHGG7e06aJJxH0zfRRlWjxDztWtm46E0pUGRO7gDMoSDrrATxtpmZgqppI91nmN2ZBm6CGTIu+71PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782747460; c=relaxed/simple;
	bh=Ww+pHKZg74DUFG6ncydDQKKCwcpR6a+00OV8GPhy5PI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KCKFmDl9GlxVxG1f9+Q8PoH4cDM9QbgrPmVxyis7lXJXNOwvPP64dON9w7XI55g6XNcRpxqTlPce1PlKdbmcJlVqGvYKSBDag7YJUg1UQqrG1GBsP41gOHbiqDLO+F2gE+UKnPySZ2oxrryCJtFPI/xX0iQMx5/waA6q9z6GI6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4bo1/NS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7F41F0155A
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782747459;
	bh=Ww+pHKZg74DUFG6ncydDQKKCwcpR6a+00OV8GPhy5PI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=S4bo1/NS6LVLt5l47pmDWhy7nNPQkUumHquEuongQIuqIhcd0m26CxdETJ9yztM0u
	 edKF4Fb5m9z8JVhHO1QocawGXc/p8+zXptZkHYSvAS3QWel/xYrIkY9wZUNSHBmawl
	 HvUH52/1UJhxSo2klJYMiEsw4rOpIre7iRfUuY7Kdd0T6JmLjkqa7p+X1WK40ChBVC
	 2MCgTsKC4QKW5rerwlBjtFrWvu638DkXbt08mgE6pC44LJv0Edrm/D2HHEA7bN9iMC
	 hdvZxly1QJepLYDgJ+JPWd9uNQ3ut+L1vqBsuYAdcMxsBqt05ZmyxzTQI+qet6//py
	 C6h1ToSdTwurg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-39b19e7d6fcso3268281fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:37:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpOaxsIVmd2L+D5MvVDT24CdNx2zRdoG4lOygQqc77MqgFfKlthfv5VemzqeLkDOH6aIaWO3SahSri3@vger.kernel.org
X-Gm-Message-State: AOJu0YybmFnr/JUyARjxS5pJefaw+83tfiBtBIbTTmTHaavGzTURg3Nt
	b+mhQukyGsWLx1fRIZCv4eMSmeJ9j0wqbsrxjnoO1MV6rw8GtFojGRI0ClP2P0j5iwaIdm6whPb
	gta5+EzMVaj8ashmrKcoBT5M6Dx463TQ=
X-Received: by 2002:a2e:bc20:0:b0:39b:14c5:968f with SMTP id
 38308e7fff4ca-39b14c59b59mr7009611fa.16.1782747457276; Mon, 29 Jun 2026
 08:37:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com> <20260629-a733-rtc-v2-2-7b72112784f8@baylibre.com>
In-Reply-To: <20260629-a733-rtc-v2-2-7b72112784f8@baylibre.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 29 Jun 2026 23:37:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v64axqUmObk1XSEQSvGHSSvHP=T5gMOkfo8ae05Qb7HB5g@mail.gmail.com>
X-Gm-Features: AVVi8Ce8qbicWoJYXojluhV5Day0h0aZX_ul2VgZck3W_NUcJMBDtHnhi2_S0Y0
Message-ID: <CAGb2v64axqUmObk1XSEQSvGHSSvHP=T5gMOkfo8ae05Qb7HB5g@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] clk: sunxi-ng: sun6i-rtc: clean up DT usage
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Junhui Liu <junhui.liu@pigmoral.tech>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317160-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:junhui.liu@pigmoral.tech,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:mripard@kernel.org,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pigmoral.tech,bootlin.com,kernel.org,gmail.com,sholland.org,baylibre.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,baylibre.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 636716DCE66

On Mon, Jun 29, 2026 at 8:42=E2=80=AFPM Jerome Brunet <jbrunet@baylibre.com=
> wrote:
>
> With sun6i-rtc compatible devices, the "ext-osc32k" clock input
> is optional for the devices that support this input (r329 and onward).
>
> Probably preparing for older SoC support, the driver does something funny
> when parsing DT. It check if "ext-osc32k" is present in the clock-names a=
nd
> if it is not, it uses the first clock as "ext-osc32k". This clock will
> actually be the rtc bus clock so what the driver does is wrong.
>
> At the moment, the driver does not support the older SoCs that would have
> an external 32k clock provided on index #0 so just remove this quirk.
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

