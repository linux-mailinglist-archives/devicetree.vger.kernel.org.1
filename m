Return-Path: <devicetree+bounces-6399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CCC7BB324
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11E111C20933
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5FE17490;
	Fri,  6 Oct 2023 08:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WhKi0dgF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F9263CC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 08:26:55 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F11E8A6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 01:26:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50325ce89e9so2465766e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 01:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696580811; x=1697185611; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=irhhZwIdAe5KxRCFQFXatPx/3iJGujcLsaX44Bn0VCQ=;
        b=WhKi0dgFte5SGkvj6Tm3ElYtAdyZQtO8amKC7P4MpDYcmPj5VUJNRYHC69KPwSyvg8
         3QtXprOHQX3w1rv8bgwj/y5ltpMSpFLEktELSfrBWn2d0xbV4qnT2HKRjoTKko2zIXEe
         IXxBG9rwekfUZu2ZKYocFc+Shc3KinA9NLsdKK8v4gSRPNVabXVu0tJLZFJsL/yNGCrH
         xrjYivWCC13lYMRmxfjF6sb/cIhh89UEkZjdOaa9bKsSWCa1oL2+ohM4J6bYPZiONLew
         axImk+kQwopAwinKsaGpga4rfdh8B8eQHBVCyDaO8jYBSt0ujZvYiU2labjdbbbZlO7u
         fYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696580811; x=1697185611;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irhhZwIdAe5KxRCFQFXatPx/3iJGujcLsaX44Bn0VCQ=;
        b=UCzQTnaJn6LdARho7NmZp3O68EicuCItnBZYbPncORucCuJa52q9CmyhngBTZ8IH6A
         kIWVKFF3s0o6hO1q0zsknM4CDr0IHYr0/S7Dg+5jZNzDRdt/FWzHcezNMF5OQ3IEvko1
         PZMIloHZ+mjsrvEDA0EJMfUgpTa3epjrfExPEYu4VCnMP8CuURDR7YDOH2PhWW3Cd/1J
         VqYJZzw2zs+L7EyWaCUFcIjJr78O8q4NHAUZrBkVq88G3I2X2o4dxhOsuHsdUuUg1Dou
         4/xbwnl4XFh+wqujEI0wrPY7unY8CnOLUEfOgPsFmNW88nOO8THcQBGswwsjJIbWgw8i
         e91g==
X-Gm-Message-State: AOJu0Yyd9gJx7UHRMecF8pjXG16//Y/oQ8KE3t/jmVf6m2OxMZzWLImB
	1ZMqT6/RIom3LxYiDIB3TvcDgKOPftvPbauaEwUYdg==
X-Google-Smtp-Source: AGHT+IEs07KnxUzQMT9OTHiLPUW6Sir7ZaLP/Qo/d2BT3Mm/swsThBFetaxsHnCWggnr56Bb9k5xww==
X-Received: by 2002:a05:6512:1390:b0:500:a2d3:3e65 with SMTP id fc16-20020a056512139000b00500a2d33e65mr7538741lfb.23.1696580810523;
        Fri, 06 Oct 2023 01:26:50 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:8f44:72b3:5bcb:6c6b])
        by smtp.gmail.com with ESMTPSA id n22-20020a7bcbd6000000b004060f0a0fdbsm5460836wmi.41.2023.10.06.01.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 01:26:50 -0700 (PDT)
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com>
 <b81a296d-0640-4b2e-aab6-c9de37d10206@linaro.org>
 <1j5y3ozvmk.fsf@starbuckisacylon.baylibre.com>
 <3e69ae4b-5d9e-42ee-a21e-151de8fbb996@linaro.org>
 <1j8r8hxutt.fsf@starbuckisacylon.baylibre.com>
 <036a9fef-02fd-4bfd-afb5-50724f15176c@linaro.org>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Fri, 06 Oct 2023 10:21:37 +0200
