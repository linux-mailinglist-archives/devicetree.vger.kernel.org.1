Return-Path: <devicetree+bounces-321324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ayVG6nKS2pZaQEAu9opvQ
	(envelope-from <devicetree+bounces-321324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:32:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24696712A24
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:32:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.com header.s=google header.b=ehfflhrQ;
	dmarc=pass (policy=quarantine) header.from=suse.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321324-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32366308AFF5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBD6385D96;
	Mon,  6 Jul 2026 15:20:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249A838239E
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 15:20:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783351253; cv=none; b=KolwkjCxNSZetJn2PBaKPS+9Eau0h4I5R61q00lI0K/zvUvPYgxUbp39wz50aHSynVlYWa6O/Q/tXhUwXa6cBqQhwbmnNHaYAO84ILNN01bIa4ghoy7hqELdk8jGuFCV7po5CEzuiVtFRmVi5sRwpqT5q5oaTTBTrXuXv5BsocM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783351253; c=relaxed/simple;
	bh=5RAQ/vzRARHcaE/i0yXQNhBm4ZYZtzy48qsvVQTE/JE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NMrEMxiKnsqfTDlNcial8xB1HmAhmArQtq/aYNWJJ5QW7e2zsHrJ6RiaKo7C/4RLOqoape5xWDskFLtR1djj6G8l9MZ2nnkQIQLkT9fQq7umIw/u9u7sWyhOwsgHIelUsa1FuMZaOiCr/tSNipPldAA2H3LXhLMYVgMZMh+JKiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ehfflhrQ; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-493c83474ddso28996345e9.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 08:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1783351250; x=1783956050; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jA188Me9AgAO7O1Is8f9n+gtNtSnCCBgUgpsHEqHR9Q=;
        b=ehfflhrQkCJPCF4Ye6McnXgQVlGPP9Bj79W8wfMFil05k248FAzhge187g77s5mMWG
         +Q7HdYGNVm6rg4ueacksvJDrRmxwmKwKYy2CF9qoLLW6amGZAI8m2ygz5s/lLdhjNElQ
         86RwavNzy9CBoueHtdxoNGiuu3yMOl5KyhI8UnYB3oFqi5boktVK2BuOQppZ8E+EU7nN
         PUhS2QoHLYsQEFgUXGi/Trjyj12UQd6CRNQPU/YvfwuqfmtL4776C27CX+bi64y8ZbIe
         Y7DdjbckLwqyTr7kXp5QgqRWmblsyEm2kRyXBRHY7QWBIhEv9MWMiV+HiXX5avM/QuSr
         sKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783351250; x=1783956050;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jA188Me9AgAO7O1Is8f9n+gtNtSnCCBgUgpsHEqHR9Q=;
        b=S5PKsBJApAGkrux5KspXc+Np0bT5QQWLlqLRQwTSWcUvoumY8Xy3D3UV0k85nMf4hD
         /xL7jCQBxIsKf+AkCNd2lK7wMRR1/AzrmQMw2v0gPIILaoHAY9sXxMf6b4BJBOViUT80
         zOHyb3c65x1EjtEKzEynsKMlE5PspE5xqjPUFaMc6hRIxfYRdOYSaAqyfItaYkUEG8vH
         SDGRSe9c91paH7B4cls0lTGyLkVXqiA729vpdMfzk9kXkXzTZRvDsx4M/T02A0oH7RBP
         BghBkxccMZ885npDTpPEj85rUqb49JOmM3S4yvqe9D11e2TF7BRMypxdWV8aEngF/wwJ
         WgJA==
X-Forwarded-Encrypted: i=1; AHgh+Rq9juZV2aWhRS3mbqiJUJ+6i7S6hKuYyC8Vm9lNrdvdPoLaIqQBW4qhYlsXKc9Rb6CImhChP1VP7mYH@vger.kernel.org
X-Gm-Message-State: AOJu0YzfKIKDBOWwM+45JRbIfaGzNED1uLSFOSKR3z+qjlKstJnLY685
	MOrlfGQbv31MTd5K0yn/Efr46w39qgL/J9JrN1uO+f0VL0OLHngWqtP9BKZRW+4n92A=
X-Gm-Gg: AfdE7ck2n41q77H9wZpV+vhdDgB3mQ+UkKnVW0i0NFbh1UkXoj3lYQeifFENCRnr3Z5
	bn8kF+uOGpLsOZGeDJgbWucbfnE9p+pdbyBCupV64JlcmWb8QPH1OmZMkH5krDERe1JXAw1xzM+
	DruNAEQ+dJiu8ZiBu9sAwgG+dsp6vKQf25zKhCtsurhMeLtuayXgYNTD1iM9tos/UOZq6qxIiUk
	MhRn+boFBXX2CELFZLrATTYq4IEpMaiiUYXYyndwhfNjJr65egnTA8LZDZeHOuTbUfEWYRRvJvG
	ZPv/n+hsvGtDBbd8mbESJl09ayXZpSnwL5R1d6fbjqA+gpnqLh6Y2eiMFI9T1+7jM8xI07LqLXy
	ibb65tpgMKQlFEJB5/B9ReS93xCVEt6XkgRer4p8to2YixZINA81ctHiaXjJrQTamupqu3N3iTL
	ilwKV/XwAuSPMTlIvpxeEgEmwKVk/0sL7EYC28KIEJ4rYSEVntqUwd4P56q9d0
X-Received: by 2002:a05:600c:19cc:b0:492:5145:f054 with SMTP id 5b1f17b1804b1-493df0930a6mr12030995e9.26.1783351249504;
        Mon, 06 Jul 2026 08:20:49 -0700 (PDT)
Received: from [192.168.1.136] (48.85-85-171.dynamic.clientes.euskaltel.es. [85.85.171.48])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0960634sm27008175f8f.26.2026.07.06.08.20.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 08:20:48 -0700 (PDT)
Message-ID: <42e9c942-5b96-4cd4-a25b-51d1a7e8eff7@suse.com>
Date: Mon, 6 Jul 2026 17:20:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] pmdomain: mediatek: Add support for Direct CTL simple
 power sequence
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 ulfh@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, nfraprado@collabora.com, irving-ch.lin@mediatek.com,
 macpaul.lin@mediatek.com, aford173@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 justin.yeh@mediatek.com, kernel@collabora.com
