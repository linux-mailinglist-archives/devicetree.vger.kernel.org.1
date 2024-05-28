Return-Path: <devicetree+bounces-70058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BE88D247A
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 21:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5398F1F279D4
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 19:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C2D174EC0;
	Tue, 28 May 2024 19:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uewBtLHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80BB172777
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 19:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716923851; cv=none; b=MGFPsuzAgmIbZSqez7OXYwtbzH29NS2m4LATvvbZLeiSWopQK/g/+ze5RLiBN8rNSd4UGF3iNUVvjPciET//1a+f+64wmiaIsyJifZ3SmF4gQR6fzRRchf0Pt9f6SDS5JaKmJh4PXr9TYx/PGJyxM3ysnIv9MPZlYC++eaGHC9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716923851; c=relaxed/simple;
	bh=8FwTXWjwMKYp0uX5gzAdX2HN/+Ud76IbFLUxgOn4Vlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=prYyh/jE+HznN7lINGC5vamanpzZjcdVEHbxqiwJnUPs7VuZUG/T53vUTF8jbirzATRorbpPvEMdO1+aTqWPNMDhVB306EQ7l91VNvUGm534hyyhWMfEm0lb8Nke9g8C1EnKi3w4q6tUGbc8bgJ4D2gfILRb7sMwpWMH4FqdZwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uewBtLHX; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-355080e6ff9so1133719f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716923847; x=1717528647; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sZV0zcVH6suZcN3zb/p9F3ljLh6Gk5jU60erqTwhnLI=;
        b=uewBtLHXGMsNo2KB8i+70+Mi6M7Oa+jQZWT6Lr6bqvX/75QqJMEQghcoB5fvkkqH3/
         SQyK+TxzQwZnCfO74eRkSpU76MbnoXvNMKEVDaZV8a04HD1ePHk0vEQsQb6N7kO8TWxQ
         GP3ilMOgD1tSZRQb4XGYHXDvaVl9mvBwpW4WzvpvY3y6lWpDIdqhkwKTLtFD/i44U1V0
         mmzEYeI+9NvxCpelEj20en/hcmGxK8h6OvMgUxyorlFHnqhCu4cVee4Vmw5OxXrBJXVP
         UuXfOeb4GUJ22QfciYRaiG+Qgp2x57j4wFhpnOqcbAofOCyih7caMk+jZStzw7Yuxu+F
         jqEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716923847; x=1717528647;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sZV0zcVH6suZcN3zb/p9F3ljLh6Gk5jU60erqTwhnLI=;
        b=TMFqu9q4t6BTPu5IQhkvOcfsGOhkX/uvJB0AHEhzc0DTGRH0w2PnklMo5IrVdYCIqw
         sG8QToZHrXJ0pz7AkvDRCwtLZci6PWG82xAo8WzhGMyOtdRkVTzDpyrdJzHwYmP68qlW
         r3jxt75xsl/AVYdQENqkKhYH2a+JWlbGtxggtvSfVIJpS6RdgDK+geQcwcNY8W6Y9z8a
         bfYol+4z7yloDg6FVvg/JrXkS8Jm+00KnptZySdIjumrLE4joljTtX+gIXpe5Lx8wQ7Y
         cLa3rqJ0tqRXyFR3sMYvK8jIPUzYr+3GyrKtSqNXi0zTcoMrNpq0Lkw/LMx9c661I7VR
         s/oA==
X-Forwarded-Encrypted: i=1; AJvYcCUSLE36ZzlNdIIuQk9n4qK/dVaMbLlE46v4gGEBUyOCI9djVJZJfT6A3Vdg9mSXGW/oxH8YMCeat6TxW7r0EHgBx0KqWKUCe07MvA==
X-Gm-Message-State: AOJu0YylPAnBqEmPyl0hNENv7Xf3Im8lSwQr8C11uGlf0xo9Vcpq8jCq
	7HrBuTPh+7IY3Bf+nwtpj/wt4QKy7u0QVxX40NogkxZDzOQughhj0dr9Ayc6z9s=
X-Google-Smtp-Source: AGHT+IEQkE684hYTF7oD4uWMGV+/mx0mhYVZRPi2V51orz/vfPzzL2qPaRkBiMYX9Pvv3mDlAVbbnQ==
X-Received: by 2002:a05:6000:ec2:b0:354:f724:6417 with SMTP id ffacd0b85a97d-35526d68f8amr8753328f8f.12.1716923847151;
        Tue, 28 May 2024 12:17:27 -0700 (PDT)
Received: from [192.168.0.2] (host-87-9-236-85.retail.telecomitalia.it. [87.9.236.85])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a0931c9sm12480054f8f.65.2024.05.28.12.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 12:17:26 -0700 (PDT)
Message-ID: <826c3185-74ca-423c-96f2-4fd4cf2481cb@baylibre.com>
Date: Tue, 28 May 2024 21:16:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] minor fixes and improvements
To: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240522150141.1776196-1-adureghello@baylibre.org>
 <751faef385f81f8a2dd0dcc2acd2d4519bebebe5.camel@gmail.com>
 <20240525180631.13446abc@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240525180631.13446abc@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jonathan,

On 25/05/24 7:06 PM, Jonathan Cameron wrote:
> On Thu, 23 May 2024 14:45:01 +0200
> Nuno Sá <noname.nuno@gmail.com> wrote:
>
>> On Wed, 2024-05-22 at 17:01 +0200, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> After testing this driver, add some minor fixes and improvements,
>>> as adding single channel variants support (ad3541r, ad3551r), also as a
>>> preparatory step to bigger future improvements related to fast-rate mode
>>> for this DAC family.
>>>
>>> Previous patches (v1, 3/3)
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-1-adureghello@baylibre.org
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-2-adureghello@baylibre.org/
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-3-adureghello@baylibre.org/
>>>
>>> Angelo Dureghello (6):
>>>    dt-bindings: iio: dac: fix ad3552r gain parameter names
>>>    dt-bindings: iio: dac: add ad35xxr single output variants
>>>    iio: dac: ad3552r: add model data structure
>>>    iio: dac: ad3552r: add support for ad3541r and ad3551r
>>>    iio: dac: ad3552r: change AD3552R_NUM_CH define name
>>>    iio: dac: ad3552r: uniform structure names
>>>
>>>   .../bindings/iio/dac/adi,ad3552r.yaml         |  43 ++++--
>>>   drivers/iio/dac/ad3552r.c                     | 140 ++++++++++++------
>>>   2 files changed, 128 insertions(+), 55 deletions(-)
>>>    
>> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
>>
> This series crossed with a series using
> device_for_each_child_node_scoped()
>
> I've rebased on top of that. Was moderately straightforwards but
> given last week I messed a similar change up completely please
> check the testing branch of iio.git!
>
> The mess was all it the patch adding model_data

i tested the driver from the iio testing beranch,
it works as expected.

> Thanks,
>
> Jonathan

Thanks,

Regards,
angelo



