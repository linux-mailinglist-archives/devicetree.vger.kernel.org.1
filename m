Return-Path: <devicetree+bounces-263928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCzdD9CwiWndAgUAu9opvQ
	(envelope-from <devicetree+bounces-263928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:02:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D06D610DED5
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE9AC305D6FD
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B69346A19;
	Mon,  9 Feb 2026 09:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IHe4hmOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774133B6F8
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 09:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770631071; cv=pass; b=IIWYSKsBu2OGCrdksgcaNS06trF4Djya5SstTfs+uaa5UQ/rDSyeIrZyATJZphYms3JL3XE+bRZbC7OgKnWlLv+VSAZMOQLBhkm0vDET+Xm2uHJWaQcSf17npCNyTQP448NHR3eRID76G/WZTGclFlgPuo3Ie7G1y9NLV9VusvI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770631071; c=relaxed/simple;
	bh=bC10K83OlDdfvr2htwpjLlKwvpR995Jtaa8b2VaNWRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KBChhq7NpsnaF8qBCo3JzZMP7tTCYdXb1gTicbo58Ex+Sba5Jfcx7T8MSjyVYLeZ+e1zNEnqF9QiInyOYBkxTZ+17dhkHG4NxDk/BzYwCOrb6YoOBJp1el6GMNROEga1hfkmsPPUY46MMyoieW9Mny7iaZkVVa33LMPKiW8T/lY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IHe4hmOl; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso3172506e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770631065; cv=none;
        d=google.com; s=arc-20240605;
        b=bgfLqkAwB2bBtIdEqW0qleJ0CqR9G/KTyLRzwUKq2RgFs7QNQOT07Gn+3+r3BxY3VS
         d1tgCGEahF32wWYFkOHBSSiFZdv9M1b7dBfoLmlGA8B48H7PzxhsMSnCPUD2pRHfJluU
         C6yYFmsk0/QxdkVqn3VXDLM+dM+OVWMSpkPSawQbI0DYOK6itowOonFdusNxYrFO4tNI
         ont/QLFvoTeoXrAEfOa3sVReqfQl4JX3cKE9QNZHTymkrgPvBZDkCVTFpE4poy6z4TXh
         yRBfkK2FYJkFwExx/Dabazveezxqz1yJxSjkqkwm1VjT1Dqc3I54S1zPu2wijnOdtbi6
         2n+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        fh=gA0WjIvfUhClnXctGWjNi/eEqcmNft5SAg/b4S+V+nk=;
        b=LvLjyWxYNQOkvE2i2p9/KVH7HV0ZWvJ3A1HjXzqoLmptNTSz8VD5ADrzMydfY2jd4O
         5AVED61A/Dt3lQ9bDB6gORRpXFT43KAe2Jpw34wCCKW8c2EZ/pZvqdFRiLY5369oYLTT
         8udr+DJcJZ4uf38wdzAwlnWVJ0QhIq0aC98pB8WyV5Smj3lSbzKPP9wGfdb7R1lX0RqO
         4xwbIKGU72P84UNzFZ8GgbGT7szzUOCaY3SWXAdBv/YnCi+EBUwXKOE2PhoGr98FEdkn
         E8uRqwVvXDqKfrMlz+K859GD7J8JpCRjLs63OHX427BDHlDoGOMCJtjGE6na/ljFz9zp
         MLgg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770631065; x=1771235865; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        b=IHe4hmOl9w7pUpUQyLkq/OgztYofxuV5/j5kZqVf8IuLW8jsfSkKju7oFLOuFmO+Ok
         OuFB7tI5XhFwXmudwca2G0nYRBQ7eEr59JH2p9nQqOTDdW7Y2gLLMsCnKuWV4LpK8sMg
         QEhJgWugZkGH8AlPG3KIjl+KmD0zJUnuheHF85f1h7T24sKIswi0tGubJyQrgfXVOHcH
         068szk1RA7QB0OCEWzd4kP3VEp4dtKPFLkidYA4mXBpOOysC+6s4HXG+8zne7P8+mUJC
         0JfCkcMfokYv8neInNUS7ZSf0KHQvK4NmCQEumO+4rTfN36qUquObsdAu9osKWCZSwzx
         gwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770631065; x=1771235865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        b=T5UY7gCyGuTNyrzI0pxtBJFqayhVaXYn3KTtyKnY6BMUfhejq+ZJXL50t/GGJpnZd3
         3FgXDIecValWVYbF57FfMJmxkS9z7HBZaUqGyXeE7BUYUOBQlcNBpCRulj5pMgeT3VBd
         Qyo/AAo/fufzq3D4oCtn7shD9nPGoiRZcxlTDpnP1dYqAXDbcGLVNYoevtTmesDjOTc9
         6viGbwlhRlxYgwUqMtcY8D8PYG6Bpuowy9AU1UaoYJ34AexxZJglJfrpLIoPymGpzqCP
         SzmfMCIge4NMk+65+ckPZqk7GAD0FJT8ADVNvY+6816yCkFdO+irn47sWh9b0WSmBaC+
         N8Rg==
X-Forwarded-Encrypted: i=1; AJvYcCW1jl4vdDNLzGQ9lUbqGvKd1d9BUuCt1LtBK7BsEza4IpjiTyNkq8N+VeffXLNRUDxNlXtv8M2SODz+@vger.kernel.org
X-Gm-Message-State: AOJu0Yye7YY0wnZHvIo3IegLVxXnJJz8n/UGh+OZrQ5czNuUrX+BNPXY
	KLkujjhj4G1vb/2ZHWls6bjKYksn5ZNNgSXV1EF/nzc6xr4RuRbB6Hxf5QLh2ad0V545Ub49xGW
	YPCVHU6cOMPDGTxXgKZ8CPvyuoEwWHv2ji7M/rb60QA==
X-Gm-Gg: AZuq6aIqu6l8EriLNAn1eaKQJy5sZDAdnw83YNJQVk/57pOZ3OwqomxDMmzG86oZ6sq
	1ENmxPjNrYp5rGpAeYHii9Tr3NJxzmyW+T1eu/NaiamO6D2u67VUVVT1w5zbRU0F5245hrmsixw
	Yail8nCejbreAt3/PRWNyxE01IvgRMT1LWnQ8qBgZPVK9ZuFZvF1nXwPzWaEqbHi/UQhwjprxZt
	4mfxO/ik7l5wO9b+nmAwlIoQIvY7rgxbqBZo+DH7hAaA1HxEIPyUqIXxjcnzWWllD3NSNTF
X-Received: by 2002:a05:6512:230e:b0:59e:25a7:e46e with SMTP id
 2adb3069b0e04-59e4517351bmr3165761e87.36.1770631065180; Mon, 09 Feb 2026
 01:57:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
In-Reply-To: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 10:57:09 +0100
X-Gm-Features: AZwV_QjtuvXehDumL81rfo3XecEhBGMIVZdeTW9qGb9n_Rk2fTCxSh0YYaQSYSY
Message-ID: <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263928-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D06D610DED5
X-Rspamd-Action: no action

On Sun, 8 Feb 2026 at 16:39, Josua Mayer <josua@solid-run.com> wrote:
>
> Some Renesas SoC based boards mux SD and eMMC on a single sdio
> controller, exposing user control by dip switch and software control by
> gpio.
>
> Purpose is to simplify development and provisioning by selecting boot
> media at power-on, and again before starting linux.
>
> Add binding and driver support for linking a (gpio) mux to renesas sdio
> controller.
>
> Introduce generic helper functions for getting managed and selected
> mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v9:
> - compile-tested on x86 with MULTIPLEXER=m/y/unset.
> - fixed Kconfig changes so that CONFIG_MULTIPLEXER can be selected.
>   through menuconfig / .config as intended.
> - updated trailers
> - document null return value for mux_control_get_optional.
> - fix build error for CONFIG_MULTIPLEXER=m, found with x86_64
>   allmodconfig: replaced ifdef ... with if IS_ENABLED(...).
>   (Reported-by: Mark Brown <broonie@kernel.org>)
> - Link to v8: https://lore.kernel.org/r/20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com

[...]

I have already applied for v8 and it's going to be in my pull-request
for v7.0 in a few hours.

Please send incremental fixes on top instead of a new version of the
series, then I can pick them as fixes for v7.0.

Kind regards
Uffe

