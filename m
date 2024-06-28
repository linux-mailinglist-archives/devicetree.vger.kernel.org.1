Return-Path: <devicetree+bounces-81468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FB291C562
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 20:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38700286924
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 18:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E575B1CB307;
	Fri, 28 Jun 2024 18:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="h8BPRWu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E4A46441
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 18:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719597951; cv=none; b=VAMgozvfi5wFB40qgi9WHpb2G1zpcFmYtzAF4xbK9t7nZ5Ji89cLczb83TaUsylypum+GcrgHzSpWvoMGd07Iye2zzQFE9uejFUfu4T9TFP4+RcbTHi/zjCaHbcueDUMnNGRWqF7oAN1PLSnHveUcZ/BlWy9rrPQ+bAMjwwq3l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719597951; c=relaxed/simple;
	bh=POF7Q9dj5GQdEO4Pb3zuduUf0KWAzz24w7afIMokwVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MQXuTSKWKFDudr8XlbMIavGODfAZbS0qJquE3SB2NYXW6hQQmqK2mDTg3+NjkTyptnBRgkwR13ZwHgsfpimgTvkSiydo6h+BiiUYACYU3RdhLeGkQ2J6fLxLs6Mck0R7S2NmHGAO6JGbiaLk69QqTSOYS63+dQ5msObFdF9FkKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=h8BPRWu8; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1faa9d5d25fso354985ad.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 11:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1719597950; x=1720202750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h9jhg57fS7Sxej2hwQNHjqF+6s4+CeCZMfG+JMi6knk=;
        b=h8BPRWu8K3ApbnzXnFY/F2qdghjCHdnGTQiCEUmFJajMQwS3OtCMKoqist7o85/nAx
         fpxoNq97P2cL7qgT82K3nKwcnm4enSjBn5atldkLF0Jjvity6zAh4uS48mi/z+3Bo+DO
         aU3MlkrAB4C+h/LMDf1DrbxXfpvRXvBTXjTARRJR7a6rjcKtvq3foXaq/grgWurvjeJy
         jgGnwbE/bJDzoKxh0w9vUYlzl46os+67OtuQ5HuNNh2nQId5WSqEUbIYuia3tJTis08D
         ltu29F85GhPqZDMdsMlRTrQJqAgQV2wbAGLWXzEyF130l1of7hX97fNVkknnaqmES3sn
         VQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719597950; x=1720202750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h9jhg57fS7Sxej2hwQNHjqF+6s4+CeCZMfG+JMi6knk=;
        b=OGfPwaiIzyNCPj4bJvNUNc3FR8lvl3B0ok3REsIZvxYiV03E4yOdML7rR/xhzhBdM3
         61zb8Jb3e/2dof4JLf73pxVjLfH2GQsx6C5S/sIQMprBFnZpIyWIH7Lk61HK23Pv7BHE
         7D9k2TQov7T/7qQYNXm0bMy/Pvn+bWZE8aQqdt+wEJr2wSFNHQmpNLirv019yzDZllBJ
         bXVaWVK3HMKqg2ehqE5TvM/aKowsh3hFirbPwrswW+FOdh1nni49RO5aweD0ii2d+mzq
         pS3iPm1/hQAMXmgXuWv8bMlXd2hnGMURdVzH2YwpjZP71tncbP3zbGgU/Ibke2BR3J9c
         WGXw==
X-Forwarded-Encrypted: i=1; AJvYcCWAtUeUIIAjJYKshVTlboHdJzXwlQLo2YV/MtLFboJYrGiwGkVVLhIX5itPSZTaKdmKlIRvx3xsQ4Gf9W+VPz3RTYCs4Gf7mHfsBA==
X-Gm-Message-State: AOJu0YwZiDd5mIP07sNRIv0j1qa1ReWlRyB77MeWh5coPy7pb5dyqSyk
	fOlnFbR38mMR54h2Td2JxUP6v2VAgwDLdZ2pT6AsuapszZCUB2EUcI67ctBgeQ==
