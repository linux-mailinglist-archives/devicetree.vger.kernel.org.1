Return-Path: <devicetree+bounces-229231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 772C2BF520A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3A2E3A6B84
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AC3F2E62C5;
	Tue, 21 Oct 2025 08:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DQgfuRP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EB72E9EDD
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761033640; cv=none; b=ldKYAEzUeT9pCyil/ietzkeU5oUPDSAAWBevk88i9znLYj3Eqh/mX5/mp5LkJEG1tck+guBV3fMNJ+Q5SdWVgVnCb6V2N1dHfwZ/kkGaiz1qKepvqs5X8z9dHrK1jh0X+GfnB8ALp25zXIPdTmoBYeriHKto9Z89fPlwcm7k5Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761033640; c=relaxed/simple;
	bh=as74uJHWhlreB0WiQygF1rJw2SEOj1ZJMrc9Npm69Rw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XTjWXbcKJz24kduo/lPFHQJapkiT3g7YJ1KdX5gPhTy0dFG17lwQoEUqYaksM46YmgheKH2Z3q+CmgJPr90d1x9ZP7miEvVuG1qRADeTUmNPwzXnFj3bN4b9qlCsJZfMd3jnMj2TLfJe8h3XNRtfWguR6JF799Uxqik2fiq6yRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DQgfuRP3; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-36bd4bea485so3194231fa.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761033637; x=1761638437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7qHJVpyvcNiLDFs3rrvWmc51XDnNs0OU5eRzngg6P+g=;
        b=DQgfuRP372qyiPufz0tc0SaIRY5KGbb9HXNOue2PLVW/fJX5nwUiVT9JK7Wa70S8YZ
         cYWC1rME4cCdWvcNOiUHSNfukP98GhfdOG/GFAGQMdARJj309DXe0/YLerrkfBSBnHu4
         npLjngzHJnp2KTYFsc4N13wag5OX9SqTZMKD1v5e4/j/W3Ahen/QSf4zFVKHBRDafZUy
         SU3fBnA2WIgCCtPzOAxXJcBJ4Aw+HDUApbHBg89BAxKq7HnsK7NfJiMMg5+6xZ9h+YFs
         hb48lsJesDFqoWmvSD6LZNTkNNOcuQ2SYuiazKuCeXaYs1BXY1JWg9Go8F1U2Xrm08f6
         Hfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761033637; x=1761638437;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7qHJVpyvcNiLDFs3rrvWmc51XDnNs0OU5eRzngg6P+g=;
        b=tfBRnqBSWdPePIH7RfRIpVwNpB0wEXxBp9b/AnztOnuFsIIXdcD/37hasERmVa95HP
         DIadP+FyDBZ6efLctyr1a2V3iw9EOyU0kmIu4eTM8iYMiayvKyGVMFFxl6iLR4W7qCIE
         WokQftzegyKtF8/o/CYrioj5NSUqOwK0oWcCEq9t7O4NomiXxFmye1KdFe8RADTTuhKM
         ekeb3xG37g6Swo6sUhqyXKxNkn1ap+BBuxoNl92HXXCCu8FNcg4OjhmEi5Affvx2bCpY
         EiMVrxW9rQ+M/RL9VHEAw0Cc8kE68BWghmYqi1/K4AvZLq6rSsjU8lOL61okzZHWZK3H
         CeTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDz5lIXLN2EIioeBo3nHc5heudU3nyewfGpvGb5MVQCyASRGxwAFfWdXwkKkQA/SHXnRJgFFvHlPcR@vger.kernel.org
X-Gm-Message-State: AOJu0YyFxrUXC7A2oebwZqZh3yposo+QfJ0KcZvRkgasx2unEOdJVrkq
	5ZihzJ6ZjfPjKd0PQTbd6jGCmRMW6umA7/vY8T4X8JEbCPQFHlbkOjxM/Bh3QkM/VSg=
