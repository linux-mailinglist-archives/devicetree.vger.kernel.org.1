Return-Path: <devicetree+bounces-87897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 336D793B608
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 19:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 074F11C212B4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 17:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7017115ECE5;
	Wed, 24 Jul 2024 17:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="21GCeZYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A058915B115
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 17:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721842450; cv=none; b=qbjZI1CMp3slWmFoK0LW19yRZVtZyttSGuHB2Jr9XYV40EWTqWVsJD63HGc6jjH7bMNl9itncdKNgqmCmKFmXUH4WSg3JS9gMnZDABob/yPwrIrLshK26CFWn0Z681x+ayn+qY4zE1adBmTzjwbnG2R/Pg/MEXYdCwRyRJwoLlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721842450; c=relaxed/simple;
	bh=zERNpf3oWXvFjoLJlmFALzVVLrEhuPFttlDIlNr1mwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A9CD7hor28bS+g+/HED2/P4/UCOOQ9ZNMf5DqAkNRqZ0Kdm2aOZePPzw5bcUmZ/TqWeIRVn8xVjoFTtBiwKdm61kjxg2ZdkhkFJwJN98RPJ7hKyLrhS7jyOJiheJ27cApud+D6X7ykRb8wJPFhMtPLGPdvuuK9Y3F7ClzajlJXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=21GCeZYU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42122ac2f38so561095e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 10:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721842447; x=1722447247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3CF8kwNX6NMY/WwdtTRjKXajD0RVVOOrPiCE63zSxOE=;
        b=21GCeZYUjyLlKR/PjTJ2+Xq9JfPHbTttoLBIolPr6UNS8wUUZAV1dmz9D8gJWDkStv
         X18MTSe0FILalx18koy2xGWVr8Mf+z6lhSXb/znr6uJzQ4xyojFRuGQCa2Qgjk5CC3Kj
         WXS51f5ZSlW8xrpNPI4qXaT/I4nM4zNDunWcq8inmoyZqp2KaxGcv5x1aJPBiKTBU2oZ
         Q1VUUuuFlbURXTf+AYyhRHPD99EpC9zWW0L13juTYw4rNZgfT24vHK8xbsE9vXOU7C5d
         KBOUrTnpXNSOaNkmoMTtRrO0eMdgMzwwuNXBz00OlZKqlKcMEym4/bbE+PP/X4KQ1V6B
         Cy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721842447; x=1722447247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3CF8kwNX6NMY/WwdtTRjKXajD0RVVOOrPiCE63zSxOE=;
        b=lt7Iuwzc9p40Vj4tPRGpA6QKI6oFApd/3QfpqGbHnUle+OGD2LxmxsbPvVzHMRFYhD
         kFV7bcoTw/ojZzebRjIa2Fl9l012T2qf1ttVDu1MziTGDrypyFlciWjzOk1Z18nHE41q
         yp44M9Lcg74abApM7qqpoUNG9I+nuOLwo5D/syzvs0PdclGM7pcLxtu8JJUMOIgmHuGz
         stab022WC9pDiAexyXsE068FhgHVkqUGoyStfa9L4P/iFUxIMLKD4vlldWPwa7NIXOb6
         lZe5G7t6jEt3MxrhnjP95hXrUPkxAgzu1vl9O5IRrf/h0Mp8RdwRKxSnruGbtE7Tn1t6
         swZA==
X-Forwarded-Encrypted: i=1; AJvYcCWDoJOnbEGcCX6qNqxNspdIURGI+U7M8U9GH3/+83M4MOY2kdCjVyYMgg3J05tOqkAac1tQLBv5GTc9SKDeWijQFSzFvKsZEGclRQ==
X-Gm-Message-State: AOJu0YySdDDzGJtHtza8ZP7iYqqkW0zPGhq8vPVDY2ZfZcBPqudIB1Fe
	NjEiKpSzc35AsVKqSdExs/V7U5BRI1Y6cuy54a4eprnsQBKgokToeNgDqbpXCoA=
X-Google-Smtp-Source: AGHT+IFtTWi5rpFaTtER/Gz2ezWjweNVTL+H8GRpQpl1oXpGygMuuhcgu8RgoZHqAmmSVbrkhBv0Fw==
X-Received: by 2002:a05:600c:4fc9:b0:426:6fb1:6b64 with SMTP id 5b1f17b1804b1-427f99f99f5mr21820095e9.7.1721842446996;
        Wed, 24 Jul 2024 10:34:06 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8? ([2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787ced33sm15029927f8f.86.2024.07.24.10.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 10:34:06 -0700 (PDT)
Message-ID: <330ee34c-5a31-4232-8811-32a25a34fb5e@freebox.fr>
Date: Wed, 24 Jul 2024 19:34:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Maxime Ripard <mripard@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e7bbbe4e-7deb-46c3-9cce-1922f9b6b3a2@freebox.fr>
 <20240708-ethereal-romantic-piculet-d4ae66@houat>
 <pp3rc5zob3xeghlatw4vnpzplc4yjpjadkea465zmhft55dyl5@3cpoc2zovftv>
 <20240715-shiny-enigmatic-firefly-2a6dec@houat>
 <CAA8EJpoJ0132ZYGCO=8xQt8J4Z9w5jDON1H-VRCemFdyV-9nUw@mail.gmail.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <CAA8EJpoJ0132ZYGCO=8xQt8J4Z9w5jDON1H-VRCemFdyV-9nUw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2024 18:38, Dmitry Baryshkov wrote:

> Please correct me if I'm wrong. We have following usecases.
> 
> 1. I2C_EN pulled low. TI158 is in the pin strap mode, it is not
> connected to the I2C bus. A0, A1, SDA and SCL pins are used for
> strapping the settings.
>     board DT file should describe the bridge as a platform device
> sitting directly under the root node.
> 
> 2. I2C_EN pulled high. TI158 is in the I2C mode. It is connected to
> the I2C bus, A0/A1 pins set the I2C bus address. The device is
> controlled over the I2C bus
> 
> 2.a. The same as 2, but the device is not controlled at all, default
> settings are fine.
> 
> The driver covers usecase 2.a. The bindings allow extending the driver
> to the usecase 2 (e.g. via optional properties which specify
> board-specific settings)

OK, I think I understand (maybe).

You're saying: the current binding doesn't specify any
particular setting because the default settings are OK.
We can switch to use-case 2. simply by adding a prop
that will change one specific setting (backward compatible)

> The usecase 1 is a completely separate topic, it requires a different
> schema file, specifying no i2c address, only voltages supplies and
> enable-gpios.

I have tested this.

We can support use-case 1. by registering a module_platform_driver
with the same compatible property. The probe function gets called
only for a node that is a child of root. No different binding required.

Regards


