Return-Path: <devicetree+bounces-265578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Hi6IoS/kGkmcwEAu9opvQ
	(envelope-from <devicetree+bounces-265578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:31:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF22F13CE66
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEEFE301A521
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 18:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C7A72D7398;
	Sat, 14 Feb 2026 18:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oOoGkRD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D77A2D47F4
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 18:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771093878; cv=none; b=Sp+SBDdaPb+yXNKskM91/vkMhff+ijNHgRbK54dGJv5jVyLDA2vwYX4Ftp/w8F5uKlXnE6tMipnT8WRTt3NdMHC/WzFOPdBo9tcsQjUsgYfYc/twpExeWwTYyc/VYapB97Jh3XP0K5j2e19FxJmgpOe8/28gr3SFPbG7bZtr9EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771093878; c=relaxed/simple;
	bh=b07R7RxPek/KmyHQeUj6U27N2AGDo7QHGz1eUka/nFk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mM0uvzG1KidxKzRH9iiZBX2BM26IXaRrkD9m/99XN77Tvqt/VHcm1RUbgBhQJ+QRufvDspiv/lz19I8wuRtTRKMid5XmWuaqNAe/E7IJfd1lvHDim1eTgy3mVSJDFpke/iVrMiq0M6pwf2yupgy+TmgO4CdkJYADj9952ZKYq9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oOoGkRD0; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-46394090d2fso588464b6e.3
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 10:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771093875; x=1771698675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HD58WPQsaM06hdtRHJvptMU2qx/tHwI9jI/rWWMZj0Q=;
        b=oOoGkRD0wH32Pxb5whVmDFgikh4ZsFC+SSR7NYsOg4X/sstBiytVLmc26VZZMHUmQg
         HbmlMWPmHOugZJ3cnLHuCQdv7PfPKpsUSwFgQjg9H7FbFGlcBakK9K5yGBQo14P8u8fj
         VyjaPNkbE1Opc+tezMtt4SoLHPOOE5HFAnzZ2I+vauaOdLLNHY4463Ls/hj7l7d6kkxJ
         Ki9/Fli42cBpPx7IeJeyeTuGgfiD8h/avMP4mtnPunwIbeVxo2cLlKGocjLyEwsT45oC
         Xvi9DYbxrvJZJpVtO9GkOLHvZ5lzzimiXbWcFbEQh7guJc6Q1ZFOkab7PkuFCyVRgKe1
         1pIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771093875; x=1771698675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HD58WPQsaM06hdtRHJvptMU2qx/tHwI9jI/rWWMZj0Q=;
        b=QxpD4FB+y9xnJnQkk22U1Jyjve3JBHrH/yCpRr0GGR4JMl3YnkSb8wNCZgC5w4mFWX
         fvixrmSILm//0Jvhl+g01BPk/qEh6EhW1pj/zodJwxhFj7XoRkUnNbJBIziiLgzFOU1x
         2w67F9076Sh0E33wJT7Xnlmj/5gZ3bMXoYkUJUhULft+qqS2hp04IFkhK1CkExSuR4D/
         HUG/QMOJYgfQ8jHXlRf4DW1xL1yR0Lc/38N+ojlRmcy9PwjxuK8Ct8QiI1q32Rl29uaY
         VuxPrtjkkipS+fG5CjW0pj3CKaAa+ZBAgsoo7EXjc7VQstYpU8OEB4NuO3kvj72MNnA9
         03gg==
X-Forwarded-Encrypted: i=1; AJvYcCVFvBPogbizFRCmsnPHxbwpedwLk36V2gRqbHOIPAFBBlbXx4MVTs7xeqF7pkl2hX4JvfpRhIIHwDJM@vger.kernel.org
X-Gm-Message-State: AOJu0YxkzOftOUuxTKzAl7foog40YoeZXZIZeez4eiffenYvIJZdu6aD
	ewNHzB4vOH1fTLuCxNCHXL980LQq0sBb/MCj2lnzoud47GkL/IFArQTjwJ2EudPoMyQ=
X-Gm-Gg: AZuq6aJFQDiPAChUNcOGjfpUzTNcYFqT3lTTXxy2CXpO95HVpqiXWkKqhgTdQvJ1hr9
	Xf647qT+QiYAwQ75q30du+B+khZ/14Gr3ZVhyK1cS6IgDk0hDoHRpGjQJJV+sthTFCv0gQZsw3M
	0HOQgtKNj0GGvHfgpu69ZgAybm8jWXxYk0qKbDGkR66E0HL+iWyI9HstdLlskTEej78fkWuNxgm
	Xrq+PNyiLNKGk9PjJV4LHYvAQ3RconLvRLTpYZQjykPoUfroYa0vQDUZ7CQHlU875Qg80sieZDN
	h3F4z6K051ohe+XMTiqT7nqWXBEuJpPOZ2cnpPyXF6x2BStmrCyf4mLdcDSYq6W5B65tZyAfNaw
	77+nA2tON7guPbhm3RZ6wgfZD36URWncSQfc23bugX30jQXXCpEitkHnI078+j955hvSZ4yHgzz
	KHwWAFOHpoZkzBifwhLVDgTv065j+bNmEQLdlN+EumZ37w3NH6G9LI+mBx5laFCw9c2rauCw==
X-Received: by 2002:a05:6808:1491:b0:45c:7306:505e with SMTP id 5614622812f47-463b40e3869mr1817198b6e.63.1771093875267;
        Sat, 14 Feb 2026 10:31:15 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:109:393c:254e:962e? ([2600:8803:e7e4:500:109:393c:254e:962e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40eaee46a6fsm9779558fac.3.2026.02.14.10.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Feb 2026 10:31:14 -0800 (PST)
Message-ID: <897bd4d4-bbdf-4cbf-84f6-05c110d75d03@baylibre.com>
Date: Sat, 14 Feb 2026 12:31:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>,
 Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
 <aYiGj_TYelvJdVaR@smile.fi.intel.com> <20260214160852.6862b58d@jic23-huawei>
 <aZC6wIWDdS8J_1eJ@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aZC6wIWDdS8J_1eJ@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265578-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: EF22F13CE66
X-Rspamd-Action: no action

On 2/14/26 12:11 PM, Andy Shevchenko wrote:
> On Sat, Feb 14, 2026 at 04:08:52PM +0000, Jonathan Cameron wrote:
>> On Sun, 8 Feb 2026 14:50:23 +0200
>> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
>>> On Fri, Feb 06, 2026 at 06:07:12PM +0200, Antoniu Miclaus wrote:
> 
> ...
> 
>>> I believe there is a better approach, what you need is rather a flag
>>> to SPI core to tell that this is the device with shared CS.
>>
>> Antoniu, this comment from Andy needs addressing before we move
>> on. It seems fairly fundamental and I'm not seeing a reply to it on list.
>>
>> I'm not entirely sure what Andy is suggesting will work but this
>> is perhaps a mismatch in really understanding what is going on here.
>> Andy, how would a flag work given they seem to be separately addressable
>> SPI buses. I think this isn't a shared SPI CS, but rather a device
>> with two entirely separate SPI buses. I think the only reason
>> we are bothering to implement it as a single device at all is the
>> shared backend.
> 
> My understanding that there are two devices that for whatever reason share

It is the opposite. It is a _single_ device with _two_ CS lines.

adc@0 {
	reg = <0>, <1>;
	...
};

> the same CS line. Yes, I probably misread the idea behind, but I meant
> some flag for SPI device that tells SPI core that the CS it wants is shared
> (maybe a high bit in the cs field or so), then CS core won't complain on
> validation about using the same cs number which is "already in use".

There was one existing user in the kernel of spi_new_ancillary_device()
that looked like this, so it seemed the right way to approach it. However,
code was added later that caused the primary SPI device to "claim" both
CS lines for itself and probably broke the one existing user of
spi_new_ancillary_device() (hard to tell without hardware to test).

The idea here was to unbreak that so we could use spi_new_ancillary_device()
just as in the existing use case.

The patch for that could have been a bit more strict to only allow the
spi_new_ancillary_device() to take CS 1 and fail otherwise, but users
are going to notice if it isn't working right anyway, so I didn't ask
for more checking.

> 
>> There is an argument that maybe we should be looking at how
>> to do data muxing backends to support the more general case of two
>> separate chips feeding into a single buffer, but that's a complex
>> beast and I'm not sure if it is something we actually need.

I think it would actually be quite similar to what is done in this
series.

> 
> Yeah, if possible I prefer to look at the (ASCII art) schematics
> on how the HW looks like (connections with busses and CS lines).
> 


