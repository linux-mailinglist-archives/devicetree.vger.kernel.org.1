Return-Path: <devicetree+bounces-308782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fWrbF23CJ2q71gIAu9opvQ
	(envelope-from <devicetree+bounces-308782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:36:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7E165D465
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:36:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BD30PwzL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308782-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308782-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B1EA303F7C1
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B6D3DD512;
	Tue,  9 Jun 2026 07:34:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FC03DD850
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:34:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990462; cv=none; b=U8qh5JjRvWhWDhHOMObWBaI8osLtQ6xK6FoUorseUm2GY4W9jiWfF8JppVEV3lefwkN99oLF+wPlDvFyo8qSL231gAmKuboWwhx3iuxCpXd/NR2J+rsC57cDtCqXxK9U5ZsX+4H/2Hq/y90DiACoSUuaETWDAjDEBFyZxBh5GZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990462; c=relaxed/simple;
	bh=ZmI9AW2O3V8qrVXiliMS9DUM/RILyY1t/K1HqWqUqAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aywW2bnJFy49aqSvlK+n4ZofHH8vDKsnCX2AOwgl84YmgjWbrsntHRtxffJNxVZiRwGwxuEl1oD0I+pzXRWc+YRB0W5L4ctK9CqPGohryRgqrSkQJlAkdherAtVZ5h05V4uoOGdY7WnE67pzalpKbLQLuKzFdiQORHk9UANslBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BD30PwzL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2F041F00893;
	Tue,  9 Jun 2026 07:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990460;
	bh=GKMXiBpjL54krW7Ij3+vSOaYgR+z4B8wc3h+zOk8PiQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BD30PwzLcfG31rqzM+qLb6RcLshde+UxruSa0nnzQTmVMjzqK496TP+MDgv2mc4oa
	 pmH4fqB8YojZATjJHasr7CycBq40b9xFwx4KQ3AfqDURUVY9O7VKjufaf389uwHIoc
	 FGEcHGo2IKeOBpL5/QNDh1t0Kwdlg7zsWh2udv9PQeeTYN/PnpDcnIUvWwNAcN8NWb
	 t4QXcew63MwP+wYiO5z98ZhWmZuBWFJkuf3EMZ0vNdJ6iZ7Ac4gcZ1HaXIHi1h7lvv
	 S/VHKWzY+YQiKSV1ynXV+WwEzUsnWfHl+Kf91a0p5JWAbuL1jEsQuIBKfWeyfiU1eh
	 Nl6Lap3wo5RCA==
Date: Tue, 9 Jun 2026 09:34:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, 
	devicetree@vger.kernel.org, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Subject: Re: [PATCH 2/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Message-ID: <20260609-visionary-truthful-viper-ceff75@quoll>
References: <20260609030623.17404-1-zhangyi@everest-semi.com>
 <20260609030623.17404-3-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609030623.17404-3-zhangyi@everest-semi.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308782-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B7E165D465

On Tue, Jun 09, 2026 at 11:06:18AM +0800, Zhang Yi wrote:
> Fix the issue with incorrect modifications to mclk_src

What issue? Your commit msgs are really poor - explain nothing. You just
duplicated subject... and anything can be a fix.

> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  sound/soc/codecs/es8389.c | 12 ++++--------
>  sound/soc/codecs/es8389.h |  5 ++---
>  2 files changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 9c8164916..7a9d5d42a 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -36,8 +36,8 @@ struct	es8389_private {
>  	unsigned int sysclk;
>  	int mastermode;
>  
> -	u8 mclk_src;
>  	u8 vddd;
> +	bool mclk_src;
>  	int version;
>  	enum snd_soc_bias_level bias_level;
>  };
> @@ -607,9 +607,9 @@ static int es8389_pcm_hw_params(struct snd_pcm_substream *substream,
>  	regmap_update_bits(es8389->regmap, ES8389_ADC_FORMAT_MUTE, ES8389_DATA_LEN_MASK, state);
>  	regmap_update_bits(es8389->regmap, ES8389_DAC_FORMAT_MUTE, ES8389_DATA_LEN_MASK, state);
>  
> -	if (es8389->mclk_src == ES8389_SCLK_PIN) {
> +	if (es8389->mclk_src) {
>  		regmap_update_bits(es8389->regmap, ES8389_MASTER_CLK,
> -					ES8389_MCLK_SOURCE, es8389->mclk_src);
> +					ES8389_MCLK_MASK, ES8389_MCLK_FROM_SCLK);
>  		es8389->sysclk = params_channels(params) * params_width(params) * params_rate(params);
>  	}
>  
> @@ -897,11 +897,7 @@ static int es8389_probe(struct snd_soc_component *component)
>  	int ret, i;
>  	struct es8389_private *es8389 = snd_soc_component_get_drvdata(component);
>  
> -	ret = device_property_read_u8(component->dev, "everest,mclk-src", &es8389->mclk_src);

Why are you changing implemented ABI?

Best regards,
Krzysztof