X-Gm-Gg: ASbGncswCeTJ2fLAL6fWt95Vnsn5knboDonJDfzp67C0YERm1Q/knZ6xWaDSd0dGDcL
	zxiRzbO27Kr95CCA+Sq5gDjHW9zZVPAlh8GgwMtVT1us1aU5jxTwivMBqfvtKgjCXQMUSscoafg
	DhYrlkV2PVs5kdPooLMaSlYFFPHZFv0k9/Jh+ISXV6oLCLzq9YSAzt+EyKIPHswp/Ta4uzfsHOG
	zABB2uV1fx0BOb25ssWOf+Y1TEYoguJfnn8Y6iTCBjHLYaszy0OPyxq+0sMhJkllcOiiYXthTUI
	UxxtTddZ7Tn492BalEYGzvhxZAx7Y9EAYj9HaoAFKYgEt6+3HQRTUfzlGbvF4gs3/DNfhI0bJJD
	PX7noVTvIImFktI3lJwtkUhfmMVm86shiuEpBlfuX/kmFZWxGLsY89p/yiVPOKmTRHbntB2iiDz
	x5QwWHyCoAVLXCrhKTWcPATdnCukfHsCsvqrCO6o1velM0hqqUgvg1J3U=
X-Google-Smtp-Source: AGHT+IGhfokm2FvG8zqbWNf/gHXEVsdl6yYSXJ8RwgxhN/iYvU2dfv9HuK1zEz9WBIXdVY35Ka9g6A==
X-Received: by 2002:a05:651c:4098:b0:368:2cf8:5110 with SMTP id 38308e7fff4ca-37797a79fb1mr16245191fa.6.1761033636707;
        Tue, 21 Oct 2025 01:00:36 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a922c196sm27361131fa.25.2025.10.21.01.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 01:00:36 -0700 (PDT)
Message-ID: <060938d1-9c9e-4a0b-a4ca-838b4b9cfa1d@linaro.org>
Date: Tue, 21 Oct 2025 11:00:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image
 sensor
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
 <20251016020419.2137290-2-vladimir.zapolskiy@linaro.org>
 <aPaaLZoLMH3TfyJl@kekkonen.localdomain>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aPaaLZoLMH3TfyJl@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari.

On 10/20/25 23:23, Sakari Ailus wrote:
> Hi Vladimir,
> 
> Thanks for the set.
> 
> On Thu, Oct 16, 2025 at 05:04:18AM +0300, Vladimir Zapolskiy wrote:
>> Add device tree bindings documentation for Samsung S5KJN1 image sensor.
>>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../bindings/media/i2c/samsung,s5kjn1.yaml    | 95 +++++++++++++++++++
>>   1 file changed, 95 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>> new file mode 100644
>> index 000000000000..2220b3e528d4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>> @@ -0,0 +1,95 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/i2c/samsung,s5kjn1.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Samsung S5KJN1 Image Sensor
>> +
>> +description:
>> +  Samsung S5KJN1 (ISOCELL JN1) image sensor is a 50MP image sensor.
>> +  The sensor is controlled over a serial camera control bus protocol,
>> +  the widest supported output image frame size is 8160x6144 at 10 frames
>> +  per second rate, data output format is RAW10 transferred over 4-lane
>> +  MIPI D-PHY interface.
> 
> Can the sensor work with fewer lanes? This is almost always the case. In
> this case you'd need data-lanes property but feel free to make 4 the
> default if you like.

As usual I don't have access to the sensor datasheet, what is known to me
is that

1) there is no examples in the downstream, when MIPI CSI interface is
configured in any other mode but 4 lanes D-PHY RAW10,

2) right the same information is given in the official scarce booklet:

https://semiconductor.samsung.com/image-sensor/mobile-image-sensor/isocell-jn1/

The same reasoning as above is directly applicable to the second sent
sensor driver of Samsung S5K3M5.

There is a known practical pattern that if it happens to be of necessity
any new properties can be added to device's dt bindings later on, thus
it should be safe to omit any presumably non-configurable hardware
properties from the description on an early stage.

-- 
Best wishes,
Vladimir

