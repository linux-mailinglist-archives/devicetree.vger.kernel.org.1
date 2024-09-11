Return-Path: <devicetree+bounces-102123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0751F975954
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 700CCB24774
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E97E4D8B9;
	Wed, 11 Sep 2024 17:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RLTfxw5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B61AC8B2
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726075586; cv=none; b=fd1tY23lDe0mCtcetN5wiaxbO5oLu10YMc/EORytCJYu9S26hCcmJ7dpJrOjiuzluAelJxnQAFnWUkRzape10VEoELo7cpyichu61m3DM3jCr/16hwYGLpVEb/ATJzdW7aIshMPmWzUcZizTbLWrVsFrZGOR7PveBmqVW4uKP+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726075586; c=relaxed/simple;
	bh=j4LfUsx854x7YJ4n3qpUsMJcQSYqch/FDWG/7MZN6hg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dtoaObsLFYTTHmAWzh8rHGJahAmm+d20wHOFkI0hsRc2J9e8YEyOKrPG7rb24aMVZCCr9CraCvols2+eBDRBJOUZ8Q7MAcNvC2eudvV6fxhi8+wz5tmF/pNYAtLrrkLHqxpeIX4xxyS6dsSh4q/aJ0+XjPCdrvwK0VdPZgZa2pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RLTfxw5x; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cb9a0c300so63055e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726075581; x=1726680381; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLZX+SWdHz2tB91UF3usEBJbpzw/IHLAgfNzOfmxmj0=;
        b=RLTfxw5xjaulz4Fgppqf+838Phf5Qm/KRabvOD/E4QrPBdfU1+YNeBVHUvfxC2kTac
         FCdGG31ezs//EDw6jyo/9N1W765YOrbwgUddEjZJXjDLkWl0JMoF5SDGRgA8998AUg5W
         Oy21iDDfyTzIi7pHTN5dFLzuab1m5D11aVKN3DaSyTzUXUvA/guIjWBKZBQVSqEonrgW
         ewHURwuIM3mznE78SeGlpnOT9TfsIoE7EnYaKiaK9fiE++iQyn8q3r+Gm2yRZKXIcOoe
         AI1krpr7+3DqzEsLlhIdKa3T5bbif4iwc7pL9PkANyR1O/QFVhmMGXgj/jVS/VzH9UJ/
         TYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726075581; x=1726680381;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLZX+SWdHz2tB91UF3usEBJbpzw/IHLAgfNzOfmxmj0=;
        b=HclXCDVTgjLykflhmU6tjA+Ukb9lkqaX0XwiQvBT1gHjAZxHEj+LIxpKnJKC7cfLHf
         5ibePzeZ6mWH1O/nV0juRSVF6EAWqpzw7gaobyLKDhnK5h65IuIGq8x5SPFo00+ZQWBw
         /cRg94787lzv9NyxAng6fP53d72ijAMZ/8tkL6Fv+WrbA/zq3CvtU/iJM6rG/1VbgY2/
         fn/Dd2prBtjmVOXt41qmgX85VZPovH2ylChoBGyDxA0+/BuyvLVcPmZRVWwiY75ldA7L
         fbBwznolu3vxMP0G+KXl+zM/xqjWb0Ixt5WRy4t45PZoibpS1B0Q9Af9pAQRXKGq+di4
         RCPA==
X-Forwarded-Encrypted: i=1; AJvYcCUnmHV3UoXvqTjUQNYl4NPPpF+OlP9suwWVf0UW0h9bonLliZ+Bt2pnnSJiJw/GSXMsuGVr/cT8U3yg@vger.kernel.org
X-Gm-Message-State: AOJu0YxTmH/u1tJTi6gEWb4fhqy+nmsrwdxr5Yiwy02hI1iRu71F4osn
	mjyNoWa7DaVYncCpRzx+uSySlCzN/WUx8JLjyprrF654A2bSXwbkdC1fk/xE0Y8=
