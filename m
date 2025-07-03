Return-Path: <devicetree+bounces-192623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2807AF7213
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 13:26:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53B78188BC96
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 11:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC0A2E2EE9;
	Thu,  3 Jul 2025 11:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="0CVa7UyZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60AF1FBCAE
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 11:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751541988; cv=none; b=Vj6Sl3P0wCF/o3JK+kyprmpjSxMx0Kpt2wVnZM7iBC/UmnRtQt6O1Bu0Qb6CR8vpGJWPUax98Xw1E+1OsAqp9fyQsaEbEzzQlMloRuZ4HfyIxanEVYTw1jxQkUwMLDI5D3Q2Q8ISdCV93wGcxgSK9E/m4saO3ejLjtxSVJSrBqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751541988; c=relaxed/simple;
	bh=/2Un6UMtA1yBlRnnUxa6QqBYiOfpXfnouZCpUeeYD2I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TL/q2oA/eXc7pmBqjsmdrqUqCsRVI1ZDXO8Jos/UgjPGWNDzZ/jOfOz7MVOhSdjHR0pTd2+cWJjQVyTZEf7I+cH8yG16alc5o0tmN+DwOQqtqWC37GXC5d6rVcvITQn/fcvtUiYErHKwww0Iz3kSgmHUJm8N7GueDvq4t45nSjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=0CVa7UyZ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-23526264386so49950225ad.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 04:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1751541986; x=1752146786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=99R4ldK+hAGTpWZZR4+eV3lD7rynPJ3jnvDwzipGUic=;
        b=0CVa7UyZTM5WVZ0UtC6ZJq9ZSN6EzowwDwzwLaKSuCMkkjVPQSQeTaeSIz0RakkLpZ
         U3DH9nn7TzEYb1Y24XSipNo5TZ05KectjxjxW9yCIfprPEGilZQb4HyptDWUl8QK9cXz
         xoG+GaHSW2S7fflIFu0SSFh7V77Kgw7xAbV2FzkvfEioW9PZGLVPdxhgHSL6CSG1MUOC
         RTMFzsChzCCSJwkrtpV+3yKFaDmXeI6YRj5J8xgcp+Q0Lbuddm+k2ZTJQQmSdmdQqgcn
         5fCo3uBcRcpaqmK+MDEVNWYTo7haBO/zHv2ZoEsrDUzKlf8eg0e1tSbC5psvA9zMVECb
         u6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751541986; x=1752146786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=99R4ldK+hAGTpWZZR4+eV3lD7rynPJ3jnvDwzipGUic=;
        b=T260K40etICw7J8CHAo3H/Nkfkhc6Gtb6m19HHGqQcIbqxmJ4xuC+IoczAXieh36pJ
         X29rIGQWFVTumOQbhLNqu1RTOqxyVMJB9ku+te9/WI7V8d12R7IoKsgTb6OSBRx63VdC
         qxjUU8PdP4bf6x9cUzuuzffuuvwd5UDf/kFmUw67E4rQLi5yMLY1vSxODOrpgc2FSUO9
         tzKP4S/y7cfFBKD3CQn/VeInJWdm8es/QM9CVsorj7cYByJw9NEZH1KFB4fC6iqvmumO
         /Xa+1UcM9T297AIbMRGhm/6OuE0QeWFlPSa5daTKdwqVI2GVNdImDqOZL2XMVGzXtuHe
         /VOw==
X-Forwarded-Encrypted: i=1; AJvYcCX7y142IRJ80AxAE9ZrtqQftyLfFbR3bj+1SsGRppzZZ2rGDMYfLCPsdZJ1vid8UPkGi6Mq6Knbb5Nq@vger.kernel.org
X-Gm-Message-State: AOJu0Yysg/Q+97NT9RKq8VdiXC9uDEQIoZzuUiIf0OV9xN0eXWEg2ua7
	pKbhquXO8BS3hWHjuU3hm/iirMrAg+sxjvx4o+N+h6E6KDPKeC/v/VjLMcqYaEQCYw==
