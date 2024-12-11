Return-Path: <devicetree+bounces-129772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F20D89ECBF4
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 13:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45334161D98
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 12:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57AD225A3A;
	Wed, 11 Dec 2024 12:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GcnlZ1le"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AEB225A2A
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733919791; cv=none; b=mkgMffCrA8WgXm7HEIUd/ksbyM74Q6EYy2hb+2b0aOEstX0zYo+q35UPNY0Dmtnk7ZJ3NTd32+B4ge6loMMoorUXOHL44Lqi/L/EnofDIdo0vDGMBIqJICIInq7pWa0jlR5xpKkt/OVawVeNw4CbF+NY32+d0SapZz26fnpWieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733919791; c=relaxed/simple;
	bh=4LmoThFKiCg6NPxt1pwJQOCUq4Ty9Yrn6QdEkSulcGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m5akcI5u3EVuQ3cNFvptN0DGawvu1KZsUfceyGqLbstwVrgZp4MjnpQ8yvUIcWi4dX9gWXF97TgcMYKzixE5jA47AEnpKunqToCeEGO0gCIsGVPIPJglZArmpjoO7Djyv7wkMsEvWTj5iSGEbVxax6QWSb9RZpHZaOWJOUirxrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GcnlZ1le; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d27243ba8bso10018702a12.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 04:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733919788; x=1734524588; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ASQKGpCO7s4KPkalfOXfelNyrTTyYMkGNmfArDEmeBM=;
        b=GcnlZ1leTt1dsahBLq9jtbzrF5Pac0t0OTfPep3wmLSznG3bp99gbGHJykUPgrJa1D
         UbBKKdwv6ytOjGz8rvT5bJwyTntg245NuHeDrgQuQdACLrCM2jtpdTBFihzb90WvxPdi
         4/8WTry2UzERCxS+XDvYeyVviYK1MwUw+NlrhqN2hC18O+KUykMwXzr8jWreVJSjozdt
         6VC2zLm7P9imTSQD3rBbSDQ3yw/DrXP2fcVVFsZ52CMHqa9GcPZRUSjNg5+hjvzFtswU
         ORDmhc4k4297RaMxUDLaYLPPp3uKsgLmnksRvRfYpXkqlS8nEi3l4cuSqAsrjs0IoiRe
         kpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733919788; x=1734524588;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ASQKGpCO7s4KPkalfOXfelNyrTTyYMkGNmfArDEmeBM=;
        b=IpEtYrEba5Qom3pqx+JlErrf4SArM/x5z0mSmPhJw3uhtaIylncOF3IanQXMR3+lBV
         8khgAxhv8wcdqG0w/bEa9gquUC2PF8shSAToaUm/bFPEK5iWrZ2p5zZhF0RHRyCHU9V/
         IUZczjBXi0tKFULVuernrco3RNjUVYgd5ck1M7XF0yJckuuQjcgIyfhAmmVxB4ovnvEZ
         6tV3Env2GAAMMIyOYHlhZ4rrCtqCy3GMadYtfuTQLJbnPjPNNG0Dw+XStEwm5uC56ZM0
         1ZzGOczoyCf+VodzIr6fBc/VFZqabHxs28d0O6C0lT5HrlkWUmXwpQ3nCKXdaoJWvV/Y
         zCNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHpnOe9ROxSLz0yZewo0AQKChTpcoOFGYc/ygqdMccHRXi5vwtqXdUVtVUO/IxXu3vrRw7Kk0U3sSF@vger.kernel.org
X-Gm-Message-State: AOJu0YyVHdUOb7DKEON+AwNsplOtKa+261htCyad2A1BGs59Um+iD1At
	k2YCkqa1Vm99tfUtC/F0nvTKBiPTcRKUtaMcKarmrvBPLZZvhCruB3+TMAoao/Q=
X-Gm-Gg: ASbGncszyOF5XzE4eNqD+XlHVaCkz5nCaLqwMhnYpOLXwgKennckkPm7MKGTc3i0mTV
	n19Ky8xhxVdp99EorzcDU3VkI45zdnnsztzLFW/wylHva3Uyv8TFqugs3Lm1dlxOgF2dPnSgPGf
	TwCXHNFw21ZDmHOwXbIXdkp0NxK/6w1dn3oMVGqSiNhncngKm+somV56IoK2/xQVuOpBKB7TQBC
	7sqdpTIonrXggJxfM8wX8GrslO3uhWthx1ZNB6kA8IPX660CwjOyhmZzn78u/4=
X-Google-Smtp-Source: AGHT+IGes3nVxEDSBxlaHGZVONLhxg58Ob1fOjsVMtO4m5ilIn457hh6A+FzVBWpzlcY83VX6o4HaQ==
X-Received: by 2002:a05:6402:4305:b0:5d0:8498:8bed with SMTP id 4fb4d7f45d1cf-5d4330a5ce2mr2727865a12.15.1733919787869;
        Wed, 11 Dec 2024 04:23:07 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7aa441sm8847370a12.72.2024.12.11.04.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 04:23:07 -0800 (PST)
