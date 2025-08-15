Return-Path: <devicetree+bounces-205136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68502B28176
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:17:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE17B1CE1321
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580FE21C9ED;
	Fri, 15 Aug 2025 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1t/HCDyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99D521ADDB
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755267454; cv=none; b=EfK8XNJfXipV9CTphaIzUEXRyLljK6PPn8Xu+eTTtjqlk8ASwPqZZ8/bxP98ObapfiqjiHeA66Kdf7PodWYqgFD50QtmJzQQwmrgZ/k1HiB30kFrJXQnCd7qOr9JdMXpV/P4EV0WRJKLwdS8iXSPVwcgJAagFDxJSB7003P9LVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755267454; c=relaxed/simple;
	bh=6UqgWiBtru3qNF4cKm5B90nNnc9QwBe82+mGbA/cY9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r9Htb0MGQE3x3cOQonevgfoJMu8EOJ3sb4qOqPhgg+QxDmVEicM73lXlJRPm91gSgReWslkh2rwNRkbXqnOLxokMlDmP0/W4SK5HNy5NjMKljyS19TE+pQ0NqLMoiiQrM/oFoNlDSHvElalsUsjN5W9X/a8QBVnxAo0lgXOONx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1t/HCDyr; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-30cceaaecd8so778188fac.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755267452; x=1755872252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WbhrCfk9RYJnvvsbCToqdaCZcrcBbxt81Ogo6J2bM9c=;
        b=1t/HCDyrSenuVSwVqJ99IIM+83ZU2Mr1tC3lbMlBA8sZtQpzjyS2cct46AI7rGc62d
         htmBjVDDz+eTHlwtW+njCnNka6316YsNzwpG1+xhGH/tDlOc20E/3cntcnM7l4Ve3hCt
         Wsc4AFn7+04u0qVUfwTOBlSPvgZrrj2AaEWzhmKgAWvDaas/22qMSNPeYflmQjC0eMTb
         qGNDQ0pJXz/bShNCYOHG88HlPxVJy+Zij3uG+0RAtmDnzGVo2MFzliOSbJN+CH2Xeho7
         Iq8Td9V3RkslsYrKzh8wDHy87C5J58+PKDcrom9irRF01FczCnzZgbFQUMC9WFhZdvvy
         K3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755267452; x=1755872252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WbhrCfk9RYJnvvsbCToqdaCZcrcBbxt81Ogo6J2bM9c=;
        b=RUlew588DrutP5a9LlNiFy/uuZlzSE712e4Kc4RPf3D/bOafTvw6Z1YQExCxAq+1KK
         6Hc2FpTT+eIxRSNpDNYGuqgQujdH+zEamlx8nqpr7WS39dxl6NxVW1Fa5dR4ZjaklVNF
         uHd6UXxtdyCtndbtr4JCQP34ilwjJ7hqZ67q9c38xmYT64dkQmFpGiMV+PQHVNHwEa8y
         mjy5Um+ZqbeTXIJ8SsvQKRcvAhMq6sNfVjSxGsS96LuqDRRa4zg+27n9CaHGdc0GbdqT
         6lbyzvhpLfoA94spIB5o4otXOR1PQwfNKANKbSnEB/WhZCDDkrY9femAbx/oXjOpoloq
         kAnQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+bXG9OmhYmn/8UmAeIAWmlmw9H4DqubdC6peBmDa7oNVyd0yB28CmX+HwIHHsdks0cTE0STwWPvC2@vger.kernel.org
X-Gm-Message-State: AOJu0YwCHMGeQ/JggWgQSKnR+WnYUA3t8XapQUvUo50gII8HMX+N2Ffe
	7eNCNK/Y/ZUPSjOeLcYOT6kI0d6HXffqbMulM89wIDu8vhk594oau0vpdjRQjZK44UA=
X-Gm-Gg: ASbGncs4MXgr+GVlEM6Rz+tNrXa0kqVhWLAahSUFR4RAA2JzlmUKEzQw9CmY0DgpSX0
	z6hFP7tHn3L8fDnINWRwpH3o45uthbpTizT3eKVLr92DWNkkSxCNkxsgJmqNBFAyxgjEC4ycq0c
	mWuB5yXLo0NZwKqqfgHeWAV0qFyrSKlGRk9TdsuenqAtl7OzdaWa3vA/lcFOg625LuguNradSXM
	GgroK9TprOXSnhdEsDW+eU3tgPPjlolJfJmC6ayPcfgjrIycsKjqlm93exfu+U8805RIttHBm11
	VLgwY/SpYJkFAU3C7xpsa+lM/eVvTLBazlEhoU2XBqW0B+WmMPbwlP4bIX2ARO+3ankuue4+bgx
	r+9smHk4DxWmA4J5LJSMZXB7xjqK23HYF+CvdeoFrL8QmHQJ72oumSRlixlmYlWgSqLam0KaG
X-Google-Smtp-Source: AGHT+IGjqpkyyKZlM08oY9DimEhkn8JHkSQ1hja/G82yMfhvgu4bjl6P3uoYQK3prUQOBvs9hxEJIQ==
X-Received: by 2002:a05:6870:1c9:b0:300:de55:8fa7 with SMTP id 586e51a60fabf-310aaf82636mr1088519fac.37.1755267451454;
        Fri, 15 Aug 2025 07:17:31 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:677:c1a1:65b9:2b0c? ([2600:8803:e7e4:1d00:677:c1a1:65b9:2b0c])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-310abb34f14sm419442fac.20.2025.08.15.07.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 07:17:30 -0700 (PDT)
Message-ID: <ae976e31-78db-44f7-a3d7-b6178692401e@baylibre.com>
Date: Fri, 15 Aug 2025 09:17:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] iio: adc: adc128s052: Support ROHM BD7910[0,1,2,3]
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sukrut Bellary <sbellary@baylibre.com>,
 Lothar Rubusch <l.rubusch@gmail.com>
References: <cover.1755159847.git.mazziesaccount@gmail.com>
 <e43c184fc6aa5c768045fc772b64d812fdb06254.1755159847.git.mazziesaccount@gmail.com>
 <014487e4-f8c7-42e6-a68a-9e984002fd46@baylibre.com>
 <3024c64b-48e4-4a28-bbab-b80cdaec4a9a@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <3024c64b-48e4-4a28-bbab-b80cdaec4a9a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/15/25 12:23 AM, Matti Vaittinen wrote:
> On 14/08/2025 18:01, David Lechner wrote:
>> On 8/14/25 3:35 AM, Matti Vaittinen wrote:
>>> The ROHM BD79100, BD79101, BD79102, BD79103 are very similar ADCs as the
>>> ROHM BD79104. The BD79100 has only 1 channel. BD79101 has 2 channels and
>>> the BD79102 has 4 channels. Both BD79103 and BD79104 have 4 channels,
>>> and, based on the data sheets, they seem identical from the software
>>> point-of-view.
>>>
>>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
>>>

...

> static const struct iio_chan_spec simple_adc_channels1 {}
> static const struct iio_chan_spec simple_adc_channels2 {}
> static const struct iio_chan_spec simple_adc_channels4 {}
> static const struct iio_chan_spec simple_adc_channels8 {}
> 
> This which should be clear(ish) for developer no matter which of the supported IC(s) were used. But if we stick with the IC based naming, then we should use naming by supported IC.
> 
>>
Even better.

