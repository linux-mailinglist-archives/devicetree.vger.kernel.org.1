Return-Path: <devicetree+bounces-265681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPnWJ3vjkmndzgEAu9opvQ
	(envelope-from <devicetree+bounces-265681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:29:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E7E141F6B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:29:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9419C3012266
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3872D6E6B;
	Mon, 16 Feb 2026 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XNA9XTUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0A82D29AA
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 09:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771234162; cv=none; b=uQhm5OQ+cktPEXQg8Bg4JZq99RHiwH16uDI5oVetrI9G7JZodNtGowe9+iKnP1zpEMTrcdDwTVje7t+TiSKmSaxC52LS4uxurP9HhSuIg99mETZ3pmF/Hk9VSFXO3q7CnfCZvhJDZBwqC9F7DKUSzw/wtbfYTD1ipLMtns+CyhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771234162; c=relaxed/simple;
	bh=w+XEoEDh9P6pvfwimOIKt86v4LQn9xAIGzRD/YzWpXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IoLQIknq8HjYqobqDQP5nPWvPHBlhwB6ITv9eS9+CbT97eybYfYlXmNzLKHZ9oOTkSixO5bt0jes4Isqjlcd/6HSj4pccLDZPuNS+VZRc40Qz3WF00egL4rklOQuobsKYySeheToSJC46HP53bRb6Wrr+GtSULgKbm6h9z7Zwbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XNA9XTUc; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4837bed3d10so2085915e9.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771234159; x=1771838959; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ogvJ3kqaNl4WpBdAZZzPnlDtG3SqRNUddgrdVVu6K+8=;
        b=XNA9XTUc4pPlbAk1mNsas+pKUjSEQlVEORYJHizZR5CDezYMZeEe3xpt2uDWu++cjc
         Oq4k/0DOL9OqS3N/Dlzb2pjim7QylscnsVDmI5b9JrnIUVxNUYIYADSF0zV+iBx1/I3o
         +vbGoWw6aH5D9+ogxuZJFff+SDlyS9dw2kMvIGOZ2MwF5gw4gYMulKbAuXJoNm9yJc5R
         bhzxq3XLnTzDHV2rM+TlUhXHlRDLdBZv8LuVcWE3gBWU4QSGVQ8zi1ptSVc2l98PNREy
         8SZVp2oXX091m0IQZb6WGk+G15PWRiyF8RWNgYPKompeaYzHgc1NGctQdHyRbNewbKup
         m5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771234159; x=1771838959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ogvJ3kqaNl4WpBdAZZzPnlDtG3SqRNUddgrdVVu6K+8=;
        b=ANyymZOHUqpRjltD5Qv9KGPR0nCyhtgd8zMScaJDyBAzVSAtcb+EuXhb+oHnIW+BN2
         TsiZRcW7bG+g90j1JXAbDUdcG9+tx6DZI024mubMoTg4osKEWZMYT9AUqr32Xw5SqeJi
         /SWpKOeZFGIB7AeGMN+A8t7lFA4wPNunne4FoWLk+ufjEkRAecRjEHkWq4Nc0mWFBgyB
         goymKrp87f8aID6Gl+8y0NdfYBf7rrWJFF4Lou/vpgGyNGc8a4qcbzfRfw+JuwvpItCm
         Hq7bI80y3kjMp6si7lbNN944d7xktBAHhDVqQwblNx077yd1YcrI0QLJ43gMLQ0s6X9N
         vSbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjqcVGj303ulHNAfQFBEcHZKB/7sxqWe9F5n+cpL+iAhCeOizJsaC9Vl2xx0gSkOuRa7j7sfAQ+bOj@vger.kernel.org
X-Gm-Message-State: AOJu0YzHh5T67GM4Gu6i2cbmw3MU4w3DQqY6gxnsWEfnCGZeywPnkta6
	tNaiGcexkmQ32rBh4OVFkXSnYDx7Icvrx9ZtuyNfITCWhKMED+ET/YWt
X-Gm-Gg: AZuq6aK0un6jlkopaEUaPT/aNOfj71czV4gWpUySvQPO3wwntptmaVy25rA/YJ49dW2
	OKiH+fYvSxHOgzfw5l3joz8qCE7XdH3eVgkMn+tWMmIBeIEeDZ5AtAp2Xb33Y75V8lMacdhxdJ5
	DkMSv/3MYmFYh5YcS9zgS+T2vmx4+7EtzM3Ka1cUVX23HDbgeqg7YX+/iXMkdJ3kkOlS5O7EuRu
	enc5IMS9et2r5lj+MLTtamRupluvwuaCeJ0XC55CaYXWJPfxC8/VsYbe7v4R1zpbGWLqdL2aGfD
	SiS2QhgQQtDlMF/unwdB0HwOXWhv59yMOjgsDF5DZzeElXB7WVCDQVpg7PypjRylmL8BRwEKty+
	LIOjVbECnzZTmq8ZacbaY1mQQ5ku4e2/T5ymGklhQXRBn6p3KRxdmmsGRCUgsWRVLUKzfFbG8xG
	ex313CiT427ZHHIw==
X-Received: by 2002:a05:600c:3b98:b0:47d:3ffa:9838 with SMTP id 5b1f17b1804b1-48370e18ff1mr144504325e9.1.1771234159012;
        Mon, 16 Feb 2026 01:29:19 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a3c03asm76821035e9.24.2026.02.16.01.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 01:29:18 -0800 (PST)
Date: Mon, 16 Feb 2026 11:29:14 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260216092914.kmvl7aep7dantcsd@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
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
	TAGGED_FROM(0.00)[bounces-265681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[33];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux-m68k.org,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: 02E7E141F6B
X-Rspamd-Action: no action

Hi Josua,

On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
> >> In the future, when you have a series with cross-tree dependencies,
> >> please try to think of it as individual mini-series for each tree's
> >> 'next' branch, and specify clearly that you need stable tags (to be
> >> pulled into other trees).
> 
> I don't really understand how I could split my series up to avoid this 
> issue.
> 
> Due to the fact that one (and now two) drivers implemented local
> mux helpers, to undo that an atomic change must be made tree-wide.
> 
> Meanwhile it must be avoided that while the mux core helpers are being
> tested / reviewed, that any tree adds another driver-local mux helper
> like appears to have happened here.
> 
> Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
> 
> The second challenge for this series was that mux framework is being
> enabled only by drivers Kconfig "select" - and not possible by menuconfig.
> This is e.g. responsible for being unable to test =m build with arm64
> defconfig - and lead to it only being detected through kernel robot
> x86_64 allmodconfig.

To avoid this, a combination of developer due diligence + maintainer due
diligence is probably required.

From linux-phy perspective, there will be some automated build testing
(which did not exist at the time of your submission). This would have
caught the 'hidden' devm_mux_state_get_optional() call present only in
linux-phy/next, when testing patch 2/7.

But, to work, the build automation needs to be able to apply the entire
patch set on linux-phy/next. So expect some pushback if it doesn't
(hence the recommendation to send a mini-series to linux-phy first, and
request a stable tag).

These are the tools we have, we need to find a way to make them work somehow.

Then there is the fact that local definitions of devm_mux_state_get_optional()
keep popping up, possibly in unrelated trees (not the case here). This seems
to be a bad practice which should be discouraged during review if caught.
Otherwise, some 'retries' will be required from the developer until all
occurrences are removed.

Note that the upcoming linux-phy automated build testing does have an
x86_64 allmodconfig test too.

