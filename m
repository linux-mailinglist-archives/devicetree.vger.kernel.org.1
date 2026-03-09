Return-Path: <devicetree+bounces-272996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB4EJYLirmlPJwIAu9opvQ
	(envelope-from <devicetree+bounces-272996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D40223B4C8
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 41FDA3028509
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 579073D75D2;
	Mon,  9 Mar 2026 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="twWyb9QQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF8818050
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068849; cv=pass; b=Pf9i2qYxVExgFi82p01LSAXjvMFUFxiRc6NOUWugDvwvOJoC+Nigm67koE+X2IOyRSenweiI5gfGl3uq9BJqszkHW4RmCOBpnGjA3GdzKXL/Jx/0CBh35yJpf0QQwjpoCj6dK52FsvhRUq6+Nm66OwwRLuM2Jl5sL8dkJ1goAPc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068849; c=relaxed/simple;
	bh=cmRiodC9r+mRuSIKrsDa+1SgJTeHck5hhqgmz3f7sjQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vh/ZUoqR1OJ+2okxTP0mc8wFmcPG6jyDXXUkYqOmgRl05sMZ3X4Fs4jq/TAfg9t7DY9a0wt0fJJ5mOtBJw1k5/vlMBC7gWkIFAJpZi52XIXT29RwZjfqbRFi1a4i69SGAdXC/Dx+Vu0NzcIqLkxEG6mVeh3wEzZz232eJBfcqeA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=twWyb9QQ; arc=pass smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38a01c80c34so132306761fa.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068846; cv=none;
        d=google.com; s=arc-20240605;
        b=cUzzqXnkRRGTD6eY4E+fa6iwfTJlSTqwrFW9Jilmgavxh3iDXaP94NAuIHaGQKS/7z
         HgwZuq3sUVF3FTYbk0XWapKjMtZ+iIQYD4VBQjimFGciruOycRrDTeAm1TjuEcxabHEd
         DUxaqbsz0u862xUL3egrlEN2o5pkNGf3an7JXyF7BW+nVeK9ACkUer/UqecthgMDG/t7
         012tBTBhVuGDSCN2HgHcOYIHBxDyyTj5yLmTAwZJ4ORaXZcLuZIBL5zMvOiB7SWSs69H
         r+0adNSTF0B7OzSQv4CNaV1EZueuK8MQekGG1p5DV2ryzmrgcSldMrVPzDXPohUQo/uD
         zLOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TdH8bvkNIpDog/K3q0ZzGRX8OtZ/OKv1fjCXdvgPWAI=;
        fh=k2BAcJpEjfuRsIBd8xFlY6J/Vol8ahwh8VzPGqQI+/0=;
        b=ek1ElHmgSkOOHoeejDVU0F/K8NfoGEmkoNCuOzWq3Uu+UftHUawn+QgFmf2yxgv6hC
         jdM+feN+A5KJHdXBfa0n/cDpqIC6wmRV5D/jmIb6bI/wSLbjcRZD2dghy7X4uRivFbvm
         DdurHNXlo+1K/BtcoC3fj8e2FX5OykDwYvtomgxGUNfId27qdGntk8znoVN3W0KPaUGn
         uvPr+MmKQfHVd8/OxTO7vpjMz79VphYgIxdXCyc7GgGmP9FXa1aAFhtsQN7R+wgXAsl1
         vkurwJHtdj/dsXNq5x/4EYl6dSvafrFu1ZNJYdBukV03uqLBXg8sanOVqKPhVaklxk7Q
         CXOg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773068846; x=1773673646; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TdH8bvkNIpDog/K3q0ZzGRX8OtZ/OKv1fjCXdvgPWAI=;
        b=twWyb9QQ3QGMDsZuo33MY5G6XgRoCUvxskutOd8Jh2lMLypdjfnHm1p4yXGblJyv+S
         op0rrxngeG2SEZ7/ahCnZNIL2qnTrpg/xS7iol0vWHijZ752ByGH/7YBuxho6PD8K2/b
         KVa4hm4UAL0ukjZZlHcVZxFcicHsmwmnPP9coGkj6Yecoip5rnLhVuMr2vCdxKshwQib
         KXAg0TX2R8At0O4zRmyegS4Uv87xX4N7y4rYAS0Q/q7jqE7nJlsLPMaAhsyoIv6tyraL
         X9Bj5VhiFVhUvKvyqkeHRQLlOhJX0v183MqMbQ2o5izso9Yef25gzlaP4e/WD9SOeCga
         q5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068846; x=1773673646;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdH8bvkNIpDog/K3q0ZzGRX8OtZ/OKv1fjCXdvgPWAI=;
        b=gnciQOo+/AUAsSOw5TAA4bG0NOsT/aRlf0K4dawIvw13OJ/u2HcbdJTiAjmS0frSip
         6+Fs37NPx0bMUHKkn0Um4YVgLZWdhZ0BN5X9wkMcClQowX0d/3hu1N00MxwEjeCZzXT/
         tIgEWz1PMnKq8jnVwFHXvo4DYiQ2FTVbu0I4YSdlxwU09rpByyqiE30dY+ZSVEXBbCO2
         DypnYIMpTEDXSnfD0JLvGJ+HWcwqu7b/rdvc+UlbJtUIxkhgkDKfih1s514bXhpumhI6
         ifMRJC6ItW7sYPoSIjOoG4ORAHLpdXLVpMSesYgo47SPMT+rd0yyUaWpNGn4D8777dYF
         1lTw==
X-Forwarded-Encrypted: i=1; AJvYcCVMzcL+ofFzuR7iOW0/6w6YBG3SWoPeFEgAQuPAAik1Q1XG3X/xrMDWGemyHAgY+lOxfFJFgBEGn9qg@vger.kernel.org
X-Gm-Message-State: AOJu0YyNzvgMDx3JUMdfhss0MGVpRqTi3mNkmMsNG0Vktt+TugU7mxNJ
	WLGqrC97J2b8G6nMdpQsVgr9YBiOjsmw2WRODzpKBZ6K9Jp4zm9ymNd5Bc8RedA0jsKdV8B/lnM
	UULR1oLuXEukFr83t5nhpEhK4TtYuXZxdSFsdXbBeew==
X-Gm-Gg: ATEYQzy5bDX7a6fQwrsUPIJyeXBksBqhv97L5h994350YdSHx9oOTWWqexR4b96heBy
	3ipHlwzP1TkN2iDUTUIM2B50pxZPWIBCTnv5Dv+Em6x+G8s36kP1UK8ZNeKKkWnieGHjmfDW1Ql
	4mm+RUfCLf7uMtdmgtI2gC8r9OML60BMAOyG/uJRdk4PUq18ajD0qVmiTXEOVga03RoQSziBBtC
	cWOcungYSMUtHoReP6HAt800ys/ULA9lNIUNNj//nDvGu8+qvaogIxYIdVDEIWtfCzqDii7tAs3
	uvOMIvb/
X-Received: by 2002:a05:6512:3409:b0:5a1:2a71:cc3b with SMTP id
 2adb3069b0e04-5a13ccb1aeemr3618408e87.18.1773068845876; Mon, 09 Mar 2026
 08:07:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309143411.8231-1-ciprianmarian.costea@oss.nxp.com>
In-Reply-To: <20260309143411.8231-1-ciprianmarian.costea@oss.nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2026 16:06:49 +0100
X-Gm-Features: AaiRm53zSNZD-rgavB1hXZqnC71GE3J4BBqG9ZBYLAtj9oAS6JeEy0pPrIt0G5A
Message-ID: <CAPDyKFof23uOBe7duOLuFJ=qd8bv8f6ryFWbrPcTFB-Jg4ZQTA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] arm64: Add initial support for NXP S32N79 SoC
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Haibo Chen <haibo.chen@nxp.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, s32@nxp.com, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 3D40223B4C8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272996-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:url,nxp.com:email]
X-Rspamd-Action: no action

