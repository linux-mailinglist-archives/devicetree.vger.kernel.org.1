Return-Path: <devicetree+bounces-159395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B19A3A6AA2C
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 16:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 291017B29CD
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 15:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81941E520B;
	Thu, 20 Mar 2025 15:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GlDBDPvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F701C3C08
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742485550; cv=none; b=gRR0vqQWG3MOSMqF2w94Mj8aEsea8rrmt/Aubnb3jNjG1HRZ19padMbaBjDoCMpzYqULBeSjnjAaOeWWeGPpq630ow0n/0+NfrQno6qRDL2zOjpIYLm7frPIppA/sEJlh1BqCPJielYPfkRi62r+UaPPtSZVmwJlkrmPmDISctA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742485550; c=relaxed/simple;
	bh=6ceQmsgRcTvZ6USukJ3sO5wzd3ACRgAvulJLMsk3KFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CQ5lbyDbHMgeYnPq6VB2K8sjus9obRPHpodgc//jsXIfv/+eX3F1U+Zt6ZgdAGdlbtPoPW2Xfc8oMORCjTl/7C2cghrl93YAMYtnOgOboodgyzVwqlUaxDG05RBxTFJjGylReI4Axy2OKlaOIpdq7t93m8Xrg5xrZCvG8DQzyWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GlDBDPvm; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3912c09be7dso625915f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 08:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742485547; x=1743090347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zrf584PxMsH6/Jh6HwYl2KNT4s5oL8tjFSmMaaJHl78=;
        b=GlDBDPvmiSVAwBThJgt5S8S1GFfqwYRlgGRL/PWm/hsf1ynQlQoroxILioJ2XB67nl
         M5WtvI00lIeTug6/4e7cm6m9lO40vDGsr8EWm2IS/EwXV2r0zKn6BNBdogWSy3f67lrI
         t83/7Rqba6H4Sq2+0c++HER1A8NQIR04QufE3YctiTr2iS7Z29emLNsEdDxR3LgzL/wN
         DGYuwn3qHl/xRxx++aBgKSU2CBFXIeq5YeBWfGwkkNPvPlG2exhRpGXNqGMe+g8GijwT
         Km0+C9acUgJM5RAybid/V8ePLiCvsfR0BvX+mIxqJhd1zILjU8eMi/9h6k3IIkchQpu3
         PBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742485547; x=1743090347;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zrf584PxMsH6/Jh6HwYl2KNT4s5oL8tjFSmMaaJHl78=;
        b=SKcg19ehUBkhZewy/W8TY6WE3uDPqT2d7reEM9ESOHPY1hTmR9px9ijGz0F5vIgL83
         CLC+XfFnKRyEPW2CgZVX+Zn/ZFsO3qpPyi3IT/o/MzoMRk6QeoPwJSuG8TfLybhCtpb3
         7tda3mdrv8jfmJiZ4BozWRofIjnFc7XICDiWZQdUscnqOpJsGX5jPdg8AYYpt6WHXGTF
         jDEF8X80V+/1BviU0reNlUVBTMHNRYcWQtJOhH2NX8aVpg9Q4fZ8hCcIXSaWfVaXF73K
         9XnvuTWOx0G6EsD6Hu95vIK7+ZmJlpixrzQgcFVpCzwUsXjUkMqPQqmNmEKHJBq+rqsH
         gi1A==
X-Forwarded-Encrypted: i=1; AJvYcCUxfr72tFbIpWgG4y/x/6S3twGG1Bdr0rWUm8TskHL96F5NyD/tNfx5/B+4eZpoXeOEiGHLFFpFS/RI@vger.kernel.org
X-Gm-Message-State: AOJu0YzHjViX6CFIf0jRpHT56lvvmFBAwP7klKLdVZAGEp6DWIKoZPaN
	Epyc9UPxR2TC8QkEP33prKSbjzl5kGv4l8xMEh/pX8FoE9f3ZI6WHJpn+fCcwV8=
X-Gm-Gg: ASbGncusc0KbscAqiE1R/2e2nXeQtHvqYMyTPxeE2HJrOmXB0thf7nxMow81GtbPlbH
	85BheJQWAB71yq7vILD6+TjGK1vABCavG1qvpVhmuesqAodJ4ex5cCtmjm6bG/S7vL/rUCAUD6F
	W/dW7EH5rCwBSAYD/f2z6YvF4YlTmCIAQLbnA/zTtgSoQU0BWYT/+KmHrtRgGU0iO3r/qxuiNld
	I+MUUV3EARXXBWpw3VY40IfYIScICx0KQqSOvJmvsRo2OIFdKnzAHz7j1V1Sk1ZTFwVwVjzL7pp
	6nF3VeFEMPK5dLZmRsMxI4sJY/3npY6KcxHB+z5Kd/hMQo5CY8FzVw==
