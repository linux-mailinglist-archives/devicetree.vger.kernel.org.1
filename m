Return-Path: <devicetree+bounces-242171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 19601C8781A
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A6DA34E122C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3C02F3635;
	Tue, 25 Nov 2025 23:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="I9C44DAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405452E11DC
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114517; cv=none; b=d+OQWtSnEJ9KMuQ/PcSvRHkL+H+MFa5jUbCBogKiJKjMZv05Llc8pbHTOI629skiG+nDIvydm1CTvIF6inJ6XWioorCpeUCE81qv51qRIykArgDhziGEgiFOga4++2tbJRcVBjOtrL/fGFchw1R4YQkeILlmqCYhj91c7GhND60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114517; c=relaxed/simple;
	bh=oScQiDTMf1Y91j2Mn7iEF+isUfVWzJF/RUcB/AmLVGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RtKWKcwEnCh9q5gW/UnMkYGEfDw4Jzw128EH+hMLstKL71Y0HgkQzDkjeE1OM9AjR60P0V3C39Y6Lsirr9aGe2cg0YND99Gq6f0lqV9VU8Yke5ODTsY4Mr6QEMtyJGCHDq6lKI9PiL9pz79NrSDDpiL9RY9AodMzGa0TFTHFMWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=I9C44DAq; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2953e415b27so72062835ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764114514; x=1764719314; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jvscaJfwgdQ/hGiq+gLyeXsz4eE6z2MvV6KE287vjdk=;
        b=I9C44DAq9cmhMqOVa9nNuMednuSZuvaSyQnIlPnUiKcQ9K2oZfRVTau2sQ4/BIDeuh
         uYlAOV81hJY0t34enEskFvvwurnOoWDRp3Bm8+dK5S4QOQ0fUKUP3y7OLcy9Z2vc5mzO
         LKGQUB/dX7E+z6+jJOWbeRUw5ueLIX09pbj90ERAhq+ZV8zFZ/GhVomV+DBicxdCjrLL
         nqrgMtgQeDAI0TfoCzxrV/FwLhlt+EWIrLWXUVtde+9tUjgsWrUdew8/qe8SkjqQ9hM/
         UZDA4FfM2LiBUd76E3M4o8OywR76B6PfNQ8549K6u0Qs1gMiUDUXf0qo2TZ7ibJN9Mi7
         eJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764114514; x=1764719314;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jvscaJfwgdQ/hGiq+gLyeXsz4eE6z2MvV6KE287vjdk=;
        b=JD8OG5Tw1BdJvSaRRD0dF77qBi5VyF4tWCTdonagK+k0acJuZfNf0uWKbAASjAAYTd
         yuIiKfPU90NsB4hZBcHjlKUk+hXYW39VeFe21SNiVEOvjRIDPTTp9bqHhUi2Rw/o3wUh
         x1KdANSe5UFdfnZe/GdA5IrOT20h/Q6PkB8zsFrt4G/gQAJj8kS4UB8uo2NJ3FcKUkaI
         +MLjkI6DxRUHJr3dkWPhLvtY1R4MeRPEFQLxvdObmkqxI5x/iyGL1zk4894opx34Krl6
         TdjWGnFly/EFkAqoMulo8XANRBN7KU67CIRlBMT458mTqjj4fUyGGFoVsNVg1A1Ujxan
         OO+A==
X-Forwarded-Encrypted: i=1; AJvYcCWwc2VgjHTSjajUX1+YmGEmwROSA6I1cScctOKAXrlomrrnzTZhW6ZTle0ke+NHyLavUHWHXcWJdQcn@vger.kernel.org
X-Gm-Message-State: AOJu0YypjoH6bep08c+gBLViWQRIoZZ6tjicf5vjOypL/iUG5C5OeDQ4
	louH5ess23aiKlm0mgx9aklNtBvRun3xAMRBNUPJDa6GYsVAPI8XWi04N9l5GPklxA==
X-Gm-Gg: ASbGnctSYQ8JWvk/HU0cOntkb7vcAK9P4vrDJmVleHydUdKFphvfWqKsOwJ2/hX21IR
	p4LhZIqD3oswMyoMcHbgCr0ke/5KIvZdNAhK8qAZ5XWlf/+Z87/bI7/fbAaRnS2YqOHr61VMLjB
	p0KQpjHhz9WowmEicXhBqvb+2oeMNf/kvXFnS5uMhXPFEh0qsaAAiqHJ97oywnZMWbbHaGqkFTG
	jo3+cljPxC/vyqPp167cLdg6BZyVqQRoBthaQ9EaV2pAwKHVXMWXPkj3EIdD37+C9f7rd08zuWZ
	82K0Ajedv9G3qTlJnZKqnazgBABBtIOiRYM+GNcCtT4R+4i8IEWZq2uG8cgEEnDvrQzMY0adLzX
	/Uhy/MCRuwi5d8pBLC8RNNOr6Hnwr6p0MftzyPxJblQTGVApRFUMFJj4xe01rBvpdYxUoADAIy/
	qrj71VhcJdIkAR0wte0dCTbgzO7Pp5JreDIbSYip7Ldh4AHdVLoZCFdQMAhhniKOASQrWq2MVer
	gGSOru+erylsIOA7lpAS5Xp