X-Gm-Gg: ASbGncucRh9lkUFOzEHPd9e8oFaFQD5gIwP4zrImPOFsWyl27RyklLluGPb6cAh0smQ
	cJ9JNnY7X2FZZ8142gbfGeKyUbJmXip5jyTQvruHqsFIc4RSDgbiApkWpL+u3Gxg3Ps/0mTWOMr
	rpMMuPlPs3aH8B2NcjPx95wnIGQfrzLhKoPZG/ckAiFFJxlWPnjhd/vZb4R6+v2s/vfEyJr75bc
	vSgJqC/kPWrIFd9at0l9EyIvdr+/QeDzuRbn347gW2yv+9+3WMLF50cIDt8VPTPUfzLVWxphBzM
	Ku1it4cKP/yVcGrOAq7vfrHCFkvWm9a6Clbis3pyIu40n0427zhqNdQq39vF4Z4QVdZPH/FDOoZ
	2qfZyYufYSQm+tVk6iCWCm1bfNs7eAn7kAD1+8Tg=
X-Google-Smtp-Source: AGHT+IGCAeqObZBcWQGkNr3+fCaNXerR2C6EX3Fc/6zbX8CgA4LYxU6srF98+K4BVoRiNrujQXM/7Q==
X-Received: by 2002:a17:902:e549:b0:235:ea0d:ae10 with SMTP id d9443c01a7336-23c6e500777mr131002785ad.12.1751541986171;
        Thu, 03 Jul 2025 04:26:26 -0700 (PDT)
Received: from ?IPV6:2401:4900:8898:f649:249d:54ef:66f6:5638? ([2401:4900:8898:f649:249d:54ef:66f6:5638])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb39c0a0sm151392315ad.122.2025.07.03.04.26.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 04:26:25 -0700 (PDT)
Message-ID: <8859d983-f4ff-498b-bb0b-eb84206ad969@beagleboard.org>
Date: Thu, 3 Jul 2025 16:56:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] i2c: Introduce i2c bus extensions
To: Herve Codina <herve.codina@bootlin.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 luca.ceresoli@bootlin.com, robh@kernel.org, thomas.petazzoni@bootlin.com,
 wsa+renesas@sang-engineering.com
References: <20250205173918.600037-1-herve.codina@bootlin.com>
 <525877c8-6c64-45b3-b4aa-a52768e59b86@beagleboard.org>
 <20250613093016.43230e3b@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250613093016.43230e3b@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/13/25 13:00, Herve Codina wrote:

> Hi Ayush,
>
> On Thu, 12 Jun 2025 13:22:45 +0530
> Ayush Singh <ayush@beagleboard.org> wrote:
>
>> I have tested this patch series for use with pocketbeagle 2 connector
>> driver [0]. To get a better idea how it looks in real devicetree, see
>> the base tree [1] and the overlay [2]. Since it also used gpio and pwm
>> nexus nodes, along with providing pinmux for pins, it can provide a
>> better picture of how the different pieces (export-symbols, nexus nodes,
>> etc) look when combined.
> Nice. Happy to see that I am no more alone with a system using these
> features.
>
>>
>> I also have a question for Herve. Do you already have any working
>> patches for similar extension for SPI and UART in some private tree?
> No, I didn't do anything related to SPI nor UART.
>
> On my system, no SPI nor UART are wired to my connector and so, I haven't
> got any needs to implement extension busses for SPI an UART (serial dev bus)
> nor any support for nexus nodes for other kind of components.
>
> Best regards,
> Hervé


I have added SPI bus extension to my kernel tree [0]. Now, the techlab 
cape (other than mikrobus port) works using export-symbols + i2c and spi 
bus extension + eeprom auto detection.


Here is a list of everything currently working on the tree:

1. EEPROM based auto-detection.

2. SPI

3. I2C

4. PWM

5. GPIO


Missing:

1. UART (Don't have a cape that has something using the UART yet. Maybe 
need to experiment with MikroBUS).


Not quite sure what else to do to move things forward.


Best Regards,

Ayush Singh


[0]: https://github.com/Ayush1325/linux/tree/beagle-cape-v1


