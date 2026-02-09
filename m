Return-Path: <devicetree+bounces-264079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD+PCl4QimlrGAAAu9opvQ
	(envelope-from <devicetree+bounces-264079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:50:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FEB112ABA
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 17:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 01897300558A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 16:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0DC38552E;
	Mon,  9 Feb 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bd0YslLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD3E37E2F7
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770655835; cv=pass; b=sZNn14F/Jdp6UexkIQVUH056AyvjyNkezUdtSy9ojiiFOOal9Z40veHVnkVNPNW4xSbudxSZZtOKiRC9qRnuxh0Fn23J+VSH9/yYkNYS5RgFaaKuDvSV7LoujYcQFK4s6xfsoKwD7etFGuzM7MrCI5UYXnRNMagAQQD/nE3OOqg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770655835; c=relaxed/simple;
	bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UhYbtv3Rr+Mk1qiP7lF8ZgeEoLLZGUDDra6TP4yziBU/2ZguxSPhtqnjaeb88PRPmK3DEqnGbra4bOWP3fU8M9X4xCYUF2gBeicIm0hB0S/4ZLae4Wgc16PKQlMEhugUGpfX+HLqHhj//Wi/ZqpUQFnDQD5xe1GlBTO+8oaYpeY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bd0YslLZ; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59dcd9b89ecso6271992e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:50:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770655834; cv=none;
        d=google.com; s=arc-20240605;
        b=FlsxwnBL0PSwEi1FuRpw3YFWh0rUr0LisxLf+JNwX4dz43ZobAT8zXCSifWATAmlcc
         PHe/ZCTdcjktvhrF0lYbjq/MiCoG82bQLCGFKp2znrflBKwIjc3D9kdruFQxs5SxT1o7
         2sriXZlyfDKn38CmXHL2oMo19guk3v3geHdsCCf0ZbK3zx1eeikze21ej+XLRI00t60p
         PsXVUYhmSzWobldwdAIy12UMiBG5NP3JmnjNnix+NCd9T9oVvb8IuTDZ2Tfl1XUpimoo
         PGZcxtWcdvFw0YhTNjjLmuhGXaZrMHqvytOq/xjK1IFmf5pEan1300K4n5NdxLG8NqHp
         3Ekw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        fh=/EGtM2W8OyBqruwux8+GWT6UCRFD1QHg31r9oaB1ufE=;
        b=PlbK6ac3Q4MI/PheamOAfR1naLgpKka9aCIS6taVE64f0+SRc3UJ+15TAj9z9NVaeN
         IhuYA+paZRO8gzlGL0al2Ajj9Ro4V++WQTq3UtBY3nwZfWf2tZAJKCFv/anYVgFFo9Ho
         iMfU+o5MSzcs2Ox12fq1teQeoj8Ww7CboodELE4QnDDpO4VjBYMHGGCHHyg1FOPDq+/z
         2cQ/cn/+TatL8Q3gcIwX2pcSp45rcOiTRlMMVAOUdy8DjkJoKSnwQkLhDMrQllSBTM49
         iOR715GbpZvBmc0Eu6DceDvteqS21bo5VrAanA268ZyhHIEQzD7d+oqCHZWTj2CccuMd
         YV7Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770655834; x=1771260634; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        b=bd0YslLZKFA0AqfhMWqkF0xpNqGgg2NKEmE7dE2cye2xsPGqBNkqik4BwkSEsPb9eA
         nmauDKs8yxZKLTWYzQ3zMRZBypPs/rkVsf0jrVwUTDQ7o3nBTbDlTi/sTYLKlWXUfvXf
         azMBwgthmeVHZFNXpD13gofK/nfZ2jxeTCpMnE4XgZerDqBXRZBwiU40lsgxicdtvkQ3
         pL7QVnig1G58pueOmntY9CtGPK2RFFeC2PWIm76NoizJ6N1Kr0rp10P6MtpAhECKIamt
         YEl+Yl0dURQc8xGoLQPKJqm/CzJffy+0McPyxe84oZdODzuESF4mnq01EM3yiIUzoIIm
         hHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770655834; x=1771260634;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        b=PxtajgVv8zdBXiuL8EAw9wXvEtgfrWkw037BWPV6lEL9rp598LKzYKqZS8wRcNeQOM
         ixs5tlugvLHOZwf/6fpTLc4zlC2oOo7DKlQQvn3o9RqNxhD9pBd7lZHnxttaSU6NUQs6
         t2hJ7ydujRPKdSy0GVvLi5Mxce2h3USgJ7H3Bkn9xoXTe0g2Q5ew3uGSn7uV7dLcHHZN
         i0FysAN49OZ09mxVYgofojeg5qSRX0k1XP1p2hA14x8a15saOFgcsvCnz8RuOWRwWghe
         KgxaRXiRJPERgBvGS4/dqQ4mepUniaOZwOSeWwHoxuRziOPjzkhmaBOIy3fE2VI/pKkD
         hkqg==
X-Forwarded-Encrypted: i=1; AJvYcCXG0JSdXWz59+el+jOqWrJMqMThYoMebFVLqngB0Ic9AEwPVGuJky/jk/LiblFlvmt+pb3Sv5aVYyBB@vger.kernel.org
X-Gm-Message-State: AOJu0YxRkFeaUCSQTJ2sfznpPCLsRJ2d7eEm/RKMyG4jWP78nNxKRlE/
	QU1SWcM2ZKrAwfLxJbgzfVvIFbRXEXenYP8LDTHWVR1+um1NDnb2HgSrflhL9rLJWEDaQWAmlr0
	/zspaCaVxMqT8VL312ggZbfFfaITZSG3nnyJc7Bk1bA==
X-Gm-Gg: AZuq6aIJQ5agHnzw+tuVUg6Q7YMitcSRcrUS/Dxpc1h1sbt/MlJrGdrAVkTpHZxflgg
	DaOeCUSPmw7dwZENePZ9YWM9vPfyb3ENeNori+3edQOmrIrXEJBjAfB4w1lswCdLloq/3Oyj6V0
	a6p+2wTeDCB4aDzJDfmknP0PX+aXKTcTXOFxbjxnR9sa5Rsgmntr8XbEelbkeXnJ+x9wpzBB+Bp
	AvTUCfv119N66Z5xMjcerX6n85EvfTByRNSvPKM+at3r7azy2q01a4LUKnDjQoehKYBsWkNUGqs
	hW/0p5+EmE/mXTuFNq0bqVJoYBPg
X-Received: by 2002:a05:6512:118c:b0:59e:4d85:d82d with SMTP id
 2adb3069b0e04-59e5437754cmr14477e87.13.1770655833649; Mon, 09 Feb 2026
 08:50:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
 <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se> <CAPDyKFo2Zm2LKP6=m=fJEbo1a2ZpBn10EGaucFS7zGfGJV_6tg@mail.gmail.com>
 <793644d5-4d4f-8ee5-7fcc-369536801683@axentia.se> <CAPDyKFqCveBs-_VcWCm8OCegbpwnW3=0iGa2e5KUNmSy3TMA+A@mail.gmail.com>
In-Reply-To: <CAPDyKFqCveBs-_VcWCm8OCegbpwnW3=0iGa2e5KUNmSy3TMA+A@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 17:49:57 +0100
X-Gm-Features: AZwV_Qh1nXgInou2tkuYLPeqnXQDy8RDhZJ2fx9TuiqfqWwczkYvBAKEQ3MJW4c
Message-ID: <CAPDyKFrDLEzKrFY0GeevptDdRe7JAUzXgqM7fVtQ_PnYDi+N_A@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Peter Rosin <peda@axentia.se>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264079-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[solid-run.com,pengutronix.de,kernel.org,linaro.org,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B9FEB112ABA
X-Rspamd-Action: no action

On Mon, 9 Feb 2026 at 17:48, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 9 Feb 2026 at 14:50, Peter Rosin <peda@axentia.se> wrote:
> >
> > Hi!
> >
> > 2026-02-09 at 14:39, Ulf Hansson wrote:
> > > On Mon, 9 Feb 2026 at 14:16, Peter Rosin <peda@axentia.se> wrote:
> > >>
> > >> 2026-02-09 at 10:57, Ulf Hansson wrote:
> > >>> I have already applied for v8 and it's going to be in my pull-request
> > >>> for v7.0 in a few hours.
> > >>>
> > >>> Please send incremental fixes on top instead of a new version of the
> > >>> series, then I can pick them as fixes for v7.0.
> > >>
> > >> Hi!
> > >>
> > >> Sorry for being late with this, but as the mux maintainer I'm not
> > >> fond of
> > >>
> > >> 028ec00381f5 ("mux: add help text for MULTIPLEXER config option"
> > >>
> > >> and would not like to see it in rc1. Can you prevent that some way?
> > >
> > > Sorry, but my pull-request and branch was already prepared.
> > >
> > > Please send an incremental patch on top then I can pick it up as a fix
> > > for 7.0-rc1. Unless you want to manage this yourself via your tree.
> >
> > That unfortunate. The patch series has not yet made it to the next
> > tree since it has not seen any updates the last few days. What testing
> > has these patches received?
>
> The patches didn't make it to next, for some reason. I queued them up
> last week on the 4th Feb, definitely a bit of a stretch to pick them,
> I admit that, but I trust Josua to help with any kind of problem to
> show up.
>
> In regards to additional tests and reviews, lots of people have been
> helping out with this and we have also received patchbot reports that
> Josua fixed too, along the road. Moreover, the first version of the
> series was posted already in November last year.
>
> As I said, let's fix any of the problems on top, it should be that hard, right?

/s/should/should not

