Return-Path: <devicetree+bounces-181081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 878D9AC630B
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 09:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7CA73ACB7E
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 07:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D0B245029;
	Wed, 28 May 2025 07:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="T76+t2W+"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C9724469F
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 07:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748417490; cv=none; b=moiW+ivWQhQ5SO17Fh7iph1pR7XZdOgn04KpjV0E0ZvwIn7UmKfGbiWC0Z6xerPy4YIrZg22HzfBL3lKsiWsKDCUSRrNkRP2UEmhWbwyPDWKGW8Y6eZL21lvjLmN75JBmZHiJcevdsmnEx5gKrSRtrg/mJdNd3CSCYx7vot/zr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748417490; c=relaxed/simple;
	bh=UvIexZRUn+BGBcUY9tnDQQ7cZOqImj0Tt0QmErOJPf4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=POvpegdHk4G7tmsGB2AEvL5/cjfPCI6duJi87QPjwmdnarUw3zspwkoWKmTQfmsyls6MmQb6AwkYJeY+p6c4HURHdyBIadnlyZMC5nlwamMpG4Lql3R9RXilITyryS/5djFRKAvRboQ8d3HwuX9K1vHsu/uZZVibsvClcUB4bqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=T76+t2W+; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748417487;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NnNK+PMtqB0rA55xSs019Lt6frpG94moy6NPZkqGYPI=;
	b=T76+t2W+Cu63WOWuuU45Lsm1hqHr0qCL9gaBcyJC6EUrC7RnW05jT2BZgY6Xq1J64EZJdA
	DXsTBipnmRZrtQCqHxplP7EvyzmeSYleR6uj37I1JlYIntTU/+ePkUf7uDy3SKU/sSZAY/
	DIP9w+XB5TS0stQlGZ23azPMkVjx0Ow=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-171-KWf1uYmFNoGQe2j_TxdbXA-1; Wed, 28 May 2025 03:31:25 -0400
X-MC-Unique: KWf1uYmFNoGQe2j_TxdbXA-1
X-Mimecast-MFC-AGG-ID: KWf1uYmFNoGQe2j_TxdbXA_1748417484
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-442ffaa7dbeso31558575e9.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 00:31:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748417484; x=1749022284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NnNK+PMtqB0rA55xSs019Lt6frpG94moy6NPZkqGYPI=;
        b=XIhkSuGFGZmTV+uYSMBxs4Ob7w2Qg8szNQ1OoMfavH68HNswA5ADhQHHY4CD9Gn9Mi
         +jBiP056Q6Odv9Zc/A7PxGCjbymmJhh2X3l2YPoyxBmhTUJvh3Joa2rIEWXNpdKULdMv
         rPd/O1fpFVnesCUCBIMGa7+zbnVbX8R5Q8+4l18PbWe9jUBVTklOO7XBoKnK7pF/K9E9
         AGJtuN6VY1kR6Fu8HnDzdYqq/NOzJZ3tI/A3xLgPLIRrnGRkWtb7tf1/wmAk4e24QJVX
         nFq/r5TdYhhqoGcPoW5Qh480trDOhUc/vtCAZg3AaaLErVFoiBr798V5J66m/HmZz1oc
         RwSw==
X-Forwarded-Encrypted: i=1; AJvYcCUOokKrieiX9UpZxZTmFIPjE0ObfIR51zD7uTjPPH8JcxLtp1yBSEpiV1GQmqt62hr4CEGwE6zkRIjp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+iLgGAzjSa1FQ8mxeXEZqC4m85LhvpLSSivfd/DJECMhR+NtI
	Kj5MHMJ3AwRUhwucLW/y/v7a/Hsk6x25Vbar1OA58sd7lpk3WPPzEa/Q+kaYHfFv/JNzKbBGg2x
	fg78CXQF2Vhcs25yrEYjA/YDGb1Vj5EXVIe+2lgG+BE20H28nLXsSg9WFDrmus0k=