In-reply-to: <036a9fef-02fd-4bfd-afb5-50724f15176c@linaro.org>
Message-ID: <1j4jj4xik6.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Thu 05 Oct 2023 at 12:04, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> On 05/10/2023 11:42, Jerome Brunet wrote:
>> On Tue 03 Oct 2023 at 09:35, Neil Armstrong <neil.armstrong@linaro.org>
>> wrote:
>> 
>>> On 02/10/2023 20:57, Jerome Brunet wrote:
>>>> On Mon 02 Oct 2023 at 18:45, Neil Armstrong <neil.armstrong@linaro.org>
>>>> wrote:
>>>>
>>>
>>> <snip>
>>>
>>>>>> +&usb3_pcie_phy {
>>>>>> +	#address-cells = <1>;
>>>>>> +	#size-cells = <0>;
>>>>>> +	phy-supply = <&vcc_5v>;
>>>>>> +
>>>>>> +	hub: hub@1 {
>>>>>> +		compatible = "usb5e3,626";
>>>>>> +		reg = <1>;
>>>>>> +		reset-gpios = <&gpio GPIOC_7 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>>>>>> +	};
>>>>>
>>>>> Not sure the PHY is the right place to put the USB HUB,
>>>>> and it's probable the HUB is connected to both the USB2 and USB3 lines
>>>> It is connected to the USB3.0 only
>>>>
>>>>> so you should have both USB IDs in DT like it'd done for the Odroid-C4:
>>>>>
>>>>> / {
>>>>> ...
>>>>>            /* USB hub supports both USB 2.0 and USB 3.0 root hub */
>>>>>            usb-hub {
>>>>>                    dr_mode = "host";
>>>>>                    #address-cells = <1>;
>>>>>                    #size-cells = <0>;
>>>>>
>>>>>                    /* 2.0 hub on port 1 */
>>>>>                    hub_2_0: hub@1 {
>>>>>                            compatible = "usb2109,2817";
>>>>>                            reg = <1>;
>>>>>                            peer-hub = <&hub_3_0>;
>>>>>                            reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
>>>>>                            vdd-supply = <&vcc_5v>;
>>>>>                    };
>>>>>
>>>>>                    /* 3.1 hub on port 4 */
>>>>>                    hub_3_0: hub@2 {
>>>>>                            compatible = "usb2109,817";
>>>>>                            reg = <2>;
>>>>>                            peer-hub = <&hub_2_0>;
>>>>>                            reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
>>>>>                            vdd-supply = <&vcc_5v>;
>>>>>                    };
>>>>>            };
>>>>> ...
>>>>> };
>>>>>
>>>>> if it only has a single USB ID, then it should go under the dwc3 node.
>>>> The usb controller is connected to the PHY and what's coming out of the
>>>> PHY
>>>> goes to the hub. It seems logical to hub the hub under it.
>>>> Why bypass the PHY ?
>>>
>>> The USB bindings the USB devices nodes should be under the controller's node,
>>> not the PHY, see:
>>>
>>> Documentation/devicetree/bindings/usb/usb-hcd.yaml
>>> ...
>>> patternProperties:
>>>    "^.*@[0-9a-f]{1,2}$":
>>>      description: The hard wired USB devices
>>>      type: object
>>>      $ref: /schemas/usb/usb-device.yaml
>>> ...
>>> and the example.
>>>
>>> Subnodes aren't allowed in the PHY node.
>> Ok, that is what schema says.
>> HW wise there is possible problem though.
>> The phy node has the power supply to the bus.
>> In that case it is a controllable one.
>> If fixed USB devices go under the controller instead of the PHY, isn't
>> it possible that the kernel may attempt to probe them before the bus is
>> powered ? For this particular board, it would make the reset we are
>> trying to apply useless.
>
> The usb core has a special handling for those usb hubs doing the power
> up at the right time during the USB setup, including the PHY powering up.
> So the power sequence should be fine.
>
> This has been done on Odroid-C2 and Odroid-N2 already.

Tried it. Unfortunately something is off with the hub under the dwc3 node
I often get this error (like once in 3 boots):

[    0.419301] usbcore: registered new interface driver usbfs
[    0.424434] usbcore: registered new interface driver hub
[    0.429696] usbcore: registered new device driver usb
[    0.921460] usbcore: registered new interface driver usb-storage
[    0.968157] usbcore: registered new interface driver usbhid
[    0.972114] usbhid: USB HID core driver
[    1.132529] dwc3-meson-g12a ffe09000.usb: USB2 ports: 2
[    1.134897] dwc3-meson-g12a ffe09000.usb: USB3 ports: 1
[    1.144451] dwc2 ff400000.usb: supply vusb_d not found, using dummy regulator
[    1.147231] dwc2 ff400000.usb: supply vusb_a not found, using dummy regulator
[    1.154464] dwc2 ff400000.usb: EPs: 7, dedicated fifos, 712 entries in SPRAM
[    1.219515] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    1.469260] usb 1-1: new high-speed USB device number 2 using xhci-hcd
[    1.745395] usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
[    9.794777] usbcore: registered new device driver onboard-usb-hub
[   10.255484] onboard-usb-hub 1-1: Failed to suspend device, error -32
[   10.261699] onboard-usb-hub 1-1: can't set config #1, error -71
[   10.287500] onboard-usb-hub 1-1: Failed to suspend device, error -32
[   10.287844] onboard-usb-hub 1-1: USB disconnect, device number 2
[   10.573277] usb 1-1: new high-speed USB device number 3 using xhci-hcd
[   10.921468] usb 2-1: reset SuperSpeed USB device number 2 using xhci-hcd
[   11.193453] usb 2-1: reset SuperSpeed USB device number 2 using xhci-hcd

While it works reliably when the onboard-usb-hub is under the phy node.

I added the 5v supply as vdd under the hub for good measure.

>
> Neil
>
>> 
>>>
>>> Neil
>>>
>>>>
>>>>>
>>>>>> +};
>>>>>> +
>>>>>> +&usb {
>>>>>> +	status = "okay";
>>>>>> +};
>>>
>>> <snip>
>> 


