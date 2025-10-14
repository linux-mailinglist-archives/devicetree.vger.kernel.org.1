Return-Path: <devicetree+bounces-226709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 194C6BDAA5E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 18:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA83C4E824C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 16:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0AF2302154;
	Tue, 14 Oct 2025 16:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TTeQcGcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F113A248F69
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760459947; cv=none; b=ja/dy/RFjNB5tRx7GMQ6zR6SkV2tbdFDv+5cpzKqVoeYteQgT/71/9BL+0avZumjgJ/isV+tVC7GK8wHH0r7+5H5WJiXCLeoPNsLXOuw9+S/xXWHwANfz04yrA94GkFTSj6fVtaHivrBKkeBZvsc/VwcocOd0J7ZiZg2/ibFHjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760459947; c=relaxed/simple;
	bh=GUctfe8/rywZHQ44aiN5coIvFbwjYZq35QI2NNSAsj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WHkGPMvPpXvz+SDMu6Fzuvr3esIT3/EajdPHPKN96fodfECdFdeH2Zd0F3YsWsfevZoYpioTweoO4HYdpY+2ejoe33bdjVYB2YSSMW/k4EItkZ9moWLVyniXqOUJhQmfsMffI3n/cH4Q3Dmd+X/4IDdIw8iZg6qa6/q4BWPyGfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TTeQcGcr; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-339d7c403b6so5362875a91.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760459944; x=1761064744; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+Kw4a2cbpYi6EVcibNkVqQEvI9GFueOoA0ipAsI1iyI=;
        b=TTeQcGcrKdFKbrtq5MjlwFb1YYBFaj14MWVi3p9t515WGnNXWjFZDv8nuRyPBVLui9
         leVCDco6H4HkPz+jS7yVuVpamBw/SUW+4RADpiNKgANTNMSy4CBp3L/84dXs/vCOmQ9X
         /qfeXVEO9ev0I+MQk4PDDSZihFedY5bxRX2NIMJJmJFMzWAYb/Wai0WiCg3Sjg9SgKAY
         IMbz0SVGCc9Efa7+kmx5kPwRdieyo/HX5w0F/+laAL9gx9TRvYXpj0fUojWNJPRRYltQ
         5wsSfdxatIrSCDqoI7IRROMvYqEZSigd/wU7JU+/YpdcbDXjvgYriPuB2pQgn+T34hTG
         wK/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760459944; x=1761064744;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Kw4a2cbpYi6EVcibNkVqQEvI9GFueOoA0ipAsI1iyI=;
        b=rm3RkCC8VBXySXQbOAJiMFd8TF+OUfGbLKs5VeQmSrJvcAwMxu6HaKNwcBbbYxWJbO
         +lRFeFpaQDMKAuqWYz18Zwr0H8U0VinAlzO+wmNKG5h6fCLPHQEo6d6eomWmezIswJqM
         CSHbPaYuQFyRTvAnv9Obk4MXHdpwXCDikddXN4HieoEDolcQLHPPLVTOv5razgpkVEK4
         4xrJgNzoGE+6wRqAf9UOVPEV1HF5cxi2NqZ8pTblkJNSFCWvHwsq12293iJIkATaWow4
         1SH6FqXWikzUbrgSaHZgJcIYU061bK6m9xSJHOIhVJT1rm8EMZXrFPqoH5+dGyCJECN8
         ae9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfXOi+kbKMUmEmJkdl6E86okFYipkLRSx1rPNhbywVZSLyxtyCokxfuE2R+RqOzQiPv70+n1apgx02@vger.kernel.org
X-Gm-Message-State: AOJu0YzmpgA//Te9F27E06h918iWQXV+72bx+hy1IKfmwpUgFn/5pWfC
	1IXG8UBGTZUhtU57YGbnwPi8OkIrzYZEt69nYmdg9r0NoVqCVDb1Bkle498Siw==
X-Gm-Gg: ASbGncuKgIv7HnuCnXOKLaCnO+Asa7FtiAtvLMgh4ZWC0HH63XeHdMxIoI2zKXkv7C8
	0U0bnidQDQIYNRXToxOIZaGJhgAeq/98KvZ2pUfxpViex/oV8VJuDbrjs/6OgnRJeitY3UrUHkL
	B5BMEayNeMqNXUk4gMvQqPqxoqspNnWhax8cVoZ8TCRsfCMmPifS3zN7f0SlaqQAOhsOmfYkPr8
	iVlveh4semXactL/um35eaprDIYKVRjr23DO26Q1zmSrACniH1ECQiR7ZwpS5IWl0GS7qhqcowV
	PpoJyLgusOAp6HEC27ktIkkQfiSRozW/Eh16kZlm5GMFHmg+1aWs4iVfLe5G6L/6C3AFYZ3mLaC
	V1dFKAtOIaYh7C/hp9zb/7uuGu3Id9+NWrNoZOlF24kGIwVLOtPi9zPY+rBZCI4NwororjQWxsu
	v2N4a3qckgNLAF3w==
X-Google-Smtp-Source: AGHT+IE7dkO7t7zYTrn/rcvOU6CyaOeoWX3R6oaYLqTk74O3/dlsNAXvmuhzWnV7MaYaIVUdZmkXFg==
X-Received: by 2002:a17:90b:3d12:b0:33b:6612:67e1 with SMTP id 98e67ed59e1d1-33b661271aemr20674579a91.29.1760459944049;
        Tue, 14 Oct 2025 09:39:04 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df6a95esm12321716a12.36.2025.10.14.09.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 09:39:03 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <7197bfc7-fef6-40b2-b3f3-182e9428dc12@roeck-us.net>
Date: Tue, 14 Oct 2025 09:39:02 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] ARM: dts: aspeed: facebook-fuji: Include
 facebook-fuji-data64.dts
To: Andrew Lunn <andrew@lunn.ch>
Cc: Tao Ren <rentao.bupt@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tao Ren <taoren@meta.com>
References: <20250728055618.61616-1-rentao.bupt@gmail.com>
 <20250728055618.61616-12-rentao.bupt@gmail.com>
 <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net> <aO2kLyxGlGt12sKD@fedora>
 <ea64d3c1-e517-4bd8-9a2e-56432f286347@lunn.ch>
 <4e099ead-e6df-4489-a775-1730bc852dcf@roeck-us.net>
 <f801a4cb-3d27-439c-82f2-d5ee5aa0d810@lunn.ch>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <f801a4cb-3d27-439c-82f2-d5ee5aa0d810@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 08:11, Andrew Lunn wrote:
>>> If it is already in mainline, i don't care too much if it is wrong. We
>>> don't want to cause regressions.
>>>
>>> I only object when adding new nodes which are wrong. If we keep adding
>>> broken nodes, there is no incentive to fix the broken driver to do the
>>
>> This wasn't adding an allegedly (sorry, it worked for me) broken node,
>> it was removing one that worked for me all along. Obviously I do not know
>> if it worked (or if it is even used) on real hardware, but it worked for
>> the fuji-bmc qemu emulation.
> 
> It probably does work on real hardware, because it is one of those
> "two wrongs makes a right" cases. So i see this as a regression. The
> node should not be removed. It should hopefully get corrected sometime
> in the future when somebody actually fixes the aspeed driver, and
> fixes both wrongs.

So you are trying to force the issue by disabling the Ethernet interface
on fuji-bmc until the problem in the driver (whatever it is) has been fixed ?
That just seems odd.

Never mind, this is not my hardware. I just used it for testing, after all.
Again, I already dropped network interface testing on that emulation,
so for me the issue is closed.

Guenter


