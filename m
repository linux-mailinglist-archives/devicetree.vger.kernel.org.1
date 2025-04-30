Return-Path: <devicetree+bounces-172557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8D5AA5448
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 20:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6104B9C4055
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F03265627;
	Wed, 30 Apr 2025 18:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CKn8FuFN"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4D8263C7F;
	Wed, 30 Apr 2025 18:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746039427; cv=none; b=KgRsX3I2dozQrr59TtRRFS1Rs4JPGkez1qbSgbe5YPzhwBB40e9clLSVtHq2w9I9q6YMgFrfI2UsbfHYazszE0FKIfthm4YKtnTkz8PuEqLWWN7eNx2vmYUZBIwhzWNhUQrSP0MVugNG8mk7t5b7c2mDJOyJxuIiKZK0FeTsQko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746039427; c=relaxed/simple;
	bh=7D7m7SRpjTd4GERzCnZeeh3ikTBekJ/HzSiBXGrszT8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fwTgKSxVp+a7VtJUFbAgAtZQTEgRbAFtJ+zPq9sT81IWhVU0zBZLWWfLySEkZWgNKMk8PQjb34FsGo4jycJcLXcwGObqEKbul5MaYX2WXCZi2dd3xKE8jLOklCybPRtHtr8x8yG64E8xOhr1UfW9e3O4ie/UVo6RcqLCtdi10Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=CKn8FuFN; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53UIuZU2009907
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Apr 2025 13:56:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1746039395;
	bh=jBz3146sJR4EGAZE4/QnbDpKSMsap+ynnKnjBcUGsVU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=CKn8FuFNfxC8GFQnFI8Jidyft5ngwolfphHcku5Ltyg0C/GFP3ZZMow5QlHis7we5
	 72dCk+l2Hsq0zw6Qc/q1vSqA6ANuQpzh3DP6MqjivTmhThtycJouNSkp7EsxyPk191
	 HXqf2QXM8BkkfeWQhnXRzQJUjO50O3exoy3uNYo8=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53UIuZTX078992
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Apr 2025 13:56:35 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 30
 Apr 2025 13:56:34 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 30 Apr 2025 13:56:34 -0500
Received: from [10.250.35.60] ([10.250.35.60])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53UIuXXn094141;
	Wed, 30 Apr 2025 13:56:33 -0500
Message-ID: <b41ce354-d08f-4ba4-8a37-306b0fca8826@ti.com>
Date: Wed, 30 Apr 2025 13:56:33 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] Add new `export-symbols` node
To: Ayush Singh <ayush@beagleboard.org>,
        Jason Kridner
	<jkridner@beagleboard.org>,
        Deepak Khatri <lorforlinux@beagleboard.org>,
        Robert Nelson <robertcnelson@beagleboard.org>,
        <nenad.marinkovic@mikroe.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Robert Nelson
	<robertcnelson@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann
	<arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Saravana
 Kannan <saravanak@google.com>,
        David Gibson <david@gibson.dropbear.id.au>,
        Herve Codina <herve.codina@bootlin.com>,
        Thomas Petazzoni
	<thomas.petazzoni@bootlin.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Grant Likely <grant.likely@secretlab.ca>, Dhruva Gole <d-gole@ti.com>
CC: <devicetree-spec@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250411-export-symbols-v3-1-f59368d97063@beagleboard.org>
 <3a23228b-97fc-4ab9-9b0b-f84d74d11327@beagleboard.org>
 <cff8883b-8644-4e87-aa88-eea8d62c75ab@ti.com>
 <dbe566ea-447f-4f91-a0b2-f464374955f4@beagleboard.org>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <dbe566ea-447f-4f91-a0b2-f464374955f4@beagleboard.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 4/30/25 2:32 AM, Ayush Singh wrote:
> On 4/30/25 01:21, Andrew Davis wrote:
> 
>> On 4/29/25 2:15 PM, Ayush Singh wrote:
>>> On 4/11/25 13:30, Ayush Singh wrote:
>>>
>>>> `export-symbols` is designed to be a local replacement of global
>>>> `__symbols__` allowing nodes to define aliases to nodes in a tree, which
>>>> will take precedence over the aliases defined in the global `__symbols__`.
>>>>
>>>> Having a way to allow node local aliases helps in usecases such as
>>>> connectors and addon-boards, by allowing decoupling of
>>>> overlays/devicetree nodes of addon-board from the base connector.
>>>>
>>>> Reviewed-by: Herve Codina <herve.codina@bootlin.com>
>>>> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>>>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>>>> ---
>>>> This patch series follows the initial RFC [9] sent a few weeks ago. I
>>>> will be reiterating the RFC here for anyone who might be seeing this the
>>>> first time, since there was not much feedback in that thread.
>>>>
>>>> The patch series adds export-symbols to base devicetree specification to
>>>> allow for support of base board + runtime connector setups using devicetree
>>>> overlays. The idea was actually proposed in the linux kernel mailing list
>>>> by Herve Codina [0] with the devicetree schema and linux kernel
>>>> implementation. Initial implementations for devicetree compiler [1] and
>>>> fdtoverlay [2] have also been sent to the mailing lists.
>>>>
>>>> Introduction
>>>> *************
>>>>
>>>> There are a lot of setups, especially in embedded systems that consist of
>>>> a base connector and addon boards that can be connected to this connector.
>>>> Here are some examples:
>>>> - MikroBus
>>>> - GE SUNH
>>>> - BeagleCapes, etc
>>>>
>>>> Some of these connectors have runtime detection capabilities (GE SUNH),
>>>> while some do not (MikroBUS without 1-wire EEPROM). The goal is to decouple
>>>> the connector on base device tree with the overlay for addon boards. This
>>>> will allow having 1 overlay for each board that would work with connector
>>>> devicetree on any board.
>>>>
>>>> Linux kernel already provides APIs to apply overlays at specific nodes
>>>> [10], and I have a patch series to have similar functionality in
>>>> fdtoverlay [11]. This is to allow writing overlays for addon-boards,
>>>> that will be expected to be applied to the connector nodes, instead of
>>>> on the global tree.
>>>>
>>>> One of the issue was referencing resources available on the base board
>>>> device tree from the addon overlay device tree. Using a nexus node [3]
>>>> helps decoupling some resources like GPIO and PWM from the overlay.
>>>> However, that still leaves things like pinmux, i2c adapter, etc.
>>>>
>>>> The `export-symbols` node solves this issue.
>>>>
>>>> The idea of export-symbols is to have something similar to the global
>>>> `__symbols__` node but local to a specific node. Symbols listed in this
>>>> export-symbols are local and visible only when an overlay is applied on a
>>>> node having an export-symbols subnode. This allows specifying the
>>>> phandles to i2c adapter, pinmux, etc, per connector. Since the names
>>>> used for these phandles for each connector can be standardized, it would
>>>> allow having the same addon-board overaly work for connectors on
>>>> different boards (or multiple connectors on the same board).
>>>>
>>>> Note: `export-symbols` properties differ from __symbols__ since they are
>>>> phandles, not path references. This is much easier to work with in
>>>> overlays as described in [7].
>>>>
>>>> Using export-symbols, our example becomes:
>>>>
>>>>      soc_gpio: gpio-controller {
>>>>        #gpio-cells = <2>;
>>>>      };
>>>>
>>>>      connector1: connector1 {
>>>>          /*
>>>>           * Nexus node for the GPIO available on the connector.
>>>>           * GPIO 0 (Pin A GPIO) is connected to GPIO 12 of the SoC gpio
>>>>           * controller
>>>>           */
>>>>          #gpio-cells = <2>;
>>>>          gpio-map = <0 0 &soc_gpio 12 0>;
>>>>          gpio-map-mask = <0xf 0x0>;
>>>>          gpio-map-pass-thru = <0x0 0xf>;
>>>>
>>>>          export-symbols {
>>>>         GPIO_CONNECTOR = <&connector1>;
>>>>         PIN_33_GPIO_PINMUX = <&p1_33_gpio>;
>>>>          };
>>>>      };
>>>>
>>>> Our overlay can use thi
>>>>
>>>>     leds {
>>>>        pinctrl-names = "default";
>>>>        pinctrl-0 = <&PIN_33_GPIO_PINMUX>;
>>>>
>>>>        led-1 {
>>>>            gpios = <&GPIO_CONNECTOR 33 GPIO_ACTIVE_HIGH>;
>>>>        };
>>>>     };
>>>>
>>>> It used the P1_33 pin in the connector it is applied on.
>>>>
>>>> A board with two connectors can be described with:
>>>>
>>>>      connector1: connector1 {
>>>>          ...
>>>>          export-symbols {
>>>>         GPIO_CONNECTOR = <&connector1>;
>>>>         PIN_33_GPIO_PINMUX = <&p1_33_gpio>;
>>>>          };
>>>>      };
>>>>
>>>>      connector2: connector2 {
>>>>          ...
>>>>          export-symbols {
>>>>         GPIO_CONNECTOR = <&connector2>;
>>>>         PIN_33_GPIO_PINMUX = <&p3_33_gpio>;
>>>>          };
>>>>      };
>>>>
>>>> In that case, the same overlay with unresolved `GPIO_CONNECTOR` and
>>>> `PIN_33_GPIO_PINMUX` symbol can be applied on both connectors and the
>>>> correct symbol resolution will be done.
>>>>
>>>> Alternatives
>>>> *************
>>>>
>>>> Some alternative approaches that were considered:
>>>>
>>>> 1. Using aliases.
>>>>
>>>>     Currently, it is not possible to update aliases in device tree overlays.
>>>>     I sent a patch a few weeks ago to add this support [4]. However, as was
>>>>     outlined by Rob, this can break existing drivers that used the unused
>>>>     indexes for devices not present in the aliases list.
>>>>
>>>> 2. Add support for phandles in `__symbols__`
>>>>
>>>>     This has been discussed in the following patch series [5]. However,
>>>>     since there is no way to distinguish between strings and phandles in
>>>>     devicetree (everything is bytestring), the type guessing is awkward.
>>>>     Also, the export-symbol solution is much more flexible than extending
>>>>     the old `__symbols__` node.
>>>>
>>>> 3. Add support for path reference resolution to overlays
>>>>
>>>>     An approach using `__symbols__` was proposed by Andrew Davis [6].
>>>>     However, currently, it is difficult to support path reference resolution
>>>>     support to overlays [7]. This limitation makes it difficult to support
>>>>     connector chaining (MikroBUS -> Grove -> Addon board), which is possible
>>>>     in some connectors.
>>>>
>>>> Some other benefits to export-symbols
>>>> **************************************
>>>>
>>>> 1. No need to enable generation of all symbols in base devicetree
>>>>     Since the nodes used by connector are referenced by properties in
>>>>     `export-symbols`, the symbols table entries for these nodes will be
>>>>     generated, even if symbols generation is not enabled globally. This
>>>>     can help save space, specially in constrained devices.
>>>>
>>>> 2. Enables scoping symbol resolution
>>>>     Does not pollute the global symbols, and can be useful outside addon
>>>>     board setups.
>>>>
>>>> Why add to specification?
>>>> **************************
>>>>
>>>> I would like the ability to share the addon board overlays with
>>>> ZephyrRTOS, which also has boards that support MikroBUS (like BeagleConnect
>>>> Freedom [8]) and U-Boot. So it would make more sense if this node is part
>>>> of the specification instead of linux specific.
>>>>
>>>> [0]: https://lore.kernel.org/all/20241209151830.95723-1-herve.codina@bootlin.com/
>>>> [1]: https://lore.kernel.org/all/20250110-export-symbols-v1-1-b6213fcd6c82@beagleboard.org/
>>>> [2]: https://lore.kernel.org/devicetree-compiler/86a7a08c-d81c-43d4-99fb-d0c4e9777601@beagleboard.org/T/#t
>>>> [3] https://github.com/devicetree-org/devicetree-specification/blob/v0.4/source/chapter2-devicetree-basics.rst#nexus-nodes-and-specifier-mapping
>>>> [4]: https://lore.kernel.org/all/20241110-of-alias-v2-0-16da9844a93e@beagleboard.org/T/#t
>>>> [5]: https://lore.kernel.org/devicetree-compiler/44bfc9b3-8282-4cc7-8d9a-7292cac663ef@ti.com/T/#mbbc181b0ef394b85b76b2024d7e209ebe70f7003
>>>> [6]: https://lore.kernel.org/lkml/20240702164403.29067-1-afd@ti.com/
>>>> [7]: https://lore.kernel.org/devicetree-compiler/6b2dba90-3c52-4933-88f3-b47f96dc7710@beagleboard.org/T/#m8259c8754f680b9da7b91f7b7dd89f10da91d8ed
>>>> [8]: https://www.beagleboard.org/boards/beagleconnect-freedom
>>>> [9]: https://lore.kernel.org/devicetree-spec/edaa1378-c871-4c55-ab99-21ef6656f35a@beagleboard.org/T/#mc339a0ae0c886ca46da0f7bb679518fa8b0b3007
>>>> [10]: https://docs.kernel.org/devicetree/kernel-api.html#c.of_overlay_fdt_apply
>>>> [11]: https://lore.kernel.org/devicetree-compiler/20250313-fdtoverlay-target-v1-0-dd5924e12bd3@beagleboard.org/T/#t
>>>>
>>>> Best Regards,
>>>> Ayush Singh
>>>> ---
>>>> Changes in v3:
>>>> - Add trailer
>>>> - CC linux-devicetree
>>>> - Link to v2: https://lore.kernel.org/r/20250323-export-symbols-v2-1-f0ae1748b244@beagleboard.org
>>>>
>>>> Changes in v2:
>>>> - Improve examples. More focus on export-symbols and less on nexus nodes
>>>> - Fix typo.
>>>> - Link to v1: https://lore.kernel.org/r/20250225-export-symbols-v1-1-693049e3e187@beagleboard.org
>>>> ---
>>>>   source/chapter3-devicenodes.rst | 89 +++++++++++++++++++++++++++++++++++++++++
>>>>   1 file changed, 89 insertions(+)
>>>>
>>>> diff --git a/source/chapter3-devicenodes.rst b/source/chapter3-devicenodes.rst
>>>> index 8080321d6e60d6b1e86c81af86c6850246a0223b..2c3bbc2c81bacd71fcf3b389a31237344f995ba7 100644
>>>> --- a/source/chapter3-devicenodes.rst
>>>> +++ b/source/chapter3-devicenodes.rst
>>>> @@ -988,3 +988,92 @@ each with their own on-chip L2 and a shared L3.
>>>>               };
>>>>           };
>>>>       };
>>>> +
>>>> +``*/export-symbols`` node
>>>> +-------------------------
>>>> +A devicetree node may have an export-symbols child node
>>>> +(`*/export-symbols`) that defines one or more export-symbol properties.
>>>> +
>>>> +Each property of the `export-symbols` node defines an alias local to it's
>>>> +parent. The property name specifies the alias name. The property value
>>>> +specifies the phandle to a node in the devicetree. For example, the
>>>> +property ``serial0 = <&main_uart0>`` defines ``serial0`` as the local alias
>>>> +to ``main_uart0``.
>>>> +
>>>> +Alias names shall be lowercase text strings of 1 to 31 characters from the
>>>> +following set of characters.
>>>> +
>>>> +.. tabularcolumns:: | c p{8cm} |
>>>> +.. table:: Valid characters for alias names
>>>> +
>>>> +   ========= ================
>>>> +   Character Description
>>>> +   ========= ================
>>>> +   0-9       digit
>>>> +   a-z       lowercase letter
>>>> +   \-        dash
>>>> +   ========= ================
>>>> +
>>>> +An alias value is a phandle to a node in the devicetree.
>>>> +
>>>> +Resolution of nodes using `export-symbols` follows the following rules
>>>> +depending on the context:
>>>> +
>>>> +No target involved
>>>> +~~~~~~~~~~~~~~~~~~~
>>>> +Properties of parent node use symbols from ``export-symbols``, but none of
>>>> +the subnodes will be able to use them. For example, the following code will
>>>> +resolve properly:
>>>> +
>>>> +.. code-block:: dts
>>>> +
>>>> +    / {
>>>> +        parent {
>>>> +            led = <&local_gpio 0 GPIO_ACTIVE_HIGH>;
>>>> +
>>>> +            export-symbols {
>>>> +                local_gpio = <&gpio0>;
>>>> +            };
>>>> +        };
>>>> +    }
>>>> +
>>>> +However, the code below is not valid:
>>>> +
>>>> +.. code-block:: dts
>>>> +
>>>> +    / {
>>>> +        parent {
>>>> +            child {
>>>> +                /* child node cannot access export-symbols */
>>>> +                led = <&local_gpio 0 GPIO_ACTIVE_HIGH>;
>>>> +            };
>>>> +
>>>> +            export-symbols {
>>>> +                local_gpio = <&gpio0>;
>>>> +            };
>>>> +        };
>>>> +    }
>>>> +
>>>> +Target is used in the base devicetree or overlays
>>>> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>> +Any node/subnode property is free to use symbols from ``export-symbols``
>>>> +defined in the parent. To provide a concrete exampe, the following is
>>>> +valid:
>>>> +
>>>> +.. code-block:: dts
>>>> +
>>>> +    / {
>>>> +        parent {
>>>> +            export-symbols {
>>>> +                local_gpio = <&gpio0>;
>>>> +            };
>>>> +        };
>>>> +    }
>>>> +
>>>> +    &parent {
>>>> +        led = <&local_gpio 0 GPIO_ACTIVE_HIGH>;
>>>> +
>>>> +        child {
>>>> +            led = <&local_gpio 0 GPIO_ACTIVE_HIGH>;
>>>> +        };
>>>> +    };
>>>>
>>>> ---
>>>> base-commit: 5688e1c0b961d2ca5a32e3b624a9f4a9b433184f
>>>> change-id: 20250225-export-symbols-3524f124cd93
>>>>
>>>> Best regards,
>>>
>>>
>>> I have a very basic pocketbeagle2 connector driver with overlay for techlab cape [0]. It only uses export-symbols for pinmuxes for now, but might provide an example of use outside of nexus nodes.
>>>
>>>
>>> [0]: https://github.com/Ayush1325/linux/tree/b4/beagle-cape
>>>
>>
>> You have proven my point here. You were only able to model the GPIO
>> attached devices: buttons and LEDs. Nothing else of this cape was
>> modeled, nor could it be modeled with this solution.
> 
> 
> For i2c, I first need to implement the i2c bus extensions [0]. Something similar for SPI, UART, etc. Somewhat long list of things.
> 

