Return-Path: <devicetree+bounces-80405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75809189FD
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A224C2821DE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73181836DD;
	Wed, 26 Jun 2024 17:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="W0jDPlNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAD017FAAE
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 17:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719422452; cv=none; b=XrHyRYKOuqt56C968UgjZ2o6qd5xFwk3w/jNFu3bUk9eIn4+T/cHCZ780jlFVxxdi86tCsYZHRe6DhSxxieRU4zAhYikogds1lpGMVKZOW6uhpLLVriJBaC/TKFL5m+tkENtTsXNbVrEbqyNacXT5kaVbAUgIlgTbxQXhA/dOoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719422452; c=relaxed/simple;
	bh=0VjJhtfeImDqcdqAytdo9VgW3YEziZJw24cXXxu7Pog=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gcm7tD/KfUOYLOq/14N9l0VxI6KNy/Osbvuo4c/Y3KJFaMly/XCCFhjMtuICuKoSZQlwjY7dMd9nOYvJqYRuQ9ExTAnmkX4KkjozOJFUJk+5tMwKp9N5f5Y6hGsyjQ8JTApRv+/zLFtKY74Dclxo4dR/H8rNiDCKYyZNSOtqny8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=W0jDPlNh; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52cf4ca8904so2455902e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719422448; x=1720027248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NVC3h/r5CxQGiQoMko3UXhyNRT0ZVRT3wiwtwfZ0XI=;
        b=W0jDPlNhVW/KqES6F97VhhcOcvgdXp3zR88pSXYN0j75XsZGk0yQsEmdYEVeU5O/+I
         hCASzgDTtTHnDktFpt/j/miTtWQh91jav6dlx0k72RAStXQlzypuKwF5r3Al4idyO3YI
         +y+M4zLGv9ueGar9hmozzJfObc9bHEHWY3TdhBKAPtRefBWTwKjqSyz99Dvjq/THabkE
         RTmbBhRM8xQok1xLEv49eBNNuYHM6bUFEjZkN5vpg/Bk0IdhfjikOseWHGdAsNNf0rol
         ZhcJ8T9mjoCqvPv00XwBFVJ/9DpxpQ2OxypyEOZbFzHiwkKJ559Ht1D3pN/7OehjGKQL
         Vjaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719422448; x=1720027248;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NVC3h/r5CxQGiQoMko3UXhyNRT0ZVRT3wiwtwfZ0XI=;
        b=TNf8Cg9kU9m+P6DdGEV5mAsYKeMw1nppE0YdX4CzNdXJTuIDeJHHXJn5RIzRrhUV1k
         ojACnfUnF42Pi0BkKJ5KJ9yYEIM1/6xt6h6JTOxBX/pweEps3Zb6FboGatTfr2ua5vrX
         vUfdLZm0eFWgTZR0i+bUc8kgQYhr+CtvNMZKqrJWecBzw328P1FIlOcfY0Xr+eBaEymW
         jbQt1RZOiWIo3GMp9vfmw7yW73fhI5wIGUsgD3cLjYAjCMkijjEsbc9Fu7u0jMhSk0jV
         W3fOVFe7JYKfc8zzlvFW9lO3Sdhy/F2AAxBQNfkwzCdKK9MRwnCAXameXsrKHSUQxoHr
         /Zjw==
X-Forwarded-Encrypted: i=1; AJvYcCWGFzSwRGw8L5k6rKwGgx4/ht+NwPibiBBgIFVYi4rY+Pl4COBBxKiDYzt9tIzkd2A/1kUNB++YIDVUUI3VJIITrzLaIA025Y3x7w==
X-Gm-Message-State: AOJu0YzmHg7xOCw+6dMjEGfe0gQxrybpYdzj2/jcXA5pV5PTBu/BEQ9q
	tIVAYA/L69sUB6CuY/6c8OXxoGUY5KLMtbNF8+tEg6adVKunYO+aj1vhrKtDvts=
X-Google-Smtp-Source: AGHT+IH8lQXkrfaoMLO7z1BOzyFcNoXKirkCLXuh1M/JBUyRJC5bVpoJYH0Ed4faS5pI20VcoPjQlw==
X-Received: by 2002:a19:5f5e:0:b0:52c:da1b:a613 with SMTP id 2adb3069b0e04-52ce0680acemr7217629e87.65.1719422447858;
        Wed, 26 Jun 2024 10:20:47 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:62d6:6a12:585c:d4e1? ([2a01:e34:ec24:52e0:62d6:6a12:585c:d4e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8272bd5sm31898095e9.28.2024.06.26.10.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 10:20:47 -0700 (PDT)
Message-ID: <d2012a93-911c-403e-b1c5-f01916a3200e@freebox.fr>
Date: Wed, 26 Jun 2024 19:20:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: add TI TDP158
To: Conor Dooley <conor@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
 <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>
 <20240626-blah-unseated-6cab234bae61@spud>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240626-blah-unseated-6cab234bae61@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/06/2024 18:08, Conor Dooley wrote:

> On Tue, Jun 25, 2024 at 06:38:12PM +0200, Marc Gonzalez wrote:
>
>> The TI TDP158 is an HDMI to TMDS Redriver.
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  .../bindings/display/bridge/ti,tdp158.yaml         | 48 ++++++++++++++++++++++
>>  1 file changed, 48 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>> new file mode 100644
>> index 0000000000000..b687699e2ba80
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>> @@ -0,0 +1,48 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI TDP158 HDMI to TMDS Redriver
>> +
>> +maintainers:
>> +  - Arnaud Vrac <avrac@freebox.fr>
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,tdp158
>> +
>> +  reg:
>> +    description: I2C address of the device
>> +
>> +  enable-gpios:
>> +    description: GPIO controlling bridge enable
>> +
>> +  vcc-supply:
>> +    description: Power supply 3.3V
>> +
>> +  vdd-supply:
>> +    description: Power supply 1.1V
> 
> Are these supplies not also required? Surely the device needs the power
> to function?

Maybe if the hamsters spin fast enough in their wheels,
these supplies won't be required? :)

The reason I hesitated to mark them as required,
is because the HW engineer told us that on our board
they were connected to a power line that is shared
between several functional blocks.

I suppose that's not a reason?

Required means "device doesn't work if they're not connected" ?

Regards


