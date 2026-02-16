Return-Path: <devicetree+bounces-265693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMlfMZTskmml0AEAu9opvQ
	(envelope-from <devicetree+bounces-265693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:08:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E47191423B5
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61E423001055
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F9C22F6905;
	Mon, 16 Feb 2026 10:08:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C0C2F6193
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 10:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771236496; cv=none; b=lPo4PSApSec9oRGYSwKZSISM7Nk+Bk4IdI6Ri8EbafBiZeMnP/IE6HEtWgSSoLWFS2gh4YU7n11ZZNdpLTYLSEw7rLsOyU0kLtbQOn6GhUYGdEVMLeZZfAYZMZxfC4Wkg29PzlKP1UtQyAA/7WYkbGtkkW5Zg9HzOpwHg149A6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771236496; c=relaxed/simple;
	bh=qIHY7cCiEnGtwkY7aFFwE/mZ8uiiY18ecDxBJTYhSwg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D/tXbu/6esYeXdq1tuNV4pCC9l+a9Zl/JcRDh1rxiGdcqksxlge2xX80tqPgfbgR1fapcKKVKKkf5VhQD8we4j6cCJvSEkQU63pUiENs194zsVL37YZTozj20TLQ6eVEEsZgvhqlrJC9xBzahlf6Y+KdtRqYto+XR737F44r2g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5fd05e8d317so2339246137.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 02:08:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771236494; x=1771841294;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8QwpdPffhWm62Ds9NyNo/SaQsJWiUgFomKDnAW7WiSg=;
        b=mlWMEmlZE+vDL98lpqZ+/vSzO0/g34wy3QK+nLeTdoV0fC3XuA2SnvmTVpow5+DxfJ
         FeAZ6JVOa5UfgzKDqCefbnthOWHGNwr75MQnsPpow8PJ6o3NgkKBMp6lFOIkswZe9W48
         JwNw+OBm712aW66jkvBkLIVy0/Cn6uf0vhegB0q90o5y77VciSrVSdnDDrBUEaUNiTEz
         AezA9aBOD78RqwdcPpeXKIUXlRCgSzg+s6dR9/B8tUAd7rHQsr/f2+N5k+ZrcTDnJXj2
         5A02DjAemTWIeFGxQG5cansnux2TUKldZnIaaxWQRD6pOcfcWzgnR9lCdAHJnl9Kl9Je
         BwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNyz1B70dRBofykCDA0R9TbtHQadUYFk8xHL/rbn2OMDc6RZZlyNLJVPj5pgFg9ch7eEEXw2kui31e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw87ldhpS0su6Su7ftKmZRwMrbl+zUVDcfDJB6NIgXO0lkzf9td
	mOai12wBM9ArTs1xYZ5Vd/0uRL3dl3kvXT5FSLwM1+DI5pkFP8MvkwQEuJVZ89kL
X-Gm-Gg: AZuq6aLtDqJ7ACk2aG5DBhR1PTujCsADNIWTkykt6fa3Nsfb43bYIZO+Y2RMGLyI+pC
	x/Crzk4fIMKVySzRZlhnLczAeYYi8NLMF14NLv/+8lJIqGRapFMjzo/f9PAd8lmeHhDCoCJxJnm
	qs41+FajHLWv5tkR5I8xWy9aX1oOHZ/hwQgjmGgZr1kZSZRZ8RExMKgWaxVB8/FGfykSAZyBYtm
	H/+vBeI3DaeynlgXHOA+Z+HUEkcIwPBLCMosQjI1xCbpOk+zPCVx+m/kwMB07poccViXU0n2Cr3
	RHx2Kpof8W135dR1CXhSQRKTxp87fKGvNgFRdDGULxH/8UcIfeCWlgQ+Olgv+0j0QE2zPK9ZkbY
	6pC44rvPKx0xfFe8KbiYYURLpynvZvWDwCEJTiZvvgy4ljmKnq1o4dRGEeZWYz59BAPltM9t2Wz
	4zKSbZMfY7dtCk6aub9QoR63Q8yBjz9lIoRm2+gsaLDYw4gz3JxsSNPd08cM3d
X-Received: by 2002:a05:6102:dc8:b0:5f5:76ed:f1db with SMTP id ada2fe7eead31-5fe1aa87bd7mr3683905137.0.1771236494216;
        Mon, 16 Feb 2026 02:08:14 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94afd14e0b7sm6850494241.3.2026.02.16.02.08.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 02:08:14 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5fadbc3a453so1704455137.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 02:08:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVSVyumT3WsBpSDe7ZWY8joKMjyA8VT7fH2J+Ut5W+80/Yq0O3Dz2uXJ5iBJDOojDdwFJJCMBlKDLcn@vger.kernel.org
X-Received: by 2002:a05:6102:cd1:b0:5fd:f145:b88a with SMTP id
 ada2fe7eead31-5fe1afcd3b7mr3584435137.40.1771236100546; Mon, 16 Feb 2026
 02:01:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com> <20260216092914.kmvl7aep7dantcsd@skbuf>
In-Reply-To: <20260216092914.kmvl7aep7dantcsd@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Feb 2026 11:01:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUH4W9W2uNknr41AgVQfO7inwZP6BfuMatyEUvJtf+Ueg@mail.gmail.com>
X-Gm-Features: AaiRm50a7dRj7dLKtMGILEQb14-VkaVzM5nFFHi-S8Lj08OYuJXTfF9bVPV6HRk
Message-ID: <CAMuHMdUH4W9W2uNknr41AgVQfO7inwZP6BfuMatyEUvJtf+Ueg@mail.gmail.com>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265693-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_CC(0.00)[solid-run.com,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E47191423B5
X-Rspamd-Action: no action

Hi Vladimir,

On Mon, 16 Feb 2026 at 10:29, Vladimir Oltean <olteanv@gmail.com> wrote:
> Then there is the fact that local definitions of devm_mux_state_get_optional()
> keep popping up, possibly in unrelated trees (not the case here). This seems
> to be a bad practice which should be discouraged during review if caught.

This was done on purpose, to (1) avoid having to make too many changes
to the file when a common helper would be introduced later, and (2) make
it easy to find all locations where a future common helper could be used.

The alternative is to use a completely different name (which is thus harder
to find), and having to fix up all the users of that name too.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

