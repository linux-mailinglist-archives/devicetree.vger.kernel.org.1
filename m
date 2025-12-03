Return-Path: <devicetree+bounces-244149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74519CA1B58
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 299E4301819C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644182D9787;
	Wed,  3 Dec 2025 21:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mLH841WJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A913E2D0C92
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764798385; cv=none; b=IfgVDAkA4VtKYccf7u2g2nXkuufb07gxsW7Z4bSQPdmuNRmxQcgCUEuOgyGqfKDNjNTOF5kGz5DDYlplPRG1Yz65scGKDsYhFERnOyd3NqbSxGOyBVImKhFg5AYleEOsht50AM2G2qCjTGzTXn7ihXigOAZIWcclcyOr64ieCFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764798385; c=relaxed/simple;
	bh=Pz0LCWmTmPHXMcS5g7MZaY8Z5r70cZFQcxUroXiLnz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bzA4Nh47BGH4QBw/faMt2oPXgKBGZ18abpMo6F6mUUQL144yqzuqHOnmWk9QVMPiL8kQPOSrhbBu1GAYdLsbUBL93HV1miS8K4P5jYfQ0vzmvW6jqNaXGwiRjLQYx0Wf8MJVZxwt3CoJzFkKqckbA1DeJvs7JG5jUp5slPLkOZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mLH841WJ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso314376b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764798383; x=1765403183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=unZdatKDfaPl4fyNDfiMrsCGtVnCfg5aUkCrWXueqsc=;
        b=mLH841WJaL6NQ5kONMi7PqaT29EX/qXAQbD1CEEvBOuulY40hMI6tKjdYpZuoG3k5/
         2qYj97PPjC7NXpwz5zpQZ8PsXt9oCU7noR+/9lzQCowvHwd5Uou27rnd8R+Aq4sRfmTw
         hihoUECBiNQZfyWZV4HE/2TedjBdLGAVTZoYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764798383; x=1765403183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=unZdatKDfaPl4fyNDfiMrsCGtVnCfg5aUkCrWXueqsc=;
        b=M3G8fi+w7h39Oh2++NzMt2nV76F2HALg/6g3SltKAeQdPRAjc/j/QETyiSpEk1GRqy
         rUpeucgY10G3Qwbb2mW53xm0P1lOLQITncFsHwPLOiHPV0+cbjrUch0Aou1mO9W94ogA
         GiRTj8Jh8XNjdnNcmuZa7AfYt5b/gzC8LC9g/f3L/m2ao/Httecsivv7b3qD6R/EZrPy
         iJL6Dra/VhnxTe+ppRuqmpVXYr2Z1bMKOjGDoaQTfsXifHCOfyoJx/h4uJcAf4g65TA9
         Bp3Xel0j6pV4va+VwBcDKaqgILxPp/CscQiHqjs0tALbOZNX6tbJKx27F4RXVd2R2Zyd
         YRUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTfteQgTIzBr1ozkynLf/26e6EZ6eI3pToO2IUVYgC30rtGkz2x9MfTBRUrn2dmnV6e6gcui1eeHEF@vger.kernel.org
X-Gm-Message-State: AOJu0YxBbFWnuVp+YlnSmbg8nbWW8nqmMSxXtLJJTvbRhygHyQXQmXja
	cN31Fe+ekDyJJsEwMmp0Tf8WvFvplf6U0NOOAMEUup8O71gsHZKAQG/IXyKXlH+pFg==
X-Gm-Gg: ASbGncsGcXQa0yEBS+EhRVBDsxPVuWA8ad+CHABGZx/lZXK3kKvgSUYGKxKia8Ymwwn
	fXm6Jgw+azWyMC3LaVI4qmX0pjrwMr/tE7hroXVewmro4GdfADcnc9eomtid3iw5lFo38DeJrH3
	vUwkkZoJv1H9TrUxCTK9GNYXXVNmgPTlwiTJKZrbza26U8HEbuegcdgEl7xYp4G86Ws8yy4rYey
	FVCsyGqmiAT2euj8MM2T9jAhprXFukdLBwCYSWMunJT4rKzoyqscSG6ic1louLMnVOFW2zRcYK1
	poaV+S2+gwLcgB2pyj+YuBr0WR7Q0XcK9DAtxU9wLQxJaPcQwwDqMZ+oNJ/rf5oo7fdKlpbFIk5
	S8u5Cr5ccFPh8sMUbuyCIXLl7oa45i8/aj+SQCBagJbsPHVzAmDpyi366biCKpqB93Mep8w5mzP
	DfK8wJRdqlMZ+Fu4CDuPjDrtMgmaFb1FdhVsUywXX/jKqYRyMJzGg6BFoBLLi0
X-Google-Smtp-Source: AGHT+IFvUUHgZfAcVFFc7DhCqAynkqIltRjiHfqkI2ovYfWjzTG4w6qTFCGmfN82OTdFMGVzSXBqQw==
X-Received: by 2002:a05:7022:6387:b0:11b:9386:7ed3 with SMTP id a92af1059eb24-11df64bf8fcmr539452c88.48.1764798382704;
        Wed, 03 Dec 2025 13:46:22 -0800 (PST)
Received: from localhost ([2a00:79e0:2e7c:8:e953:f750:77d0:7f01])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11dcb067088sm61855605c88.10.2025.12.03.13.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 13:46:21 -0800 (PST)
Date: Wed, 3 Dec 2025 13:46:19 -0800
From: Brian Norris <briannorris@chromium.org>
To: Karel Balej <balejk@matfyz.cz>
Cc: Johannes Berg <johannes@sipsolutions.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Ulf Hansson <ulf.hansson@linaro.org>, Frank Li <Frank.Li@nxp.com>,
	linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mmc@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Jeff Chen <jeff.chen_1@nxp.com>,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [DONOTAPPLY RFC PATCH v2 3/4] DONOTMERGE: net: mwifiex: fix
 timeouts with the SD8777 chip
