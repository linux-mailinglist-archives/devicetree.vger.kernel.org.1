Return-Path: <devicetree+bounces-276291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMvWL8souGnhZgEAu9opvQ
	(envelope-from <devicetree+bounces-276291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:59:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 206B329CDFB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D934A300A10F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B4E3B5853;
	Mon, 16 Mar 2026 15:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DsgGvvyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8D3B5855
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773676296; cv=none; b=kv90ZjRC5dSoqXh42djtt+iDHpKjLUkPJY/4uGhjXEoN9h8yE/MkumLQrOWAtBMpRo83GO1bQ8p604wQUER+7JaSKztGKB93RfJ5mvKNhtwocRHzmrlkF3fapxP/rL4LwbkecZ95FzeNMzYEHdRpRRCRGRsuoXyS0lD9nmHwFBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773676296; c=relaxed/simple;
	bh=WmA/mQ/FtUJiMLUjvX4M1ZltuhP28hpRwCRYbc+ykds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lh8yxCvDYh8eUxCzdRm4udtOXxKrjtss5dkwnC7ipK+15Bzr9uR0143hX28duh9+qm3qnVNdczPGxHyJiOrFZeZWvv51ZEIPwGSVyEupNe0uQl2TWddtRVl+S9UGlFPBcWXAkJ1TCBtrYZTYA0Kr+6lkrB1WaSMRd+Z5dlhOf4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DsgGvvyP; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d743ba241aso2487953a34.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773676290; x=1774281090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wrf1e/4chWRk/7lC1qMCkY49QaRNAQGjpYanWNmT+Gk=;
        b=DsgGvvyP0BPT7s5GssDXAFdQW1cm0KNby50MIvMCdKos2Gi0CeosXJfOmkJjbcil+d
         BmYU0V2BVHRzubOzfARESvbziCDmBSlR8Iz2K1965iOgIb3fQYbb3KSDwsV+z2cmmx9j
         s6/FpEGOj2mjOVzUb/01+p+RRZYGZGUI52Y4mBKrBmilBPguosVN2d5XCFxyE7JFI2Qw
         K7396MkB9XBEsM1Sh9vgdXuZgThBh+QTSydul1cKWiR98FQdvHOM0My4szs/jds4yUcA
         R8K3wWlFgTEC/3yXmjyLKdVH63G/j+0JtyJHvY0TfTo8nYbCV8lZ6ggeHRGlMXzyH7yd
         M6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773676290; x=1774281090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wrf1e/4chWRk/7lC1qMCkY49QaRNAQGjpYanWNmT+Gk=;
        b=lTP8xn2HYZ/W6216xbt690oXIjvFfP4KDHif1Kt58V5bv6+hRc6tGO9wz0RftZY1YA
         bohJW+vGxh81XNEpCA1fGvCEZ3xPYKiQYk5mcsoFpdnZ4QY1qI5aYBs8+YLgExHDlnGF
         ADPNTPDxMtyQi+JgA5zkeAWRWvHgCZNUBCYYW18WATmcQXVauuZi5Vo+cR0Qeqw+02Jq
         +pZdWXHI6c5prmFyngoIePwa7HsOMrhjJcA2pnF183OEVuVdhaGWHbsZqWCK6A20YgLT
         xmOR+DuqgCRjEUV28q5zZea3rOY7KEqYhlfmJzRGaUpk08LjoRvLdHtSfarGNnUbNLMy
         M9nA==
X-Forwarded-Encrypted: i=1; AJvYcCViGhd31viaRMWOfwcLbd0CfuyXw5Wq3KhuI5gFVOHf9KzP2+kECaesgbrtS6epPjFS+iYHgM0HatAK@vger.kernel.org
X-Gm-Message-State: AOJu0YySgxNuE7ub1+lqk/bp5SY6v8K8ZPlnUoyMWoWrLHwNgUkgKxko
	ntufhxxwHUB56rtqfQgRGhVPfjS171olzZJTu1+PC42n4tVYyG+KVBAu52s8vveR5+C9f6r+yOX
	njpfs
X-Gm-Gg: ATEYQzyVtIL0+KjVkHEED4hg2RaELwjKZzwk4e0oQS4E4A4VQ5C1/K6vVvxwyD1EE3f
	t3EDzxR697a8fQEEez8ZqhlC0EKytSdlltX2YBFNxyfkgQ5JFL9z/YJMdJdSGW1kO3OQu9qhpWe
	I5LMrwoegC43Tm13R1eT32P31DbRKcQUU6fc4TQuRbSdFwMm4ZT2WN0Ft9UiGlcukBEDCRJveKI
	IQx59kkBa0ZJXV0VcLN7cwoenaloNUEWlRn9JRik5QtbN1a450nFXA8Mr9hDiKD1rd+Jmw5bKTq
	IH/IwUSR86eI5DsFA7Y8/1aVBhOky3+51ejVXhZhcT5aUsbFjBaHK5ou9NjT9cVouwD8MVUKOVR
	AKYuXrDGElUrTBq39452nP6BcQSKjAt9gBUYhlVM+KvfIpCS+kiOvxmB57fnUHtt5n0qzkyw/QJ
	+CZzMvX975V15JCETrt0Nu9e117u6JvYO1GHYOXhzA/uWeNE4qhUTPlop8UQ3XsvO2GtBYsrLvs
	g==
X-Received: by 2002:a05:6830:67ca:b0:7d7:b85f:36c6 with SMTP id 46e09a7af769-7d7b85f3daamr721606a34.28.1773676289823;
        Mon, 16 Mar 2026 08:51:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:e504:a034:1152:a664? ([2600:8803:e7e4:500:e504:a034:1152:a664])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d76aeccd73sm12749664a34.27.2026.03.16.08.51.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 08:51:29 -0700 (PDT)
Message-ID: <e33b0096-c7b6-45e5-a9d1-8da11714ac8e@baylibre.com>
Date: Mon, 16 Mar 2026 10:51:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] iio: adc: ad4691: add initial driver for AD4691
 family
