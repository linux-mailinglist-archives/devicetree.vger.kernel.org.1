Return-Path: <devicetree+bounces-87248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B49938D9F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A7491F20F4B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BF616C69E;
	Mon, 22 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="0IhFle3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5E52CA9
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721645152; cv=none; b=JvKal0bEcrQX5UnhvggxtSNxG70FeFHgBO2eqbrbSMXa8DUYCarztQJ8JdtigH5wu/tQl52u4k6Ta/5Lfie0F8opc7qXfb0e5ybl2vtFa4w+No6pKTqmzyPH0XrCd7U7InPLlbHGRwBvxkHQYKMNtZ3Xh+JG9DHIsuzicuN5bFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721645152; c=relaxed/simple;
	bh=aF3j0TrmnVp1p2npQybDiv9LcE984vxGW4haXJ10hMY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o00zcSaqNoQhO4UsnlVnSdVmsIkxD9uLgWeX/RtbvG5NOc3r/OCi2+ChMjNEi/gd8MzKlUZt54G2GIvSsZ5iNTZUBRNlYfAXTrmRrcxpR+cN2S46L5Q7+3V6HGTjzx/a/tP/F8+a3rjynAFNK+xZLgAHoryP8580w/38lPIDUm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=0IhFle3D; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-70d133ad012so23678b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1721645151; x=1722249951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yk4UQACOPEhu0mUYszop0tJksRuFg9b/i8uYeB9F4sQ=;
        b=0IhFle3DAfFitRliix32nUj3H1My774JMDpbk/6S/WygCcTXtVli0pym5Ga5vqhqR4
         TxlX6jvvclN4WpajwpMXC+vbbHTsll8QhwSpo7v9UeHZxzOfBukQkNvU/e09GnjVvmfS
         O/Gc6jRnr+6S+i1VeRUE/t/2ai0n2tqDu3wropDjmB5B9CKchEY8hrYq7hqPs8Bn10Gn
         fDcD63WBdQsRP4IqOtj1jtc7LJqrcI1No+zxXyXA6swN9670fJCsQNhVCarwyyxDtXgj
         1Pe9W82Qh+XehAtNRirohnt5T/mgEyHeO6g2da3bGZePVgeNqnNwVQzouYmCATaQZYJI
         I5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721645151; x=1722249951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yk4UQACOPEhu0mUYszop0tJksRuFg9b/i8uYeB9F4sQ=;
        b=DhnOOudj2PfBA9SFY8YmSek8KOjuKzA9cgTGaQr5T4nyciSe69L0jXK8kL4Na9X6S+
         Jo9Fs1rm2Wtx/t2rGlrhddS3bT8hlFMTW0zVcVHrNk8nHNZly6RzVSE9Bg/rI2RzubUo
         AammIlUGH5BuO7HZj9GlhE1C5gd2wSIhdCRGJNkZ04mjWXZUERDSTq3d1ombWzMj535x
         Ksg2QUfsnF1PRCKO7pPX5FSO1nXaIbP+eOWnN7Co8SJ23zRfZyPjoy1/GIIAV36YPp/B
         LkhDQW6CTRBxLc3MnRW0nWlyzfVD+3okiFQWsqtBzCQR+hRrq8502k6jixi00TngF6nf
         39mA==
X-Forwarded-Encrypted: i=1; AJvYcCWwFtVPyFn0hvtzfhmURQFsyb6OXB6NDLPs4vNCdFI7X95KPH8Ipwb+CQ6EqAAplaMzloDiZgaaxejE6VcLMCYBFPtW0PPHS5SMTQ==
X-Gm-Message-State: AOJu0YwlF6M3d1e2UdZkjcCmrafMrewXekYtDqGI6ZKiSgnW417BC5HU
	IZIKv5WpGnGt3mWuDjxPjT93Dh8s5T5qHPhK1iz5vDCl5yyPKL9IdTqXHxDkUQ==
X-Google-Smtp-Source: AGHT+IGbTDbBwca1C4VrH0/hA3S6xV1DimazE2cwql0k7QUaUo+m4vZviNr4xZ00h+PE/OuBz/gSuA==
X-Received: by 2002:a05:6a00:391b:b0:704:173c:5111 with SMTP id d2e1a72fcca58-70d08635b76mr5376790b3a.3.1721645150824;
        Mon, 22 Jul 2024 03:45:50 -0700 (PDT)
Received: from [172.22.58.167] ([117.250.76.237])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70cff5a149csm5078144b3a.169.2024.07.22.03.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 03:45:50 -0700 (PDT)
Message-ID: <5a865811-a6c0-47ad-b8a0-265bb31d4124@beagleboard.org>
Date: Mon, 22 Jul 2024 16:15:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: net: ti,cc1352p7: Add boot-gpio
To: Conor Dooley <conor@kernel.org>
Cc: jkridner@beagleboard.org, robertcnelson@beagleboard.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240719-beagleplay_fw_upgrade-v1-0-8664d4513252@beagleboard.org>
 <20240719-beagleplay_fw_upgrade-v1-1-8664d4513252@beagleboard.org>
 <20240719-scuttle-strongbox-e573441c45e6@spud>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20240719-scuttle-strongbox-e573441c45e6@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 7/19/24 20:25, Conor Dooley wrote:
> On Fri, Jul 19, 2024 at 03:15:10PM +0530, Ayush Singh wrote:
>> boot-gpio (along with reset-gpio) is used to enable bootloader backdoor
>> for flashing new firmware.
>>
>> The pin and pin level to enabel bootloader backdoor is configed using
>> the following CCFG variables in cc1352p7:
>> - SET_CCFG_BL_CONFIG_BL_PIN_NO
>> - SET_CCFG_BL_CONFIG_BL_LEVEL
>>
>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>> ---
>>   Documentation/devicetree/bindings/net/ti,cc1352p7.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml b/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
>> index 3dde10de4630..a3511bb59b05 100644
>> --- a/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
>> +++ b/Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
>> @@ -29,6 +29,9 @@ properties:
>>     reset-gpios:
>>       maxItems: 1
>>   
>> +  boot-gpios:
>> +    maxItems: 1
> I think this needs a description that explains what this is actually
> for, and "boot-gpios" is not really an accurate name for what it is used
> for IMO.

I was using the name `boot-gpios` since cc1352-flasher uses the name 
boot-line. Anyway, would `bsl-gpios` be better? Or for more descriptive 
names, I guess it can be `bootloader-config-gpios` or 
`bootloader-backdoor-gpios`.


Ayush Singh