Message-ID: <437b8d13-8ec1-40c7-b95c-ddb836e123d6@tuxon.dev>
Date: Wed, 11 Dec 2024 14:23:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org,
 yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <20241210184542.GA4077820-robh@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241210184542.GA4077820-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Rob,

On 10.12.2024 20:45, Rob Herring wrote:
> On Tue, Nov 26, 2024 at 11:20:36AM +0200, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/G3S system controller (SYSC) has registers to control signals that
>> are routed to various IPs. These signals must be controlled during
>> configuration of the respective IPs. One such signal is the USB PWRRDY,
>> which connects the SYSC and the USB PHY. This signal must to be controlled
>> before and after the power to the USB PHY is turned off/on.
>>
>> Other similar signals include the following (according to the RZ/G3S
>> hardware manual):
>>
>> * PCIe:
>> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
>> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>>   register
>> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
>>
>> * SPI:
>> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>>   register
>>
>> * I2C/I3C:
>> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>>   (x=0..3)
>> - af_bypass I3C signal controlled through SYS_I3C_CFG register
>>
>> * Ethernet:
>> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>>   registers (x=0..1)
>>
>> Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
>> consumers to manage these signals.
>>
>> The goal is to enable consumers to specify the required access data for
>> these signals (through device tree) and let their respective drivers
>> control these signals via the syscon regmap provided by the system
>> controller driver. For example, the USB PHY will describe this relation
>> using the following DT property:
>>
>> usb2_phy1: usb-phy@11e30200 {
>> 	// ...
>> 	renesas,sysc-signal = <&sysc 0xd70 0x1>;
>> 	// ...
>> };
>>
>> Along with it, add the syscon to the compatible list as it will be
>> requested by the consumer drivers. The syscon was added to the rest of
>> system controller variants as these are similar with RZ/G3S and can
>> benefit from the implementation proposed in this series.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - none; this patch is new
>>
>>
>>  .../soc/renesas/renesas,rzg2l-sysc.yaml       | 23 ++++++++++++++-----
>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> index 4386b2c3fa4d..90f827e8de3e 100644
>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> @@ -19,11 +19,13 @@ description:
>>  
>>  properties:
>>    compatible:
>> -    enum:
>> -      - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
>> -      - renesas,r9a07g044-sysc # RZ/G2{L,LC}
>> -      - renesas,r9a07g054-sysc # RZ/V2L
>> -      - renesas,r9a08g045-sysc # RZ/G3S
>> +    items:
>> +      - enum:
>> +          - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
>> +          - renesas,r9a07g044-sysc # RZ/G2{L,LC}
>> +          - renesas,r9a07g054-sysc # RZ/V2L
>> +          - renesas,r9a08g045-sysc # RZ/G3S
>> +      - const: syscon
>>  
>>    reg:
>>      maxItems: 1
>> @@ -42,9 +44,17 @@ properties:
>>        - const: cm33stbyr_int
>>        - const: ca55_deny
>>  
>> +  "#renesas,sysc-signal-cells":
>> +    description:
>> +      The number of cells needed to configure a SYSC controlled signal. First
>> +      cell specifies the SYSC offset of the configuration register, second cell
>> +      specifies the bitmask in register.
>> +    const: 2
> 
> If there's only one possible value, then just fix the size in the users. 
> We don't need #foo-cells until things are really generic. Plus patch 
> 8 already ignores this based on the schema. And there's implications to 
> defining them. For example, the pattern is that the consumer property 
> name is renesas,sysc-signals, not renesas,sysc-signal.

OK, I'll fix the size in users.

> 
> Maybe someone wants to create a 'h/w (signal) control' subsystem (and 
> binding) that is just 'read, assert, or deassert a h/w signal'. Perhaps 

Until then, is it OK for you to keep it as proposed here?

> even the reset subsystem could be morphed into that as I think there 
> would be a lot of overlap. 

The USB PWRRDY signal handling has been initially implemented though a
reset controller driver but, after discussion with Philipp it has been
concluded that it should be handled differently, since it is not a reset
signal.

> Maybe that would cut down on a lot of these 
> syscon phandle properties. I would find that a lot more acceptable than 
> the generic 'syscons' and '#syscon-cells' binding that was proposed at 
> some point.
> 
> 
>> +
>>  required:
>>    - compatible
>>    - reg
>> +  - "#renesas,sysc-signal-cells"
> 
> New required properties are an ABI break.

I've added it as in the old DTs the system-controller node is disabled.
With that, do you consider it OK to keep it?

> 
>>  
>>  additionalProperties: false
>>  
>> @@ -53,7 +63,7 @@ examples:
>>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  
>>      sysc: system-controller@11020000 {
>> -            compatible = "renesas,r9a07g044-sysc";
>> +            compatible = "renesas,r9a07g044-sysc", "syscon";
> 
> What happens on a new kernel and a DT without this change?

The older DT have the system-controller node disabled, thus nothing will be
probed for it.

Thank you for your review,
Claudiu

> 
> Rob

