Return-Path: <devicetree+bounces-87898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A255D93B654
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 19:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5840A28181A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 17:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FBB415F418;
	Wed, 24 Jul 2024 17:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="qLljPGvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EF961FCA
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 17:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721843967; cv=none; b=IyrhMs/3HeQMLc+qDbuTvWEss4ZGQrDxR6MNjpmQTPdshG5xyCxYVLDiZ6lTtlY/iWdHcS8qJ2L4V/U2i3AwR/LSc/3w+d0zKdpuPPUCJdCeBflsxnOi1wrKbeIVWt+w1evgzQK2v5/1zftbMEc1Da2CYacpwOM4NhlaBj+Hi60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721843967; c=relaxed/simple;
	bh=WtAPgXVP/j0nWz8Ui8mgHJah+Yb50ePWbM4ijI8nTn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jWop6i+DxBRoShpYOisOJ4sn9Q+ztzqRfFpLt9dvyxwiXyAHX1edybHASpMRu9ceS6ApVJrmi1N7z8CwzZX+cuup9Z+0Q1iBq9pvth3eGQ2AxJsKmJMS16v9lYqr7Mr3EgK29qUc/H+fQVoSJDg1VO61/LvhpeuTzFqjlghrqv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=qLljPGvq; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3684e8220f9so52515f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 10:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721843963; x=1722448763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bB2QAOI7VV4nz4PEqDaYS/ujHUAYYtna7nIFDg5mVV8=;
        b=qLljPGvqS4Tdu3MRNK6mlgZ2ES3/3+GOaC0YzzIZ7W34rxiaTuKKnjDbDBWpduHmiU
         6rKfRBHUixG1Qu8wfTyBjsMEvZALZERagMLH2UQjRfLpLtY5wsSq0017dmuRUwjWwGOY
         DLATqlFLNIu9uS6RCfaRt3FyzqtC4eCXIkW2zbpSsBp9xY+3NfRA5LYUCC5JLHvz2M1C
         ioNfTo50IhfnX4kvTZEhwchCYQgw7JcYdvzo1K9w/hQb/WzD3Urhp7y2qdiYCGUpMR+6
         4iLV6wKxUuUbziLQ2T4JCgJPgmBXCzBDjCk/AvXQJFHnGFaGbAURvIDhfXX+iwbtQvSW
         p+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721843963; x=1722448763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bB2QAOI7VV4nz4PEqDaYS/ujHUAYYtna7nIFDg5mVV8=;
        b=nLYMvC4o+8fyK9zu9AEjTgFhaBDF3Uj5NBolDGC24BoeeaH1g0OsdSyNPYB1CSxcuP
         W5NEIPsLLMnfjdVFiHxRzLCRq0eoEImTP2tfHHzlX3mFKRRH2c7ev+qw5T4OY7E+Fvg+
         /N29XN0YT+dUihI9hTsXtRiNtr5hEarcummp5cxxgkE0kCoQwfZz2ZZAI2E569UExZ5T
         otTGhIuhBEeXy4Vf8h8cVtbnCX5fe+ha2I/xFKPqwwxgagTHG7AK12sDrzon3Jtl3bxd
         +iEympiYGAA97Xe1wCqu1n8l7Q/bWuTgOjqroBlX3C/oxPzGxOcjm997+j+uFmdy7wis
         YYGw==
X-Forwarded-Encrypted: i=1; AJvYcCV4A90dAEYrgxlImsKL4i6lAS5gw6SMc0/AWzpZMUIsd0V2bT8SwqOTle6SMsnjJSNuiYBO8o1bW+Mp4DkPORzTCoR+ahvr8qjE4w==
X-Gm-Message-State: AOJu0YwIFvTBFRwHt+p4+jjSxFLCd9aPLOMJbkzOz8huRbCVx4LJQl3q
	RDnBkQct8AXmwZxYzFHWNncY4WRQ0QvBZpmzkl6mej1VOKuXbSLdiIuIcDkGhSA=
X-Google-Smtp-Source: AGHT+IFYzshvY6vOeAFXLV3Aba9jnBfSJVOk5zJI9cgMfhJjkemmfOUrnmKShd36XZ2Mek+kPAuwhQ==
X-Received: by 2002:adf:e001:0:b0:368:6bb:f79e with SMTP id ffacd0b85a97d-36b31b3092dmr333633f8f.4.1721843962600;
        Wed, 24 Jul 2024 10:59:22 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8? ([2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787eda2fsm15265721f8f.108.2024.07.24.10.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 10:59:22 -0700 (PDT)
Message-ID: <c302bc47-6492-44af-86a1-3ff6a815e314@freebox.fr>
Date: Wed, 24 Jul 2024 19:59:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Maxime Ripard <mripard@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e55d0f0e-a104-4790-b832-120dbddd93ad@freebox.fr>
 <20240715-stirring-purple-toad-7de58c@houat>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240715-stirring-purple-toad-7de58c@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2024 16:40, Maxime Ripard wrote:
> On Thu, Jul 04, 2024 at 07:04:41PM GMT, Marc Gonzalez wrote:
>> On 01/07/2024 15:50, Maxime Ripard wrote:
>>
>>> The i2c register access (and the whole behaviour of the device) is
>>> constrained on the I2C_EN pin status, and you can't read it from the
>>> device, so it's also something we need to have in the DT.
>>
>> I think the purpose of the I2C_EN pin might have been misunderstood.
>>
>> I2C_EN is not meant to be toggled, ever, by anyone from this planet.
> 
> Toggled, probably not. Connected to a GPIO and the kernel has to assert
> a level at boot, I've seen worse hardware design already.
> 
>> I2C_EN is a layout-time setting, decided by a board manufacturer:
>>
>> - If the TDP158 is fully configured once-and-for-all at layout-time,
>> then no I2C bus is required, and I2C_EN is pulled down forever.
>>
>> - If the board manufacturer wants to keep open the possibility
>> to adjust some parameters at run-time, then they must connect
>> the device to an I2C bus, and I2C_EN is pulled up forever.
> 
> How do you express both cases in your current binding?

It's not that I'm ignoring your question.

It's that I don't understand what you're asking.

SITUATION 1
tdp158 is pin strapped.
Device node is child of root node.
Properties in proposed binding are valid (regulators and power-on pin)
Can be supported via module_platform_driver.

SITUATION 2
tdp158 is sitting on I2C bus.
Device node is child of i2c bus node.
(robh said missing reg prop would be flagged by the compiler)
Properties in proposed binding are valid (regulators and power-on pin)
Supported via module_i2c_driver.


If some settings-specific properties are added later, like skew,
they would only be valid for the I2C programmable mode, obviously.

Regards