References: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
 <20260701121920.19347-4-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20260701121920.19347-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321324-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[mbrugger@suse.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[suse.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mbrugger@suse.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,suse.com:from_mime,suse.com:dkim,suse.com:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24696712A24



On 01/07/2026 14:19, AngeloGioacchino Del Regno wrote:
> Some new SoCs like MT8196, MT6991, and others, have got one
> additional power controller (usually in the HFRP Multimedia
> block) which needs a simplified power on/off sequence while
> using Direct Control strategy.
> 
> Domains using the "simple power sequence" are not backed by
> the RTFF hardware, have no Bus Protection mechanism, lacks
> the ISO, PWR_ON, PWR_ON_2ND bits, and therefore get enabled
> automatically after getting out of reset.
> 
> This simple power sequence is then a subset of the full one
> as only needs the enablement of the specific power domain's
> clock input and reset (where, again, after getting out of
> reset, the ISO and PWR_ON bits are automatically internally
> getting flipped) to enable or disable (power on or off).
> 
> Moreover, the simple power sequence power domains guarantee
> that they always get enabled/disabled after executing the
> relevant power sequence (on/off) so, differently from the
> others, there is also no need to poll for a PWR_ACK.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   drivers/pmdomain/mediatek/mtk-pm-domains.c | 87 ++++++++++++++++++----
>   drivers/pmdomain/mediatek/mtk-pm-domains.h |  1 +
>   2 files changed, 72 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
> index db543d4b1813..5276adea1d04 100644
> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
> @@ -549,9 +549,11 @@ static int scpsys_ctl_pwrseq_on(struct scpsys_domain *pd)
>   	return 0;
>   }
>   
> -static void scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
> +static int scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
>   {
>   	struct scpsys *scpsys = pd->scpsys;
> +	bool tmp;
> +	int ret;
>   
>   	switch (pd->data->rtff_type) {
>   	case SCPSYS_RTFF_TYPE_GENERIC:
> @@ -583,6 +585,41 @@ static void scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
>   	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
>   	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_2ND_BIT);
>   	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_BIT);
> +
> +	/* wait until PWR_ACK = 0 */
> +	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
> +				 MTK_POLL_TIMEOUT);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int scpsys_simple_pwrseq_on(struct scpsys_domain *pd)
> +{
> +	struct scpsys *scpsys = pd->scpsys;
> +
> +	/* Enable subsys clock input and trigger power domain reset state */
> +	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_CLK_DIS_BIT);
> +	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
> +
> +	/* Wait for the hardware to stabilize */
> +	udelay(1);
> +
> +	/* Get out of reset: set power on */
> +	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
> +
> +	return 0;
> +}
> +
> +static int scpsys_simple_pwrseq_off(struct scpsys_domain *pd)
> +{
> +	struct scpsys *scpsys = pd->scpsys;
> +
> +	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
> +	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_CLK_DIS_BIT);
> +
> +	return 0;
>   }
>   
>   static int scpsys_modem_pwrseq_on(struct scpsys_domain *pd)
> @@ -605,14 +642,24 @@ static int scpsys_modem_pwrseq_on(struct scpsys_domain *pd)
>   	return 0;
>   }
>   
> -static void scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
> +static int scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
>   {
>   	struct scpsys *scpsys = pd->scpsys;
> +	bool tmp;
> +	int ret;
>   
>   	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_BIT);
>   
>   	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SKIP_RESET_B))
>   		regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
> +
> +	/* wait until PWR_ACK = 0 */
> +	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
> +				 MTK_POLL_TIMEOUT);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
>   }
>   
>   static int scpsys_power_on(struct generic_pm_domain *genpd)
> @@ -635,6 +682,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>   
>   	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
>   		ret = scpsys_modem_pwrseq_on(pd);
> +	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
> +		ret = scpsys_simple_pwrseq_on(pd);
>   	else
>   		ret = scpsys_ctl_pwrseq_on(pd);
>   
> @@ -662,9 +711,11 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>   			goto err_pwr_ack;
>   	}
>   
> -	ret = scpsys_sram_enable(pd);
> -	if (ret < 0)
> -		goto err_disable_subsys_clks;
> +	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
> +		ret = scpsys_sram_enable(pd);
> +		if (ret < 0)
> +			goto err_disable_subsys_clks;
> +	}
>   
>   	ret = scpsys_bus_protect_disable(pd, 0);
>   	if (ret < 0)
> @@ -682,7 +733,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>   err_enable_bus_protect:
>   	scpsys_bus_protect_enable(pd, 0);
>   err_disable_sram:
> -	scpsys_sram_disable(pd);
> +	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
> +		scpsys_sram_disable(pd);
>   err_disable_subsys_clks:
>   	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_STRICT_BUS_PROTECTION))
>   		clk_bulk_disable_unprepare(pd->num_subsys_clks,
> @@ -698,16 +750,17 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>   {
>   	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
>   	struct scpsys *scpsys = pd->scpsys;
> -	bool tmp;
>   	int ret;
>   
>   	ret = scpsys_bus_protect_enable(pd, 0);
>   	if (ret < 0)
>   		return ret;
>   
> -	ret = scpsys_sram_disable(pd);
> -	if (ret < 0)
> -		return ret;
> +	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
> +		ret = scpsys_sram_disable(pd);
> +		if (ret < 0)
> +			return ret;
> +	}
>   
>   	if (pd->data->ext_buck_iso_offs && MTK_SCPD_CAPS(pd, MTK_SCPD_EXT_BUCK_ISO))
>   		regmap_set_bits(scpsys->base, pd->data->ext_buck_iso_offs,
> @@ -721,15 +774,11 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>   
>   	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
>   		scpsys_modem_pwrseq_off(pd);
> +	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
> +		ret = scpsys_simple_pwrseq_off(pd);
>   	else
>   		scpsys_ctl_pwrseq_off(pd);
>   
> -	/* wait until PWR_ACK = 0 */
> -	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
> -				 MTK_POLL_TIMEOUT);
> -	if (ret < 0)
> -		return ret;
> -
>   	clk_bulk_disable_unprepare(pd->num_clks, pd->clks);
>   
>   	scpsys_regulator_disable(pd->supply);
> @@ -1083,6 +1132,12 @@ static int scpsys_get_bus_protection_legacy(struct device *dev, struct scpsys *s
>   		regmap[2] = NULL;
>   	}
>   
> +	/* If no access controllers are needed, don't allocate and don't fail */
> +	if (num_regmaps == 0) {
> +		scpsys->bus_prot = NULL;
> +		return 0;
> +	}
> +
>   	scpsys->bus_prot = devm_kmalloc_array(dev, num_regmaps,
>   					      sizeof(*scpsys->bus_prot), GFP_KERNEL);
>   	if (!scpsys->bus_prot)
> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
> index a5dca24cbc2f..092403de66fa 100644
> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
> @@ -17,6 +17,7 @@
>   #define MTK_SCPD_MODEM_PWRSEQ		BIT(10)
>   #define MTK_SCPD_SKIP_RESET_B		BIT(11)
>   #define MTK_SCPD_INFRA_PWR_CTL		BIT(12)
> +#define MTK_SCPD_SIMPLE_PWRSEQ		BIT(13)
>   #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data ?		\
>   					 (_scpd)->data->caps & (_x) :	\
>   					 (_scpd)->hwv_data->caps & (_x))


