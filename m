Return-Path: <devicetree+bounces-254606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44579D19CA9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B19630A9EB4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748A53921C8;
	Tue, 13 Jan 2026 15:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BP389UcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62DC38F956
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768317009; cv=none; b=ECxo5U4xj0abdw7KjJVN3UfVvTXvEVHEX2dAyxR7eTC53vpTYdxj1X3AuyNUgQqJTU7v2l+TSWwIvZwh1w7OwhjVMRiDmpJNYR3PPbeGcWwpOn+9CkCmN8vNTLlbS4D6v2CAw7PPJK38rfur4QNbeRaCjcB0ba+uq5ETIfeAqSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768317009; c=relaxed/simple;
	bh=Gxb3l2ZkVTN8/AW+TlsPGmW4d4paIYYrU+ykzKv31xc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BZjbYyzvBq4ufuSlybarI116VJykOgYzqXjbOr52j4oyfiI3W3ClBnPkhO0kwv9A4zDDzXzWpuKTMZ9oD0VIQQDohHr5Yp7CsTuX/kzNac2e4JjcEwwCWrfCZC3DNvZlkf2Q17lbOHV125F0AYTWXCWwl+DEs1q+K2Dui7K1ay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BP389UcA; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b04a410f42so6648310eec.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317007; x=1768921807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tsl7cqadgB0ILyuJ5pleT6+lRwkh2wBTJUg/m3d1c4U=;
        b=BP389UcAySGw8CojUXWpYT0ugKU8kcOw8Ry293mBVkM9l+B5darYDR/fXN3YoG2e8s
         fScPzbpax3TidGuVvrWlnYj53fhLrCDG6X0/5iwHBiHdUKkZYLFqZ8x5xBDih6+EiIfp
         0RfBwqpFsqVgCggxO53+3dHwVp8zdwXC3jY1lA+zTwbSFUFg9TPK8oNmouEqyUO+Ei+J
         Xh8IrZPuvXdVWKcza88WAU/H20D5HDptR7Tua2pbQUxOA/ED2ylophfhiktlM+XsyjFq
         nRs24hylYsMWUv5R1Q75nmMPKAFrIA08rt4ILKvkGCdvuWjrGXwA/DsbgVDOgjlriSaj
         0s5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317007; x=1768921807;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tsl7cqadgB0ILyuJ5pleT6+lRwkh2wBTJUg/m3d1c4U=;
        b=fvUJoLop76GVh7oJRpfNQ8kcvNhCCEmuLLYC+jeMkhAF+ELGzlCs7p/wtblTw+BKhr
         YOzk+Joilp3cRQCsXQmst8Tor9xB1JZXJNwW/5jqelhB3Dpci6U4wLMO8jjkBWY0Q8Yg
         gOjksPux8W0d96J42LF6pewTLkD/xkTVrI208fFXR0qTfvdEsDZ8Rm/wIBL1ziwmpOyX
         uDXbLZk42BMkPfWHRrpw8h4ysPNjRoB8HWlYCvcH6uYDDvcCkiOFCAObuJY191GT7WkU
         kk5WUr2IrXMt/dV39JSqApaIxBNInaPnQFacWHWGH2qt15gF77nfao//hnHgonZIdPkW
         MJyw==
X-Forwarded-Encrypted: i=1; AJvYcCWpg3Otuxn332E3Z5HaDPAWWbkRfpRQTS1LkyNEtt+pHnrHlnGZCzE4aQZhhbjgG9Jo0BNyYkiwX4P/@vger.kernel.org
X-Gm-Message-State: AOJu0YyeqMDWyVfHDs4qehYqpkEPvIF8rd905YrHwFD7HGVCCTfgkxd3
	x23BMKYwJ1RZK2yHxmMPN542ajv8xoczdJVSRGneQlvTTOWf3+KS/IzG2BjnuQ==
X-Gm-Gg: AY/fxX7w0U1nNk9nFjkEyDyW6FtyE8UefVn/Pdeler2Ln1ocKhSxYKdY60GZNZ1nvyy
	2uyDYktUTLm7eF6UKScswMvFhfR347Heic7tQGzGob0QlJQSnqGDiiKvrDSqshAVCppWdx51qtB
	VQtcqkb6sVNIw4OBWYVO9X8LWj/jGqQ/Q/6sXpR/vd0AkDs9ywNbqXrB+KTVk5qYZZemPnPeI9w
	MNX3sxy/smkNHiN/+gl4Uch+KanJXTGpvp0pW2XseFxKfl9My/Q1Oy6JaPxJEoFH3I3P/CDCV9d
	5/5ee9LHhGJh3E9uf6M4iCycJIzjkhIPRJ8nSFokhuR3loxe4Dp7rEi1BIFoaqVr3ralOzRNgiS
	Ka1K+cJlAsyKC+hzoVYuB5HjL8ErXQDKOQMqej4nEpD5E77Kn2PyMn0aMZRi61lbbWVKUs2fX6i
	AEyl6vcUP7rLTu4Vvar9m1OiH2LzT/mRgUwTBy1ydS9SZVb0cwS+Z49pmRxexT
X-Google-Smtp-Source: AGHT+IHDyD5oG2uXUZIVEGCqh29+M+KMR34zeyrN9l/9A7q54mG4sz3mCfwqFTvAWjK975OSjaMbCw==
X-Received: by 2002:a05:7301:1e8f:b0:2ae:5d3b:e1c6 with SMTP id 5a478bee46e88-2b17d31c5a3mr26669210eec.21.1768317006674;
        Tue, 13 Jan 2026 07:10:06 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1706a6386sm17950034eec.14.2026.01.13.07.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 07:10:06 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <f0d230be-676b-47b9-9565-22319b8e62cc@roeck-us.net>
Date: Tue, 13 Jan 2026 07:10:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] hwmon:(pmbus/tda38740a) TDA38740A Voltage
 Regulator Driver
To: ashish yadav <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ASHISH YADAV <Ashish.Yadav@infineon.com>
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <03da3b10-dfe9-466a-9dc9-b51e29938e3e@roeck-us.net>
 <CAJKbuCYcRMrX5H5rWXWXOz4FCZi5iu8CCE2Oi3WEsWqEikqsYg@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <CAJKbuCYcRMrX5H5rWXWXOz4FCZi5iu8CCE2Oi3WEsWqEikqsYg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/12/26 23:24, ashish yadav wrote:

>> The need for this, especially why it would only be needed for PMBUS_READ_VOUT
>> but not for any other VOUT related commands, is still insufficiently explained
>> (and I failed to understand the rationale provided earlier).
>>
> 
> It is specifically needed for READ_VOUT as it is being used by
> external controller to monitor the rail health.
> Other Vout related parameters are used internally in the IC to for
> output voltage related protections and does not impact any external
> decision making.
> 

Sorry, that doesn't really make sense. How would the chip know to match
VOUT with its VOUT limits if both don't use the same scale ?

Guenter


