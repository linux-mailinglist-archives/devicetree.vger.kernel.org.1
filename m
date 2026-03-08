Return-Path: <devicetree+bounces-272608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB7MBAG2rWmi6QEAu9opvQ
	(envelope-from <devicetree+bounces-272608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:46:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9A72317A3
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F540300DD5D
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 17:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C0B393DDD;
	Sun,  8 Mar 2026 17:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VzLPZ0GK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65371393DFC
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 17:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991996; cv=none; b=IFEMBKkSenHuzjJMssia1cT3xGN5pS9yLoS/GOfYTINp7hv3C4OE3EEEQ23Xt3z2AD2YFGToY5GEvficdTIJ+F5ZfqHEEXOcR3gD+mchvsLvNKDRS6mahnnt/MFJ+w6eCBHKOmyRF2049zmuOiy/uG2Ncd3295YrW6yOXIjHGW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991996; c=relaxed/simple;
	bh=q1sB4fsqCBzIPiC3zBlpXkk8hJPBm6pc0dZS71SAJdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D1v6+OildF71EAfkrR6LnKhggntkHUb7S8RgPZoISZaXZb/XnA5e0y/E54wFcB+M3xT76tw9vP/x0mMEMVSUyfRaTPchkf1ZhKqxf8m65B7B7fOzf/bWY/EbCBo7w1XCLVy3/41pNEs2hT5c8X6X/fvplNyf77r7My151tWx1jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VzLPZ0GK; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2ae4e538abdso71416845ad.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 10:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772991995; x=1773596795; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=vDbUu8USvhNU4+cx6NKQVuCWx9MHpUkYF1z9m9Rpj5E=;
        b=VzLPZ0GK6q2oW07B+yaQ0Qq5KwwA6X9OB/TwsPGYI947GX9tQg+uqPJV0WvqMd0rdF
         KINm27R1IvbKpdd9FGwe7tO924ERMdz4WDQZUCpF/chxKnF2XBqtYJJhKjGmXL62GlRl
         COOknBK9HnTFDAEfRwH0P+0CA9Y/Wrcf3MYCH7XK8LRhmazl4i4QBzXeNQrhj1EhdyE1
         IUkvjpcahREn9ZkCd3mzT0JJI8V2uBW9DmPjmStBrrF+QKoh8wlUOowivSzWHDZHqNgq
         AESEoewsQpIj/FWNSUEBRb5Lml0wa4gQZzvF/CJEezn4BU8tVfIL0qbWRWN/3R6LM5ME
         cTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772991995; x=1773596795;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vDbUu8USvhNU4+cx6NKQVuCWx9MHpUkYF1z9m9Rpj5E=;
        b=adFQbLHbtuAaZUYKQRX9proRJzwPurCTmWfPzI4sZ17dNE28a53LSex76bxMZJZ57y
         jBuZKt1G/Qu42HBNXVuBD/tJwGrKkn1C9dSpVaqNsyqx2qWcH/uOXVNUeCynv2WiUDWQ
         1g+9AA6MqPc0i9V4B4Mp98oQ17L11bUn3jaj8+LRfLXIFknULvCe4R4CX92bbZU6XRBA
         4t1UeG+fgVLYLCCSIVc/WzJ64CHlfhfPfg2xuE7oaj1Ah5crUr/eQ9qZc+bzUSKkrkEw
         STXGqxlcbm+wJVvbXNybeKsygZKxZbgstafjulZWCQFNUN6rcZyDmb0TS/MIJzIF6t1j
         nkBA==
X-Forwarded-Encrypted: i=1; AJvYcCUdNO1NRm+fNzTIYFH90LGc7JKdyEvfdzQMhRGKKENfDFuA/eEq6dP3A9YdjyviPa3qWN4QyoGmsp1H@vger.kernel.org
X-Gm-Message-State: AOJu0YxhK3aW9OJKxIhBPu1FEHmelYccWklV6s7yVCy6XknJYQNGiaN7
	hFbKA85aWSDs5B6OhSvv2ziuPfp80Sf/6IQGoQ4nVASZg1cOnfmXng6N
X-Gm-Gg: ATEYQzwYhZ+Q4yxSDQPMmok5ePQu7OwyW5I/kQ1O7nqxpnZhR8yT2d0j3Fl1wdCGnh/
	0gW1Y00gGWI6r2WwLSwZ51fbPa+8khNyOA8x3sQPXS/TwtARMmUupr1nrJVt27xkC2zHBb35gfC
	cTzcjLinJmELFXo3DFXoFgME1CgKyLU2A7v4JOmlB/H4/TlcUVFxUTELeCeyvpDYnW4r+2D6ye0
	UpAnu5O28YTANE1i/9MxeTHITmsl9lkm977Vl2+g88S71crOi5pCk1qHa67qRo2jDUSrXGK503y
	s/yasYdPbeNWIC1NAcAuuGe1N1o1/LlT6m4aRCNYUgUnLKqWCvAGkEmzzltEXJ7y7Nts1Y75x0P
	bmyT3KBx+epM9Q+i2yAfJgl1TFRbkevjgsMQesiAvvCa0Wtf4wt+NXi56Eid/PRdYK3HdrzuoUx
	eOrrwnPjQ+URC5/UCMsBuHUU7DHK3Nc9A2OhSdagyGBUSu8t7ziLtbKW7wxshfocD098qo7Qol
X-Received: by 2002:a17:903:2283:b0:2ae:5223:59ac with SMTP id d9443c01a7336-2ae823849famr83305905ad.13.1772991994735;
        Sun, 08 Mar 2026 10:46:34 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83ea08fbsm85174555ad.36.2026.03.08.10.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 10:46:33 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <8584bf59-84a4-4b23-90f1-62297ee0da57@roeck-us.net>
Date: Sun, 8 Mar 2026 10:46:32 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add TI INA4230 4-channel I2C
 power monitor
To: Alexey Charkov <alchark@flipper.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260302-ina4230-v2-0-55b49d19d2ab@flipper.net>
 <20260302-ina4230-v2-1-55b49d19d2ab@flipper.net>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260302-ina4230-v2-1-55b49d19d2ab@flipper.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7F9A72317A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-272608-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.983];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,ti.com:url]
X-Rspamd-Action: no action

On 3/2/26 02:55, Alexey Charkov wrote:
> Add TI INA4230, which is a 48V 4-channel 16-bit I2C-based
> current/voltage/power/energy monitor with alert function.
> 
> Link: https://www.ti.com/product/INA4230
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> ---
>   .../devicetree/bindings/hwmon/ti,ina4230.yaml      | 130 +++++++++++++++++++++
>   MAINTAINERS                                        |   6 +
>   2 files changed, 136 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
> new file mode 100644
> index 000000000000..69839e7a3197
...
> +      ti,maximum-expected-current-microamp:
> +        description: |
> +          This value indicates the maximum current in microamps that you can
> +          expect to measure with ina4230 in your circuit.
> +
> +          This value will be used to calculate the Current_LSB and current/power
> +          coefficient for the pmbus and to calibrate the IC.

pmbus ? Is this a typo or cut-and-paste error ? This is not a PMBus chip.

Thanks,
Guenter