To: "Sabau, Radu bogdan" <Radu.Sabau@analog.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, "Sa, Nuno" <Nuno.Sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
References: <20260313-ad4692-multichannel-sar-adc-driver-v3-0-b4d14d81a181@analog.com>
 <20260313-ad4692-multichannel-sar-adc-driver-v3-2-b4d14d81a181@analog.com>
 <abPtv0Y_QWYoMuAO@ashevche-desk.local>
 <LV9PR03MB84148A9A0A7F6544CF370B7DF740A@LV9PR03MB8414.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <LV9PR03MB84148A9A0A7F6544CF370B7DF740A@LV9PR03MB8414.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[metafoo.de,analog.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-276291-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid,intel.com:email,analog.com:email]
X-Rspamd-Queue-Id: 206B329CDFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 10:29 AM, Sabau, Radu bogdan wrote:
> 
> 
>> -----Original Message-----
>> From: Andy Shevchenko <andriy.shevchenko@intel.com>
>> Sent: Friday, March 13, 2026 12:58 PM
>> To: Sabau, Radu bogdan <Radu.Sabau@analog.com>
>>
>>> +	u32 acc_mask[2] = { mask & 0xFF, mask >> 8 };
>>
>> This looks quite wrong. Is it for sure like two 32-bit stances per each mask
>> byte? If not, this should be __le16 acc_mask = cpu_to_le16(~BIT(...));
>>
> 
> Hi Andy,
> 
> Each acc_mask has its own register, therefore the u32 acc_mask[2] is
> intentional - since the regmap is configured with val_bits=32 - the 4-byte
> stride matches what regmap reads. However, I understand how this
> can be confusing for anyone reading the code, therefore I propose
> two ways for this :
> 
> 1. Keep regmap_bulk_write and add a comment above acc_mask explaining
> why u32 is used, although these register values are 8 bits.
> 2. Switch to regmap_multi_reg_write, which takes explicit (reg, value) pairs
> and sidesteps the ambiguity entirely.
> 
> Do you have a preference?

Since we already have a custom read/write functions to handle different
register sizes and the chip can read more than one consecutive register
at once, can we just call this a single register and add a special case
to ad4691_reg_read/write() to handle it? Then we can just do a regular
regmap_read/write() functions to access it as a single 16-bit value.