X-Google-Smtp-Source: AGHT+IFNoWpHHgr9DMjNpMFfmlPDcxXbJRHzRrtGLWmztsEVr2SiPhFDxdBsTEMKUGnJfCeOhy8LQA==
X-Received: by 2002:a05:7022:4583:b0:11b:9386:7ed1 with SMTP id a92af1059eb24-11cbba58e50mr3870990c88.46.1764114513885;
        Tue, 25 Nov 2025 15:48:33 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30? ([2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e6dbc8sm89670760c88.10.2025.11.25.15.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 15:48:33 -0800 (PST)
Message-ID: <7ad91325-e881-461d-b39e-6ff15d98b3c5@google.com>
Date: Tue, 25 Nov 2025 15:48:32 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: power: supply: Add Maxim MAX77759
 charger
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, RD Babiera <rdbabiera@google.com>,
 Kyle Tso <kyletso@google.com>
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-1-6b2e4b8f7f54@google.com>
 <d4455f4b-2a0f-4bc0-b897-14f2e27af3ea@kernel.org>
 <c9b059f8-9219-4219-95c8-23a3733fea58@google.com>
 <20251125-amorphous-bobcat-of-whirlwind-afdab1@kuoka>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <20251125-amorphous-bobcat-of-whirlwind-afdab1@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/25/25 1:56 AM, Krzysztof Kozlowski wrote:
> On Sun, Nov 23, 2025 at 06:34:05PM -0800, Amit Sunil Dhamne wrote:
>> Hi Krzysztof,
>>
>> On 11/23/25 1:28 AM, Krzysztof Kozlowski wrote:
>>> On 23/11/2025 09:35, Amit Sunil Dhamne via B4 Relay wrote:
>>>> From: Amit Sunil Dhamne <amitsd@google.com>
>>>>
>>>> Add bindings for Maxim max77759 charger device.
>>>>
>>>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>>>> ---
>>>>   .../power/supply/maxim,max77759-charger.yaml       | 36 ++++++++++++++++++++++
>>>>   1 file changed, 36 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max77759-charger.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max77759-charger.yaml
>>>> new file mode 100644
>>>> index 000000000000..71f866419774
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/power/supply/maxim,max77759-charger.yaml
>>>> @@ -0,0 +1,36 @@
>>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/power/supply/maxim,max77759-charger.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Maxim Integrated MAX77759 Battery charger
>>>> +
>>>> +maintainers:
>>>> +  - Amit Sunil Dhamne <amitsd@google.com>
>>>> +
>>>> +description: |
>>>> +  This module is part of the MAX77759 PMIC. For additional information, see
>>>> +  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
>>>> +
>>>> +  The Maxim MAX77759 is a dual input switch mode battery charger for portable
>>>> +  applications. It supports wired and wireless charging and can operate in buck
>>>> +  and boost mode.
>>>> +
>>>> +allOf:
>>>> +  - $ref: power-supply.yaml#
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    const: maxim,max77759-charger
>>>> +
>>> This should be just folded into parent node, no need for separate
>>> charger device or is just incomplete.
>> Thanks for the review! You are right, the binding is incomplete. This
>> charger block actually listens on its own I2C address, distinct from the
>> main PMIC.
>>
>> I will update v2 to include the reg property. I will also add the
> AFAIK, the main (parent) device schema does not reference children via
> any sort of addressing, so reg here would not be suitable.

I agree that currently nvmem and gpio devices (which are children of 
PMIC device) are not referenced using any address. But I was guessing 
that's because they share the i2c client id with the PMIC and sharing 
its address space (implied).

The charger device while being part of the MAX77759 PMIC package has 
it's own i2c client id and address space that's why I proposed "reg". 
The underlying assumption I made was separate client id implies that a 
"reg" property required. But maybe that's incorrect.

I can understand the argument against having a "reg" property. As the 
i2c client id will remain same for a max77759 charger device (as it's a 
chip property and not a board property) it will always remain a 
constant. I will drop the "reg" proposal.


>
>> standard properties `constant-charge-current-max-microamp` and
>> `constant-charge-voltage-max-microvolt` to configure the hardware
>> limits, as this charger device does not manage the battery profile
>> directly (that is handled by a separate fuel gauge).
> Well, still, what's the benefit for the bindings to have it as a
> separate child? Kind of depends on your example, which is quite small -
> one regulator and supply. Grow the example with battery and other
> independent resources (if they are) to justify it. Or show arguments why
> this is re-usable.

The primary reasons for keeping the charger as a distinct child node are 
to model the hardware topology for the power supply subsystem and to 
house the OTG regulator provided by the charger block.
The charger needs to be referenced by the Fuel Gauge (which handles the 
battery profile) via power-supplies. Additionally, the charger block 
provides a regulator for USB OTG VBUS, which is cleaner to represent as 
a child node of the charger rather than mixing it into the top-level 
PMIC node.

The final goal is to correctly represent the hardware connections so 
that I can use it for [2]. The dts would ideally look like this:

```

maxtcpc: usb-typec@25 {
         compatible = "maxim,max77759-tcpci";
         ...
         otg-vbus-supply = <&otg_vbus_reg>;
};

pmic@66 {

         compatible = "maxim,max77759";
         ....
         chg: charger {
                 compatible = "maxim,max77759-charger";
                 power-supplies = <&maxtcpc>;
                 otg_vbus_reg: usb-otg-vbus-regulator {
                         regulator-name = "usb-otg-vbus"

                 };

         };

};

battery: battery {
     compatible = "simple-battery";
     ....

};

fuel-guage@36 {
         compatible = "maxim,max77759-fg";
         ....
         power-supplies = <&chg>;
         monitored-battery = <&battery>;

};

```

[1] 
https://lore.kernel.org/all/20250915-b4-gs101_max77759_fg-v6-0-31d08581500f@uclouvain.be/

[2] 
https://lore.kernel.org/all/20250507-batt_ops-v2-0-8d06130bffe6@google.com/


BR,

Amit

>
> Best regards,
> Krzysztof
>

