Return-Path: <devicetree+bounces-267410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKFtGLFSnGktDwQAu9opvQ
	(envelope-from <devicetree+bounces-267410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:14:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA9417697C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8315830910A2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4067F36680A;
	Mon, 23 Feb 2026 13:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KiUbJoDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B98365A11
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771852348; cv=none; b=tYsQ+WXKWnI0fSSQ9IO4CLzMnk+E83gtXSxFezMQPLCF5JqR+LflDPbuKtnQmQAOznzGlKsxCkDxSfYcCJ2Nd2HJU99lbfWhraUhhBPcHN1vVNiRl1tHZLQuv+kcKtY/0VcJLSWyb0UyDVzjgXAOh/bCe/8x2qe+XDtWLcBXktE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771852348; c=relaxed/simple;
	bh=UelqCIooRDzXzu6GGwJNPnHTqntDSLz5KWUuE06LKeg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPQHfxAIqEkI9fDwC6wpY2vSp9OujpRF7UzwHKA1FBzoCeu0bHZJhpSy0JREP3vIJszCkbq698hwmzA9AgBBnr6Obvq8rz8JT6myFuOkHSRezD3eZ3towcaO8kcpz2q/S+HEdDglQewS4eSccAnzN10zgN8ZY0+DAqIHUyT7mNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KiUbJoDg; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4806b88d8c9so5814745e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771852345; x=1772457145; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zTyRvgzsFp6gxgHmcwTyuSKYelY9uTSe0Y6njaYUk74=;
        b=KiUbJoDgAy5LHc/Z2unOl01huhD5gypy7MemonxqkLwMvl5jhri2dAM2kzsUScb6SO
         IKJVD6jHk9CtP6lQ+2JZTULcLpZKpnQQrQIATfWmVsEiTIOqs3jnbt3fGn7KMTIJ7bTQ
         5+aajvXt7Gtj6g4ma1DpaJ7XJYrXY+NUJ6CAmQ2SM9I82zn+TQVbKjjOJ0vwARM/EiD7
         0zlzLr1fkNQNbGNTaP/3kJbje1Ei1nNFEthcixKlKiR6ia+kk5xsStM2NuB33L2vjEps
         tB6EyBDJEdpTGs0MUxQ/sMBwShV6HGmwxVMxqtxR5bYJ9cJK8DDEJbDnM1ufpG41NXyh
         MPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771852345; x=1772457145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTyRvgzsFp6gxgHmcwTyuSKYelY9uTSe0Y6njaYUk74=;
        b=fMHkfztlpOtUX1sIUBDRw7pGPGrhdV9t7pKnetLf25ePpGpXQWuMLljp7oEC+u5Cff
         E5gYT2DuHPgOfauZp+tRmH9x8yWrtxMcx1Zi7SYbti9Nd5MRApjVog4981jvMeAe3GHF
         PSn2HRqzBMTVpOm7SPwVLJlTKNtQlkMufHkJ63pUwlNOlqNKo3Ixu0ts+ssXX3aq1uwd
         BM+SibzYP5S10k57DxoyBY9rA4n9W6i0X+eJt4cHrmWYlSqbm6q1xEd/sIfwhgn0CA39
         D2RnyApFO9un4IJj0MYCG4ZOJhVyK0zgXGgt98X3GfpCe4ei+vYD8Y6tpYjhYN400pJc
         1IzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6SeGYsgclkGJ0DtjLOO6awa5m7KjUdE8mBg5Z92vUPCKaJsdRqg4mG3YS5Fm0It/yq72ghxnsTc1r@vger.kernel.org
X-Gm-Message-State: AOJu0YzTlNx+BzvMlCIPzK7OftBxuo+gXVDcAX+HADiUvF9Ly8kPTzpq
	2raqD+ISPSOxtpexwSrCQ7AM1lEMSc8flegL9XrSF7Cy/C01vdl/CPj8
X-Gm-Gg: AZuq6aI8vDb70FqhYopxZyg50klOG7f2Z4L/7epqpPMdJHSczvkIs0nRcwyDTQQUvig
	XWZJqiJtdUfbsXSW2X3Y6l0c83LxV/AzJYInvtXNklYQgA4J//tZ2uOLO1y3yDitFVS3TQnqoRn
	seAM643tG6NbdQ083H+axeCUThZmP0pDK/oN1NRpnYVEXzmecJEuCcdTn2xTCYbiDMTNV4mWsAx
	Y+c28/TE0urRxL+7ZuqgjfQTRP0Fka1PRJTo/6z/eLp3OyVRVJXoTuC6zaibslGE67ZestqYkMJ
	bgbX+xbUgTtfcDtSQVJQuMF+l9Z1FNo7PpeIDLiSB/TCj033qUKze38CKzSBuiCF5uZG/C7+yBF
	68PJ3oTNrwTUTgd4tTuGoAgUSBor3Sc5XXZzXTB+A0l3OeiEuPe1vxGyIgUaZTUFWIzMT6Ym3kC
	3yfNBbkAIPcwDjbzQ=
X-Received: by 2002:a05:600c:1d04:b0:47d:6f12:de57 with SMTP id 5b1f17b1804b1-483a95e2493mr74965915e9.4.1771852344731;
        Mon, 23 Feb 2026 05:12:24 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:a289:4e95:a726:c01d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9b75e51sm195718605e9.5.2026.02.23.05.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:12:23 -0800 (PST)
Date: Mon, 23 Feb 2026 15:12:20 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Andreas Kemnade <andreas@kemnade.info>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
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
Message-ID: <20260223131220.evt33bzga5lafwzw@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
 <20260216092914.kmvl7aep7dantcsd@skbuf>
 <20260216162406.0121dd91@kemnade.info>
 <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267410-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kemnade.info,linux-m68k.org,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BCA9417697C
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 12:43:48PM +0000, Josua Mayer wrote:
> It would help immensely if there was a way to get the patches renaming
> driver-local conflicting helper-functions very early, before anything else.
> 
> Would this sort of patch be acceptable in linux-next now, so it can make
> it into v7.0-rc1?
> 
> If not then that mini-patchset would be the first one I shall submit after
> v7.0-rc1 is released.

v7.0-rc1 was already tagged as commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f.

Additionally, patches are not accepted directly *in* linux-next. They
are accepted in subsystem trees (linux-phy, mmc, etc) which are then
integrated all together in linux-next.

> 
> Then I can treat the actual implementation of the devm_mux_* helpers
> as a second standalone patch-set.
> 
> And finally patching all drivers with local helpers to use the new global ones
> can be patch-set number 3.
> 
> Any opinions on this?

From linux-phy perspective, I think in this particular case the following
would help:
- submit the patches at the beginning of the development cycle (i.e.
  now) while the subsystem trees didn't diverge too much
- submit the patch series *in full* (to get build testing of the later
  devm_mux_state_get_optional() introduction too, even if that is not
  for linux-phy)
- keep all patches pertaining to linux-phy (the mini-patchset) together
  and close to the beginning of the series, so they can be picked
  without other dependencies
- be clear in the cover letter if you require a stable tag for the
  linux-phy patches to be picked in other trees. You seem to be in the
  best position to be aware of all dependencies.

I don't know what is the exact status with the MULTIPLEXER SUBSYSTEM
which is marked as Odd Fixes and doesn't have appear to have a subsystem
tree. I have no recommendation there.