That is exactly the issue, I'd think I2C extensions would be the trivial case but
even it is getting some (valid) push back, how do you intend to do the same
for SPI, UART, etc.. Would take years even at the best rate. Any solution that
requires modifying the schema for every type of peripheral node is a non-starter.

> 
>>
>> Your example fails to do even the most fundamental task: the overlay
>> is still specific to just one host board. Go connect this cape to
>> an original PocketBeagle and try to apply the overlay to its DTS..
> 
> 
> Once I make the connector node a gpio and pwm nexus node, it will not be specific to just one host board. But yes, the current one is like that.
> 
> 
>>
>> What you did with "export-symbols" in this example could have been
>> done exactly the same with normal overlays. These "examples" keep
>> showing "what" the "export-symbols" node does, not "why" it is
>> needed or better than just normal __symbols__.
>>
>> Andrew
> 
> 
> No, it cannot be. When using `__symbols__`, the changes are not contained to a single devicetree nodes. As you can see even in the current form of the overlay, any modifications happen inside the connector node. Nothing outside of the connector node is modified at runtime.
> 
> I am not here to argue whether runtime global devicetree manipulation is an okay thing to do. I would be fine with it if upstream is okay with it. But neither sysfs based, nor configfs based patches for dynamic devicetree are being considered for that exact reason.
> 
> I am working from the assumption that upstream will not accept a global devicetree manipulation solution. So for local node based solution, export-symbols are essential. If I misunderstood something in this very basic assumption, then feel free to correct me.
> 
> Do note, that any solution cannot just stay as a static, apply using fdtoverlay kind of thing. It needs to allow for dynamic discovery using both EEPROM or something similar, and a fallback using sysfs or configfs.
> 

Any static solution (works with just fdtoverlay) can be extended to the dynamic discovery
case by simply doing the application of the overlay exactly the same way, but at runtime.
The issue "global devicetree manipulation" seems to be around how unloading of the overlay
would work, which is an unsolved problem for a lot of other reasons.

Just to note here, I have no issue with export-symbols, I think it is a useful addition
to the DT toolbox. All I'm trying to do here is understand what you plan to do with this
new tool. Hence asking for a *complete* and *functional* example with a real add-on
board, so I can see how many more tools will be needed after this one.

Anyway seems like you are trying to consolidate the all the current discussions on this
to one thread[0], so we can continue this over there.

Thanks,
Andrew

[0] https://www.spinics.net/lists/kernel/msg5663574.html

> 
> Best Regards,
> 
> Ayush Singh
> 
> 
> [0]: https://lore.kernel.org/devicetree-spec/20250401081041.114333-1-herve.codina@bootlin.com/T/#m5ae5b64b0e7fcae709127b99c8aa10fc28fb1ea8
> 

