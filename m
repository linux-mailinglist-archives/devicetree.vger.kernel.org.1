Return-Path: <devicetree+bounces-103785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA0897C256
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 02:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57FA61C2172E
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 00:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67E66FB6;
	Thu, 19 Sep 2024 00:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="V9LebyZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F384A5695
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726706555; cv=none; b=tLisxrUjRk8tNunh3Pv/MvakW3wFnyPRA+z7VmWgNZEeusy7PmU+h5VKv75S/0ojq+PXOhv/HHgUFLaqf8QeRnYoDojXOqu90kTbq97uvk905mnT/JzFp6p5UcW2g8YNinYUwHrEbXWQ9wwtkFsKuvtisGLUsJsc1nvtr8kGD1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726706555; c=relaxed/simple;
	bh=Hj382AWUoXPFWPx6kgr27ouvipd9ZtXmyWqbGMtIjiw=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=ZpmYTspizzPmEcAK4ArUwd3Dl+mAf0i0ZvxtoVSIKST9wVvPxsJDfugz/bspbk6j5/p5JariYrzsssPWukeyXRuEnZkAAnJX4f5DGSwR8EolP7N2LsCj+S2HqonWjC8J8AlPgRUZKMlywmI1MdztRZs02CMzyF431px/AvDHvLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=V9LebyZc; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6c34fb4f65eso2221956d6.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 17:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1726706552; x=1727311352; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFoCX6U/L9mlQd+6+0Av1Hai/zxXjRmBCa05j8mha+w=;
        b=V9LebyZcUtFNQYh2Xamk4x8LTr7/+YzFwVmUn8exTchMgOut7xH6J2g103z/9RutG/
         WP2s96u8fYKxob69uhurPVvgKw3/Cah3ctV1sFaPNhQwdTAYmBCVOTegGQOQsXz5U5ji
         hc6776+8sBboW9QrWJRe3k04r0LwaevkLrZrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726706552; x=1727311352;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JFoCX6U/L9mlQd+6+0Av1Hai/zxXjRmBCa05j8mha+w=;
        b=h4tyMdszM4KgZBOL3TBYvVJEGYKonrUqZBm0c5OdNwm7WHkUiRdLCWOxZdCY05sPc7
         6moOHrElfthOgf47nNaqpW+vxLXsjVZjeybiX3knLbXRt142A7xBItsB3xcN8twZl5AX
         5gHT1eGkcebJi+FrEPJ8QWeoaYTFrMEtkC4aFQ1XC8mlx8blm0DL3XTtfTv8aDNcZ5KO
         z8U3S3MIs0MmH/zCEfO+ORiuzZUbmbV1IJg1S6t8x/eO17fpPYElCNEjZDS8rR9dqJ6L
         dLhRRA8Yt6xHuZBTfNEas12u/yrc1iQcTne+SZOzXnJjuVAeJa7Nvp2HwziMg80iloh9
         kGlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr1I7fvS0Un4vk0t3mv3/tiW8gAXm8VFx9M4u70zF1GeJilGcxo9+nwZS+VqMmb711AzzEsXvWy47U@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+O1vBY+FsituvldQD6HkJr9u9QcPdABsDr84If1GBB2kWex9O
	OFemgBlLKI2tvBmqMBT0Z5mSoVjSdgRF2GO15KVAtmySCXW5OfpMAN4PLdfB6ehMf9iYuiaf+kX
	+62i8InXtus4k8f7A4j4DAHYsT2AHB5rzVJm2YASYg36j/pBUqdOgYIFfr4140JBSkhG3Lsyoj1
	U/+4+tZRTuVwgOm8IAw7PJcpo+EthW1zsm5r+2KPtsJohstQAAIlJP
X-Google-Smtp-Source: AGHT+IHVO+YDKcGqZvPZxgbDL2WtMIPBUY6XYcqJu1OLQVBsHk5qKLKEJjS7NqjdnP6E+fQwWfzJjA==
X-Received: by 2002:a05:6214:5707:b0:6c7:5e78:75f9 with SMTP id 6a1803df08f44-6c75e78766amr14880536d6.8.1726706552608;
        Wed, 18 Sep 2024 17:42:32 -0700 (PDT)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c75e44b565sm2284756d6.20.2024.09.18.17.42.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2024 17:42:32 -0700 (PDT)
Subject: Re: [PATCH 0/2] Enable MMIO GPIO on BCMBCA
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20240917-bcmbca-gpio-mmio-v1-0-674bae8664cc@linaro.org>
 <6becd9863d87720dff1a1677c7433af8@mail.gmail.com>
 <CACRpkdZTarsXp7D08gpXGLQwBppf6wJ8FBYop1wP2Xq-fxMm=A@mail.gmail.com>
From: William Zhang <william.zhang@broadcom.com>
Message-ID: <c56fb9a5-a53a-f59a-005e-140ed58ce134@broadcom.com>
Date: Wed, 18 Sep 2024 17:42:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CACRpkdZTarsXp7D08gpXGLQwBppf6wJ8FBYop1wP2Xq-fxMm=A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 09/17/2024 12:03 PM, Linus Walleij wrote:
> On Tue, Sep 17, 2024 at 8:13 PM William Zhang
> <william.zhang@broadcom.com> wrote:
> 
>> If we upstream more elaborated driver later,  it will be a dedicated gpio
>> controller driver and not use this basic mmio gpio and we can have
>> the new compatible.
> 
> Thinking of it, in that case the driver would just use one reg = <>
> property for the whole I/O range used by the chip and then it need
> a new compatible anyway. Let's drop this for now. I'll switch over
> to the old compatible.
> 
> It seems the approach taken with this SoC is a combination of
> simple GPIO and a separate extint (external interrupt) unit, so
> it does not need GPIOs to be able to trigger interrupts, which
> was my major worry.
> 
I am looking into this and we should be able to support an irq chip for
this gpio controller that control external interrupt controller. So any
gpio that is configured in external interrupt controller can trigger
an interrupt.

Will post such driver for review when it is ready.

> Yours,
> Linus Walleij
> 

