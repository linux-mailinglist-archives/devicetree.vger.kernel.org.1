Return-Path: <devicetree+bounces-266342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFDOM42KlWkzSQIAu9opvQ
	(envelope-from <devicetree+bounces-266342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:46:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0E3154DD0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AF093010B8E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB99A33D6C1;
	Wed, 18 Feb 2026 09:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oTZen1MD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799AA318B99
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771408009; cv=none; b=eMsgO4B059CGwys9wFCyLwMBlA9iPV0LCZ4jq6xyztWZnr+jHRbaT3eeOpkv6lNHNY/6xB94IwXVwyzboCvHiWfEMsOb/MkHMhAbRITeUO2jmaOvW2tzcNZEOtTNxGbqWKRd8JS8Nwevi94dPs8ZTZKfG5/fZoaJmFoXyD51YTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771408009; c=relaxed/simple;
	bh=UihvISNIk9+AOhaYYMFDhcd9vzZsN2SB6ysEO9pCpvk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N3QD4ShvNootkqCMRakQGbasY62593dLLx5cR0ArJbiotBq5lr87FcFA6zcd/TvjsyY/4BJ6JAMnVQJngtKCbe2ALTik/3PnmPsxTv4DY5uVXxIU3GM6l/1W2BV515HDsVoUSwOBYH1sS3HLweZ2Q4BRLdXwlC0/hXWCLC6lszc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oTZen1MD; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so56510395e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 01:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1771408007; x=1772012807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YrnaX1knvD4GFXc1oYDQOQO8+n1c4cjNYq3Cxczmod0=;
        b=oTZen1MDAQQcvZTJnuUYikrpxj5meLZa+/QtzlCTESyt5cfGGGSgMnduc7cq4uqPx6
         geLD4qIee/6fraQUh+9ddfHew99YiJRYQKzyhXug4dUO4IRnlVGGu6vofNc4G1en1TyX
         SNg0BuCipsCOqawesEiVzuog8tj06SA/srUg9sRYUN7DqdLH2g1Gi+y+1O/CcqMTVBSS
         CHQSIdFV7yrFqm5ZGIWk53wOilzqbRYTshcxFuIVzmw17XK1JQuhGr5eiKk4jfqvaXv9
         OFU9G8RPfhwSAm0qEapqJXXGxLsTAl8bgwKhmbIizKhgWLc7pgFDMKDP0FZK7lhY+0ry
         LDeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771408007; x=1772012807;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrnaX1knvD4GFXc1oYDQOQO8+n1c4cjNYq3Cxczmod0=;
        b=Tn6XC3t2GP16qxTVlxQBpdeS0wjA2Z2/9VbwWQijuIDPaG7o/AcXkvlc9iv4MxEYNa
         WvW6kZAh7JipqUf0NK+njndlYwCfrHylqR/1qlRhKRKekCODCG1MfpR3bcGuob+KZ+3u
         22z74PG9srIgA5NW9Ol9llf8+/RSHjOU+3kWnD8PpPpRsJbgIDspQdK4egsfjFvwMSK0
         +3070NcMf/2UD+hoRDb4RSXikf0rcsuQFE0Sc6SN9qEorW0A7brMjvyd4KfgnzGObbxX
         CAyBpMF2qdqJ2S60pNZw0UXSHMxi4u+jp5RSnFG4rNK0wXCx6N68FFz51bHrm42MbzOI
         iANA==
X-Forwarded-Encrypted: i=1; AJvYcCUbfV6xnfX4LnvA9UczBPLD9SecGyfW9OVBnPW6xr8rf6eKCSFfRyo2S9UCOd3SdONgWXceYVvIHLVK@vger.kernel.org
X-Gm-Message-State: AOJu0YxrAmTIxItku7QSjFbHf2Gmeut5S5CBJl+crrYYnUcGYxrRNLCj
	+Rk+Fnc8mxTudJW+6JBBUwTsqHHbjvAKZSxoxog1O+2Q4g+U1OMTm8jDsQ4YisMMnJM=
X-Gm-Gg: AZuq6aIvUhVMaIn63M35zDKPMYfFwxGNAzzehVzfetnDkI9R5vpfLKfajzXvP1PYuqn
	NwJ5CDfpWkKUcqqtBUIMDhECOZNAWghYfK9ues0innIQmIWYr7sZRZqgBK9zbVw5UinviFbqXpi
	j3aR36Ke56jntuOl+B7E2hQKO80lfhn15VscWKt60ya8wWon8PDZmGyq7o3G8kjFFZ8yqkC1Olm
	YwA32jpEdNwiclfB+Kkc+77SwIu0XWMmd3JNPwEehwZuaeC2g10MXQarnHb2oIKuI6iZhmON1XR
	teqcpIX1mvj8Z4wPZZ8W/UOlJg+VUUc421df1mCBsIpL39wQ8vF4oUKQAZ+RCYLYmduMCAJeG/l
	/2xf9GUHTCSwg1C9IRSVlg1g8ovjM3GFMHI1BAyi5TNwWA393eKtDHye7YOwHsPNnavquv5IJak
	VHhY6YB0rIXgqPj3O62v9zZi0VNCaU+g==
X-Received: by 2002:a05:600c:314f:b0:483:6fe1:c057 with SMTP id 5b1f17b1804b1-48373a3f3bcmr271059935e9.21.1771408006823;
        Wed, 18 Feb 2026 01:46:46 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5ebd34sm620399235e9.7.2026.02.18.01.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 01:46:46 -0800 (PST)
Message-ID: <5dc39d5a-7de0-49e1-9cf9-da1bac765d0f@tuxon.dev>
Date: Wed, 18 Feb 2026 11:46:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/16] PCI: rzg3s-host: Add SoC-specific configuration
 and initialization callbacks
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260210113041.138430-1-john.madieu.xa@bp.renesas.com>
 <20260210113041.138430-11-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260210113041.138430-11-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266342-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 7B0E3154DD0
