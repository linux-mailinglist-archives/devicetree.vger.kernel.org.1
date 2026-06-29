Return-Path: <devicetree+bounces-317201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /HuzIfCfQmpc+wkAu9opvQ
	(envelope-from <devicetree+bounces-317201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:40:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7126DD6C1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:40:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=UjqWu2SS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317201-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317201-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FB743026AFB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3670E472784;
	Mon, 29 Jun 2026 16:38:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAE44657E0
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 16:38:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782751113; cv=none; b=Bx6+g/NFFQfUlfYXDUBPHMnYkbW7PLROmc+qDhYASbMZSLJl1xOojsQAFTG2Vu49z2SmyfAbAewtpYy74qzKmikSARPKmmOI8jWFWlytwqljQQ13cmT9GvMp+C4yxYKZ8WvadQJzTLRe4G4HJGY9A+Cp4v7Z3vSolrUqDEfEGDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782751113; c=relaxed/simple;
	bh=8QMGfKWHrJeLkYDpL5CEDwN6QIg7bPP/VRES8dFKzE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=koX/yfybwLmG5ubOv/e0/RaHjzvUbvLd7V1IbT0jkjk+tIsbnWxF1eDMo1JgPrKW0/7HH3I1Q/7I1RcVoPqTF72LHifMnt82zpklWu5bf2eiao0LCN4b2efLJckmnkILO53wdx9wwhf7zpQsoh7ymQUxMTSUkPGSfEJfHLF2ezY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=UjqWu2SS; arc=none smtp.client-ip=209.85.160.42
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-448b89ad70fso243798fac.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782751108; x=1783355908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=68Y2SPxYfxzmQx5v613mkpO9So+RFHEtHHsWxF6WE1Y=;
        b=UjqWu2SSZSjGHetyWUwjcL5DQmmP/xifef8oHdXAH/uqLT6YlD9OFpF/oKefcRvyzM
         YMpnUzLwv/Q7xUREcc82UTYzUbrXVuT24diPolbvRPS6nzgMrd+SOpXlrCLm+kiESaDl
         aV3P9u4Li0s4FIiocNagS9z9QerGG5vIzJCeG73Ng6SuxSBF+IoI1Tvhl3obXyKFdXb/
         79j92JGxQugBTbRGaNSgc/jU05mrLIcF6l/etsTMfM2v8pA4M9VVsMWxGFiud3fgnIMM
         R16BUkF517GQ6dvLxqtUSSmwWP6S7Sg3xxf3gum3bp9ASUhTZ8Q5P9k6TyCwnBdezOYh
         T1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782751108; x=1783355908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68Y2SPxYfxzmQx5v613mkpO9So+RFHEtHHsWxF6WE1Y=;
        b=mfYtY2f9szXXuO1yYVZjVIyT8epiVYH86kaIudAcggBM5174bcDpYOvx4sYnH9R2sb
         4m5YQ+Xs1Y7Xn931vIQpV3jJaM9QzC+spJfimAbts5d5Cj6d8RnUlGb9DGTuiBW9a11+
         F6pYPeb/Z44BZBbKwVo/jy9VpAf/CCw7AHAhvagpstvdTjS5x1JhvJ7glL1QCVgEA5Qw
         BnFxBAx3w2xvUV7UvubgD7YJ+e5SOy1XhqoqId1bKocYB6Q1RR89vcDUBxqR3x7YHNr8
         D99cwMkGT+RJpH/gVWSIDdxCUEWL0mzb76VaeiG3c3LSZZf3BnxJkPTf86Ku4hwAwo1C
         jJWA==
X-Forwarded-Encrypted: i=1; AFNElJ/OFmJngGZsJvMDL1E4DDIbuz+sc2lidRaYWBVr6xcVv/de5HwCaMv99LtC6gmUr4s0RCsphrWQTST1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj4fTOOYP7Fw0PmTTVf223OpgUwyMw6W+Dzl25qS6IuASvjEcY
	/jz+Nd9lhiPT5dOXIfz8hV16tC8XJ+ug2xyo01wJa9Lt4BJb0q8thEBcbbWh4g/p7NY=
X-Gm-Gg: AfdE7cnSd7T+QGmbAlcP5h0SjyxnX3Td+jh/LXfF9afcGukCwe2JF/y0hGMZa/rHQWp
	3OiX3R73PxsUXwMWEs3rhgaSygrraOSKANhXTgOr8V0zx7fH1zOg5SqqgWwPdA5YeaykGgyuiXt
	S0gz0ykvT1VfaiZ6Lt/It7fpuW9L+TuddYi2S7ESZ+abUFd+tiXAB1NfC4PkCTHUHYHeLl6UPz7
	LDPnKf5xNX6i2z0Ol2M/i909EaW66fVwUlvhiJIa24GUqVa5O4RVbLAcW1G8zyzuaMpg7aVvw++
	4jcz3TBP0EcMUjeKFBKnlM0V4ba53zq+dy9uZ3ax2kvqIwKYcGtWhEOTV0tSOUKcJMNQ1b0fkVs
	aSmRig97pWlm3mIeFNjxSStkjuuV0HwiT6YRd0hT+ZVc1Ie05OEnjV7Px7iFqtpSSZkBOJdsRMq
	rW8tH+6PTt6hqa0H2hyu5w8YPTlA9vCbeUw+SX2g7+IErlbXtFJ+sdZZf14XZIeeE=
X-Received: by 2002:a05:6870:709f:b0:43d:1689:ed9c with SMTP id 586e51a60fabf-448dc67bc00mr177521fac.18.1782751107867;
        Mon, 29 Jun 2026 09:38:27 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:3533:aa22:9a69:df1c? ([2600:8803:e7e4:500:3533:aa22:9a69:df1c])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-448dc1019f5sm185503fac.17.2026.06.29.09.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 09:38:27 -0700 (PDT)
Message-ID: <8da7db13-5c6a-42cf-8546-f0e580c3b278@baylibre.com>
Date: Mon, 29 Jun 2026 11:38:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] iio: adc: Add ti-ads1263-adc2 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-7-4b1b231325ba@gmail.com>
 <caf89e08-6ce1-4dbb-adc1-7fbb2a60fd7b@baylibre.com>
 <DJKYDBR2CR3V.JU80TA4QDQLT@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DJKYDBR2CR3V.JU80TA4QDQLT@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317201-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C7126DD6C1

