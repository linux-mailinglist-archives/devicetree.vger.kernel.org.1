Return-Path: <devicetree+bounces-264008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APVPLtXjiWnGCwAAu9opvQ
	(envelope-from <devicetree+bounces-264008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:40:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3201510FD0F
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A056301624E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACF93793AD;
	Mon,  9 Feb 2026 13:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wVmlO7/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06463378D99
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770644430; cv=pass; b=tBYz9rquH9E5nt1UaVDD0e/czN76XmAA/g4PsNixqDq8n3WiHmA100NYFdKjv99GTJnJeoDrAA+rbEpYMbJEdxlH+4/LjUAWpMR/+uqAK4fS584oN4e77Kq3JvGFvh07ceJPWB5ZmWkO4fETAOd6pV5g/RMY2JCZ0WZsXJ0F53I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770644430; c=relaxed/simple;
	bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=msTbUuvUsRFPJfm51erWSKb2lbq23kBMU1ymQF0jobfNFMqOjegbo4d/w+0Jf0kwWw99FNY+CWHUObeO3IzjIEcRymlZIbA1E4syuAm0xNySDKo9wQwiIqxEx0N0HZnCt0p/ipU93J7TAENKByEZQi/dd2Tev2W1mFQntKAzV3A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wVmlO7/c; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso5122303e87.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:40:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770644428; cv=none;
        d=google.com; s=arc-20240605;
        b=jk5B2inBRrPUrr8Wlmwfpd09K/cG3vNh5CxSuEdjakMfDlgsZQtjoSw9Jo2xhxBXem
         gSIYJVgy/e9jT7lQgymtjWM1TNs7NfK3wp/kXSYsGAcFOVNUR3UxtUFcwd9UOnf2q+xr
         rkkvpTSjaEW9Eg7B4QmtinCza0STZcmB9TB8O8JP/gkLKbylp7OeBQUoTkariKUuKa5K
         LZciHmlJzZEaFjmtJeHJZpWXMwRGdlZx3Kgmj7mUSf6tlqjJCfmDy22Z/GPAdXpJ/G6b
         GCMlE0aKvhjTZro+l/XWhIPUZ310wpc2kEdwgkesE7j7qIOyRlZS1wP9GKj98hNpI/PJ
         T0UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        fh=9EaJMDcCMQ+YXNBHdiG2eRDxDR1Jz5GWk6674Sc+fVc=;
        b=ls2LzRu9kcmazuiE/0JoQ77ucl+pwH0pdbdUiJySxl4BquE7vwrC38lA5iRDLI5pzI
         2frU99x6VXTQBy77UtnPaN6SnNGJqkK/PkdAKoTxIgnie5SxliE0yGoykhqbrVuh8X7O
         /KxPfh7N5b6mU71CgHE0DWMASqQu8D9+20BNY/2C9EDNdjYRwni4G48HQfU7hae04+ff
         UB61YVVF12uqif7dZCbYn1Gqpd/obhrBeiDo1uJ/qH7gBkvGf1B01rACd+sd2R1Pwrr7
         KZ3sxGi/lX1A7i9SitNfGb6tPei7U+hMm8TnLtrM5H8k95iL26oQzZRnDDmKJYhOAD7f
         8rFg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770644428; x=1771249228; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        b=wVmlO7/c/GSzfyMCmKmhME4wSvfRsH4WQN0e1cbLojozqWPrMW+1uGV7KqY6fW0eFo
         IrVeuXkuC+b/MBsmxDugJsEJNB8vc/nz+dXEeO/aslFTKRxL0o7kj3hTeF56hBYBmTjL
         M85uVHuczS4dmxXE1BHXmNOZUcuTdpbRffmxYfrR6DfwqPcMK0N94JJRIIVSvxhDsaxm
         GbmvS/L692MsMmf3YcRDrWXovROPzHM3eUb0shWa/mTU5qdU5SO2uiNXNavlawKxeZxH
         Nlieu3NSNcIqYYsHMPeA+/LeYbNG1cWq35JoNU6ElSn5tdpxaOimZy/3dRu1pRxeQU+N
         jWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770644428; x=1771249228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        b=o4bASVg2u6j0+F1hltQMxWt9mhmY7RLds2bGmTRlY/EBFuiCd8TsoB2R3XCEVTXQBP
         EI55xIXQJkwu3d8NANHTNxaWyIxjSDrlA9TIULV1I9zh4osUK9ADUHEd/CXqXU0y3oTB
         P0GA4uNlxqfV1ZoStzNpZQXC630fFmh83L5E9mEQSM9wTDQ4NSM+0P7P6lHwAyKUaptZ
         hTiF1BhhjRh1wbyPQuiWeBatku42AHb92uFO7Da4SHksUznZ6x0+j59OX67qZzKC/Lp6
         XceENy4Lx7UNu7KjdLqemUNkfci5nzTY/+sbjXKwbL6VFJDH+6CazYzEUfZN7XBLLCUw
         7KrA==
X-Forwarded-Encrypted: i=1; AJvYcCXIjwZkd4nlAHDjxEbkAKmVuuA8x4x6vPHLsid1dHBZdLuP4BQOrRwytx5U/mq+mNuOf84uFnOp2Qc9@vger.kernel.org
X-Gm-Message-State: AOJu0YyUW172r0E0/yE6X1iRRcpMs+4KH6J7zMY7YPE5Qy5ywIO0ir1v
	MPkUqhsWkBEfbYbkysaAC8l0won3YtgOseD5NkVn77iFyercT81FoHP0ZUC0Z3ulHy1SoKDhsU6
	izK+BwqHDuzMAOozgnAfW2NU3Oe2/johcvoZ1UHvAxA==
X-Gm-Gg: AZuq6aJSRU5azUVadycmnqTB8qVVtfHii9Tm3hR3crho/d+FTlesx0lLHEkpMCO5mB7
	s10KYxFvLFzgxMZmAMLQEoI9n0I2ust4jKZVAqoGXtm7fo+yNL5WTsMOMIOuMuXwHZ8B8mW5Wsy
	ce61ZORy9VzF7LJBxnvZRf64bjT3G41Xg35SvGNO5DsFNyvtpmSMsoujHPdNEA/zYaoeKNeKtcQ
	BSwRPm9YbYimYA3TI5ZhrDtOKsx50V7Nmyj5od/L9YPUh8Sa2Zqtxa7vzmBCPYhPg3H17xq05Sp
	HvRiZCN5tvK6kBT5ZpXIU/nuqG0=
X-Received: by 2002:a05:6512:23aa:b0:59e:3fca:fd68 with SMTP id
 2adb3069b0e04-59e45049262mr3618201e87.15.1770644428108; Mon, 09 Feb 2026
 05:40:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com> <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se>
In-Reply-To: <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 14:39:52 +0100
X-Gm-Features: AZwV_QiBKZ8ysCcM3dIWhiLTRzG7BAEGejTSAtpE8_Z2Od0YK-CzC2pfzVA8zOY
Message-ID: <CAPDyKFo2Zm2LKP6=m=fJEbo1a2ZpBn10EGaucFS7zGfGJV_6tg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264008-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3201510FD0F
X-Rspamd-Action: no action

On Mon, 9 Feb 2026 at 14:16, Peter Rosin <peda@axentia.se> wrote:
>
> 2026-02-09 at 10:57, Ulf Hansson wrote:
> > I have already applied for v8 and it's going to be in my pull-request
> > for v7.0 in a few hours.
> >
> > Please send incremental fixes on top instead of a new version of the
> > series, then I can pick them as fixes for v7.0.
>
> Hi!
>
> Sorry for being late with this, but as the mux maintainer I'm not
> fond of
>
> 028ec00381f5 ("mux: add help text for MULTIPLEXER config option"
>
> and would not like to see it in rc1. Can you prevent that some way?

Sorry, but my pull-request and branch was already prepared.

Please send an incremental patch on top then I can pick it up as a fix
for 7.0-rc1. Unless you want to manage this yourself via your tree.

Kind regards
Uffe

