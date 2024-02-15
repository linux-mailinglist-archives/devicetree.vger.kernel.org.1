Return-Path: <devicetree+bounces-41890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BA855C8E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EAC02898F7
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C233B134A0;
	Thu, 15 Feb 2024 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V8o9Upjl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0003134C3
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707986099; cv=none; b=tBaf/kPc0055z6CBo0nt3kRxokr1XB2XBdN8KF2zEfQhffNHzVNLeqHvMAuFVd7pFgzPOB1z/KEpaS7kGneJv5CxPnLFl8gHYPs4Nzhjz3nAAubqV+wMvPfSFfHeK8TSHzP8YT2JTutdtMNkcqiGJ+nPafRguWssIkEuYHv/ODc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707986099; c=relaxed/simple;
	bh=HSbhLiSrK86BjMDY/y8vzjWGLlk0vqQgQeefyNv67y4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YY6d26xh9+HHGFsfAwWlw50Cjvx8MzfVfssJQBlhEG4/qOknlhykNll7kCGDJ3O1kx/2wvcLhfEQUBI+Tpr2Su9qZ5kgXRXPIH+vJBSrKW6Drpbp8rBPJZfqooqdZo4YFkcF/xDnLbPlGL4ZZZWcV0oXJyDaVzg9OuAXbAb8IOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V8o9Upjl; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so850940a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707986095; x=1708590895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUT7KhvF7PCy+lGmvE3jvJo492xL/G0BU2rwBnlXsJU=;
        b=V8o9UpjlohfRRbZEDtJBdQ4yb+3+1gZr1ZrMmofuIpqgh0LopOkxPXCqPioa4Z9MX1
         sF3loipsIY6CnI78Mp12q1MIS/G8Sz7unU5OoWJqLOVoRKKJQZHkJy16pBHfdZRjWZUm
         9gMf5bbXfHsOksjCWcUMhByxau4sqeUbss00gJydPJBvHgtysyjygJxpE+0nEZmcarEA
         In9o7DzCWtMA516GD6DxxPhqJlNBey/vKWHYkazIdgiudtIcga2UghRvYjcr+32AD799
         evQR4J13eKs42lxq+IaBRmd4B57ajaUkXuaeDWkC3/uT7lt63e9kXBDstLBsFrMoyU2w
         fiKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707986095; x=1708590895;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUT7KhvF7PCy+lGmvE3jvJo492xL/G0BU2rwBnlXsJU=;
        b=XNDyPfmL3uZkvYRcxNCmBc20nvY2lbtC7z5PD1u5ZOAJCXFsbxsdQBZMBkgY5FrXYL
         k6OVTCIpbo0a/NSQp2wbIpUG54BWDtuTc9LlvGO1Cf/XxEeX1dsIkk7xBIZXeNK6iWaV
         QQe8pL8vVy6R11mXD9Y6uGv9OAO7k0NHCVl7+V8JdCQGtke0M9SUNiZ9F3hprcSpOV9s
         UCfbwgWGwUSWZSJ9BMSC1AKc6ov6moTIcdkOAtmZQL6xex6FrmwcQG0w7wXcUBGhnCx8
         ErHDowfe+ynLvlpfRPGvliBOS5yLNQB52Qz0aSYPLr3WPDBJ6V69HgXV1FAwSCVFCuYQ
         btJw==
X-Forwarded-Encrypted: i=1; AJvYcCXRfe4eUh8ESo30AccdTT/NHldN+pix1WxnElZ5IFKxpsJ5sy3QbkhBZoQ38kN+6euhbNUy5jG6DB35UkNczUb+rEbQg2DCo5+/pA==
X-Gm-Message-State: AOJu0Yx1OZaVFhjRVIifgL37/p7rBODe51yatfycVF4K4sf3iQLbK9z/
	TUx05o8r8OPt3nwVf0IZYkwLFgQRutlpwkhB00H2JJ5MJgO0lPhsa+4dse7sAOA=
X-Google-Smtp-Source: AGHT+IFuvTq4ohuoJ1f0DBYU+m4qs9J4hdbe4EjqO8bVhwswd4Onhi7S2rMZdUct2jSi+tjPH3aRSA==
X-Received: by 2002:aa7:d98c:0:b0:55f:e574:4ea6 with SMTP id u12-20020aa7d98c000000b0055fe5744ea6mr785821eds.2.1707986095224;
        Thu, 15 Feb 2024 00:34:55 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id fd19-20020a056402389300b0056394d0e989sm327804edb.76.2024.02.15.00.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 00:34:54 -0800 (PST)
Message-ID: <dfcb1556-fa09-4d2e-b128-341e9725d3de@linaro.org>
Date: Thu, 15 Feb 2024 09:34:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/22] dt-bindings: chrome: Add
 google,cros-ec-typec-switch binding
Content-Language: en-US
To: Stephen Boyd <swboyd@chromium.org>, chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Prashant Malani <pmalani@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>
References: <20240210070934.2549994-1-swboyd@chromium.org>
 <20240210070934.2549994-14-swboyd@chromium.org>
 <46ac6ab8-b0a5-497d-91b6-1d2ced33184b@linaro.org>
 <CAE-0n52TzOAqN8Y7EdJPjDxY2iY-6Jr-Pq8fFMFtF-cXo5+OyA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAE-0n52TzOAqN8Y7EdJPjDxY2iY-6Jr-Pq8fFMFtF-cXo5+OyA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/02/2024 02:52, Stephen Boyd wrote:
