Return-Path: <devicetree+bounces-265157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E47ChcHjmkT+wAAu9opvQ
	(envelope-from <devicetree+bounces-265157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:00:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5DC12FBF7
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4398C3028C31
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8788B35E528;
	Thu, 12 Feb 2026 17:00:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68B35DD13
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 17:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915603; cv=none; b=oOAHzv0CrawQA1Sw58FScJtNs64Vg/fJe2GXv2bfLvchCYnA/aiVQJYotNibGl834MAyVDDIav3CkgH2WiuReEV6+VUxVOlLi2k3IKaPuNAQZtCyRD+NGc/BAMQ96X4NPK98ytIHHR4Sthx2YDGavBk3b9W/scW6ps/EDG06dTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915603; c=relaxed/simple;
	bh=FavnLYuCSZbZEB88+6M4JKOu7/zHNtiz8QGLBab5uI0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D309+HzZDwLZJBKw/1Bnt+jn6TlUN4xduRCFxfRHHtlc7Y6f0loI1h03Hb5g8+o2POk5N4lmdcy3FWrOt8ZpIQIuPMZohNviFTj125RHNVuFhuJQsMl55tD/pHGKoC84FmeKhO2L7IMRzD/GPHIbUtcQeRoMBPTqFj2GmcbzDR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56750cb34c8so56447e0c.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:00:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915601; x=1771520401;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=om3cuNbQzAgOvOQckRciuNr9O8eg7IAaHrWKXJVxB8U=;
        b=Yi5F457Aub4smZed1np2exL9z0OWHb5aBzcAaiRK9kgie5hyugk/3QTl8ZzVhHxSMM
         83ySf39i+m8HN3Y/Ej2tzyhQBD5Z377+DxU0TF76qOGae2dZ6ZrxOA6sXwA9XQWuTK1/
         nZ+8Y9AVStDTD2FYEpq/kWLg1xyerUDU2hmoYxqgo6rB4GaupA7tiqVy58g+2kL9t7ty
         Dv04Nl7W7H479sBhiiUTbOtKdlaH+/aFDQUSOUctBYkJxINvMyIDawzId3pRUKj79ujc
         yxQy2Wk0DaewJCOhUsCRtzK0Dr+33VH+a/4iRkFtpROu2lELtbGSg7FzxMSqW9ugYzsv
         4hwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpXEjdF3sD+n7MrBdNQNYGB4ylpEL2e1WiujTf1SdzEl641GO1+zuc3lRvPpp6yWgeV7EYQC3pvbPC@vger.kernel.org
X-Gm-Message-State: AOJu0YxEHEPN9/gwFgeJ2T8t7BGYVeYpRhylUfHBcHDKRe4m3ZDf475e
	Bj8+P9TM9axdAx7W2CGDv59Y9SY18wW0XiC7HbCnJj5hoGPmiLxhYk9doZdP+T5X
X-Gm-Gg: AZuq6aIBd7jmXMtpn0xf16x9yqS4U4uDNarsw+7XW93yXO76IX5FBmx6brTKg8nRdTi
	BJMlHaQmR84U8le6T/sF8S/jYSv97qaI3Qo0oR0X7EeB1qvPSyMg2aZwaRKcYOH7d6rJcJ/squf
	ABdNp6laEXS6hoLTXb0Iu/xYKSbmsTlwFxjzG+m26hC1VO+8HLmioErSw9QvG+dYH88JGcxtEuF
	4UEJpz6sB33M0ApvQgirn9NSiFlZIqwvsf3pywiqweIa73gU8CfVrmNXy7MUt0qN2KjKBECfFcl
	NLsggt0YhtpltDuujlCWUzXdYGKmSIlty6wV+WfRiHcsZ9IOZFcib8VYcuOkNk8Kv9yzfSj3c6+
	ohPP19E5borNV7ABoMVJw7e/aVVZu8dRyeEoffk1Mr6lj6oznAUW+6B2AfKKJURNFusDvfuQtUl
	i2EKJvMU8iEZaH/il7ZzSsdsoBlJsIuUt9zkhDxIibLaPxrLdF7S8GrO6kIrF/
X-Received: by 2002:a05:6122:3293:b0:563:66ec:8fdd with SMTP id 71dfb90a1353d-5675b7b66e3mr905744e0c.16.1770915601128;
        Thu, 12 Feb 2026 09:00:01 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674bfc973asm1905418e0c.2.2026.02.12.09.00.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 09:00:00 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso38838241.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:00:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOgIKGkgtbVNDBRdtqEe1vcjuLkODhL73OKSSs5mfHzZHn6MPd80FnLvNEXxSZKNbN/Dm+7HCC93CO@vger.kernel.org
X-Received: by 2002:a05:6102:3051:b0:5fd:f8d6:e5d7 with SMTP id
 ada2fe7eead31-5fe003fb1fcmr1021759137.11.1770915199593; Thu, 12 Feb 2026
 08:53:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
In-Reply-To: <20260212164823.mbeycqwzsy2dfq6e@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Feb 2026 17:53:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
X-Gm-Features: AZwV_Qjd18dp3H6_yOLJUoqzfa3vu8ojTLTUkfH0N1bdOdZMnHdC-jkEvP2Togs
Message-ID: <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
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
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265157-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[solid-run.com,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,vger.kernel.org,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,sang-engineering.com:email,linux-m68k.org:email,glider.be:email]
X-Rspamd-Queue-Id: 6E5DC12FBF7
X-Rspamd-Action: no action

Hi Vladimir,

On Thu, 12 Feb 2026 at 17:48, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Sun, Feb 08, 2026 at 05:38:56PM +0200, Josua Mayer wrote:
> > Rename the temporary devm_mux_state_get_optional function to avoid
> > conflict with upcoming implementation in multiplexer subsystem.
> >
> > Acked-by: Vinod Koul <vkoul@kernel.org>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
>
> In the future, when you have a series with cross-tree dependencies,
> please try to think of it as individual mini-series for each tree's
> 'next' branch, and specify clearly that you need stable tags (to be
> pulled into other trees). Telling maintainers what is your expected
> merge strategy helps avoid making mistakes.
>
> For example, if you did that in this set, you wouldn't have missed the
> fact that in linux-phy/next, phy-can-transceiver is _not_ the only
> occurrence of devm_mux_state_get_optional(). There's another one in
> drivers/phy/renesas/phy-rcar-gen3-usb2.c, and that should be also
> handled in order for trees to not enter inconsistent states.

To his defense, the one in drivers/phy/renesas/phy-rcar-gen3-usb2.c
is a recent addition.

So this is yet another case of "convert all current users" (i.e. those
present in the typical subsystem base, typically *-rc1), with new
users popping up in -next in parallel, which happens all the time...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