Message-ID: <aTCvq7aN_WMts6hm@google.com>
References: <20251026182602.26464-1-balejk@matfyz.cz>
 <20251026182602.26464-4-balejk@matfyz.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026182602.26464-4-balejk@matfyz.cz>

Hi,

On Sun, Oct 26, 2025 at 07:20:40PM +0100, Karel Balej wrote:
> 	[ 2101.211178] mwifiex_sdio mmc2:0001:1: info: MWIFIEX VERSION: mwifiex 1.0 (14.75.33.p119)
... 
> Afterwards, a bisect was
> performed which first indicated the commit 808bbebcc8fc ("mwifiex: add
> Tx status support for EAPOL packets") introduced in the v3.18-v3.19
> cycle.
> 
> Reverting this commit (and the following one, commit 18ca43823f3c
> ("mwifiex: add Tx status support for ACTION frames"), to facilitate a
> clean revert) fixed the timeouts for v3.19, but during the next cycle,
> v3.19-v4.0, another breakage was introduced via commit 84b313b35f81
> ("mwifiex: make tx packet 64 byte DMA aligned").
> 
> Reverting all three commits fixed the timeouts on the current mainline
> kernel also. This patch contains the minimal changes needed to achieve
> that derived from the full revert commits.
...

(Trimmed the commit message down to the breaking commits, and the
version info)

From the looks of it, you're dealing with incompatible changes made in
the Marvell firmware API. It seems that you have a "version 14"
firmware, and the timeline of these mwifiex changes (~2014) is approx
when linux-firmware started seeing v15 and v16 firmware. It *might* be
OK to try add some versioning to these structs and padding changes, and
make a choice based on adapter->fw_release_number or
adapter->fw_cap_info. It might be ugly and error-prone, but possible...

Or if the FW versioning doesn't work out, it's possible we could
specifically flag these quirks for SD8777 somehow.

> Signed-off-by: Karel Balej <balejk@matfyz.cz>
> ---
>  drivers/net/wireless/marvell/mwifiex/fw.h     |  4 +---
>  drivers/net/wireless/marvell/mwifiex/sta_tx.c | 10 ++--------
>  2 files changed, 3 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
> index e9e896606912..5c4c3363c7de 100644
> --- a/drivers/net/wireless/marvell/mwifiex/fw.h
> +++ b/drivers/net/wireless/marvell/mwifiex/fw.h
> @@ -690,9 +690,7 @@ struct txpd {
>  	u8 priority;
>  	u8 flags;
>  	u8 pkt_delay_2ms;
> -	u8 reserved1[2];
> -	u8 tx_token_id;
> -	u8 reserved[2];
> +	u8 reserved1;

I'm inferring that 'sizeof(struct txpd)' (also spelled
'sizeof(*local_tx_pd)' below) is relevant, and that this struct probably
should retain the smaller size for FW version 14.

Maybe you need a new 'struct txpd_v14' layout, and embed that inside
'struct txpd'.

>  } __packed;
>  
>  struct rxpd {
> diff --git a/drivers/net/wireless/marvell/mwifiex/sta_tx.c b/drivers/net/wireless/marvell/mwifiex/sta_tx.c
> index 9d0ef04ebe02..857eb22f4c24 100644
> --- a/drivers/net/wireless/marvell/mwifiex/sta_tx.c
> +++ b/drivers/net/wireless/marvell/mwifiex/sta_tx.c
> @@ -41,8 +41,8 @@ void mwifiex_process_sta_txpd(struct mwifiex_private *priv,
>  
>  	pkt_type = mwifiex_is_skb_mgmt_frame(skb) ? PKT_TYPE_MGMT : 0;
>  
> -	pad = ((uintptr_t)skb->data - (sizeof(*local_tx_pd) + hroom)) &
> -	       (MWIFIEX_DMA_ALIGN_SZ - 1);
> +	pad = (4 - (((void *)skb->data - NULL) & 0x3)) % 4;

It's not clear to me whether your v14 FW doesn't like the 64-byte
alignment, or if it didn't like the new txpd header size/layout, or
both. But obviously this line won't fly, with magic numbers and all. It
will need to be expressed in terms of macros (MWIFIEX_DMA_ALIGN_SZ, or a
"V14" version of that; and sizeof(...)).

> +
>  	skb_push(skb, sizeof(*local_tx_pd) + pad);
>  
>  	local_tx_pd = (struct txpd *) skb->data;
> @@ -58,12 +58,6 @@ void mwifiex_process_sta_txpd(struct mwifiex_private *priv,
>  	local_tx_pd->pkt_delay_2ms =
>  				mwifiex_wmm_compute_drv_pkt_delay(priv, skb);
>  
> -	if (tx_info->flags & MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ||
> -	    tx_info->flags & MWIFIEX_BUF_FLAG_ACTION_TX_STATUS) {
> -		local_tx_pd->tx_token_id = tx_info->ack_frame_id;
> -		local_tx_pd->flags |= MWIFIEX_TXPD_FLAGS_REQ_TX_STATUS;
> -	}

Rather than dropping this block, would it work to also check:

	adapter->fw_api_ver >= MWIFIEX_FW_V15

?

Brian

> -
>  	if (local_tx_pd->priority <
>  	    ARRAY_SIZE(priv->wmm.user_pri_pkt_tx_ctrl))
>  		/*
> -- 
> 2.51.1
> 