X-Google-Smtp-Source: AGHT+IFkbjwusK7GBMy+uvOrk1ENPvXDg5jbLTlihJ6/ABtP7FGYUmy39dxdfPmSU+lvToCwURKoow==
X-Received: by 2002:a05:600c:5123:b0:42c:bae0:f05b with SMTP id 5b1f17b1804b1-42cdb4e6bbcmr2458165e9.1.1726075580979;
        Wed, 11 Sep 2024 10:26:20 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:7388:2adc:a5d5:ff63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42cb5a66475sm118471705e9.44.2024.09.11.10.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 10:26:20 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,  Jean Delvare
 <jdelvare@suse.com>,  Guenter Roeck <linux@roeck-us.net>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  Jonathan Corbet <corbet@lwn.net>,  Delphine CC Chiu
 <Delphine_CC_Chiu@wiwynn.com>,  linux-hwmon@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-doc@vger.kernel.org,  linux-i2c@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: hwmon: pmbus: add ti tps25990
 documentation
In-Reply-To: <20240911144532.GA154835-robh@kernel.org> (Rob Herring's message
	of "Wed, 11 Sep 2024 09:45:32 -0500")
References: <20240909-tps25990-v1-0-39b37e43e795@baylibre.com>
	<20240909-tps25990-v1-1-39b37e43e795@baylibre.com>
	<3efbzcys4762rhx2h2cbhqvi6dgik7pfrxcziccdko34pb5z54@joodcym6c3s4>
	<1jzfofsvmh.fsf@starbuckisacylon.baylibre.com>
	<20240911144532.GA154835-robh@kernel.org>
Date: Wed, 11 Sep 2024 19:26:19 +0200
Message-ID: <1j7cbiqeys.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 11 Sep 2024 at 09:45, Rob Herring <robh@kernel.org> wrote:

> gOn Tue, Sep 10, 2024 at 11:31:18AM +0200, Jerome Brunet wrote:
>> On Tue 10 Sep 2024 at 09:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>> 
>> > On Mon, Sep 09, 2024 at 05:39:03PM +0200, Jerome Brunet wrote:
>> >> Add DT binding documentation for the Texas Instruments TPS25990 eFuse
>> >> 
>> >> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> >> ---
>> >>  .../bindings/hwmon/pmbus/ti,tps25990.yaml          | 73 ++++++++++++++++++++++
>> >>  1 file changed, 73 insertions(+)
>> >>
>> >
>> > A nit, subject: drop second/last, redundant "documentation". The
>> > "dt-bindings" prefix is already stating that these are bindings/docs.
>> > See also:
>> > https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
>> >
>> >> diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
>> >> new file mode 100644
>> >> index 000000000000..e717942b3598
>> >> --- /dev/null
>> >> +++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,tps25990.yaml
>> >> @@ -0,0 +1,73 @@
>> >> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> >> +%YAML 1.2
>> >> +---
>> >> +
>> >
>> > Drop blank line.
>> >
>> >> +$id: http://devicetree.org/schemas/hwmon/pmbus/ti,tps25990.yaml#
>> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> >> +
>> >> +title: Texas Instruments TPS25990 Stackable eFuse
>> >> +
>> >> +maintainers:
>> >> +  - Jerome Brunet <jbrunet@baylibre.com>
>> >> +
>> >> +description: |
>> >
>> > Do not need '|' unless you need to preserve formatting.
>> >
>> >> +  The TI TPS25990 is an integrated, high-current circuit
>> >> +  protection and power management device with PMBUS interface
>
> And wrap at 80.
>
>> >> +
>> >> +properties:
>> >> +  compatible:
>> >> +    const: ti,tps25990
>> >> +
>> >> +  reg:
>> >> +    maxItems: 1
>> >> +
>> >> +  ti,rimon-milli-ohms:
>> >> +    description:
>> >> +      milli Ohms value of the resistance installed between the Imon pin
>> >> +      and the ground reference.
>> >
>> > Ohms is not enough? We don't have mOhm in property units.
>> > https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml
>> >
>> 
>> Same discussion as we've had on the driver change.
>> At the moment Ohms is enough for the cases I've seen.
>> 
>> Will it be, not sure.
>> Using mOhms is' way to avoid "S**t, R is 80.2 Ohms, I
>> need another digit to not loose precision " kind of situation and
>> introduce a second property just for that.
>> 
>> No idea if Rimon will get that low. Probably not.
>> 
>> I'll switch to Ohms.
>
> You can can use "-micro-ohms" too. The reason we don't have every 
> possible unit is so we have everyone picking their own.

Noted. after discussing with Guenter, I'll use micro-ohms in the next
version, not ohms

>
> Rob

-- 
Jerome