> Quoting Krzysztof Kozlowski (2024-02-11 05:34:25)
>> On 10/02/2024 08:09, Stephen Boyd wrote:
>>> Add a binding for the USB type-c switch controls found on some ChromeOS
>>> Embedded Controllers (ECs). When this device is a mode switch, it takes
>>> one DisplayPort (DP) port as input and some number (possibly zero) of
>>> USB SuperSpeed ports (bundles of USB SS lanes) as input, and muxes those
>>> lanes into USB type-c SuperSpeed lanes suitable for the SSTRX1/2 pins on
>>> a usb-c-connector. When this device is an orientation switch, it
>>> redirects the DP lanes to the proper USB type-c SSTRX lanes.
>>>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Lee Jones <lee@kernel.org>
>>> Cc: Benson Leung <bleung@chromium.org>
>>> Cc: Guenter Roeck <groeck@chromium.org>
>>> Cc: Prashant Malani <pmalani@chromium.org>
>>> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
>>> Cc: <devicetree@vger.kernel.org>
>>> Cc: <chrome-platform@lists.linux.dev>
>>> Cc: Pin-yen Lin <treapking@chromium.org>
>>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
>>> ---
>>>  .../chrome/google,cros-ec-typec-switch.yaml   | 365 ++++++++++++++++++
>>>  .../bindings/mfd/google,cros-ec.yaml          |   5 +
>>>  2 files changed, 370 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-typec-switch.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec-switch.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec-switch.yaml
>>> new file mode 100644
>>> index 000000000000..17a0ba928f5d
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec-switch.yaml
>>> @@ -0,0 +1,365 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/chrome/google,cros-ec-typec-switch.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Google Chrome OS EC(Embedded Controller) USB Type C Switch
>>> +
>>> +maintainers:
>>> +  - Benson Leung <bleung@chromium.org>
>>> +  - Prashant Malani <pmalani@chromium.org>
>>> +  - Stephen Boyd <swboyd@chromium.org>
>>> +
>>> +description:
>>> +  Chrome OS devices have an Embedded Controller(EC) which has access to USB
>>> +  Type C switching. This node is intended to allow the OS to control Type C
>>> +  signal muxing for USB-C orientation and alternate modes. The node for this
>>> +  device should be under a cros-ec node like google,cros-ec-spi.
>>> +
>>
>> If this is USB Type C switch, then you miss reference to
>> usb-switch.yaml, but then ports look a bit different.
> 
> Thanks for the pointer. I suspect that's in linux-next only? I'm going

Yes, Greg's tree.

> to move this to the cros-ec-typec.yaml file but I'll still need some
> sort of property like 'mode-switch' or 'orientation-switch' to describe
> what needs to be done in the kernel by changing lane assignments in the
> drm_bridge.
> 
> One problem with those properties is that they're boolean for the whole
> device. If I have a google,cros-ec-typec node that has two input DP
> ports and two output USB-C ports then it may be that one port needs
> orientation switching and the other only needs to do mode switching.
> This needs to be expressed somehow and a top-level boolean property
> doesn't do that. It could be part of the DP endpoint node itself.

Maybe it can be added to the connector binding as well.

> 
> Also I don't know how to indicate that mode switching can't be changed
> here directly. For example, on Trogdor the mode is switched by the EC,
> and the kernel can't change the mode. Changing DP lane assignments isn't
> going to change the situation either. The mode is still going to be
> something like DP+USB, or just DP, etc. Maybe there needs to be a
> different property, like 'dp-mode-lane-assignment = <array of ports>',
> that indicates which DP ports need to do lane assignment or
> 'dp-orientation-lane-assignment = <array of ports>' for orientation
> control. Either way, I'm saying that 'mode-switch' and
> 'orientation-switch' properties don't make any sense here. I was using
> them to wedge the code into the typec switch callbacks, but if I move
> this into the cros-ec-typec driver then I don't need them.

OK

> 
>>
>>> +
>>> +  no-hpd:
>>> +    description: Indicates this device doesn't signal HPD for DisplayPort
>>> +    type: boolean
>>> +
>>> +  ports:
> [...]
>>> +
>>> +          endpoint@7:
>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>> +            description: USB-C data for EC's 7th type-c port
>>> +            unevaluatedProperties: false
>>> +            properties:
>>> +              data-lanes:
>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +                description: |
>>> +                  An array of physical USB-C data lane indexes.
>>> +                  - 0 is SSRX1 lane
>>> +                  - 1 is SSTX1 lane
>>> +                  - 2 is SSTX2 lane
>>> +                  - 3 is SSRX2 lane
>>> +                minItems: 4
>>> +                maxItems: 4
>>> +                items:
>>> +                  maximum: 3
>>> +
>>> +        anyOf:
>>> +          - required:
>>> +              - endpoint@0
>>
>> I don't get what you want to say here. This anyOf should have no effect.
> 
> I'm trying to say that there should be at least one usb-c data lane
> output endpoint if there's a port@2 (usb-c output).

Wait, my bad, this is good. At least one endpoint will be required.

> 
>>
>>> +          - required:
>>> +              - endpoint@1
>>> +          - required:
>>> +              - endpoint@2
> [...]
>>
>>> +
>>> +required:
>>> +  - compatible
>>> +  - ports
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        no-hpd: true
>>
>> I don't understand this either. What is it for? Where did you see such
>> syntax?
> 
> This is saying that if the no-hpd property is present then the port@0
> port (DP input port) is required. Otherwise no-hpd doesn't really make
> any sense because this device isn't muxing DP onto USB type-c connectors.

Then you only need if: required: like here:

https://elixir.bootlin.com/linux/v6.4-rc7/source/Documentation/devicetree/bindings/net/qcom,ipa.yaml#L174

> 
> I found this syntax by searching the schema website and reading this
> page[1]. The last yellow note about "country" not being a required
> property led me to this syntax.
> 
> [1] https://json-schema.org/understanding-json-schema/reference/conditionals#ifthenelse

Best regards,
Krzysztof


