Return-Path: <devicetree+bounces-208218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22153B31DEC
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:16:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A5ADB45A77
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D961F099C;
	Fri, 22 Aug 2025 15:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nZHOyjjo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C159B19D09C
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875026; cv=none; b=MXfG7AboKi9W7pvvIh+ft2tpY/uiYCbRFQo9s3v2BY2Cg246jHq21pgawrP3jvfDEZzZa7WfUO40auwn7YNGgjEih6VpNyLXeysIB+9bhxV54rIFY3qtS5fLww7lzSPrZerp5ohg/Y8kaxxp5eZPKtujFb3KXIy2kvH4TpgFJ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875026; c=relaxed/simple;
	bh=cevULq5F47U5pn1UQxro5Ou3EUsPb0j9aD0QUfQ/gUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o/0e0Xqi4aGZPokjGHxExEAol93R60a2JN1iaPq1j5fUoVtKk1kpWxPqQUpcDFCLgJ2E/SGYcxx9cqTIqHANLpCIsedOm3+dtlPD449SRrYvDwWRObOJHK+HJtt+uwpyogqVpv5Ty9s0nC+MECMCNsHqNPKQ7H+cG5nORJvwZIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nZHOyjjo; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afdf4c4a2beso429198066b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755875023; x=1756479823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wWh8PyGxlWxe5MHSxxwSqq6RuwtxVFP35Vd46MU/svw=;
        b=nZHOyjjo2836ZM/zCSCZmCOnl2oGlnhFz000cUAeipCnpp4SovKuqPAtiAANZEJPok
         NTEBSMhDb4Z2mFQFW6XN3E1MflS0cWcom5wfeUIYsDOyMGHoA6kZt6k7bCG+IoXAr0wV
         6wZ0othq0dYvNYG500kCi7B3gC7njq+2lPaE90oSmnMH2sePsqkg5Ud9lNnA4l10pV0l
         57LRG6g+6n0a1XpKcsXThb7IK/jHciwQwTyk1MKdO1RWPaq0hCkbABJpBZURgUQ6VGGV
         7R47MQKKu6/yKU/adebHOkKyRRGDDKJOspVT0hBsAOAgNyTpYkv9b9ZfGIPS9iH+D1k5
         4efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755875023; x=1756479823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wWh8PyGxlWxe5MHSxxwSqq6RuwtxVFP35Vd46MU/svw=;
        b=BBCUZN2wG1KoENiL5MQKZvtDY3Bqlro5wbfT8a/adyZ80YRCEahkTLypRqMz2fcTwm
         PUdZnCclM9Rgy3LL7ztLrgZ7uWmPgWqbMB2rds8YWpAoi5bQnOsrvd9ICMKE6hGhVx95
         tpCR2yVMuQ8MhFt1aVuYhZ2wiIPIU8sspEiNn3FxPUGceycEElG+7JAi3R32OQDNNT6v
         mWE90vR6OVII6LnQR1wor1NaYmMhmpxly7OV4XAK2QgDkr3ivwevBOnIpXBqGeA+fVOL
         3CJz5bjtCYs+QZZUU+H0oKMBDePf9MTGrTdWHxl6JNN2YgBt+CRw5vrCrlRQpk+kVo69
         nikw==
X-Forwarded-Encrypted: i=1; AJvYcCXlnpo6z3ipne2qWvkPg8MxvZsypIUrXgi9T+QbZSqGMfk/j/qF5RJNFNFUkqYv4kHiIQpyPxZ4AaVg@vger.kernel.org
X-Gm-Message-State: AOJu0YxF5p4JY9otlC/DYUlraUrcW3Hqc9MAxqooCGD9IkOYj9DK9PN6
	8NFrreV5Yq2DZEKmPZH2nU5EZrvTKFa5FWOwJ9SIco+GwC+Y5apcIxlT1UyixDaBXmM=
X-Gm-Gg: ASbGncuDNAZebKsBtACuC0U75UEcIEZr2d93aqoVUmv1GBsJmyL1adfrjxDcGZI94ay
	drOIE3/WlFHzQcz28RAPrS/5BSVrr5adR5oHsH27zjqMBnrfCEbFdbLVm/T3VU9+c0eovM7opOu
	rdXL2o61UYRVpZ3+ujRblRZ/SQ0T8SyQrJtrw+t/bdO7R4z18xfWGAkotTZVexAci5DKt2GXx1J
	dsRtWlxtVW/9ThD1IRHNRKRc2ChrCeOQpUMn82asFJjemzGoiDIqWEw0Jty929IqtqXr6JZNxGL
	6r2aKn/KKqHOXcL1aQd4Xxn5ef7+z09f2Ids3NI/nUtxCukkSDQpTzNnl33tbe9ttP7YqmjwQ3z
	5dtquWHrT/o0YriB9VRm6shlEAywJcXvE
X-Google-Smtp-Source: AGHT+IHFLMYgpEsUwExR4khNq/wCqpieQpwMLNU5LCmqz1CCYVCENyfpLn38R54b4utgze14geVJgw==
X-Received: by 2002:a17:906:7305:b0:af9:8739:10ca with SMTP id a640c23a62f3a-afe0b497404mr587666966b.28.1755875023083;
        Fri, 22 Aug 2025 08:03:43 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.104.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded539d2esm621862866b.113.2025.08.22.08.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 08:03:42 -0700 (PDT)
Message-ID: <ebea336e-c43f-4519-b2c6-4f8812e29448@linaro.org>
Date: Fri, 22 Aug 2025 16:03:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: firmware: google,gs101-acpm-ipc: add
 clocks node
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20250819-acpm-clk-v1-0-6bbd97474671@linaro.org>
 <20250819-acpm-clk-v1-1-6bbd97474671@linaro.org>
 <20250822135521.GA3487754-robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250822135521.GA3487754-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Rob,

On 8/22/25 2:55 PM, Rob Herring wrote:
> On Tue, Aug 19, 2025 at 11:45:36AM +0000, Tudor Ambarus wrote:
>> The firmware exposes clocks that can be controlled via the ACPM
>> interface. Describe the clocks exposed by the APM firmware.
> 
> ACPM? APM is Advanced Power Management aka the predecessor to ACPI?

ACPM (Alive Clock and Power Manager) is a firmware that operates on the                                 
APM (Active Power Management) module that handles overall power management                              
activities. APM is built around a GREBE processor.

In linux we have an ACPM protocol driver that communicates with the firmware
via mailbox channels. It's similar to arm,scmi if you want.

Cheers,
ta

