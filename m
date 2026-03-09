Return-Path: <devicetree+bounces-272993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C6+Ch7irmlPJwIAu9opvQ
	(envelope-from <devicetree+bounces-272993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53723B3F7
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 92DBA300132D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5A03D75C3;
	Mon,  9 Mar 2026 15:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YDCKAWzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1263D668A
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068821; cv=pass; b=pN58E80kHJO2mAhb5TaYdRA+FT5q/ODqFB/gPlfpbKdN+r/i2lbaUJ5O9xn/xrQv+AzYg2eoAVcNCFUTL6rnkZnpxdPDCRZM7b8DjOC0ivJ//pV7oaeyZmXn32bmHVu4vJ+57vY7Q5E8bXeWRPUdaSfPfo9hFHUlTc8mP5qhk6k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068821; c=relaxed/simple;
	bh=JKN2J4kHq0yD8TjxvyPjjgMMFAS3NaA1mJTCXgnPsRA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VGpDjzEStbG3VcBlzx6ZSd30GMYl5jYK/6wLL73+AnIki56113v2C+yJ/bbTlv6nG+YZ1ibYBKkNNwQvYFD1F8h6f4F+ZBzUL7GBX5VXQT8oGHUWREbNqBeUuy7Http7F6bAKRAep/32iaisMGxM/RQtJvhhzOxfn75EmNOSrGk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YDCKAWzT; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5a13f6bcbf4so3457821e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068818; cv=none;
        d=google.com; s=arc-20240605;
        b=jb9PUK1jZrm30pss8V39Jkt2MuzHTgjnl2br4yw+0dQ10lBSQoD9aSNd4CZzalTj09
         S73oiZiL92zlDdD8YNQg1Dis2tEDrWDmSJE6nxHBy8NBx9dLEMSJi+i19Rw/RCOWvdS/
         EPxc8vHiTcaDMOHf9MX8lB01f5z8O3/8oudVPmX4Khsp/cTROjB7lQxNNlObhG61HtR8
         l6WRSIHP9czkby0cqqBeB4QTOSKgoMN9645e4940nbsSVlanr4xLNyGT6kG6yodzSXjD
         H5jvA3tp5DFFPAB3zf2GUPJiPc4TT2xXeN3Vmdl9waVD9C5r5yss5rmXPLgVSc6pRyxc
         BiMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        fh=uaf6VaZeQk51xGVQ0+heoCxTkcZrW2BC1k5f78Mj5ok=;
        b=bcNm3UlCiCba/SI6PZO/Oxuy1I/Dj77FugctEAvvvx8fM3pgb1xBZAac4uCLN81qpu
         sfzcCWUtLYqrMcK0SvY0B8qHkUJ2kR1RHtq+UldwAhV8xj9H5bHNzCcovHdpw40pp5qI
         TTb20yYAHRbN5SNIG9LQ8LZoWtK8UB/lT+mV7BOGIAiw5Ib0qdncPXLlm/NdaFZNAIiI
         ReSAF2UTKMOrmxpmjdDwZT4ba7l+15JuMnA0nWIBe/glMM4vpX2JvWlh7+j+tChSoTmu
         P5feGsQyEAXrlsSA/5MC7QE4bZ8zg7B8djd2dnX2ALp6jqyJiniLB1ldCAldXMAvxBVP
         uk8A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773068818; x=1773673618; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        b=YDCKAWzTSjoyOKxywxX/89IU//SMk/64iocZQqSPHMm+RZyOKO61dyNWFH8+fDrUSH
         BhsrZMeW8TAfJqMdaAyEkf3OFDA63mDRaFuayeHDpbmqxS6dFezk9eEnH002tQ2OpMEt
         tv4B6QfA+/uuB001aM95V6PbaZdpSB6LnvAC5az3zDD7/Jeo503Erl50y/Z/OQoTmfUB
         gsrXxHQWndpKSnkqBf/TQThoIOiQSSpNSmwWdGp8MIQZC9wRKuXaD5KsunxTNwISM3pU
         +z078T8q/N7b+1nsIPv2gGu4cwBm7Lir78sm8SKWJd+vbaQ/R1qNAs6hWZ9EdoUy7rDb
         S6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068818; x=1773673618;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        b=CugRQtx8eHeG30x6PmPt8SfMgvhVVs+2tc+hA16HbX/mtr3B22RghVdzve26V0PTnn
         lltxaMt9ClC0IQu2SRD5LvWqAY70XbdH8fDN6t2UDupAhilbTMeqNIix89JJb4hCSi/J
         IwnKA2080sjqdD1feopZZEBBpThHg7jjbzGH7ieQs+SatjZ1Dwfrtz8qQPDyUjqqnSDL
         paoHAcREczzZfu7PIUVnPabgvYmuyi3d6JidveStifpahV8rP6WckMqbHddCNmWi75Yc
         W9t8/X2B8OABj93lkWa79HO5qWhr9DWwVQz8E9DQbJu0qbnIjwgpZIFY2NZ1sNeke3Gj
         O5gg==
X-Forwarded-Encrypted: i=1; AJvYcCU3i29zOgVtKNKkqWKSJF8w5pguntAeXRp0JHTkoKd4Ii5WshrbYsY/xI9rT65dz9+AtPzOgeuZCIsj@vger.kernel.org
X-Gm-Message-State: AOJu0YwKsgO2a0Xsd/3fHndJscayBi7Zw8z4I/Bng68UXjlbIAHwULxz
	ZQDoJ1w8LPzJVJHOAOkHVeFbn8zgnbqXveyXa9wsQqL5MJJr0+HBNMhtHIKrqAaASAiL64gD0eH
	qi6xmklfgneCYfpdNlPDtKhuhlJ9GrhwC28rI9ggPJQ==
X-Gm-Gg: ATEYQzwsyD0UGKcjsAaRBU8y0qHidy8s57f++DHN3JZ85RI9S5cApxtvXrRjw5Ir8Gi
	I6xI/oUwvGPZUO5+0qheJP6lplB29OOzPECBBIGgVZs0qubH35mci7jqOoKikEJw0vH5Zho3mWY
	u5O7kF5leQV9TsAh0H99D4Yuw2QHBv+XjLbbCnllLiuqwdvHE+VT9HLhZTIp00IUqV3c51HLMPi
	vOTlXQk/88xiKfqSy/hpPSVZWrXpOmFor9rCw5oe/iuPmqyHtQEm4iHUVmw3n9eixMsfVAwhjZ/
	YSbLr+fF
X-Received: by 2002:ac2:4644:0:b0:5a1:3ab6:6de2 with SMTP id
 2adb3069b0e04-5a13cce183dmr2793114e87.37.1773068817703; Mon, 09 Mar 2026
 08:06:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com> <CAPDyKFr5NZKEKpV2+GXGnzH9pyyj_TLmMCc3rac8h248srX_dw@mail.gmail.com>
In-Reply-To: <CAPDyKFr5NZKEKpV2+GXGnzH9pyyj_TLmMCc3rac8h248srX_dw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2026 16:06:20 +0100
X-Gm-Features: AaiRm51gPNstmfmPCbGsevKfnVyHAve3znxWrnZO7sNkn4-s9OVpM21rgVmHXjc
Message-ID: <CAPDyKFqyUsKbp9pgKHsMoOd5Qe_0f9rxsX6C61adQC344eA9Lw@mail.gmail.com>
Subject: Re: [PATCH v11 0/9] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>, Peter Rosin <peda@axentia.se>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: BC53723B3F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272993-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,renesas.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, 5 Mar 2026 at 17:19, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 26 Feb 2026 at 14:21, Josua Mayer <josua@solid-run.com> wrote:
> >
> > This series has evolved over time from adding generic mux support for
> > renesas sdhi driver, to partial rewrite of the mux framework.
> >
> > Several drivers have started implementing driver-local managed and
> > unmanaged helper functions for getting and selecting a mux-state object.
> >
> > mmc maintainers have requested that new code shall intreoduce and use
> > generic helper functions that can be shared by all drivers, avoiding
> > code duplication.
> >
> > This series is structured in 5 parts, each of which is self-sufficient
> > depending only on the previous patches. This shall allow the first N
> > patches to be applied even if the last ones need further discussion.
> >
> > 1. Rename driver-local helper functions to avoid name collision with
> >    global version to be introduced later.
> >
> > 2. Implement generic device-managed helper functions in mux core.
> >
> > 3. Convert driver local code from similar patterns to use the newly
> >    added global helpers.
> >
> > 4. Change mux-core Kconfig so that it can be enabled through menuconfig,
> >    without an explicit "select" dependency from other drivers.
> >
> > 5. add dt bindings and driver support for mux in renesas sdhi driver.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > ---
> > Changes in v11:
> > - changed approach to Kconfig making MULTIPLEXER a bool, and adding a
> >   user-visible wrapper for menuconfig.
> >   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> > - dropped the "default m if COMPILE_TEST".
> >   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> > - improved kerneldoc line wrapping.
> > - removed unnecessary changes to original devm_mux_control-get.
> > - fix "reference preceded by free" in mux_state_get function
> > - Link to v10: https://lore.kernel.org/r/20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com
> >
>
> [...]
>
> To me, this looks ready for a new try. Unless I hear some objections,
> I intend to apply this as material for v7.1 via my mmc tree on Monday.
>
> The complete series will be available on an immutable branch, for
> other subsystem maintainers to pull in if that turns out to be needed.
> I let you know of more details on Monday.

I have now queued up this series for v7.1 via my next branch.

The series is also available at the immutable "mux" branch (based on
v7.0-rc1) via my mmc tree, which other subsystem maintainers can pull
in if needed.

Kind regards
Uffe

