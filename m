Return-Path: <devicetree+bounces-259832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE55MyibeGk9rQEAu9opvQ
	(envelope-from <devicetree+bounces-259832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:02:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3844B93494
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 28C8F3011799
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF8130B51B;
	Tue, 27 Jan 2026 11:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bwRSGhDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9BB30AD15
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769511718; cv=pass; b=WM0xBgBkRN9qCaFnGUmsrineFCPog8E780au8YXb8IxG+U6cnAPtD4ZGe6bER2wx8S8WeepB6RpsI/uiuibmeo4kFdVXo6E1Vvd902XKxhk11hgpx16SOEyU7X/Li26m2qXAuSO/VpOZapHA9VND4ivu/7rAP0BSojaWOuThWQk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769511718; c=relaxed/simple;
	bh=Zh3MtVvElCyR7i2oKDMC1exZ7K3A0CEScZDN6YRR3oQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=idEHS5ZzWQvU3MiOJxZMOc4Z9/Ld4p5QFcPTUxiZBqQ47ThgSp1/5THLqmyoiL+nG4N4RYpSw1s7XK9UjJiXM9uoOwRKNefUYSx3+GA2sJhKLVhGDsiCNU5f1SUw13fm8rk8xCMjs1dD8CTZr4knOgMRPqW2dSUNrfUbRTE6hxc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bwRSGhDi; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59de66fdb53so3702435e87.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:01:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769511715; cv=none;
        d=google.com; s=arc-20240605;
        b=kM7QAC/Ek4zAL0A226MrpOHtm6iDj+NA4x3tKZsvx0+7Nsl6YXtK4qnJbF+JgXN60p
         MUm5LWS66V7SFesv2FltUPD77hoMqWUA2CzbnM1zFgLvzovS9OPFcmHJB5BqiPofsqaP
         VQ/rGyJTQu+62zXZoXXaLRicPWoYn+uIfRQNgcT9X+ZIHa82pfgQrxXFtaPoS/8CEQ22
         jH09QCGe1cp7ryXAVBsQKxbdOfy0K1z24pQJzQUuMdg8sWuCYN7YDXdvaCENQl94WQhR
         x0ihHZoh1aKsOvsVKSFupzFgstWe1latpqPjXvVAFfBkXHedPHf80LVli12/8dSghZFc
         KJPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PhbuZflrYoZI1s9xrK2220SYSdiXayJsomDwy3Z3JgA=;
        fh=J0Vk4fJ4iH/OKwPW4a0Wsj96PjNaJebPPHTKi7nASng=;
        b=R3tGt9TyiOxsrpR13ErvRGLm5EmFCQOe7JViubw68n+3gI3anfXoy3I29i7YiZaQwh
         BFDAlvx3yqo7uLhxfUlAAPYWizSk1BCOyHKl0r77+u7VjklsfDga+fBDFs4oRApf8IXv
         h9kNzm870QKldjsTik+AmZq+SYm439JS5LLM84MMsw9OqYjmT+NfqW9kk4lqU6O3VtAS
         BtCHnUkdfWT78HbuykX2wadMtC2OK+lUz9L9XhHU2KyqUrdPcf8jADxhGHS6PMGnux2R
         geqqmAwOUR8QkAULvNrQpZBQkSyWSeoS89nhiuNbGBoLdDsT0gxNLixADsTNN9Yw3EBU
         pqgw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769511715; x=1770116515; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PhbuZflrYoZI1s9xrK2220SYSdiXayJsomDwy3Z3JgA=;
        b=bwRSGhDi3Y+/vNbpp2EgZndpbRo0VPl099SLE9vj/LAXaHQRa3GG15cDL2NxcQYh+M
         95O7kN7IDn6Bj/O747Ux+Y6l9iP2Vg1rHWS+4x2EH6ch53NuawcdHFLX0Csxf/giIanT
         9PXJ0c1SLAb/fJtlkQ9D0bT6LqdmZebyl+t5fSowDBkz/qAUE4nfopyfgEt7wStqv4wM
         waySXYFxxHWE1GKujq07By9kzo2X7nvF471MQjPuWT/kumop/eCB47CUEFSC7+8W+YGs
         TanwQ1HJ16P/sT6VA/Dpf3uD7PlRfhUMmzh3ZEGiRxnBRw1QLhqWI4F2/F9O+3Rjdc/1
         Ezfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769511715; x=1770116515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PhbuZflrYoZI1s9xrK2220SYSdiXayJsomDwy3Z3JgA=;
        b=q6isdvdEkhsOs+UNgsEXKEo5Z7ZoQ0ERZIgWukiMbgjp+eWL4SBzlqnhUnm7Wqcr+9
         oZBWl5WpoTiOfp7o6Vn3RDnqv5CTMYM5UyALKS+iZu3eRx1W27lVVb5rijWZ9QmL+mIF
         /jK2qP2xlaDJ6o9pxCvdBkI7vgoxInExMFK4CUmil6GeYnKkLeC7ZQowwzlhxmiqCDto
         G/ySFMIWD+1c7a8pNet4jEfQ6JZwWeEum8IBoExypwPJrNmvn0Vv5jD8nbgtldZin31i
         4tPC/nV7yQd7zC6jNSGoJcosR3cKNt5BG8BAthI9HfPKIrn5iUAj9en2HwyuQ8P839+p
         8b1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMJZgSpjiZFK8ixsRbr5uped1ixP4QAdTwPLCc+GmaqjlhnJRnh+Ec9F1hA9IpB9Hv4trlBKPNvut0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4t3U6l5vrLIsKRHq9BXwm1qGzCFR1Ko9fefU30AFwbtrkcfeR
	788cdLKewC2prA6yqZiZoWNEdQh/up+l1hr6V+ec1okTU9rDkgmMYq4+q7a4Gk0VuzYmumQTmC9
	9T3iTI87CDE05/vDJuNtAvntiVx6XFdfzOBXaAoL9+A==
X-Gm-Gg: AZuq6aIVqujxTHrhlncsNEeUzeO2LTnar8TF/j5DNMuXX9/xo+kKs+tGxc8dYVDI8ER
	hJq/HJl1rvSn3F59m7T+vuN+HkYFSusPitIV7zu0kuflJIGlnuIWaNYt6rJnmjT19l2Y2aijuOl
	FgNy1LrtWU8v49U9B6eI5Mtd1MKa+2B+jQ7GIkbmyVXcPvDPQnHf0jph6SqyMyn0OjLcNQUT4s2
	WfalRxl1xBNSke1wpOLJqs1k2eUCLX92TZj0sR3fqQOnyM0VlFQ4T3OX/mjgXTxgbe53ELA
X-Received: by 2002:a05:6512:2510:b0:59d:fbea:2c05 with SMTP id
 2adb3069b0e04-59e04025390mr519384e87.24.1769511714445; Tue, 27 Jan 2026
 03:01:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123095342.272505-1-yangzh0906@thundersoft.com>
In-Reply-To: <20260123095342.272505-1-yangzh0906@thundersoft.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Jan 2026 12:01:18 +0100
X-Gm-Features: AZwV_QjQJQRTg1ti0bxzkqTQwuY-jbSIMpY2vglnNnSJTkeJy2p56e4qMngTfno
Message-ID: <CAPDyKFroOi-7Dir_H2fPX9Ne6zFeM4=XD0eMMrX+iJ_si1n2sA@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] mmc: add support for BST C1200 SDHCI controller
To: Albert Yang <yangzh0906@thundersoft.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ge Gordon <gordon.ge@bst.ai>, 
	Arnd Bergmann <arnd@arndb.de>, BST Linux Kernel Upstream Group <bst-upstream@bstai.top>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-259832-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,thundersoft.com:email]
