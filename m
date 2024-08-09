Return-Path: <devicetree+bounces-92307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C54C94CA4F
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FF981C21F2E
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 06:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BC016D31F;
	Fri,  9 Aug 2024 06:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aTcpD1Xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC6616D312
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 06:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723184108; cv=none; b=cDXmNqEMIRGgXb5i5d5IcutNzP2/V+hgrzkd4/K04tK5Q4jNbNQ2Elk21d9rH2LdPznPyCTyxmcl1w6qhMGx4UozyFV70BgQdDrwqc/M8nNMazrkMFL+4F1UtGbhQwSyXM6cTHWJJL806rlNDqOgG65Aj2qfw+KXgnkG2J0e3cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723184108; c=relaxed/simple;
	bh=3SkT6eUaGXULYT8HjMToBBp/o+Af4193MeaW7kUSvRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GAZO3JdaM9ci3vbiduBBtCaFPLMSPf6jd0YtB85t0ZUDsRTs/ziy9PBAV+yCu4DI8TDjW/zoruy6E9qYyqgdBYFo3ULVzllf0c1bVg+hPOZE+H/89R3R34M17lQJTrrmNc2C91pi+v/52lFQcgaQpjJ9U2yJI1GkWzI7V+Ql24g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aTcpD1Xh; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a3b866ebc9so1952782a12.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 23:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1723184105; x=1723788905; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mmo7vCSxtWZSUKBq5QA7U8m3yyWxTBrT8d+vUprsRtU=;
        b=aTcpD1XhK8cieHrKOqHdHD6Rb4gujfRLaQv5GCkWOOGBfhNct1RGjOZkIZqhykOJQX
         MLaCsWLO6txktOCmRQFxq/QGZfiAqGsTLCu2HCET/LOg5NX0x89hWPbpGPTL2Ouksxzy
         osEQMy1QyNm+tn4YRFsk7xRmAIiP4w1f3wxsakDbhh08T3I89/s9henC92ZHfyDYsViv
         ICtNALTATP/PCYSK138mGjOA1TfXxHUvDGb9IDVp5VDxDn/uEId1gFlJsDQUU9iOR0SN
         WRhkllltf75UL+xclIOWNoFw5cb/OVLmRZHObybnwVuov6/svAxS0iJcm0nHYzzNVGzT
         cyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723184105; x=1723788905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mmo7vCSxtWZSUKBq5QA7U8m3yyWxTBrT8d+vUprsRtU=;
        b=qggh3dUYAfAc9ezadYbz1yvRhVMuJacsMhT7PyVTWjZtQsmYr5Xd0ojTjO9U67rPD5
         puIa0JMe/r4oCI5I9aXtLpeD+onaXzLcqlu0OHIBzdU6nRGLlA/unUOu7d9lKszyllrv
         SVLAHdGiSlyjgndmIyPd8bF9oPtf61Caj4LYSwCjq4X5BB8rR+rfSqoZUWpx1QO1qAFw
         oGeBfWsdnACzfy39h7EtwmbM/0AivKsaQIxeRBaOfLDm34dM7dQY7r2NssQreNAcU5oW
         G5wPAtuv2syGnRj+FXDeTIuZ5RrThJmMEukFqroJEVa20LQw1383KkuyDRod8mXiGxYz
         +sOA==
X-Forwarded-Encrypted: i=1; AJvYcCXTn5Ir8WlcNkeGW88Q4bfttxSeL/luXZj4K23h+1s+Y8ffmaVTQJjdrn6RW62hvRBPDwHYfq/AzgXLan7jRGkI+b94iA6v7B0awg==
X-Gm-Message-State: AOJu0YxeTJP+sj6LW4tpQFWOpW+lAsWCcBwAgRomFZgn427lf2217WHC
	1PyirMnvCBP+mMwJihaJ82nX7mQQ2Dc9Q7k1zzrdBYjvA5d587OpoWnbMKHrsqA=
