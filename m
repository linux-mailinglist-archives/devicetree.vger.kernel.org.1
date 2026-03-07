Return-Path: <devicetree+bounces-272366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ETmBaaNq2nOeAEAu9opvQ
	(envelope-from <devicetree+bounces-272366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:29:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEBF2299F5
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C93CB3073392
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 02:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308B526F476;
	Sat,  7 Mar 2026 02:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh82RDcz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18824728F;
	Sat,  7 Mar 2026 02:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772850595; cv=none; b=kJFwnRjBLtRp+33M3KVCvnIIJPcEEBvQlv5ff0rsFkF23KgohXdmx+1PAv8XhaS/6d7RSkienrOJ9d5kVh6wKT7arC7LGq24T2/wnSqBIpKbARePwVnp8GZyAtOg8iypRRi1Y8DF1VmIqNC5lD8yI4ARMqFd9TJcksOQ2Uf+3z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772850595; c=relaxed/simple;
	bh=vOYMV5oYzY1jb9kI2UnsuEVGQtVsXkECOuklSwooqNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eSKRsb4cms9tyuExs9sq7uDUCx1x2Nw3XBBZYoJD9/gF6P4otVgPAxX67HqX8zkXdjj5YsGHn91ALmPkjxX3gGbNZbSzV2a8kHAYRm3sONnDS7jC/kOvXlsLZFdeO+5+JIaiZWDDlLBtePVloOj2SRD+RXrtArz4U/jH16CBlFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh82RDcz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD0CC4CEF7;
	Sat,  7 Mar 2026 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772850594;
	bh=vOYMV5oYzY1jb9kI2UnsuEVGQtVsXkECOuklSwooqNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lh82RDczpDMmseaAIlLrISM5VihBBYyxrLaA6CWswNEj8+Hs3pd2/maWsJnnBjUDD
	 XRZT8wu6vDkPRF3QkLhR6u9qadcTBQb22iltFZNfB3IPmYskDvTmt4NnlPUrLpe343
	 eTdW8CMi71n/FHDogxGtiRyL+yh/pG7c4nTWNVmBAc0xntlaI9HOgTDPzz5abmi/gj
	 Of4YaziLG0jcABTOGBC/L4xzOUjH/8HaUIB94BzUyu5UKTnLyNBDoMMbuMJKImtJwL
	 FDr8I1gxj8numN1KOyCM9vttPjnXeI1xTF4wW9ZVvmu3CJ8lmBEdCReLCbCNuf1Tbf
	 1zkJOAWhVo+ww==
Date: Sat, 7 Mar 2026 10:29:51 +0800
From: Yixun Lan <dlan@kernel.org>
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
Message-ID: <20260307022951-GKC302167@kernel.org>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
 <20260302-orangepi-sd-card-uhs-v1-2-89c219973c0c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-2-89c219973c0c@gmail.com>
X-Rspamd-Queue-Id: 6CEBF2299F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272366-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Iker,

On 16:13 Mon 02 Mar     , Iker Pedrosa wrote:
> Ensure SD card pins receive clock signals by enabling pad clock
> generation and overriding automatic clock gating. Required for all SD
> operation modes.
> 
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
>  drivers/mmc/host/sdhci-of-k1.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
> index 0cc97e23a2f9c7b2f9376318a8a7ebb860571504..b703b78282ed8d89183c816477c149c0a565618a 100644
> --- a/drivers/mmc/host/sdhci-of-k1.c
> +++ b/drivers/mmc/host/sdhci-of-k1.c
> @@ -20,6 +20,13 @@
>  #include "sdhci.h"
>  #include "sdhci-pltfm.h"
>  
[snip]

> +	spacemit_sdhci_setbits(host, SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON,
> +			       SPACEMIT_SDHC_OP_EXT_REG);
As I'm testing on Bananapi F3 board with emmc chip, this line will cause timeout problem

[   27.613806] mmc2: Timeout waiting for hardware interrupt.
[   27.616592] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
[   27.623007] mmc2: sdhci: Sys addr:  0x00000400 | Version:  0x00000002
[   27.629429] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x000003a6
[   27.635853] mmc2: sdhci: Argument:  0x001ca0a0 | Trn mode: 0x0000002b
[   27.642277] mmc2: sdhci: Present:   0x01f70106 | Host ctl: 0x00000035
[   27.648700] mmc2: sdhci: Power:     0x0000000f | Blk gap:  0x00000000
[   27.655124] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
[   27.661547] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
[   27.667971] mmc2: sdhci: Int enab:  0x03ff000b | Sig enab: 0x03ff000b
[   27.674394] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
[   27.680818] mmc2: sdhci: Caps:      0x35fc0080 | Caps_1:   0x00002f77
[   27.687241] mmc2: sdhci: Cmd:       0x0000193a | Max curr: 0x00000000
[   27.693666] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xfff6dbff
[   27.700088] mmc2: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x00000900
[   27.706513] mmc2: sdhci: Host ctl2: 0x0000400d
[   27.710940] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x02080208
[   27.717363] mmc2: sdhci: ============================================

Drop it will make emmc work again.. but I'm still unable to make SD card driver work,
that's probably another problem

I've took a look at current K3's sdhci driver, all operations on SPACEMIT_SDHC_OP_EXT_REG
register are used only when doing voltage switch with SD card, snip of the code from vendor

	if (host->mmc->caps2 & MMC_CAP2_NO_MMC) {
                /* sd/sdio has no phy */
                spacemit_sdhci_setbits(host, SDHC_TX_INT_CLK_SEL, SPACEMIT_SDHC_TX_CFG_REG);

        } else {
                /* use phy func mode */
                spacemit_sdhci_setbits(host, SDHC_PHY_FUNC_EN | SDHC_PHY_PLL_LOCK,
                                       SPACEMIT_SDHC_PHY_CTRL_REG);
                spacemit_sdhci_clrsetbits(host, SDHC_PHY_DRIVE_SEL,
                                          SDHC_RX_BIAS_CTRL |
                                          FIELD_PREP(SDHC_PHY_DRIVE_SEL, 4),
                                          SPACEMIT_SDHC_PHY_PADCFG_REG);
                /* mmc card mode */
                spacemit_sdhci_setbits(host, SDHC_MMC_CARD_MODE, SPACEMIT_SDHC_MMC_CTRL_REG);
        }

-- 
Yixun Lan (dlan)

