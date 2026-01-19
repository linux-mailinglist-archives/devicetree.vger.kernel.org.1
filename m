Return-Path: <devicetree+bounces-257032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0922FD3B556
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3DE33000DCD
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BDC361DCE;
	Mon, 19 Jan 2026 18:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DwCbk89Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0104535FF53
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846525; cv=none; b=X4xha4s8pKnqKhqtJlWRjlyy0+wYnMdzVyRZzXcm7wyz1yP5i/upTIWBNm0s5REE7np1I/Ih5soT3VVqnZxldS24kChzvqFW8Ix4H/lIf6unSCpb1g+sMWgJkNhwZw/8/ZWR6a99n6N3ioIf1sBQH+uQX+HEMPU6LiB3MzM7ETY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846525; c=relaxed/simple;
	bh=m+Pn7jarKNpf03UF+yoC3DqAXPbvISf/cH1u8TsRRAo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Twzq2DDSSVK+BrGAT4ah2i1KC3OuIDrg12nZlWX8lEzfNJoOAFev+Arf8/LGn5toGezhGPamLxsa1pab1t/VznuVDXcqZKjW1tAdytrQO6letmEiQ3qIIbyWjRTJ63VV90y0yz0gyf4pgp+k4AZKTZk4T/1QijVZ/75aYupWYQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DwCbk89Q; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b872de50c91so715094966b.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768846522; x=1769451322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=txeaoc1/FnFGAR4hVY6E0qC+7bbG67qxJt1YMnZB4MY=;
        b=DwCbk89Qr2VOvPA/GyvY18tlZt2/DUQ2MzNkH+KMOdlcqC5luoKHXtjR24M8VdK+dO
         eXkbuU597VQn5EkpwcsIfePWN8eZOaXhJE63m8VHYjze8HjpZh1HEFEsO48P1U1G/jnn
         x8zemmhEPoK9HLd7QgydVc76uV8kxqo6vwkm2ri7yIqF0mtbcggFPiwDH1hRoP2FEo76
         Zw2RU30yYMUGy665Otl648h2T6CuaVjQAiQkt5NYr3XGGjqwontls7C/tBLos/1hnYR+
         gjAP9iwFffTzfUZ/Rh5WdW6jNJL0vqwnDajjnX5JMtmBMX5KlWVkXPQuSionGzpIdqDB
         97ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846522; x=1769451322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=txeaoc1/FnFGAR4hVY6E0qC+7bbG67qxJt1YMnZB4MY=;
        b=RcKBUqNQwqyPdliMcee6Dh4+A2GnvQsu1lFGTYEblzBss3aNMvPoJeMcA0aBTouior
         2IluWN1sCWAMTox+d7RRVgFkNRAt+/QmTtXl+kpPIQCKJnm7/fjeaI6iyKZbna9joRDB
         8rCSQq5it4JIH746YVxa3pkJQUAIQMu1p78PRjFJRAcmELw3slcCqICintoF/WAvZPeS
         vWOxJkLH/F2Z+eD+WjwWOvHKIsYQAmm7JhJttUDHKdVrkfmVO4Sx7Cm6aG/fo/nMYBoe
         AU99jkCr4TWUbu7ssFwFBuTeB4d7URTVf34ZTOXZry3tcfvh/MJtyYV2Me4LzhwbiaIt
         IY3A==
X-Forwarded-Encrypted: i=1; AJvYcCWZG6pI7kvJhD3cazRJJZIRTXenOHr2l8VrTAoOGgNM46srbuFt5RQBCMVqZOdSZyMrNo+GDUpoc6kt@vger.kernel.org
X-Gm-Message-State: AOJu0YzlS3uHCUa+QsRqhTouFaAsS7GwQLxoJKwiM6ZkU9ZuZtQvb74N
	4Gm+oWbWp4G7Ix+83Wl1ujTti1o+qc1xop02KgDvozv3ABlDNik7A0RIFJdhAhs3fSI=
X-Gm-Gg: AY/fxX40RZ4zXIVXbHtp4E5quDRH14aWZ7QiDXpb35Nx2oPi40hYSUwHDN6XLfPifTI
	oD0kw/CMVTWK7rAOXNq91IKtic+dWmKXJ34kg+jua9EaKBcIeeKjo1eaVEyAxYiaE63u/lbJMgI
	1LTEWdIDOxrEyCDZsnZe7HGJRlhKXHXtdoIl+i9l4UyQFpMbWoeWdNQvUnrqDc7ovRox0TfCmPF
	OIYh6Phj0vLySjT1wbbNV/CZfC5lTBYcKSLqaHrC9GE3Z/ctl/DBOJGLRpRTB/T59+iufr5I2Fv
	vzXi4/eiM8Yv2gesY8kroURmuRyjj/Myh8pwlBNQRabMTGcF+8/sTtk8OIsO3ZTnqbo7f7kzoaY
	sBdoYuW+8S3glB93Vk1EKi4qpgxmOMhskzWxOt+euJopfWTF7+WaNiG39XZBvFCf2KOlOeE4pSc
	cttS2TR+eV8HDrOqClDw==
