Return-Path: <devicetree+bounces-58436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E64B8A1FD0
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 21:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AFE81F22C8C
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 19:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6498179A8;
	Thu, 11 Apr 2024 19:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e61DVOrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069E417BD8
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 19:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712865581; cv=none; b=vDnQU40ZG0aNBA2P3BCmN9DGPbDjOtgRyjsBnN012MbnRaBInr40cNPQE4KlXHr/S8l8c8/yjqbjUbxO2eGl+h7fwKm1B4hm9NsGdMX020jn9rSukhRucZSr6v7QGF1or6Ds/loRt4F13A5JQXdzGNGHcuhus2GONR7DQxauzE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712865581; c=relaxed/simple;
	bh=uhtySGVK5A6+vHp5UrGYLuo5kUbyFoALPVif91nqwuc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IZUFjyEhHyZONL5yJGtHBa2KAz/ZrZ2HYCICUbO28VJ6gDSmuga5fHHBuctHKN4CNs7pPnnzTbix+HRUGZsFgtoPLp+CzXG5pWWopNDCKIt3hqIuz5j5fTDMLtvfAUpz1TUtHnhXcxLug/HKVn3fizM005Oy6s7SnxKGhsF/HMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e61DVOrd; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3455ff1339dso95976f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 12:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712865578; x=1713470378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Iwn+JX8xlhjGnXsfpBzohHUIfjRXih/t5ZCgll+Ab1M=;
        b=e61DVOrdec3IWMoxUsnQnjS5QMpThRxoM+v64JmlGAFOfRoT2F1fR5LLq7pla4ADVd
         db2alSNCnHesNyQNKn1n+0dmuHQOi94shYRx5ufIuCSnMhWUcapVm3QK0RgiDZGTVa1u
         36MufoUf6p8UwVabZMLRDqxoJGZxD++hVJksFuFWI4SyTplQwKxvKAt6pMJxcjU7grW6
         xXI2m0j1I4nfioxKi9ji0tL4b1sa1+SxLPIZa/EKkOteVqDkPgyV9CMGkb4m5WLYVrP5
         6Ugq70imZCsSbD0gZ/oQAii57w0QVT8CtSBhDlt9sKif8jGQKpIbkpMJNC8c5Ttzy6vs
         534w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712865578; x=1713470378;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iwn+JX8xlhjGnXsfpBzohHUIfjRXih/t5ZCgll+Ab1M=;
        b=kLzD9g3t2XkI012K17xCQ/Y4ylWGTyZfrzi7GH7GPQyRChzbDkr1C7SpuAaWaFDoGR
         oAQ5gTgOa4tQ6548ObjQVQVWz0mCSvhk5vLG5daIMvEgZTuppqPCNkarOkdXZ73wNox5
         yon7R+HY/v+Hn3w+vJJ8HxgRwkmyFhTCVyctFR0KvXhzz22o7h6gl6OoJ5DcgPKbdFoN
         iqe0t+gL26tqw6Fr6AQrKMSRdm/6sUCo4bAGrCZKo6/joDZaO9zO+CsOAq3KvoCjZvh0
         ytzMmPLYMiFFiBci3+s3XjVIqs0k2+9lyWc+noKy5umllNzY95pB6lEp+h67XmXyWZWs
         Do5w==
X-Forwarded-Encrypted: i=1; AJvYcCUPpJQy/iolLT0OCAXKny3aCSyiG91j7r4sqNCJmVYNAWjJxAgdhcXfgn75gZOrwuZ9cCZY1g/iaGHnbVDN1nX+OIaOHHtek2ODmA==
X-Gm-Message-State: AOJu0Yx0s/4a2cSCbC+eHYo7VvchgAcWM31SNuPTVKTDgUBZU38V94QS
	wZNxRC95AMcDA5rj2yy10wqgjTdtLVoISkvLS1Z0J4tipbT+2SApMl2wQnTyIYY=
X-Google-Smtp-Source: AGHT+IE299GS0PEcChuZMfJ6a0ihE/WSAW/jfcW48vAeQ5Mexi1AiT8WGDQD65/ia01rcTRpzoiqkg==
X-Received: by 2002:a5d:4743:0:b0:33e:8b93:87c6 with SMTP id o3-20020a5d4743000000b0033e8b9387c6mr420612wrs.42.1712865578120;
        Thu, 11 Apr 2024 12:59:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id c12-20020a5d4ccc000000b00343f662327bsm2496475wrt.77.2024.04.11.12.59.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 12:59:37 -0700 (PDT)
