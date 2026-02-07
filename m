Return-Path: <devicetree+bounces-263591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPUTLqAbh2kgTwQAu9opvQ
	(envelope-from <devicetree+bounces-263591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:01:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A0B105B2C
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83BAB301AA52
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 11:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46B433FE00;
	Sat,  7 Feb 2026 11:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDs/GxDa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9222F1D6193
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 11:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770462109; cv=none; b=hULa+Mnv+bBqyEp9yUDGMNJBOit531H6zbTJcNZxzJhIC5UA9/MeH71tAfthqutE7TAtV3epN/+7ICBg2EmJQmLsyFIFSBq2uMfm+SsmJy5OFqQf9AkkFldiOdxYoTZe2PGB7CLk7x0Mxlu/PjDKK0DrAcIIpMibKW6zKiM8xsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770462109; c=relaxed/simple;
	bh=7JCBZP9szhahntx62P+LWsta3kzGRKfx2xylbZb7Hmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PjaW+k6q/gAaOLS1XvFKg7fSdJ8+DhS05kTlY66xbuIO6f3L/TxDWllRFmHHmMeoYcnaHTTRKPkhKW1NB+i3zkRvPWwxgc54Rj3pPS0bQR9GF/G0NyMxgCHNfcPEQMnL2fxG1aQsVk1AfCWPuZVgh3vxBaPTD42wZJYfpBpK2KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDs/GxDa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6076C116D0;
	Sat,  7 Feb 2026 11:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462109;
	bh=7JCBZP9szhahntx62P+LWsta3kzGRKfx2xylbZb7Hmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XDs/GxDa8Hr7uToH0sWpIkIoZQLgOJ29l8Akc4jIrGqbu9MTMSVrWByDGdB+Rv/RM
	 8KSj3oF6Wg2d2pJmroRC6+ttbnzpXjVcAzICh2YXCfjFjq72r1yki54Y4FFhZp1D2/
	 WYNxOf7XVG36gAznlYz4gWS76hKtYw9cUjWZEIn7yoj+gz9WKMD+2zslaXrDftdkha
	 Ycd7nmwoVWbo8yHsZkQLQ1vreKNMCx3elRx0NdfG7vO9s6pO6dDU+9uzw9OvfNVF07
	 goTl3MA236mFp2/zIyLl2iFkxBafKIfqPBolxmy9E4Cigei6L60mo/AHybt+JKneCy
	 mpQPfAvu4tRig==
Date: Sat, 7 Feb 2026 12:01:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
Message-ID: <20260207-dazzling-stimulating-lizard-14eec1@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263591-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19A0B105B2C
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:13:00PM -0300, Fabio Estevam wrote:
> +#define MCLK_ACODEC_TX				204
> +#define SCLK_UART0_SRC				205
> +#define SCLK_UART1_SRC				206
> +#define SCLK_UART2_SRC				207
> +#define XIN_RC_SRC				208
> +#define CLK_UTMI_USBOTG				209
> +#define CLK_REF_USBPHY				230
> +
> +// PERICRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_ARESETN_PERI_BIU			0x00000002

NAK, not a binding. Nothing below is a binding.

> +#define SRST_HRESETN_HPMCU_BIU			0x00000003
> +#define SRST_LSRESETN_PERI_BIU			0x00000004
> +#define SRST_PRESETN_PERI_BIU			0x00000005
> +#define SRST_PRESETN_RTC_BIU			0x00000006
> +#define SRST_HRESETN_BOOTROM			0x00000007

...

> +// ======================= PMU1CRU module definition bank=9 =======================
> +// PMU1CRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_PRESETN_SPI2AHB			0x00200000
> +#define SRST_HRESETN_SPI2AHB			0x00200001
> +#define SRST_SRESETN_SPI2AHB			0x00200002
> +#define SRST_LSRESETN_PMU_BIU			0x00200003
> +#define SRST_PRESETN_WDT_LPMCU			0x00200009
> +#define SRST_TRESETN_WDT_LPMCU			0x0020000A
> +#define SRST_HRESETN_SFC_PMU1			0x0020000C
> +#define SRST_HRESETN_SFC_XIP_PMU1		0x0020000D
> +#define SRST_SRESETN_SFC_2X_PMU1		0x0020000E
> +
> +// PMU1CRU_SOFTRST_CON01(Offset:0xA04)
> +#define SRST_PRESETN_LPMCU_MAILBOX		0x00200018
> +#define SRST_PRESETN_IOC_PMUIO1			0x00200019
> +#define SRST_PRESETN_CRU_PMU1			0x0020001A
> +
> +#define CLK_NR_SRST				(SRST_PRESETN_CRU_PMU1 + 1)

Not a binding, either

> +
> +#endif
> -- 
> 2.34.1
> 