X-Gm-Gg: ASbGncv5+gaLknuqh21AfdvX8VzkVdHWVYDKcB5WGfEQcOEr9kY1h/GIaNkZi/AgtC6
	Pp/rN4ZoTj6N3RESx8LXtiLXkVwEKYqKv6+cnJh75BXh5E1EVmSOL6jcPbTXduMBHAIKFBb2aAP
	QZ3nEXLEeu8Ulmo+0ZhAhbS7aJdQo++EymwnRKOA1kcfR7qgZdKml9g1Cnko7S2VJGAAAaDWFTe
	qnocn+l37Z0FB/T3RjEJiqR0BJlgCAXO/pn71EPaYaqk/eRHwZML4xyEzyqh89YWBVW031bRbQ8
	FHkpUp15bfgTf9IMTcPHGbETpMX1StWDlx3hJx1RExQBD2CYFlRPlMWo9MQ=
X-Received: by 2002:a05:600c:4fd6:b0:442:e9ec:4654 with SMTP id 5b1f17b1804b1-44c91cc3dc0mr138588405e9.8.1748417484058;
        Wed, 28 May 2025 00:31:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdJu619yR1tj683v5lEJt4BlhCq4Yc5mhZCTSaskqgJ5HAGUteqarVvWl0xRjxTsnjM5kpEw==
X-Received: by 2002:a05:600c:4fd6:b0:442:e9ec:4654 with SMTP id 5b1f17b1804b1-44c91cc3dc0mr138588065e9.8.1748417483603;
        Wed, 28 May 2025 00:31:23 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2728:e810:827d:a191:aa5f:ba2f? ([2a0d:3344:2728:e810:827d:a191:aa5f:ba2f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45006498c83sm12303485e9.5.2025.05.28.00.31.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 00:31:23 -0700 (PDT)
Message-ID: <8b3cdc35-8bcc-41f6-84ec-aee50638b929@redhat.com>
Date: Wed, 28 May 2025 09:31:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v12 00/13] Add support for PSE budget evaluation
 strategy
To: Kory Maincent <kory.maincent@bootlin.com>, Andrew Lunn <andrew@lunn.ch>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Donald Hunter <donald.hunter@gmail.com>, Rob Herring <robh@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>,
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250524-feature_poe_port_prio-v12-0-d65fd61df7a7@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250524-feature_poe_port_prio-v12-0-d65fd61df7a7@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/24/25 12:56 PM, Kory Maincent wrote:
> From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
> 
> This series brings support for budget evaluation strategy in the PSE
> subsystem. PSE controllers can set priorities to decide which ports should
> be turned off in case of special events like over-current.
> 
> This patch series adds support for two budget evaluation strategy.
> 1. Static Method:
> 
>    This method involves distributing power based on PD classification.
>    It’s straightforward and stable, the PSE core keeping track of the
>    budget and subtracting the power requested by each PD’s class.
> 
>    Advantages: Every PD gets its promised power at any time, which
>    guarantees reliability.
> 
>    Disadvantages: PD classification steps are large, meaning devices
>    request much more power than they actually need. As a result, the power
>    supply may only operate at, say, 50% capacity, which is inefficient and
>    wastes money.
> 
> 2. Dynamic Method:
> 
>    To address the inefficiencies of the static method, vendors like
>    Microchip have introduced dynamic power budgeting, as seen in the
>    PD692x0 firmware. This method monitors the current consumption per port
>    and subtracts it from the available power budget. When the budget is
>    exceeded, lower-priority ports are shut down.
> 
>    Advantages: This method optimizes resource utilization, saving costs.
> 
>    Disadvantages: Low-priority devices may experience instability.
> 
> The UAPI allows adding support for software port priority mode managed from
> userspace later if needed.
> 
> Patches 1-2: Add support for interrupt event report in PSE core, ethtool
> 	     and ethtool specs.
> Patch 3: Adds support for interrupt and event report in TPS23881 driver.
> Patches 4,5: Add support for PSE power domain in PSE core and ethtool.
> Patches 6-8: Add support for budget evaluation strategy in PSE core,
> 	     ethtool and ethtool specs.
> Patches 9-11: Add support for port priority and power supplies in PD692x0
> 	      drivers.
> Patches 12,13: Add support for port priority in TPS23881 drivers.
> 
> Signed-off-by: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

I'm sorry, even if this has been posted (just) before the merge window,
I think an uAPI extension this late is a bit too dangerous, please
repost when net-next will reopen after the merge window.

Thanks,

Paolo


