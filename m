Return-Path: <devicetree+bounces-256288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC33D389A0
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDE54302AFA3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 118CE314D13;
	Fri, 16 Jan 2026 23:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="grmJLPZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0CDB665
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605135; cv=none; b=AcSUQ/4m9Xff4MsfZvT1M94aM2ndEkLp8g9xUY+6sJi4OMe5xlbd6J1gBOh4xxvzF5+B1AEMsSf4YliWth/HGcF9Znz80xTXbNYGpKnniajR2sUEKDSN8kaMOvW0RExQXOYcAshlE9yPQ9hvmTl4bl6XY1Ev9GQczyRf1iBrdig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605135; c=relaxed/simple;
	bh=NjWerxnlY9BGg6fcs1YJzsVjCsaLeagzm3K4bvcEZYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WYxL083dSm6YTv2OI1gZDS2XM9tPq5tG+tziVUWDqotSBLAEg4XHH9g9sNgg6j1ezxk3C+VpxWF+hmEjVtt757zI9OmBfZ4lH+FFMI3R4YNK+bx42fihN5abZEyaDJ/ASeNMbU09dArb3noxJSIlGWlI92Skim2gQoS72kG4Osw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=grmJLPZ3; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-6610800b87fso1572151eaf.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768605132; x=1769209932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=whP8eMlzddv6xXaO5wZ6tvVwWmYBfltJRhK81SGkYYY=;
        b=grmJLPZ3J5aD7Ro9Fu2HwWaFPzGDeaVn3x0ljn4cmNvvrt6lOFJ1bbEavNXqz/mmw4
         7aPMBHZKB0F7u7zPgqJ1Fn5jRLbYrJCew4zHyLVtsd3Q/TE20KOf+OoVZtTYM+fmfANm
         /ZXxOf7jyuejxyaskCeWILgPdan7KdgBF9kiaTuN/gFe/yLDKmmbba7eEYx4/FMqcX+4
         SB/gcrEsYYTNoGyQGFSHl6WqyBnBdkN6CnQPQU2deDEE+DQbo1b1ZfftZsL5JhgSqC5r
         msTk+WBEDrewBOfC6+09OYykFHcgz/ZHSBvkSBQwOclo/1lzyWmo3X1MPJrIQ4WWWxAH
         LtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605132; x=1769209932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=whP8eMlzddv6xXaO5wZ6tvVwWmYBfltJRhK81SGkYYY=;
        b=pwEJVl+ZtZFeJiwiAa6hIii8p0odi9CZ5cPuWJ2s8DzJdXbpY84Pm8mHZRy+w6FCsZ
         tTrfTCe31OyLwlve1OzwU+yGr4ZWPTJskXk0zaEVL9/EKtjY8XYu79gijSvyFrsJ6x2Q
         +GXUf3NSSHqiWT0q54YoxvOgA14VGICSOC17A4NXAmCAgndWF4BYq6YjK3pK9mQ9T47L
         JIy895Veft9OM2JePQmYkMbLm0Vah7dgyPilLrAfQUPju1GKrzqaM1+uqjGOrOY5G6zg
         eDNIer2gT6BMsUzybwdpN+pLuBRiL9mUPYgWPyOci/z1bNx2fw37fycxGi9coTmkw2DX
         xAig==
X-Forwarded-Encrypted: i=1; AJvYcCV0gQDAoZuu/vS3iupxLORrjaFpj7JSIF4tF49A/F4LqCHAj0HUfSow0M686W6r3aPqIogWIcGHWpmo@vger.kernel.org
X-Gm-Message-State: AOJu0YyY+UAvTixU/bIwF1dUkTzF3Mt1s8RdeCsFakt0figZMDhZ8BWN
	OuxlA2yE/yWKeAkBLCRow39uhFU55YxX1mLTZUhk12FCVkQHJL/vSQdaNvARYNECahg=
X-Gm-Gg: AY/fxX78wOslBEfMrD1p/keseNOF+u29tYEWfVDKkQ4Mi5lMLr1hVHF1kn7c0peMazy
	bON31Q25rBTzaKHUUTWNC2/PM+DBnhOIdx4vqRlc1o6bEE0HkiSmouqQ29G9IEjVhCLm2t0wtNS
	Zw3r0rFLqNfudsE4+s1LEvcRMU8BlW4NwF3TORjoP+UiZo5ZDDkEMY7S3aP6Kc2Du0EPZj8vJjM
	SCkOdQvNJQylXCWncGDyKfkMg82/2eyXvC25KBcG4kfERVR3uAPeL2mYPB9LZOjsDV0vlcZv7/Q
	CTkJAvERvqBMThhqM03puGlkh9dAi2QnjdkiQlqioh8Rm4a+ucU/OCcBSNuCnzLQIYTMg+SOCOg
	fsOggxC2JYWiynpMfrBJwYtlAtVvu/jeoFbOe8XjHVnkrM9rtf92Yx/lmbG5LlwODHudrxqNyhj
	y7h0BcMgjpC78R3e0tEwboudp6gm8W/J0XaQ6EeIlOgzrgpfRbnqKTRDECI3yO
X-Received: by 2002:a05:6820:450b:b0:659:9a49:9026 with SMTP id 006d021491bc7-66117a16466mr1430542eaf.83.1768605131855;
        Fri, 16 Jan 2026 15:12:11 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:bd39:740e:f70f:5f7d? ([2600:8803:e7e4:500:bd39:740e:f70f:5f7d])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6611a78b02fsm1355053eaf.9.2026.01.16.15.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 15:12:11 -0800 (PST)
Message-ID: <8e12d2a5-3780-45af-a70c-4c112184fcc6@baylibre.com>
Date: Fri, 16 Jan 2026 17:12:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/9] spi: support controllers with multiple data lanes
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
 <20260112-spi-add-multi-bus-support-v5-3-295f4f09f6ba@baylibre.com>
 <aWVGZWg7zLpeG3Kz@smile.fi.intel.com>
 <22a6a28c-0f03-4571-b2a0-8c9b82788b68@sirena.org.uk>
 <aWVNBPfv-R5erugo@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aWVNBPfv-R5erugo@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/12/26 1:35 PM, Andy Shevchenko wrote:
> On Mon, Jan 12, 2026 at 07:11:26PM +0000, Mark Brown wrote:
>> On Mon, Jan 12, 2026 at 09:07:17PM +0200, Andy Shevchenko wrote:
>>> On Mon, Jan 12, 2026 at 11:45:21AM -0600, David Lechner wrote:
> 
> ...
> 
>>>> +	/* Multi-lane SPI controller support. */
>>>> +	u32			tx_lane_map[SPI_DEVICE_DATA_LANE_CNT_MAX];
>>>> +	u32			num_tx_lanes;
>>>> +	u32			rx_lane_map[SPI_DEVICE_DATA_LANE_CNT_MAX];
>>>> +	u32			num_rx_lanes;
>>
>>> This adds 72 bytes in _each_ instance of spi_device on the platforms that do
>>> not use the feature and might not ever use it. Can we move to the pointer
>>> and allocate the mentioned fields separately, please?
>>
>> Do we have real systems where we have enough SPI devices for anyone to
>> care?
> 
> Define "enough" :-) To me even dozen of devices is enough (it gets almost a 1kB
> of space) esp. if we are talking about quite low profile embedded systems.
> 

We could make it u8 and save the same amount (on 64-bit systems) while avoiding
the extra complexity of separate allocation.

I'm not particularly keen on requiring `/bits/ 8` in the devicetree though since
it is unusual and often trips people up.


