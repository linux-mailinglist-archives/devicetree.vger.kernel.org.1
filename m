Return-Path: <devicetree+bounces-103734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0229F97BF78
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 19:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 268481C21E55
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 17:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E211C9874;
	Wed, 18 Sep 2024 17:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DSmAuUc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748401B1505;
	Wed, 18 Sep 2024 17:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726679416; cv=none; b=nYE95VHJwZaVBBW+D3XaZvt6+bHHL9L1IU8u/P7GtQx7MSMt0brpjM+kYjTvL9QiBhcUyiWR9Ivwry9hPn3lGIA/0nTbC8u3On/gc6q2GMisdGIGBDmHe7w501EYv3m1TAxdpptBaqgZTLhrm9Sh+GZCfZnfm5t7kLi1xtW7Gi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726679416; c=relaxed/simple;
	bh=L4yLwIoVt4BSHIH1bxNEN/Cr/3eewtWIwpTxo4CyP2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B2TOo0yZJBdLiYs5Jt1+MVLzagEHaZqZby/o6KkCs+/PbFWUHkG8QsO0/+XCOjqsYhuRRGJ4cA/ZgIWQyHpHaG0Truv1nLx026FAGlVK7QHCBps0cR/zqQFSihuf5u0098i7VStaspScGgVLdToh1LP9sz54yDzTx0spr0zbmoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DSmAuUc6; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-205722ba00cso145455ad.0;
        Wed, 18 Sep 2024 10:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726679415; x=1727284215; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Q9vYLjiVwTBRNkEh1sg4rE4Yh0l+ekkx9H32x9BbROM=;
        b=DSmAuUc6ajQ+qXwe2TiwOQNPK7aqd4Zu61Kupr2Gxe2D45jds5Y2e5KNd3kyEZVjAg
         S5xPqCB4W8NL/eMw5MJGkYxiGFkkPnsACKmQhVLmRuDZhemvhT2in6J5OX1sn0GhvQvY
         HLSlB876c6RUZPTuUS5QTA9svGYiPh5DlJkHZu02vciMKitg4vqnhJRO8856FQ9Fgrvn
         1H4kNb9ReJ4XPaivfo34F8MIE7NyQwAomDTk594976Y1IsHOgKpbZAkOw28yGeBoEGr+
         Pav967xu9oMWMkTX9HlDiVqfuk8cYEIQVPp9Kg6xl6DNxr8hLI7Vb2vG3PJFK4bxPty3
         GB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726679415; x=1727284215;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q9vYLjiVwTBRNkEh1sg4rE4Yh0l+ekkx9H32x9BbROM=;
        b=nmO/lUgcaeEdCp+ZQ23FiMy5MnV41qO+LiVL9NPBSndcev7Du1PUuZGhRewwc7v9q7
         xP1AG/KyECpZ+DLeMBgHQ89qBhEd51nNqekQTf9UKVwvSBWnBBL3xRtUFjYT7C8n3zcS
         /0Zo5UbKdjcP+I8RDx9hqfZF2nY+J1ejkMxduPnXaQGAqVTxaBZpfMHAHK3gBLKleq80
         iQt6pq2FSwg3zo1YMyEcBsmw9GyCfwu3osz6yMM4HH4kNlPf9DBUot958O24FXPGa1Vz
         RIpqgBnvVsVsyGR9JbxAI17bT8YZ7sfIhJpIPCBhv/Q+00QGGDFt+Vkd0uuJmQFv5g+d
         6Zuw==
X-Forwarded-Encrypted: i=1; AJvYcCUgOhww+DZMmZnCmfaLUtpNBQQKm9qczOwBRhkZlqh6aB5TQWbw6o1bNOrsN+lX/uLFtEhCem1sy8IE@vger.kernel.org, AJvYcCUr/icG4zU9JvTSbH/mIz1lavM9Yd6TCI1cW1qJbbNUrK+AxWzOzycmW+2Mc6risZnnyMdjxsOGhHzzhjU/@vger.kernel.org, AJvYcCWUSWyWk/P+FkH8vX6w7moln0bIS7T6nlbZSZNOdGrOb+AMir0DHObj7VU7ulM7wzDCZ1J9IpcPHs8OU28=@vger.kernel.org
X-Gm-Message-State: AOJu0YygTX6FbolYFEOTUsIHHvDWQwVPXfT0XPYKhgDmB/vmmlAhZdwa
	qcfXQueoffuXcykeWvBjDdQRV6vujVCk0MUHifb8milOM9Ic/+KA
X-Google-Smtp-Source: AGHT+IG7GNSvr8+amUbtoVcCNV1j4OWJUtz3aEZS7UZH2lE7/JoEJJo29C7TH56J0oLyU/dh9yhRNQ==
X-Received: by 2002:a17:902:f78d:b0:205:968b:31cf with SMTP id d9443c01a7336-2076e3f6207mr359427765ad.33.1726679414695;
        Wed, 18 Sep 2024 10:10:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2079475df17sm67301865ad.298.2024.09.18.10.10.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2024 10:10:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <981f64c0-4625-4af1-8132-7dcae32a457d@roeck-us.net>
Date: Wed, 18 Sep 2024 10:10:12 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: Add adt7462
To: Chanh Nguyen <chanh@amperemail.onmicrosoft.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Chanh Nguyen <chanh@os.amperecomputing.com>, Jean Delvare
 <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Open Source Submission <patches@amperecomputing.com>
Cc: Thang Nguyen <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 Khanh Pham <khpham@amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>
References: <20240918103212.591204-1-chanh@os.amperecomputing.com>
 <bc13d8fd-4f03-4445-bc4a-1e0ca7c23ef7@kernel.org>
 <6b1fd95a-ef4f-4d2f-af27-6c70a60754fa@amperemail.onmicrosoft.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <6b1fd95a-ef4f-4d2f-af27-6c70a60754fa@amperemail.onmicrosoft.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/18/24 09:07, Chanh Nguyen wrote:
> 
> 
> On 18/09/2024 20:09, Krzysztof Kozlowski wrote:
>> On 18/09/2024 12:32, Chanh Nguyen wrote:
>>> Add device tree binding and example for adt7462 device.
>>>
>>> Signed-off-by: Chanh Nguyen <chanh@os.amperecomputing.com>
>>> ---
>>>   .../bindings/hwmon/onnn,adt7462.yaml          | 51 +++++++++++++++++++
>>>   1 file changed, 51 insertions(+)
>>
>> Where is any user? This is supposed to be sent along driver change
>> implementing this compatible.
>>
> 
> I'm using this device on my platform, and I'm preparing upstream my device tree. So, I pushed the dt binding before.
> 
> I'm also quite surprised that there aren't any platforms using adt7462 yet.
> 

I am sure there are (or used to be) platforms using it, only there are possibly
no _devicetree_ based platforms using it. After all, the chip is old. The driver
was added back in 2008, and the first version of the datasheet was published
in 2006.

Guenter


