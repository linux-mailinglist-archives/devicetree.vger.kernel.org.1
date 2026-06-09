Return-Path: <devicetree+bounces-309189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gmu2OJo8KGoSAwMAu9opvQ
	(envelope-from <devicetree+bounces-309189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:17:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 839176623F9
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:17:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=kp679Dua;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309189-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309189-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6F289306F192
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A6B37268B;
	Tue,  9 Jun 2026 16:10:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA7337268F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:10:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021407; cv=none; b=QULNNMob7lnIGSCzNwiBnKXJPIKZV0Eu/Q49MDNctVKvE0mDeKimS9siB/fXBw5cjP12hhpNAyYSbB0l8Ysvmb5LAEfRpCONpv4kVR/S3n+oX7ICsYwJgoMK9i8GAgxTY2zh9lDlS0KxfddvFbE3rFJfTd5Ys40WKmZJi6NYoAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021407; c=relaxed/simple;
	bh=RLoEiDvQI23Ox8jg30VQGX4Iwfm7ISwxXbu9I23mu5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G7MpaxhSi7ZeyJrX4uaiDgwZbnFSBqppNMdfec5K2LTpUiyuJy2bRXRDtTUKBb4nDhNl6Cxjc3tgHixh96BMg7ox5MyVnA3diRmJd98Ze4MwSeqY4sjI7tH8BOIURmflyurzSVt5nE1xoRQBu63Q0/Sy1QSmP3JSZCY7U18Ll98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=kp679Dua; arc=none smtp.client-ip=209.85.160.44
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-440d9bfa309so4294596fac.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781021404; x=1781626204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/RNb4id2txtpLRqVF8IkFMdlDYN5r4X9vT3DkpgA6KE=;
        b=kp679DuaqNkmFHhbB8cN9yxOjupAJ+LBTHfPGyJzmFq1zeQ5NXcbY/cUivYMwfxmxf
         jWYGuBwGddCUENJ1KsCoq6EXNRA0o5JLb8a3Pn1RrKOnFFEpRnRxcjlNUvmsf+CHOpbi
         IAPje4uoPbtIY0SJirLhSl0cdsBWeS6dBMlpcxn2NsWS38NYyYL12AND0zNZHAqnWcSE
         nAox8u8g83YNLO3yXErnLEipvBki4xCeW297UBRvQHjFto5FEaMXrRW6DZ5a7mCMaSpk
         9YGfsqgPaLC5cnVBcLOC1Un8paOEu7TjYRTE3XuJRZRXddzyeJYVjwdApycnJv6c6pT2
         5RwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021404; x=1781626204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RNb4id2txtpLRqVF8IkFMdlDYN5r4X9vT3DkpgA6KE=;
        b=Tmral6+7/g/hJzrcprVN9tyd4B3PjJutKhJeHyVHGXyuzNlShvm/6JoI+0k7Paj9ZO
         31Eu/zaTwxFtRMQELle1p6Nj65sOa7QLtp74W1Z/saUrcxpkM2U1DeJaARMxFNdpWPQt
         DR+uetW8BMJ7TBYaRN/Z5dzh6fqZ4ht7yEQ0eDakFAYXEF8hETJUPThlS/8TzEomvTPT
         9FamzKC4QQvJ2Un+B5XBLY70xQ4eWR0tbqo/sJov1B9kTUdHVrK6QQ9n9KNlGpEh34k9
         nN8O1L0qD+TvLwnX/3QFmai5BknHAKowsoiNxQRgDcD399rkKSshojMEGNBxObxm5mJc
         MIXQ==
X-Forwarded-Encrypted: i=1; AFNElJ+/lGcnfBReIDCEBO5J9HNHbfQ1td4TWRFTyDWOCZcrJI9qGDRc84mCyJ91gasJy7WarIUVKmEJW73M@vger.kernel.org
X-Gm-Message-State: AOJu0YwuQEBkSDfSXpF5wQTSDWCHbRu0AqO39BvJ7gzEN/YCRsPsGVS0
	8y2ng4RbG+25PjD6VigQRoBU1je6DZqqa7vEWUetedj0RhiQbGPT0FymGtfZGxwvuX4=
X-Gm-Gg: Acq92OHMfM0EzxL/TO2v6QJ3ukXgbINl67DH+pVq1n5fsuIt7Cxs6OJsivwpruN1oNa
	TWxAqyasjWfWoUMLoTHv/Drjb9Iv4Ku5eHt+2XKZ/IobfShExrw61DwUhBab5Pl3/jrMkqXShLD
	Ohw8LGfHR7OtnDXvKW6/jKxaI2VYfnRnqz5R+XlpCRyhiydKTY2BECMb1aF4twVUJwF42vsgZqg
	l9gCPrXqZKP5SngtND8J2xem+anwhQ5IbWbNA7VCAUnUVIcNvKJt5bybN1K43KhkHwcfdH/WQHS
	SwpSMgM0+6nj7uAZmoXtg4Ckdh2Y6BRH/LudWWsdpKVh8K8+qZUt2ZBFNl822Zj2CCEeupZCFP+
	JoSLkLUo5EbNzKeNSPvcxpQztqbptTGvQymuqnbA2PSFt9p+CFn6TYUMUumE4MAhkoxXPYmCi+l
	X63w7rlE1jzoF+4Jb/a8ETA3sojU39aTSIiJx+K9rrwXzSHWWfxEH1u+/qm8nHCAAWK2ruJgmGf
	OEAViZw/WaaZl1sFXnuEnI=
X-Received: by 2002:a05:6871:28a8:b0:439:b99e:441e with SMTP id 586e51a60fabf-4413d68f54emr12001176fac.1.1781021403980;
        Tue, 09 Jun 2026 09:10:03 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:2516:8f73:2dbb:a61e? ([2600:8803:e7e4:500:2516:8f73:2dbb:a61e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84def23sm18401345fac.17.2026.06.09.09.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 09:10:03 -0700 (PDT)
Message-ID: <6305149b-d334-491f-85c2-085fe42cae98@baylibre.com>
Date: Tue, 9 Jun 2026 11:10:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] iio: adc: Extend ti-ads1100 driver
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 marcelo.schmitt@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mike.looijmans@topic.nl, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jorge.marques@analog.com,
 antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
 jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz, wens@kernel.org,
 sakari.ailus@linux.intel.com, linusw@kernel.org
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309189-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,topic.nl,vger.kernel.org,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 839176623F9

On 6/7/26 1:35 PM, Jakub Szczudlo wrote:
> Extend ADS 1100 driver to support ADS1110, which is a pin-to-pin 
> compatible device with higher resolution. This patch also updates the 
> device tree bindings and Kconfig description to reflect the new 
> supported device.
> 
> Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>
> ---
> jszczudlo (3):
>   dt-bindings: iio: adc: Update title and enum
>   iio: adc: Update Kconfig description for TI_ADS1100
>   iio: adc: Add ti-ads1110 support to ti-ads1100 driver
> 
>  .../bindings/iio/adc/ti,ads1100.yaml          |   3 +-
>  drivers/iio/adc/Kconfig                       |   6 +-
>  drivers/iio/adc/ti-ads1100.c                  | 165 +++++++++++++-----
>  3 files changed, 131 insertions(+), 43 deletions(-)
> 

I assume this is v2 of [1]? the subject should include [PATCH v2] and the
cover letter should include a changelog. See [2].

[1]: https://lore.kernel.org/linux-iio/20260527164312.355729-1-jakubszczudlo40@gmail.com/
[2]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html