On 6/28/26 3:08 PM, Kurt Borja wrote:
> On Sun Jun 28, 2026 at 12:22 PM -05, David Lechner wrote:
>> On 6/28/26 12:36 AM, Kurt Borja wrote:
>>> The TI ADS1263 embeds a second 24-bit delta-sigma ADC (ADC2) with its
>>> own input mux, reference, gain and sample-rate selection.
>>>
>>> Model ADC2 as a separate IIO device on the auxiliary bus: the ti-ads1262
>>> SPI driver instantiates the auxiliary device and exports a small set of
>>> TI_ADS1262-namespaced helpers for the conversion and register accesses
>>> that must go through the shared bus. ADC2 channels are derived from the
>>> parent's configured channels.
>>>
>> Can these just be additional channels in the main iio device rather
>> than a separate iio device?
> 
> I guess we can do it, but wouldn't it be quite a mess? I think doing it
> that way adds a lot of complexity: channel naming, available scan masks
> (because both ADCs can be sampled at the same time), optimized software
> sequencing would only work in ADC1 channels, ADC2 doesn't have a DRDY
> IRQ, etc.

Channel naming is easy, e.g. just add 100 to channel and channel2 for
ADC1 and 200 for ADC2.

And if ADC2 is mostly for diagnostics, do we really care about trying
to optimize it?

> 
> IMO separating both drivers makes everything simpler, easier to
> understand and easier to maintain in the future.
> 

Sure, I don't have any strong objection to doing this way. We just
usually try to avoid multiple IIO devices for a single chip. Although
one of the exceptions to this is when a chip has independent cores.
I guess this fits that description, although it is a little muddled due
to sharing the same input pins, sensor bias, IDACs and probably a few
other things - i.e. doing buffered reads on both cores at the same time
requires a static IDAC output to avoid issues.