X-Rspamd-Action: no action

Hi, John,

On 2/10/26 13:30, John Madieu wrote:
> Add optional cfg_pre_init, cfg_post_init, and cfg_deinit callbacks
> to handle SoC-specific configuration methods. While RZ/G3S uses the Linux
> reset framework with dedicated reset lines, other SoC variants like RZ/G3E
> control configuration resets through PCIe AXI registers.
> 
> As Linux reset bulk API gracefully handles optional NULL reset lines
> (num_cfg_resets = 0 for RZ/G3E), the driver continues to use the standard
> reset framework when reset lines are available, while custom callbacks
> are only invoked when provided.
> 
> This provides a balanced pattern where:
> - RZ/G3S: Uses reset framework only, no callbacks needed
> - RZ/G3E: Sets num_cfg_resets=0, provides cfg_pre_init/cfg_post_init/cfg_deinit
> - In addition to that, RZ/G3E requires explicit cfg reset and clock turned off
>    to put the PCIe IP in a known state.
> 
> Add cfg_pre_init, cfg_post_init, and cfg_deinit callbacks to support
> custom configuration mechanism in preparation to RZ/G3E PCIe support.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> 
> Changes:
> 
> v5:
>   - Roerder got labels as per Claudiu's requirements
> 
> v4: No changes
> 
> v3: No changes
> 
> v2:
>   - Renamed callbacks as per Claudiu's comments
>   - Reworded goto labels to be consistents with callbacks
> 
>   drivers/pci/controller/pcie-rzg3s-host.c | 59 +++++++++++++++++-------
>   1 file changed, 42 insertions(+), 17 deletions(-)

[ ... ]

> @@ -1662,15 +1686,15 @@ static int rzg3s_pcie_suspend_noirq(struct device *dev)
>   
>   	clk_disable_unprepare(port->refclk);
>   
> -	ret = reset_control_bulk_assert(data->num_cfg_resets,
> -					host->cfg_resets);
> +	/* SoC-specific de-initialization */
> +	ret = data->config_deinit(host);
>   	if (ret)
>   		goto refclk_restore;
>   
>   	ret = reset_control_bulk_assert(data->num_power_resets,
>   					host->power_resets);
>   	if (ret)
> -		goto cfg_resets_restore;
> +		goto config_reinit;
>   
>   	ret = regmap_update_bits(sysc->regmap, sysc->info->rst_rsm_b.offset,
>   				 sysc->info->rst_rsm_b.mask,
> @@ -1684,9 +1708,8 @@ static int rzg3s_pcie_suspend_noirq(struct device *dev)
>   power_resets_restore:
>   	reset_control_bulk_deassert(data->num_power_resets,
>   				    host->power_resets);
> -cfg_resets_restore:
> -	reset_control_bulk_deassert(data->num_cfg_resets,
> -				    host->cfg_resets);
> +config_reinit:

If I'm not wrong, you need this, here, as well:

	if (data->config_pre_init)
		data->config_pre_init(host);

Thank you,
Claudiu

> +	data->config_post_init(host);
>   refclk_restore:
>   	clk_prepare_enable(port->refclk);
>   	pm_runtime_resume_and_get(dev);
> @@ -1755,6 +1778,8 @@ static const struct rzg3s_pcie_soc_data rzg3s_soc_data = {
>   	.num_power_resets = ARRAY_SIZE(rzg3s_soc_power_resets),
>   	.cfg_resets = rzg3s_soc_cfg_resets,
>   	.num_cfg_resets = ARRAY_SIZE(rzg3s_soc_cfg_resets),
> +	.config_post_init = rzg3s_config_post_init,
> +	.config_deinit = rzg3s_config_deinit,
>   	.init_phy = rzg3s_soc_pcie_init_phy,
>   	.sysc_info = {
>   		.rst_rsm_b = {