X-Google-Smtp-Source: AGHT+IGdH1lgoJr0bazg0fksi9pHBFYCBH5/M+YEIFTTKoDR0hUthlDLaxA5qHXNw5jfyW9M5ZzTEw==
X-Received: by 2002:a5d:588e:0:b0:391:4674:b136 with SMTP id ffacd0b85a97d-3997f90e00cmr1069f8f.29.1742485546807;
        Thu, 20 Mar 2025 08:45:46 -0700 (PDT)
Received: from [192.168.0.14] ([79.115.63.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb7eb93csm23779355f8f.86.2025.03.20.08.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 08:45:46 -0700 (PDT)
Message-ID: <50de19f7-2021-433e-b8f8-d928ed7d5d57@linaro.org>
Date: Thu, 20 Mar 2025 15:45:44 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] mtd: spi-nor: use rdid-dummy-ncycles DT property
To: Rob Herring <robh@kernel.org>
Cc: Takahiro Kuwano <tkuw584924@gmail.com>,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bacem Daassi <Bacem.Daassi@infineon.com>,
 Takahiro Kuwano <Takahiro.Kuwano@infineon.com>,
 Mark Brown <broonie@kernel.org>
References: <20250319-snor-rdid-dummy-ncycles-v1-0-fbf64e4c226a@infineon.com>
 <20250319-snor-rdid-dummy-ncycles-v1-2-fbf64e4c226a@infineon.com>
 <20250319233024.GA2625856-robh@kernel.org>
 <a3818477-5a67-43ad-8961-88fa02916968@linaro.org>
 <CAL_JsqKtz5+R1kjEzjo6bVicOX2c=UauC0_STAF0T02rSDqO+w@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAL_JsqKtz5+R1kjEzjo6bVicOX2c=UauC0_STAF0T02rSDqO+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 3/20/25 2:06 PM, Rob Herring wrote:
> On Thu, Mar 20, 2025 at 2:44 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> Hi, Rob,
>>
>> On 3/19/25 11:30 PM, Rob Herring wrote:
>>> On Wed, Mar 19, 2025 at 06:47:44PM +0900, Takahiro Kuwano wrote:
>>>> There are infineon flashes [1] that require 8 dummy cycles for the
>>>> 1-1-1 Read ID command. Since the command is not covered by JESD216
>>>> or any other standard, get the number of dummy cycles from DT and use
>>>> them to correctly identify the flash.
>>>
>>> If Read ID fails, then couldn't you just retry with dummy cycles? Or
>>
>> I think Read ID won't fail when the op requires 8 dummy cycles, it
>> probably just reads garbage on the first 8 cycles, so we risk to wrongly
>> match other flash IDs.
>>
>>> would unconditionally adding dummy cycles adversely affect other chips?
>>
>> Adding 8 dummy cycles to chips that don't need it, would mean ignoring
>> the first byte of the flash ID, thus we again risk to wrongly match
>> against other flash IDs.
>>
>>>
>>> Otherwise, add a specific compatible to imply this requirement. Adding
>>> quirk properties doesn't scale.
>>
>> Do you mean a flash name compatible, like "cyrs17b512,spi-nor"?
> 
> Yes, but that's not the format of compatible strings.
> 
>> The
>> problem that I see with that is that we no longer bind against the
>> generic jedec,spi-nor compatible, so people need to update their DT in
>> case they use/plug-in a different flash on their board.
> 
> This chip is clearly *not* compatible with a generic chip.

I think it is compatible. The chip defines the SFDP (serial flash
discoverable parameters) tables. At probe time we parse those tables and
initialize the flash based on them.

We don't even care about the chip ID, if all the flash parameters can be
discovered via SFDP. Unfortunately these tables do not describe all the
flash capabilities (block protection being one). Or worse, manufacturers
mangle these tables.

So vendors need to identify chips to either fix those tables via some
quirks after the parsing is done, or to specify support that's not
covered by those tables.

For basic ops, flashes that get the SFDP tables right, don't even need a
flash entry defined, we don't care about their ID, we just initialize
the flash solely based on SFDP.

In this particular case, this flash needs identification to fix some
wrong SFDP field, it corrects just the mode cycles for the FAST READ
command. All the other commands seem fine according to patch 3/3.

> 
> You have the same problem with a property. Users have to add or remove

True. It's the same problem. Even if we specify the dummy cycles via a
property, the next plugged-in flash will use those. We can of course
fallback to the SFDP only init if the ID doesn't match any flash entry,
but the problem is the same.

> the property if the flash changes. Anyone thinking they can use this
> chip as a compatible 2nd source is SOL.
> 

I think the property vs compatible decision resumes at whether we
consider that the dummy cycles requirement for Read ID is/will be
generic or not.

I noticed that with higher frequencies or protocol modes (e.g, octal
DTR), flashes tend to require more dummy cycles. I think with time,
we'll have more flashes with such requirement. Takahiro can jump in and
tell if it's already the case with IFX.

Thus instead of having lots of new compatibles for this, I lean towards
having this property. I'm still open for the compatible idea, I just
wanted to explain better where we are.

Thanks,
ta


