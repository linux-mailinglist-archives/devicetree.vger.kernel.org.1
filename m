Return-Path: <devicetree+bounces-263864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFjiJnaWiWlC/QQAu9opvQ
	(envelope-from <devicetree+bounces-263864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:10:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 145CA10CC90
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08A53300AC1F
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43CF33ADB7;
	Mon,  9 Feb 2026 08:10:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC26245019
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624624; cv=none; b=GMSu/KV6z9UTn0hde5ZiEl3e4Ki7occ9Fqy2ydTWgTLA7U+1nV/ZRGCEALtLnfZ23ISwhhStH0Hus+Dfh9NZatfAKYRv8YWlT1rO9zIJCNp7DpSTHyyg+2cx8yD76ggcxRztTKN+UtNlXera3DjMYNzgCXYDhojBdz3NzlNSSUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624624; c=relaxed/simple;
	bh=/zYgLPOAHXK4/exWmt8hOWg3cIDWG24Bmk4iX8O5iZw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b2AheYxzvHczJKzzA4CAsVDBVWz21q4is+VndHdJPNn7rzlqZyPNy5wtiJVrYwdqnPhYkoiYK/gMaIAvnyPUxPKQ30e8+n1ngmKE+xap01pbACjHchc9La5NRz7jHwFS1Og3dLkSS5FxZLbuJneJYJH+8qGI78/SJPYZapZy3/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5fae5f2439bso1818021137.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:10:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770624623; x=1771229423;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bAsoauLtymOFaOmBSRU1sXzH6MyMCHQePcHPtAadtM=;
        b=w7wX6gG4l/Zu30B8GynQ0bjY1mFwOr6HhVlPaxtDEvwZHaYQSLG0wDhZijO7fj4YJ+
         ikYHy6fnaaMSegSC4FYjchOHXulXSdk/2dOesWSXB1KeyqhXZywPfnn0fXLvdDGvvrXN
         2/1pcjbXav8yXLhksuSbc7mJJ3N9cOJ5Gx5GuwIpq9G1O+/C2Wv86poR6jN7ZQ3XSZRT
         5JwNKVjO7J3Eu4xhb7cQQ9Y08warpqOAESbTBxBkbZ1SOgzAxRnc5Sqfmk0Qyncia7A1
         Mpns3CryY/AlC2FUfnoqGtD/79y6H9w4uiogq5vKuk2s0ZYcwaFAyWuvqDQNJBX+FS4x
         TXEw==
X-Forwarded-Encrypted: i=1; AJvYcCWmXni4BpAt05H0p+j+krceQKMDgD8aVd80k+PKaY4ESToWZhDjvT2es0jdYX2aB4a8Ql3If8bOESwP@vger.kernel.org
X-Gm-Message-State: AOJu0YwyV19TRKifKrpgrjiO3zs5Y1YOJzejACB7I5nW761tNJJ8V9OF
	8bXJFGafPl5+jCcF+MctCdXxzitMS/z8WmYXh/ZP7auyBqnagPENHKjEh9UnQYMt
X-Gm-Gg: AZuq6aKMcaj+dSlYkWZ2i0dSmvbS38MHmJ7VBxDVy9sSPOTDg+1HTGb5oRVDsU5iQKV
	6rNiyP9ho1Op0Wr/AvFf/VChG5WM9tbSiMl4lXv4Ap7rVVNm8sUFTFb9zcNM3sAYiUo+oRh/VQa
	jieknklnpKfGKjRUEwEY+loVvCxhyNpt98Gov9OTgSweuxlCH7hpSl2UIglbA7ANjlVD/icwvdJ
	5RKRYFRG1rZibKpQ2b08M2wJJI7FvuHtZtFtrmrG/I4FMeZFRX1R7ENVoPlQfPMAB35fny/U5vl
	I/jGTtkDMjys07JCXrO78iBtproO9jcv/D7NoYVzAG+suX7XQenRImfyf0zNenRg7RBwE+w/5Kg
	7XR9PGxbY82iJzsJWFruPRI7zBWwW2gVed5mEqC5fR7wAPAV9HgVICln/k6K3Te3LXFxTq0KU90
	r4iyfKXODxyj6v+DP4Xjd0i+tsOBlSOwpJKm6nFOHc0GepDk4ynaFI+6/lEec=
X-Received: by 2002:a05:6102:3e8b:b0:520:dbc0:6ac4 with SMTP id ada2fe7eead31-5fae8a38af3mr3222126137.2.1770624623490;
        Mon, 09 Feb 2026 00:10:23 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94adb4ea33bsm471317241.8.2026.02.09.00.10.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:10:21 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94ac7d9d7ffso801502241.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:10:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWRokHi0kEm6FoZgfHwIMJhx7hQsWjgVCnimuPK/HMTwUp6EHVa01mCOKDP3N3uUvZDtv4iRPgs21qj@vger.kernel.org
X-Received: by 2002:a05:6102:5092:b0:5f5:3c96:983f with SMTP id
 ada2fe7eead31-5fae8a3ad9cmr3362584137.1.1770624619183; Mon, 09 Feb 2026
 00:10:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com> <20260208-rz-sdio-mux-v9-3-9a3be13c1280@solid-run.com>
In-Reply-To: <20260208-rz-sdio-mux-v9-3-9a3be13c1280@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 09:10:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV2a7uvtrJpSprU3YbgFSTmtKkMi+Z6j0m9-4vVXWK4=A@mail.gmail.com>
X-Gm-Features: AZwV_QhXlEX6D1abbrehjsrn3uf8WxyCcirF_ZvMoX3URB-GFlRdZjQEEn6kewA
Message-ID: <CAMuHMdV2a7uvtrJpSprU3YbgFSTmtKkMi+Z6j0m9-4vVXWK4=A@mail.gmail.com>
Subject: Re: [PATCH v9 3/7] mux: add help text for MULTIPLEXER config option
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
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
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-263864-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.905];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,glider.be:email,solid-run.com:email]
X-Rspamd-Queue-Id: 145CA10CC90
X-Rspamd-Action: no action

Hi Josua,

On Sun, 8 Feb 2026 at 16:39, Josua Mayer <josua@solid-run.com> wrote:
> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
> option thorugh the kernel configuration without explicit "select" driver
> dependencies.
>
> Select it by default when COMPILE_TEST is set for better coverage.

Merely enabling COMPILE_TEST must not enable additional functionality.

> Signed-off-by: Josua Mayer <josua@solid-run.com>

Nacked-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