On Mon, 9 Mar 2026 at 15:34, Ciprian Costea
<ciprianmarian.costea@oss.nxp.com> wrote:
>
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
>
> This series introduces initial device tree support for the NXP S32N79
> automotive SoC and its Reference Design Board (RDB).
>
> The S32N79 is an automotive-grade system-on-chip featuring eight Arm
> Cortex-A78AE cores organized in four dual-core clusters. It is designed
> for high-performance networking and gateway applications vehicle
> architectures [1]
>
> Hardware features included in this initial support:
> - 8x Arm Cortex-A78AE cores (4 clusters of 2 cores each)
> - 32GB DRAM Memory. 28GB are usable and 4GB are reserved for ECC logic
> - Three-level cache hierarchy (L1/L2 per core, L3 per cluster)
> - GICv3 interrupt controller with ITS
> - SMMUv3 for IOMMU support
> - Generic Timer
> - IRQ steering controller
> - PL011 UART controllers
> - uSDHC controller
>
> This series also includes the necessary driver updates:
> - sdhci-esdhc-imx: Add S32N79 uSDHC controller support
> - irq-imx-irqsteer: Add S32N79 IRQ steering support
> - irqchip Kconfig: Add ARCH_S32 dependency for IMX_IRQSTEER
>
> Future patches will add support for additional peripherals such as
> networking controllers, PCIe, and other IP blocks.
>
> [1] https://www.nxp.com/products/processors-and-microcontrollers/s32-automotive-platform/s32n-vehicle-super-integration-processors:S32N
>
> v5 -> v4
> - Squashed irqsteer 'Kconfig' changes with the actual driver updates.
> - Fixed tabular layout in the irq-imx-irqsteer driver
> - Added received 'Reviewed-by' and 'Acked-by' tags from V4.
>
> v4 -> v3
> - Added missing Signed-of-by's from one commit removed in v3 by mistake
>
> v3 -> v2
> - Split S32N79 SoC dtsi into separate standalone commit
> - Renamed a memory node in the S32N79 board dts
> - Fixed IRQ STEER DT-Bindings support for S32N79 addition
> - Updated S32N79 usdhc driver support commit message
>
> v2 -> v1
> - added driver changes required for S32N79 uSDHC support
> - added driver changes required for S32N79 IRQ_STEER support
> - updated commit message for uSDHC dt-bindings
> - implemented fixes for 'dt-format' tool findings on newly added S32N79 dts files
>
> Ciprian Marian Costea (7):
>   dt-bindings: interrupt-controller: fsl,irqsteer: add S32N79 support
>   dt-bindings: mmc: fsl-imx-esdhc: add S32N79 support
>   dt-bindings: arm: fsl: Add NXP S32N79 SoC and RDB board
>   mmc: sdhci-esdhc-imx: add NXP S32N79 support
>   irqchip/imx-irqsteer: add NXP S32N79 support
>   arm64: dts: freescale: Add NXP S32N79 SoC support
>   arm64: dts: freescale: Add NXP S32N79-RDB board support
>
>  .../devicetree/bindings/arm/fsl.yaml          |   6 +
>  .../interrupt-controller/fsl,irqsteer.yaml    |   4 +-
>  .../bindings/mmc/fsl-imx-esdhc.yaml           |   1 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  arch/arm64/boot/dts/freescale/s32n79-rdb.dts  |  70 ++++
>  arch/arm64/boot/dts/freescale/s32n79.dtsi     | 362 ++++++++++++++++++
>  drivers/irqchip/Kconfig                       |   6 +-
>  drivers/irqchip/irq-imx-irqsteer.c            |  55 ++-
>  drivers/mmc/host/sdhci-esdhc-imx.c            |   9 +
>  9 files changed, 497 insertions(+), 17 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/s32n79-rdb.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/s32n79.dtsi
>
> --
> 2.43.0
>

Patch2 and patch4 applied for next, thanks!

Kind regards
Uffe