X-Rspamd-Queue-Id: 3844B93494
X-Rspamd-Action: no action

On Fri, 23 Jan 2026 at 10:53, Albert Yang <yangzh0906@thundersoft.com> wrote:
>
> This series adds MMC/eMMC controller support for Black Sesame Technologies
> C1200 SoC. BST is a leading automotive-grade computing SoC provider focusing
> on intelligent driving, computer vision, and AI capabilities for ADAS and
> autonomous driving applications. More information: https://bst.ai
>
> == Background ==
>
> This is the MMC portion split from the original v4 series [1] following
> feedback from Arnd Bergmann [2]. The platform support (vendor-prefix,
> SoC bindings, Kconfig ARCH_BST, base DTS, defconfig ARCH_BST) has already
> been merged into Linux 6.19 through the SoC tree [3].
>
> == Series Overview ==
>
> Patch 1: dt-bindings: mmc: add binding for BST DWCMSHC SDHCI controller
> Patch 2: mmc: sdhci: allow drivers to pre-allocate bounce buffer
> Patch 3: mmc: sdhci: add Black Sesame Technologies BST C1200 controller driver
> Patch 4: arm64: dts: bst: enable eMMC controller in C1200 CDCU1.0 board
> Patch 5: arm64: defconfig: enable BST SDHCI controller
> Patch 6: MAINTAINERS: add MMC files to BST entry
>
> == Testing ==
>
>   - checkpatch.pl: PASS (all patches)
>   - dt_binding_check: PASS
>   - dtbs_check (CHECK_DTBS=y): PASS
>   - Build tested with ARCH=arm64 defconfig
>
> == Changes since v4 ==
>
>   - Split: Platform patches merged separately via SoC tree; this series is
>     MMC-only, submitted to MMC maintainers
>
>   DT binding (patch 1):
>   - Rename file from bst,dwcmshc-sdhci.yaml to bst,c1200-sdhci.yaml
>   - Fix example compatible string to match property definition
>
>   Driver (patch 3):
>   - Fix compatible string to match dt-bindings (bst,c1200-sdhci)
>   - Simplify clock divider calculation with clearer frequency range logic
>   - Add linux/bits.h and linux/bitfield.h headers
>   - Remove unused linux/ioport.h header
>   - Rename SDHCI_TUNING_COUNT to BST_TUNING_COUNT
>   - Rename BST_EMMC_CTRL_BIT2 to BST_EMMC_CTRL_RST_N
>   - Fix BST_DEFAULT_MAX_FREQ from 2MHz to 200MHz
>   - Convert kernel-doc to regular comments (per Adrian Hunter)
>   - Add sdhci_bst_free_bounce_buffer() helper (per Adrian Hunter)
>
>
> == References ==
>
> [1] v4: https://lore.kernel.org/lkml/20250923-v4-patch-final-v1-0-2283ad7cbf88@thundersoft.com/
> [2] Split: https://lore.kernel.org/lkml/09b1318e-21dc-4354-8733-866b70696295@app.fastmail.com/
> [3] Merged via soc-newsoc-6.19
>
> Albert Yang (6):
>   dt-bindings: mmc: add binding for BST DWCMSHC SDHCI controller
>   mmc: sdhci: allow drivers to pre-allocate bounce buffer
>   mmc: sdhci: add Black Sesame Technologies BST C1200 controller driver
>   arm64: dts: bst: enable eMMC controller in C1200 CDCU1.0 board
>   arm64: defconfig: enable BST SDHCI controller
>   MAINTAINERS: add MMC files to BST entry
>
>  .../bindings/mmc/bst,c1200-sdhci.yaml         |  70 +++
>  MAINTAINERS                                   |   2 +
>  .../dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts    |  19 +
>  arch/arm64/boot/dts/bst/bstc1200.dtsi         |  18 +
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/mmc/host/Kconfig                      |  14 +
>  drivers/mmc/host/Makefile                     |   1 +
>  drivers/mmc/host/sdhci-of-bst.c               | 521 ++++++++++++++++++
>  drivers/mmc/host/sdhci.c                      |   7 +
>  9 files changed, 653 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/bst,c1200-sdhci.yaml
>  create mode 100644 drivers/mmc/host/sdhci-of-bst.c
>
> base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
> --
> 2.43.0
>

Patch 1 to 3 and patch 6 applied for next, thanks!

The DTS patches (patch 4 and patch 5) should be picked up by the SoC maintainer.

Kind regards
Uffe