X-Google-Smtp-Source: AGHT+IF8i6+WlvJMTlwDRi/ONJBvYLchB60INeIHYhAB+fRORUMHsbgzjq6cXCYdLorWHI62kPbVLQ==
X-Received: by 2002:a05:6402:2551:b0:5b9:3eaf:5bc with SMTP id 4fb4d7f45d1cf-5bd0a52a794mr351200a12.10.1723184104842;
        Thu, 08 Aug 2024 23:15:04 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.180])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bcd9d08dcbsm250237a12.71.2024.08.08.23.15.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 23:15:04 -0700 (PDT)
Message-ID: <13fa9b3f-7124-4851-a1e3-7ea93ac7ba48@tuxon.dev>
Date: Fri, 9 Aug 2024 09:15:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sam9x60: Move i2c address/size to
 dtsi
Content-Language: en-US
To: Alexander Dahl <ada@thorsis.com>, devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20240528153109.439407-1-ada@thorsis.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240528153109.439407-1-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 28.05.2024 18:31, Alexander Dahl wrote:
> These properties are common for all i2c subnodes, and marked as
> 'required' in atmel/microchip i2c bindings.  Allows to add i2c device
> nodes (like an rtc for example) in other .dts files including
> sam9x60.dtsi without requiring to repeat these properties for each i2c
> device again and again.
> 
> Found on a custom board after adding this in .dts:
> 
>     &flx5 {
>             atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
>             status = "okay";
> 
>             i2c5: i2c@600 {
>                     pinctrl-0 = <&pinctrl_flx5_default>;
>                     status = "okay";
> 
>                     pcf8523: rtc@68 {
>                             compatible = "nxp,pcf8523";
>                             reg = <0x68>;
>                     };
>             };
>     };
> 
> … which created a warning like this:
> 
>     […]:236.4-17: Warning (reg_format): 
> /ahb/apb/flexcom@f0004000/i2c@600/rtc@68:reg: property has invalid 
> length (4 bytes) (#address-cells == 2, #size-cells == 1)
>     […]: Warning (pci_device_reg): Failed prerequisite 'reg_format'
>     […]: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
>     […]: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
>     
> […]/linux-6.6.25/arch/arm/boot/dts/microchip/sam9x60.dtsi:283.19-299.7: 
> Warning (i2c_bus_bridge): /ahb/apb/flexcom@f0004000/i2c@600: incorrect 
> #address-cells for I2C bus also defined at […]:228.16-238.4
>     
> […]/linux-6.6.25/arch/arm/boot/dts/microchip/sam9x60.dtsi:283.19-299.7: 
> Warning (i2c_bus_bridge): /ahb/apb/flexcom@f0004000/i2c@600: incorrect 
> #size-cells for I2C bus also defined at […]:228.16-238.4
>     […]: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
>     […]: Warning (i2c_bus_reg): Failed prerequisite 'i2c_bus_bridge'
>     […]: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
>     […]:234.19-237.5: Warning (avoid_default_addr_size): 
> /ahb/apb/flexcom@f0004000/i2c@600/rtc@68: Relying on default 
> #address-cells value
>     […]:234.19-237.5: Warning (avoid_default_addr_size): 
> /ahb/apb/flexcom@f0004000/i2c@600/rtc@68: Relying on default #size-cells
>  value
>     […]: Warning (avoid_unnecessary_addr_size): Failed prerequisite 
> 'avoid_default_addr_size'
>     […]: Warning (unique_unit_address): Failed prerequisite 
> 'avoid_default_addr_size'
> 
> This probably should have been done with commit 84f23f3284d5 ("ARM: dts:
> at91: sam9x60: move flexcom definitions") already, where those
> address-cells and size-cells properties were left in the board .dts
> files instead of moving them to the dtsi.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>


Applied to at91-dt, thanks!

Please note that I've adjusted the commit message to reflect that the props
you've adjusted are not required anymore in the validation schema.

Thank you,
Claudiu Beznea

