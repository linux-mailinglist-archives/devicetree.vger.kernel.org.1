Return-Path: <devicetree+bounces-275747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPBLOY2mtWkh3AAAu9opvQ
	(envelope-from <devicetree+bounces-275747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 19:18:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FF728E67C
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 19:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C1513015843
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 18:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39491330B25;
	Sat, 14 Mar 2026 18:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="13TG+A8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE37326938
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 18:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773512323; cv=none; b=hnfY+QBbkHu0H9o61mofwY8JNGE2EvSXrXhD3CUJZ2dStq+IcDNvEKUercfUcscNZUr7UC4RZvistvDPsP/sHiNuwncxlknqNXpnXjWtMoelgMZo3RSElzP8wpXwq23qXMyzI9LOmQLzAunAqu/xilM9s7P30aZR8sGmdsX/2uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773512323; c=relaxed/simple;
	bh=i+hiSWMpKcrgrezSSwiwAM2zE/+XHI5eQEa9uY5l89Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BXLFUy/PF3qLDTDzSHzTLeIWay40t3N1VgTwdThv52QeS957rHnS/HERXBdFhj007zG2/brXrRgcNMdUkllQA64HiOEXkMnuKGQcoTKW74iF/gpucmVrb5TQW0uV4s9VHI9a3u4boK5cZ4fUD6ZSIthtfyJptIMo0sjR1M82Bj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=13TG+A8D; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d74a59262fso2935280a34.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 11:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773512320; x=1774117120; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SK/kmh7PEw2pLUP6UdfntY8BFkF+lE9LaAHgnikGaa8=;
        b=13TG+A8DXRwVx/TolYvZ/3shHW0vM1uWKCuKoYT5iavumvHU5QXWmJ0PIJfnXI0ZB9
         K6IklLcN8oPGe8jnFsqFFzyGvSjG9MYOkBLLC6Hubl1Q7OcdN2+ondJ0BCMBLdnTIDP4
         0KzKcCmFNTpfnW0SB2D2LeUaAlurMbrfAY9GXfxtJJfhRIrh1I3Dv4ep8ah32DPeVoRP
         VB4fyTD8iHTYJkw78H8zcrABmw+UxiLPcntuX0d38E8ZO0K6jLtusWk/1VvVONipaEHU
         jw5Z7gXjkId5nWsYh58gtjWsLOy71RxDfAHwc8SboCK/B7j6hDNaePuxLYep/toNNr6v
         ICLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773512320; x=1774117120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SK/kmh7PEw2pLUP6UdfntY8BFkF+lE9LaAHgnikGaa8=;
        b=VzNMAukWKO9FK4ECJJDzxSxyikiD64YtW19+RrJyhGTIp1sCjoiGztG85ovhYn58Oe
         HVNUqbzpjl27/73tIqXbMk3iTcAnzYnvVpTwwu07DL1wNWZ9OvrbYEOxQVLYgZJl08yl
         AVt6xUStKtz0TKaZT99Tn/uKS/88JsoIRiW9CQEwaL9bl70uPOL3iaRCokebd9bmHQlS
         zL/ez6V4a4AYE1/RkPQmK04ckV8j7hboz1zAR0w4kn5WragL/i6SJ/sIYyxPY+Rs4Vwo
         CIdXZCJx9Phg3B6mZAc0nExtbXbvFwK7laykBWL/1vaLPR0ToJd39/5R9l3My305FTlX
         qC/A==
X-Forwarded-Encrypted: i=1; AJvYcCUlYHZ5yYiuAgxZYvXQz3hc6nauJKbArv3HSKlHRes4XY9/yTTF6kv1U/+Lm4HHTgxZHj4OLYp86fiq@vger.kernel.org
X-Gm-Message-State: AOJu0YzTh8ZeopYnggW2zB9GZH2po5nSN0Sd3FtGYiaZaRvojkegXLc6
	MlLMS2AkQLIjC8VvcWoF8FiydvhlpkVfVcJGpxyosXfhzWqZ9f8oeqBulv0Mc3JO2e0=
X-Gm-Gg: ATEYQzwcSNnldnDCFHJQTD7IeUtorFdE9VRWtE0AZjk9Jp4fP8cPmopo6xsUSjwCxLT
	4B26T16Fq4emd8h/ogLhkhWQHlNSX+RamIZ4BhIsskSxZaqm0xqg0Y2qObd0VecKOgm9g7cT8yE
	faKH7Imi6nIMSJYxRs+np1WFWSCjJ1zeQrLa5OfXfG150MXhx4dQA1AoTmu/n56qs5/xT22IY26
	fKbcrO61WV3iHlUGh5lX9p8tbPhpeidRbrcO+XreWd/zZgeghqF2hzsY6ZCm7E2NFSnnylsf0jQ
	a+pPlbMd6rGMaubBToaKdVcZM7PPEhJ25z7i41ZF2EfcvwgwKOAOFhane/QmLNT5K6nXb/8K1zI
	YWi6ddBfuctlgRa7fDuhaZGoyt4IRq023gImm+mtz56qnlvwsfkElm94hclD923HW7XnHjUbSah
	cHzXn3uRXYhf4wnb5XQ3yJPp3bLmN8hpQrVmUaqnMOEsHi03GVZ3SXPzhUc9lg710eQGpOzydiC
	Ye5XwTpZgvs
X-Received: by 2002:a4a:ec44:0:b0:679:dcdf:1a0f with SMTP id 006d021491bc7-67bdaa92ce2mr4314343eaf.72.1773512320145;
        Sat, 14 Mar 2026 11:18:40 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67bc9342ad0sm6716591eaf.15.2026.03.14.11.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 11:18:38 -0700 (PDT)
Message-ID: <e8b34b7c-456c-49cc-9da5-83ccbd11c09a@baylibre.com>
Date: Sat, 14 Mar 2026 13:18:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: adc: add bindings for AD4691
 family
To: radu.sabau@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260313-ad4692-multichannel-sar-adc-driver-v3-0-b4d14d81a181@analog.com>
 <20260313-ad4692-multichannel-sar-adc-driver-v3-1-b4d14d81a181@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260313-ad4692-multichannel-sar-adc-driver-v3-1-b4d14d81a181@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275747-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[analog.com,metafoo.de,kernel.org,gmail.com,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,baylibre.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A8FF728E67C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 5:07 AM, Radu Sabau via B4 Relay wrote:
> From: Radu Sabau <radu.sabau@analog.com>
> 
> Add DT bindings for the Analog Devices AD4691 family of multichannel
> SAR ADCs (AD4691, AD4692, AD4693, AD4694).
> 

...

> +  interrupts:
> +    description:
> +      Interrupt line connected to the ADC GP0 pin. GP0 must be physically
> +      wired to an interrupt-capable input on the SoC. The ADC asserts GP0 as
> +      DATA_READY at end of conversion, used both for non-offload CNV Clock Mode
> +      operation and for SPI Engine offload triggering via '#trigger-source-cells'.
> +      Not used in Manual Mode, where CNV is tied to SPI CS and no DATA_READY
> +      signal is generated.
> +    maxItems: 1
> +
Some chips have 4 GP pins, so there can be up to 4 interrupts.

Also, the DT bindings should not specify which event this is - it is
programmable. We should just say which pin is physically wired. So
interrupt-names should be "gp0", "gp1", "gp2", "gp3".

It will be up to the driver to decide how it wants to use these.


