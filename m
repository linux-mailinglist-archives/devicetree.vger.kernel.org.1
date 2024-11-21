Return-Path: <devicetree+bounces-123437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4089D484E
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:47:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C2BF2830C3
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 07:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C28D1AAE38;
	Thu, 21 Nov 2024 07:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cjg2UNQK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5754206E
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 07:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732175251; cv=none; b=SnnA5sBecZfIGq05l1IFcR5K6QMj7AFJqjTy+kl+r4aoneQsV0uzW2BeghDcbzLZ2PuUaKfulWW0UH61dJfbtcH983TlYDnV3IgNCmiQXnZOcHxbSG7eIvHcYRdByJS9RxiFF2rusWCPaDmwA6gnKj/4VxaeE7atGPg95UAIDH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732175251; c=relaxed/simple;
	bh=YeL2ghLeyHXtI4iH/ZhL0JaPrgj8DbmE6O6mhpAS8yQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kf566lVs79KE8GNq5/xi7IjthcwJkcdYSS41UGEGk6s12b/0mSnKBqYHLxAfjstfE6Tj3IRprAItCmuiOjDJADRI1KkxPkJaNA2vwhko2qGw36BQmgKjqtDLgxQ9n3RD71kNOgtqO4aoboVYN0qOsQgV+HHxq+oGerME6rebxTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cjg2UNQK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43158124a54so179545e9.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 23:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732175248; x=1732780048; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BS5ZRVYZSc50G5o4Vd0b7F4JpLeCAVQYGlYkmwTCAMk=;
        b=Cjg2UNQKQyRsFYZoF3ufvdJDoffY0aOIk8EfBH/1m7EnkKJJq2uOd2TYjxJpL8bvvz
         gLCFl8tfdbFBBf9DQEyUoVOeoHvfmY6xRJNGIY4TpaTFEiLPkgQeT0iwzXBlJQSo7eKf
         YObt3dk4RMJA2g6TCWJOnBbHTiIRaHTkrgRsvk1D7wh4JkiBrkc8gUaRkU407S6WLDjX
         9gmJR5/81+Rz0OBmlXGMDh+k7eSmNFZkcSIHALV+s8GVvyOiBGiVxBWGeyzR8fi/WWbi
         z6491WG7Ytiy5QcQxlLHiY17I+shjR2NCz7p1HmstAuEDOSyiwkiAEu6piVt1+NVS+Ur
         KlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732175248; x=1732780048;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BS5ZRVYZSc50G5o4Vd0b7F4JpLeCAVQYGlYkmwTCAMk=;
        b=e5SFAfvSMMaxRvAtfY2rddjNVZrKepmt1QA5fu3kVpP3AAbIpS9qPcTMyDtQDkzmj/
         T2j6oe3yNBuRqAS+ke9X/XrXrIHMKURXwMUFTfJpXRrgB/eT2Y1i63vKmEE/3+C+X638
         25RjP3Uhpo55ZyTputQV7CHF01bvXtV2wsm/XgBNF/WnUw5EqxlHUbTSGSipQueWbWJD
         YMwUnFo++pm1DQYMSvcJ6ThG50dcNZerpWQFhhEgVCVhnZfjbVBCrGJRlt1ZiH78dsCb
         0YBH/Fved7fK7b+EIDghAkmq5FoEKFsqbL9Iero/fgWiZN4cFruxF/d6G/2gDRML6FbC
         Qe2w==
X-Forwarded-Encrypted: i=1; AJvYcCVIga3hbSfFMY5lOSEEZtMF8gyYQJO2o1aQMJzFoQ5H6hthRqy1WTDzYoR/tep1VV1yNPzC4G99EeXO@vger.kernel.org
X-Gm-Message-State: AOJu0YyPoEpCZxA9Ks3p2eGSLu6H9LhJgWhqr2mBMio15QjJVtivx6/j
	qsyWRxmmsiNhUnbxqCjmjwITfQ80fFn3GfnTeiH0Q1m7d1UqCS/EMezJWdG6JMg=
X-Gm-Gg: ASbGncsd8qPsyIjKNS0sL8zXtAxXP7LD971encbSyChhQqOrBUjeYCBTjcwXTQX/aEP
	WJw7cNBYTnjPwT1f3YgafQE5wzhz59rXGaHkcTux9UOP869xIwa5A+faQPathDLWv7JVVRqWsHo
	IqMSMCjBOHp8Qx1n/PZCj1kuWV9Yl+z0xNSoFAbYNGv30zV90Y8WbUlipb100NIBNSjauN408sX
	a+uMo6ym4rxoWMDx/pcs/kkvVQUkJeb9tsLICxsx+/ZO96AchTCwoeJ/pxy1oebB+3jUA==
X-Google-Smtp-Source: AGHT+IFxWcMgmH8My3CD7LJZvACg4t39rhilu21wZCuNimks2qFogI/hGPY45e0t1ZOyRKzNa/Kt2A==
X-Received: by 2002:a05:600c:4fcf:b0:42c:aeee:e604 with SMTP id 5b1f17b1804b1-4334f030467mr22124675e9.8.1732175248624;
        Wed, 20 Nov 2024 23:47:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-382549452a1sm4073701f8f.106.2024.11.20.23.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 23:47:28 -0800 (PST)
Message-ID: <94c90aef-9807-473d-b71d-168282d87570@linaro.org>
Date: Thu, 21 Nov 2024 08:47:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: vendor-prefixes: Add TouchNetix AS
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Luis Chamberlain <mcgrof@kernel.org>, Russ Weight
 <russ.weight@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>,
 Danilo Krummrich <dakr@redhat.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-input@vger.kernel.org
References: <20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de>
 <20241119-v6-10-topic-touchscreen-axiom-v1-3-6124925b9718@pengutronix.de>
 <b5hjephfcvdu2jjchodaj5u4yltvatdgmse7xvwkhaepn5dinv@sfl4utyuz34g>
 <20241120081527.s6pfo5soa2tqvra4@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241120081527.s6pfo5soa2tqvra4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/11/2024 09:15, Marco Felsch wrote:
> On 24-11-20, Krzysztof Kozlowski wrote:
>> On Tue, Nov 19, 2024 at 11:33:52PM +0100, Marco Felsch wrote:
>>> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>>
>>> Add vendor prefix for TouchNetix AS (https://www.touchnetix.com/products/).
>>>
>>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> I think this did not happen (only Ack).
> 
> Huh.. I used b4 to retrieve the latest Bootlin version. According [1] it
> was already present :/ I can drop it if you want.
> 
> [1] https://lore.kernel.org/all/20240703142520.207066-3-kamel.bouhara@bootlin.com/
> 
Hm? This points to entirely different patch!

Best regards,
Krzysztof

