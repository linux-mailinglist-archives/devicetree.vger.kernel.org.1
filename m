Return-Path: <devicetree+bounces-57120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6372989BDE1
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 13:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 804A81C20A08
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 11:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FEC65198;
	Mon,  8 Apr 2024 11:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hP1fTcwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7FA45958
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 11:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712575057; cv=none; b=b7QnJ16VnClz4m/W9gx5WELephZjsVGwO22a87fuNhng/gbreA0TlFU9e1fJDopr/VMBKLilfU/p+ximtPSQYumQUXjsm9uGzkAvJKzpBvZI/8FgFD2tFe8CRhjXI81T4h5C5ZGqGjQQmxK7AzawP+Up7piODWlsroQZlUi9N6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712575057; c=relaxed/simple;
	bh=Q2nAS9zJ5JzsultoypBp3VoX2SI43T/nUwIWrT9F5dU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HWF0N6uTcntaGN7wqTNP3S2oFfa8kPvmU9xIzsV3h0Uv5zxt2Xnd5GBZs8H25csEJQHYzPwj1N1+lUBomvYJ4wN9tHwED/ysd0aNCQORXfAiTYvGg9jS243K2p3bm/YPD+FOZrmTXoojsnDI7u4M7wDChP3cTky9yK4dzzL6tkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hP1fTcwB; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56e6acb39d4so352070a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 04:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712575054; x=1713179854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yBhvJyC0h/XUjt9/wmeeQD+qmq3q42Avp/CPkanLhDk=;
        b=hP1fTcwBZByo4Y+45s5GXR7aHrEROqV6MdQoZKZkHoVZ7Ay29G7f9oSnA+6+rr9JYg
         v6mtLGFVMTeydZSnRPMm7YnV96q7lxdkkkJwBUBQl3CURPXC64I1PwiHXX0q1Y7tW9eZ
         IUAxSWMf6XgWfZbssfD/vwEnuJhBE5qy51gyCK/uaG/05yx8QmbZLdVP4uWC4K28hBaz
         M9NSor8KtxvOTxzmrCCMV2QbcljLAL7WQPshR54yMDHw3UUgXjCO4uWxiEVPcAhcDt6h
         o14r2yFr7xGYdzj5Yi3iwoCWLliBFsW2MT7kn1hfe8bPPebXDEjbGRTSsJmIyNQLGnFG
         R3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712575054; x=1713179854;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yBhvJyC0h/XUjt9/wmeeQD+qmq3q42Avp/CPkanLhDk=;
        b=tmOXrx5RVpWzeq9lbC7UhquX+ajeWifk5WEID7MmIjkwudd/daTa2FMFFJHvTI7OUv
         6nwaPzIpYWHhg2dH/w9NyBUCE0Hg+JXDp4ji+d2xDk3q1NrUOnDkFBkXN6aPDGVEE2W4
         XUhcyxxNiWis1GAz8nC2RtCq4qpfhwUOumsYJ01iDwYBKYlPn/yheeaIPYqHJgcDEKGZ
         Nkzgjfqwf/0gH4UR5EdhXZCkpAHVH8gQPL0YTZw0KnacNFKGY0URSUFC96+S8aVxn4JF
         k4PUuKJe7uWfgtxdF6Dc1/pkJc+2WIGlCxC+XuKOdh6UgXw2X8Ha+AvziBBfG4df1Yw/
         4Wsg==
X-Forwarded-Encrypted: i=1; AJvYcCUE0BWhyg30mUfR4GbWjbcKthwIN/W9gCT8aSx6v5dtAsrp/d/5Peuh1dZCPzWF7nh0w5mIPS24K5mc2gutIFo7Fx5Pk269wZsM1A==
X-Gm-Message-State: AOJu0Yz5l2zsgk1RtIYTDGstPczjbKuqH2hwdO+ePI8ds7wxDLclyK8L
	VwW3tAZI+i8FOdtmwcKHCo3XHnkD9u+2Vit400QXckYMbKB4UQPRCtzqY/SZpz4=
X-Google-Smtp-Source: AGHT+IGb++DvvZ312cO8dp/qa2cKF1dzcCoupByRCCKaIvaJRQsuaSwGsyypDPNTydTPn7xIAAROOw==
X-Received: by 2002:a50:bac6:0:b0:56e:bad:36b with SMTP id x64-20020a50bac6000000b0056e0bad036bmr5379371ede.21.1712575054510;
        Mon, 08 Apr 2024 04:17:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id p15-20020a05640243cf00b0056c2d0052c0sm3979188edc.60.2024.04.08.04.17.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 04:17:33 -0700 (PDT)
Message-ID: <ab9affc8-de68-4ec9-bdfc-02131191bc3a@linaro.org>
Date: Mon, 8 Apr 2024 13:17:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv3 1/2] dt-bindings: usb: typec: anx7688: start a binding
 document
To: Pavel Machek <pavel@ucw.cz>, phone-devel@vger.kernel.org,
 kernel list <linux-kernel@vger.kernel.org>, fiona.klute@gmx.de,
 martijn@brixit.nl, samuel@sholland.org, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, megi@xff.cz
References: <ZhPMHdt6r/4D99Zg@duo.ucw.cz>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZhPMHdt6r/4D99Zg@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/04/2024 12:51, Pavel Machek wrote:
> Add binding for anx7688 usb type-c bridge. I don't have a datasheet,
> but I did best I could.
> 
> Signed-off-by: Pavel Machek <pavel@ucw.cz>

...

> +  cabledet-gpios:
> +    maxItems: 1
> +    description: GPIO controlling CABLE_DET (C3) pin.
> +
> +  avdd10-supply:
> +    description: 1.0V power supply going to AVDD10 (A4, ...) pins
> +
> +  dvdd10-supply:
> +    description: 1.0V power supply going to DVDD10 (D6, ...) pins
> +
> +  avdd18-supply:
> +    description: 1.8V power supply going to AVDD18 (E3, ...) pins
> +
> +  dvdd18-supply:
> +    description: 1.8V power supply going to DVDD18 (G4, ...) pins
> +
> +  avdd33-supply:
> +    description: 3.3V power supply going to AVDD33 (C4, ...) pins
> +
> +  i2c-supply: true
> +  vconn-supply: true

There are no such supplies like i2c and vconn on the schematics.

I think this represents some other part of component which was added
here only for convenience.



Best regards,
Krzysztof


