Return-Path: <devicetree+bounces-149260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F31E6A3EECA
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD32F7AC88A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457FC201028;
	Fri, 21 Feb 2025 08:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0mCHeJz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36994201004
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740126979; cv=none; b=BeLks6kUTUHlWWzqyp3pKVYx1SQimxZ9iRtgD6m5uocGUnZgM5H18jvXX9g22Ahzkz01j4OdzLpYipbhbA9gWYpLbmdGkqgTz+BwT+mbGoODSz8mBRTvwJuS+g88ZhrQStGYwJb0gnNfle/cVMxgp7s9NDiODmaelmZcEFeUhR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740126979; c=relaxed/simple;
	bh=X65HoBLNdWc+ar+FG9X4zpgTBh0u4+kjCrslR/6RP3U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Lm7B5i4TEmPPZObk6WXeqhE2zRoOK+X1T74v5Cf6sbVz7Ey5bqpBMyTBoDsla2NeeHtFwd0QCEGjl7/h7yVRGMqslp4RN1WU3oAPYnLNqAFfIbMMbXwHhB5JtxHb8jmix/CXqbHHpf+UDbupeZ9CNMEgvjtQSYnkxolDlWWFKig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A0mCHeJz; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5dfb26020dbso283393a12.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 00:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740126975; x=1740731775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QKL8Ay+wgKZPnwjJZqrrXxULzTRfOvNphhjWatjKPCg=;
        b=A0mCHeJzY207G7dtGxk+0capY1k0OLcZqLe5zSqfm3p93W3dWS7IdWFLDSfHDHCZ0l
         Au7PO7p9zWLEaDFGy3mr+KIWmBVuTdFwcTIoFmSBSkC/TIaJMmqnpWzGaP5GziDiN4oX
         0tgrIRVEUd0WpMkKS1CTbSCQZ2T7ricjjkho3XB8AN6YbjGypcZqs1pnI8Dbkdtlf4nd
         Hytp4IwJrQwmhDfv+NEAjBczw7WK5zrLDCwe67x1hp/JqNl2Zo3mEuBh8EfDg7YW5+Z1
         U30LFxkIfH2I1K+SVL0//CpI924voIB+eaov1NrQ/S+B49pcOsM7lv8oa5cr2OmelkCH
         EpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740126975; x=1740731775;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QKL8Ay+wgKZPnwjJZqrrXxULzTRfOvNphhjWatjKPCg=;
        b=J47dxQfjTFa/rw4nCMKHXHtpZsNI9mCrNysKmPxZ4vTlEpdGpdpBdCZWhWUXJ4i6m+
         Eu0SNuXAf3L9lfn68v65jKhXK/mlTQ6/eijEaypPb4mcjr+iDkaMj6ZV5N0YpX3xg0So
         jRL1Xgn2ldlKK1KVeOGxWeASOrheWYgZDTEcEtUAPeO9ClikGsr7KIdRfRNS6qniQ8I7
         B3m2pYGZpxtJShqkSKQQPyAYoi0osr+sX1XUl7DFH9A8FjAPD4RcdunpC/wSzDPe0KUt
         zd1PKKzB13Dd79vpjPAt+rnILBiQLFqrvfwXlyKNELssZiRaZsbre84W2WtuHD1+zdIq
         8MfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5ajk1xiGvTNzDHe7sQ7T8cqDhIJJmW8z/y9m5KQUQd0L0/1XhI16dnWTDH3IbdEsFd+NAAVkOtCYn@vger.kernel.org
X-Gm-Message-State: AOJu0YxE5i+Jev8qCLf6BsBFKAzNFACJyYU6lybmu6sFckpKriwQyawM
	Ua1l2ib+sg1Q/0o8zee1HS2c2cRt3cGDOAe+6liSHyfEBwYu9hRcfGkTy8VwHUI=
X-Gm-Gg: ASbGncuIRTdQu4tLUY2C5ijoNVxPBGlYcZkHCLorKy/WRkb4k+T0qplxWxw5K7hYg0C
	9vYq/LIVJjC/C6dAsKLxQTP2Xe8QY9LSxs/xiK4REosy+tIrmbJ6poW3Bh8X2cutaLR+6B4YlWW
	Zfh8+2QsgS8rifNyCelOMGx61mu780BKOYW59cmHMcur80hk3hSoHotJUmzJaWbWd5w0txzbEab
	jphjTAHrNJueKU0BwZzdzs8GMBPRtUHwCTpZS5ChkLCd3PkobMslaKfNER04QbqlqRgS0SK8gJe
	7cGS/89VIHkvakpVNj/AuBZH9CYGBqW03N/RfoOQzqgM8d6gQGD+qjPvpUv2iQPH+LLBnQYUpfX
	ahBzX
X-Google-Smtp-Source: AGHT+IHhMeTPzc9o8Mc3A4pZdz/U1wryY1ec8xOhVWr4LxFvamT5fLAo0iBOuCyeUhsvP1eG63wRew==
X-Received: by 2002:a17:907:7f9e:b0:abb:e7b0:5437 with SMTP id a640c23a62f3a-abc096c807fmr90322566b.0.1740126975506;
        Fri, 21 Feb 2025 00:36:15 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb6e4df5basm1236889766b.152.2025.02.21.00.36.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 00:36:14 -0800 (PST)
Message-ID: <938c66cf-5be4-4b14-bc1b-8b9f7afaf290@linaro.org>
Date: Fri, 21 Feb 2025 09:36:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 1/3] dt-bindings: i2c: aspeed: support for
 AST2600-i2cv2
To: Ryan Chen <ryan_chen@aspeedtech.com>,
 "brendan.higgins@linux.dev" <brendan.higgins@linux.dev>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joel@jms.id.au" <joel@jms.id.au>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20241007035235.2254138-1-ryan_chen@aspeedtech.com>
 <20241007035235.2254138-2-ryan_chen@aspeedtech.com>
 <SI6PR06MB7535BFD3377505F5191AED7FF2C72@SI6PR06MB7535.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SI6PR06MB7535BFD3377505F5191AED7FF2C72@SI6PR06MB7535.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2025 09:25, Ryan Chen wrote:
> Hello Krzysztof,
> 	I am going to submit v16, and will update the yaml file, in my this version will add aspeed,enable-byte.
> 	So, we should I do about this patch about " Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>" 
> 	Should I remove it ? or I should keep this Reviewed-by?

If you add a new property, then please drop the review tag.


Best regards,
Krzysztof