X-Received: by 2002:a17:907:268d:b0:b86:fd46:72f with SMTP id a640c23a62f3a-b8792d489f3mr934010166b.10.1768846522152;
        Mon, 19 Jan 2026 10:15:22 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879513e9dcsm1186284066b.6.2026.01.19.10.15.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:15:21 -0800 (PST)
Message-ID: <9e76a2ec-1684-42b6-b2e0-6f7935c95d61@tuxon.dev>
Date: Mon, 19 Jan 2026 20:15:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] PCI: rzg3s-host: Make inbound window setup
 SoC-specific
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-9-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-9-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, John,

On 1/14/26 17:33, John Madieu wrote:
> Different RZ/G3 SoCs have different requirements for inbound window
> configuration. While both require power-of-2 sized windows (4KB * 2^N),
> they differ in how non-power-of-2 memory regions are handled:

AFAICT, both RZ/G3S and RZ/G3E HW manuals document the setup of the inbound 
windows the same. Please point me to the proper chapter in case I'm wrong.

Moreover, I tested the code from rzg3e_pcie_set_inbound_windows() (proposed in 
patch 12/16) to setup the inbound window on RZ/G3S and I see no differences in 
terms of mapped regions and functionality. So, unless I'm missing something, I 
think better to use the same code for window setup.

Thank you,
Claudiu

> 
> - RZ/G3S: Uses roundup_pow_of_two() to create a single larger window
>    that may over-map beyond the actual memory region. This approach is
>    simpler but relies on hardware tolerance for over-mapped regions.
> 
> - RZ/G3E: Requires precise coverage without over-mapping. Memory regions
>    must be split into multiple power-of-2 windows, and window sizes must
>    respect address alignment constraints to ensure proper hardware address
>    decoding.
> 
> Move the inbound window sizing and splitting logic to a SoC-specific
> callback to accommodate these differences. This allows each SoC variant
> to implement its own window setup strategy while maintaining the common
> window programming sequence.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>   drivers/pci/controller/pcie-rzg3s-host.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index fcedccadecf6..a9773e5f25c7 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -223,6 +223,7 @@ struct rzg3s_pcie_host;
>   /**
>    * struct rzg3s_pcie_soc_data - SoC specific data
>    * @init_phy: PHY initialization function
> + * @set_inbound_windows: SoC-specific function to set up inbound windows
>    * @power_resets: array with the resets that need to be de-asserted after
>    *                power-on
>    * @cfg_resets: array with the resets that need to be de-asserted after
> @@ -233,6 +234,9 @@ struct rzg3s_pcie_host;
>    */
>   struct rzg3s_pcie_soc_data {
>   	int (*init_phy)(struct rzg3s_pcie_host *host);
> +	int (*set_inbound_windows)(struct rzg3s_pcie_host *host,
> +				   struct resource_entry *entry,
> +				   int *index);
>   	const char * const *power_resets;
>   	const char * const *cfg_resets;
>   	struct rzg3s_sysc_info sysc_info;
> @@ -1354,7 +1358,7 @@ static int rzg3s_pcie_parse_map_dma_ranges(struct rzg3s_pcie_host *host)
>   	int i = 0, ret;
>   
>   	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> -		ret = rzg3s_pcie_set_inbound_windows(host, entry, &i);
> +		ret = host->data->set_inbound_windows(host, entry, &i);
>   		if (ret)
>   			return ret;
>   	}
> @@ -1753,6 +1757,7 @@ static const struct rzg3s_pcie_soc_data rzg3s_soc_data = {
>   	.cfg_resets = rzg3s_soc_cfg_resets,
>   	.num_cfg_resets = ARRAY_SIZE(rzg3s_soc_cfg_resets),
>   	.init_phy = rzg3s_soc_pcie_init_phy,
> +	.set_inbound_windows = rzg3s_pcie_set_inbound_windows,
>   	.sysc_info = {
>   		.rst_rsm_b = {
>   			.offset = 0xd74,


