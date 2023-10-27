Return-Path: <devicetree+bounces-12456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D86E7D9928
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DE3E1C20F7F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADA617742;
	Fri, 27 Oct 2023 12:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="YLuYvjPE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FD45CBC
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 12:59:20 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A7591B1
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 05:59:18 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1caa371dcd8so17837955ad.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 05:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698411557; x=1699016357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OnVvDYzrOiXXcLBIXZo998leFWypinKwSwwBh9B0Bhc=;
        b=YLuYvjPEiR+LNZoGyjZcHy5a7qZZTOCaR51sxH/HkChShJOcKfAgTBGPPlJTyYo063
         KTh1iDH0pPmb5nc8h4L+85XleWpIMz2JH38u2BLU1/QiEZadZbRocDnW0lI3gNdDouUD
         6ZKRTQe/CqSW/Id7ohrV/B3WphxTT3NPYnl3mWeK+K/H/EfyCgoYDPMUROisq2/FoRaz
         +YkrxRrgdg5xP3CwuAgxp2DpRGzP8toCBU9d5Vrl652wY3QIt/zgjlDdakpB1COOv6hf
         d39ms9DI7uWCe1TvZKg+Pxs9m7ZRZJJynjRjGsA3Wi9zLydQle5loZQ286vyKGHicVt6
         i1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698411557; x=1699016357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OnVvDYzrOiXXcLBIXZo998leFWypinKwSwwBh9B0Bhc=;
        b=COVdTW9OBR+yNOZNw/le4VP855rFGrPzuwB8KhJBWHGbjbXMQrS/eELMuzBX/y9CYw
         5nJUR7/OVP35dfZ6ZIRjMDXNDkqPblUfI8+MrBmWivD3+cU7umU1cATjIHw8kqj7kKyz
         +iirmTQiYP6GKeX1onuy3TyB2fLMP7rcHIXN/BXWc0ZyVu9ssIoBTOywhJNIA0DdCgNv
         G1TWBGuCs4dw0UyHtXocy3qUkqd1+h1/ssPj+ZVznq0K6Qz9vjJiCACjhQZdLuaseKGD
         s7GbG0sdCIoG0TjPvDEQB1boFCTPOLA3vfbAoATA1By6m9Yn1gSdtIsDEpvNzrjbx+aL
         cPXw==
X-Gm-Message-State: AOJu0YzMUvkNvuqlkoDLypza9mWwcUStcZz+MBA+KRAr5MkeDLpwxxy9
	TXv7kBqujJXkFG+m5BGI1R+96w==
X-Google-Smtp-Source: AGHT+IE/y41xbQGeI5wjC1sLH+pq9yHPsk4f4rnVQlyHxT5L0fSSnli72s6diRvbt22YhudFLgevQw==
X-Received: by 2002:a17:903:2306:b0:1c6:2f59:8c4d with SMTP id d6-20020a170903230600b001c62f598c4dmr2929514plh.28.1698411557571;
        Fri, 27 Oct 2023 05:59:17 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:c232:f53e:32d4:5510? (2403-580d-82f4-0-c232-f53e-32d4-5510.ip6.aussiebb.net. [2403:580d:82f4:0:c232:f53e:32d4:5510])
        by smtp.gmail.com with ESMTPSA id z13-20020a1709027e8d00b001b9da42cd7dsm1515657pla.279.2023.10.27.05.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 05:59:17 -0700 (PDT)
Message-ID: <7524a9ef-c1c4-462e-8f9d-fc03c29ca092@tweaklogic.com>
Date: Fri, 27 Oct 2023 23:29:08 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: light: Add support for APDS9306 Light Sensor
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, Paul Gazzillo <paul@pgazz.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
 <20231026143532.39660-3-subhajit.ghosh@tweaklogic.com>
 <ZTuuUl0PBklbVjb9@smile.fi.intel.com>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <ZTuuUl0PBklbVjb9@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/10/23 23:04, Andy Shevchenko wrote:
> This will benefit from guard() or scoped_guard().
> And many other functions in your driver.
> I believe ~15% of LoCs can be dropped with help of cleanup.h.
Acknowledging all other comments. Jonathan commented earlier on using guard() and cleanup.h
Unfortunately I missed it. Like GTS, it will again be a brand new thing to understand!
Thank you for reviewing.

Regards,
Subhajit Ghosh


