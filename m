Return-Path: <devicetree+bounces-258037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHZRDwQKcWmPcQAAu9opvQ
	(envelope-from <devicetree+bounces-258037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:16:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF465A65A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 476F794EDCA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91611481ABE;
	Wed, 21 Jan 2026 16:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="VrGD8MaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD54048124F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769012121; cv=none; b=L3+7SsQszIXPJ+lHrh4B4o/hVy8KM6633cBQSlo3+LyTpOWCVKExIiteIjnLOpzKxsDnwvt60xOIkWP+PO2KtyE0LF2DvK4Iqqxm4/9YDD2kL+7EeYLxE5xgZvzjfEGWc1D10ZOotdTsIeJVwTz0T616nfqBgpB7LcY1vVm2s5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769012121; c=relaxed/simple;
	bh=3CfPFqXWtNfBKbXN9UO1Ea/OsaKoaBZmFse5kGZlREU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fA5ay9X3AO4VzDOgTNCoJ4TGlacOkcvcr1liwT+5y0fAg6ajJWj8fsKbrrnjY9x8gssRFizEQVIFSwNJLbrfMCazZPFpsyH4VKtx7WLV6YvAsXvfFH3V8434VemINpOMINzuFz5CIxy11amsgbEi9by7FI7Gsv8eCx6riaq9BEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=VrGD8MaJ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432d28870ddso3890938f8f.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1769012111; x=1769616911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jwSOT/yQWEA+mh+MAPkTqG/wbQ6a0oX9ZNNu12ekmpY=;
        b=VrGD8MaJzWMzJg9VM2qxBEwIlQ5wl3402DPxMC+BkSvoKQaFCtUKsRzyoVHHDkEdPk
         Ywqc4gTjlHm5zniFfDcCMqJkLDoz9b90G3AoBxy4eCGlmX5a/NrijRyDvDE+SDpVswxo
         iJ/Moeqfzs/PPM+db2LV5MGZiyMXMUChwk/qwR6HhoPi+aanZe/b6nwiRVPHTZ70HiMH
         P77g9Rkoo05mKdH7lf8ILcqX7qPMv+lxcH8UqPqDLIgDAddiypVDi5AOlF0aPQqZht2s
         asQDdzcWH9gIDPnsqbzVTQ4FAAp/iRk+MBC1erFnsNEewIeDsGgquMcSzXwyuVvMwlwh
         a1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769012111; x=1769616911;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwSOT/yQWEA+mh+MAPkTqG/wbQ6a0oX9ZNNu12ekmpY=;
        b=pCLvClI6CQ2SZx0S1JTXdcg9KmZNJu0q/YxVjRW/5x0C0tl2lLd7b4brcMUbLJXcnn
         jACtUOL3KokVF5auEWhlHSYBxQ06XnYV82V9NAUX2Mg3lL17Eml6lcd6keqYf9iN/VOV
         2UTHs8rNl82zyV8JKAeqJlMykk5PX+6cnva66I0qCTD+ZRYHIRlYLagdnVDS8ZzddIMF
         0ZWtOxJ8vXV2uv6h9B82ax12ZnMKuWIkXpOQzG+cON8huBKVGbmLBfvxl2p7IqrJ5Gh1
         YUIpmYL5FKNrcMX9attoo2DAc4bR8dBewCGTSPhomDE5YLe93w2S5VCcJv74F5dP4ruh
         8c3w==
X-Forwarded-Encrypted: i=1; AJvYcCXFm2QExUAABJKInsLArLJZWcXLgH8PmKcx46wINB9hwAbfmIsWvWlN8s0VRkSHzoyANh8txB3u09Mc@vger.kernel.org
X-Gm-Message-State: AOJu0YwjrSoCXAvdKs0Se/jD73qUXvuwY4yONhBG55TY3h6p1pCVFjRb
	3sC2l7ZZqWUji163O6rz3+84PpWRIrVyJtyGVi+O7gSpvax1IkEytCyE8htdY5tomHM=
X-Gm-Gg: AZuq6aLGNbDtD2Mh7Z4xYUXfX5fOWpi2GVIrsc1p2rwInTv16vP6VVGjP89LJpFZcpA
	yqoXIgRU39B91bLnSX2YktAZhbYhD4mkTSyzBI1QjnNMi5Q4wsuhkfWNgV9fgo1AOZgKe+N1uqT
	pWba/MCGGn2CVDywYuFLJCM4x7wvvTdIAlhIB2s5NneTs/0A2M388l/jFNeryoXxrDVQXjlnrcf
	GeykUJc/TCcAKDw4u/p6u+Qn5uom1GzgJ2GQdMfiGStQk4eOau3Cg96EZ18+dWqOIYsXuOODOfV
	+5ykPMH4+bPbzG4P99C0s/PL10pM3cgJpM1GgNFXe4ej+IegDfk/gX8XPaJP9am+NXPv9mt3H9+
	/AABXmfurR8tlQ3bu15iDufNa8zJU8pvVC68cUWOEhPI7c3xfeoj1UL3FO1aMGrtS/C51yMlBhv
	lP+162/No1Y05rd3mPZKFZyq7p3vf5fCqJyMS5TWudt1nZmV9kMUWJAg==
X-Received: by 2002:a5d:5848:0:b0:432:a9d9:b674 with SMTP id ffacd0b85a97d-43569bd4899mr24188248f8f.63.1769012110431;
        Wed, 21 Jan 2026 08:15:10 -0800 (PST)
Received: from [192.168.0.29] (static-95-59-231-77.ipcom.comunitel.net. [77.231.59.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43595e0a705sm9859116f8f.14.2026.01.21.08.15.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 08:15:10 -0800 (PST)
Message-ID: <ea1af06b-fb85-4131-bad3-00d12c032c1f@suse.com>
Date: Wed, 21 Jan 2026 17:15:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 3/4] arm64: dts: s32: set Ethernet channel irqs
To: jan.petrous@oss.nxp.com, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Chester Lin <chester62515@gmail.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, devicetree@vger.kernel.org
References: <20260121-dwmac_multi_irq-v2-0-3b829230d071@oss.nxp.com>
 <20260121-dwmac_multi_irq-v2-3-3b829230d071@oss.nxp.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20260121-dwmac_multi_irq-v2-3-3b829230d071@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[bounces-258037-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,nxp.com,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[suse.com,quarantine];
	DKIM_TRACE(0.00)[suse.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mbrugger@suse.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.com:dkim,suse.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 3FF465A65A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 21/01/2026 15:23, Jan Petrous via B4 Relay wrote:
> From: "Jan Petrous (OSS)" <jan.petrous@oss.nxp.com>
> 
> The GMAC Ethernet controller found on S32G2/S32G3 and S32R45
> contains up to 5 RX and 5 TX channels.
> It can operate in two interrupt modes:
> 
>    1) Sharing IRQ mode: only MAC IRQ line is used
>       for all channels.
> 
>    2) Multiple IRQ mode: every channel uses two IRQ lines,
>       one for RX and second for TX.
> 
> Specify all IRQ twins for all channels.
> 
> Signed-off-by: Jan Petrous (OSS) <jan.petrous@oss.nxp.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
>   arch/arm64/boot/dts/freescale/s32g2.dtsi | 26 +++++++++++++++++++++++---
>   arch/arm64/boot/dts/freescale/s32g3.dtsi | 26 +++++++++++++++++++++++---
>   2 files changed, 46 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> index 51d00dac12de..5a553d503137 100644
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> @@ -3,7 +3,7 @@
>    * NXP S32G2 SoC family
>    *
>    * Copyright (c) 2021 SUSE LLC
> - * Copyright 2017-2021, 2024-2025 NXP
> + * Copyright 2017-2021, 2024-2026 NXP
>    */
>   
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -732,8 +732,28 @@ gmac0: ethernet@4033c000 {
>   			reg = <0x4033c000 0x2000>, /* gmac IP */
>   			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
>   			interrupt-parent = <&gic>;
> -			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "macirq";
> +			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 0: tx, rx */
> +				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 1: tx, rx */
> +				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 2: tx, rx */
> +				     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 3: tx, rx */
> +				     <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 4: tx, rx */
> +				     <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "macirq",
> +					  "tx-queue-0", "rx-queue-0",
> +					  "tx-queue-1", "rx-queue-1",
> +					  "tx-queue-2", "rx-queue-2",
> +					  "tx-queue-3", "rx-queue-3",
> +					  "tx-queue-4", "rx-queue-4";
>   			snps,mtl-rx-config = <&mtl_rx_setup>;
>   			snps,mtl-tx-config = <&mtl_tx_setup>;
>   			status = "disabled";
> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
> index eff7673e7f34..e1f248d3aedb 100644
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
>   /*
> - * Copyright 2021-2025 NXP
> + * Copyright 2021-2026 NXP
>    *
>    * Authors: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>    *          Ciprian Costea <ciprianmarian.costea@nxp.com>
> @@ -809,8 +809,28 @@ gmac0: ethernet@4033c000 {
>   			reg = <0x4033c000 0x2000>, /* gmac IP */
>   			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
>   			interrupt-parent = <&gic>;
> -			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "macirq";
> +			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 0: tx, rx */
> +				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 1: tx, rx */
> +				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 2: tx, rx */
> +				     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 3: tx, rx */
> +				     <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +				     /* CHN 4: tx, rx */
> +				     <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "macirq",
> +					  "tx-queue-0", "rx-queue-0",
> +					  "tx-queue-1", "rx-queue-1",
> +					  "tx-queue-2", "rx-queue-2",
> +					  "tx-queue-3", "rx-queue-3",
> +					  "tx-queue-4", "rx-queue-4";
>   			snps,mtl-rx-config = <&mtl_rx_setup>;
>   			snps,mtl-tx-config = <&mtl_tx_setup>;
>   			status = "disabled";
> 