Message-ID: <025d268f-96d0-49fa-9a67-f80ab81ed102@linaro.org>
Date: Thu, 11 Apr 2024 21:59:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv3 1/2] dt-bindings: usb: typec: anx7688: start a binding
 document
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, Pavel Machek
 <pavel@ucw.cz>, phone-devel@vger.kernel.org,
 kernel list <linux-kernel@vger.kernel.org>, fiona.klute@gmx.de,
 martijn@brixit.nl, samuel@sholland.org, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <ZhPMHdt6r/4D99Zg@duo.ucw.cz>
 <ab9affc8-de68-4ec9-bdfc-02131191bc3a@linaro.org>
 <ZhPTTxI4oTF3pgrk@duo.ucw.cz>
 <e7841ad2-fa3d-442d-804d-51f12e05c234@linaro.org>
 <e6vvuttix5k5fioy7q44ick5wj6u5gleh7mht36s4zjjcym7vy@bziejyohtc4b>
 <7976e254-ed1e-406d-870b-1ecdc4b1e23c@linaro.org>
 <uoo7xltbfx7u6iai7urj3wez7cwotokxt6lwjhff57xbljusqn@fr2xejnrlak7>
 <1502383c-9caf-4362-8bd6-ed719a304f08@linaro.org>
 <vbo7bacecuagu4qzrr6tsdh4qlejrv7ia67yylf6ay4u7qnwge@kqj27bun2m7d>
 <97f2d38d-c863-4c76-91f1-52cd250759d7@linaro.org>
 <ounfv3vgg2esvxk2cxckeqyy52mghiyps2rszh7sf5poryyjzs@ftumsalmthza>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ounfv3vgg2esvxk2cxckeqyy52mghiyps2rszh7sf5poryyjzs@ftumsalmthza>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/04/2024 04:20, Ondřej Jirman wrote:
> On Mon, Apr 08, 2024 at 10:12:30PM GMT, Krzysztof Kozlowski wrote:
>> On 08/04/2024 17:17, Ondřej Jirman wrote:
>>>
>>> Now for things to not fail during suspend/resume based on PM callbacks
>>> invocation order, anx7688 driver needs to enable this regulator too, as long
>>> as it needs it.
>>
>> No, the I2C bus driver needs to manage it. Not one individual I2C
>> device. Again, why anx7688 is specific? If you next phone has anx8867,
>> using different driver, you also add there i2c-supply? And if it is
>> nxp,ptn5100 as well?
> 
> Yes, that could work, if I2C core would manage this.

Either I don't understand about which I2C regulator you speak or this is
not I2C core regulator. This is a regulator to be managed by the I2C
controller, not by I2C core.


> 
>>>
>>> I can put bus-supply to I2C controller node, and read it from the ANX7688 driver
>>> I guess, by going up a DT node. Whether that's going to be acceptable, I don't
>>> know. 
>>>
>>>
>>> VCONN regulator I don't know where else to put either. It doesn't seem to belong
>>> anywhere. It's not something directly connected to Type-C connector, so
>>> not part of connector bindings, and there's nothing else I can see, other
>>> than anx7688 device which needs it for core functionality.
>>
>> That sounds like a GPIO, not regulator. anx7688 has GPIOs, right? On
>> Pinephone they go to regulator, but on FooPhone also using anx7688 they
>> go somewhere else, so why this anx7688 assumes this is a regulator?
> 
> CC1/CC2_VCONN control pins are "GPIO" of anx7688, sort of. They have fixed
> purpose of switching external 5V regulator output to one of the CC pins
> on type-c port. I don't care what other purpose with some other firmware
> someone puts to those pins. It's irrelevant to the use case of anx7688
> as a type-c controller/HDMI bridge, which we're describing here.
> 
> VCONN regulator is an actual GPIO controlled regulator on the board, and
> needs to be controlled by the anx7688 driver. So that CC1/CC2_VCONN control
> pins driven by the firmware actually do what they're supposed to do.
> 
> Not sure why it would be a business of anything else but anx7688 driver
> enabling this regulator, because only this driver knows and cares about this.
> If some other board doesn't have the need to manually enable the regulator, or
> doesn't have the regulator, it can simply be optional.
> 
> There are also some other funky supplies in the bindings, that are not connected
> to the chip in any way, but need to be controlled by the driver:
> 
> +  vbus-supply: true
> +  vbus-in-supply: true

Yeah, the vconn looks reasonable. Just provide description of the
supply, so it will be obvious.

> 



Best regards,
Krzysztof