X-Google-Smtp-Source: AGHT+IFrcpDIZ5c0lQMNUo+kKfK13yz1cfUtbJGi3wyM2dDPIT1iw2gy5owixpW50M/NCoZMRJi9Pw==
X-Received: by 2002:a17:903:234a:b0:1f9:b35f:65dc with SMTP id d9443c01a7336-1fa0d832226mr208517705ad.6.1719597949507;
        Fri, 28 Jun 2024 11:05:49 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3e:18b0:e4e6:ed1:4c03:dcec? ([2401:4900:1f3e:18b0:e4e6:ed1:4c03:dcec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fad207514csm8267095ad.110.2024.06.28.11.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 11:05:49 -0700 (PDT)
Message-ID: <f9fa23b7-5039-49f4-9904-20699efa4564@beagleboard.org>
Date: Fri, 28 Jun 2024 23:35:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] misc: Add mikroBUS driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Mark Brown <broonie@kernel.org>, Vaishnav M A <vaishnav@beagleboard.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Michael Walle <mwalle@kernel.org>, jkridner@beagleboard.org,
 robertcnelson@beagleboard.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ayush Singh <ayushdevel1325@gmail.com>
References: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
 <1edcfd98-e73c-477e-a4ce-98cb41e66ab6@beagleboard.org>
 <54c18009-40c6-4c92-852e-6b7117e706a2@lunn.ch>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <54c18009-40c6-4c92-852e-6b7117e706a2@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 6/28/24 19:22, Andrew Lunn wrote:
>> 3. Allowing creation of sysfs entries `new_device` and `delete_device`
>> similar to what already exists for I2C, etc.
> On the I2C bus, these operate at the device level, you instantiate a
> new I2C device.  I assume here you are actually talking about board
> level operations? So they would be 'new_board', and 'delete_board'
> files in sysfs?
>
>> 4. Allow using 1-wire-eeprom in a fashion that allows automatic board
>> discovery.
>>
>>
>> Let me now introduce the 2 architectures we will be discussing:
>>
>> 1. mikrobus-connector has phandle to mikrobus-board:
>>
>> ```
>>
>> \ {
>>
>>      connector1 {
>>
>>          board = <&board1>;
>>
>>      };
>>
>>
>>      mikrobus_boards {
>>
>>          board1 {
>>
>>              ...
>>
>>          };
>>
>>      };
>>
>> };
>>
>> ```
>>
>>
>> 2. mikrobus board is a child node of mikrobus-connector:
>>
>> ```
>>
>> \ {
>>
>>      connector1 {
>>
>>          ...
>>
>>          spi {
> So there would actually be multiple child nodes, one per bus, and then
> maybe a simple-bus for nodes which do not correspond to a bus,
> e.g. gpio-key, gpio-leds, etc.,
>
>>              board1 {
>>
>>                  ...
>>
>>              };
>>
>>          };
>>
>>      };
>>
>> };
>>
>> ```
>>
>>
>> I will now go over how each of these goals might look like in both of the
>> architecture.
>>
>> 1. Keeping the device tree properties upstream in a system independent way:
>>
>> a. mikrobus-connector has phandle to mikrobus-board
>>
>> It is possible to create an overlay as follows which will work with any
>> system that defines the `mikrobus_boards` node. This node is completely
>> independent of mikroBUS connector and thus does not need to be rewritten (or
>> generated) for each board. There are no problems for system with more than 1
>> mikrobus connector.
>>
>> ```
>>
>> &mikrobus_boards {
>>
>>      board2 {
>>
>>          ...
>>
>>      };
>>
>>
>>      board3 {
>>
>>          ...
>>
>>      };
>>
>> };
> So by default, you have an empty mikrobus_boards node? You then use DT
> overlay to load the needed board into this node, and then update the
> phandle in the connection node to point to the newly loaded node?
>
>> b. mikrobus board is a child node of mikrobus-connector:
>>
>> Not sure how to do something similar here. The overlay needs to be rewritten
>> (or generated) for each board.
> It would be good to explain why...
>
>> Systems with multiple mikrobus connectors
>> will need multiple overlays adding the boards as child node of each
>> connector (with status = "disabled").
> Why? Just load the one overlay actually required.
>
>> &connector1 {
>>
>>      spi = {
>>
>>          board 2 {
>>
>>              ...
>>
>>          };
>>
>>          board 3 {
>>
>>              ...
>>
>>          };
>>
>>      };
>>
>> };
> I don't actually understand this description. I was expecting more
> like:
>
> connector1: {
>
> 	spi =  {
> 	    /* Optional TI TSC2046 touchscreen controller */
>              opt_touch: touchscreen@0 {
>                      compatible = "ti,tsc2046";
>                      spi-max-frequency = <2500000>;
>                      reg = <0>;
>                      pinctrl-0 = <&pmx_gpio_13>;
>                      pinctrl-names = "default";
>                      interrupts-extended = <&gpio0 13 IRQ_TYPE_EDGE_FALLING>;
>              };
> 	};
>
> 	i2c = {
> 	        opt_audio: audio@1a {
>                  compatible = "ti,tlv320aic23";
>                  reg = <0x1a>;
>          };
>
> 	the_rest = {
>          	gpio_keys {
>                      compatible = "gpio-keys";
>                      #address-cells = <1>;
>                      #size-cells = <0>;
>                      pinctrl-0 = <&pmx_reset_button &pmx_USB_copy_button>;
>                      pinctrl-names = "default";
>      
>                      copy {
>                              label = "USB Copy";
>                              linux,code = <KEY_COPY>;
>                              gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
>                      };
>                      reset {
>                              label = "Reset";
>                              linux,code = <KEY_RESTART>;
>                              gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
>                      };
>              };
>
> This is completely made up. You probably should use an example of a
> real complex board using multiple busses.
>
> So for each actual bus on Mikrobus, you have a bus node, and then a
> node for everything which is not bus orientated, like gpio-keys.
>
> So the overlay would simply populate these child nodes.

I think I had a fundamental misunderstanding of what dt overlays can do. 
My understanding was that to say add thermo click in the above style 
with child nodes, the overlay needs to look as follows

&connector1 {

     spi {

         thermo_click: {

             compatible = "maxim,max31855k", "mikrobus-spi";
             spi-max-frequency = <1000000>;
             pinctrl-apply = "spi_default";

         };

     };

};


However, after going through the drm PR pointed by Rob and your 
description, it seems it is possible to create an overlay as follows:

&spi {

     thermo_click: {

         compatible = "maxim,max31855k";
         spi-max-frequency = <1000000>;
         pinctrl-apply = "spi_default";

     };

};


and apply it to the particular connector node (say connector1), at least 
from the driver. If that is the case, then yes, all of my reasons for 
not wanting to use child nodes become irrelevant.


DRM PR: 
https://lore.kernel.org/all/20240510-hotplug-drm-bridge-v2-0-ec32f2c66d56@bootlin.com/


Ayush Singh



