Return-Path: <devicetree+bounces-180038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4CAAC26EC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 866193BD402
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 15:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 276E12957A2;
	Fri, 23 May 2025 15:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ph60W/EX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625B31805A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 15:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748015828; cv=none; b=Y7yKeev0NhOMzLiX52oZXSiRs0EYkd6+ZmdLezOKH3M8yX+svUWejuTSJmSfByJUL449HB61FlWrX1xGl7I03B2DPbbSoOlHfsAOxmg6QqlURurTGFKcB3xtd1BuutJlKQJ30zruo8aAZXk9mAUDhDdSxqVNZbqOb/goaQhOp04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748015828; c=relaxed/simple;
	bh=ILxEcaiDntXsflkF+6pQtHGgWFkbnjUWXJxdfu3Hvc4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nm+0bpNBtlhnm+5ztD1aEaphT5UNlqG/j1IaIpMMuduFrt4lChvH4HKmo+lvPDAxqfAkvbQv/otqjT6OBGdkyZu8LoIVbFqktiAVL2PklYH1S03xMan+wG56kXq3azm7kywHgiJvNYKg8mHzjb01cZs909wQlbWy7dHIVwL+ci8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ph60W/EX; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-72ecc30903cso2556a34.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 08:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748015824; x=1748620624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HCbggnBXhDFmScN6GeHb5Y4f9rXuA+BgiNUVjW1ACkE=;
        b=Ph60W/EXNL7g4208D/4r8v0ThIIFZoGRpxHj5uiOMVo8yYqfmRkn3AWzjoFMDcQyU6
         cP8keA8QMPwPjrpJeDi0fsbcq+4DArm97lz7Tc7Q7VOERsXMU7JnWu68JxnDG5v1ydI5
         glgAfebJiiN/Egq2FCUp/ZTD45KSgYdkRGlEpU/kGgmNArhqyCKRuCswvRURHIGU302E
         NXMFYVrgVy33HGR3lCqcPpiir+C3pxdcC3+V5KA25vERp0M9KlX+NG67DMYma/jKuMWG
         nBVBUEp9ezO2+erKuJ1RZhfV+0/Y8BghAIGSjZcedTk3kkAOQ/430amCC0LtdYmLkT5G
         7uBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748015824; x=1748620624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HCbggnBXhDFmScN6GeHb5Y4f9rXuA+BgiNUVjW1ACkE=;
        b=ok4DL4W54yyyiq2SF3EhH6qT2AMELHQEDkXCI98G9qtw16Hi835tJ3+TkjTJtpJnlA
         gx6TQX0+Vh8LY92Iwb+ZPLGIMDOO2UfsudSc66vst9h8Q6s950GSJQ68Cn+kzvp8A7Qg
         IW2ilKSTjU77kd9J0Yvq1ijYmwtbMhRuWOtD3FBLosRfJwShlPT1HDC3H4elE2UdqIzl
         F9OdRnyc23S9tBXYl3PThts4KUBOGXoD5N/2lUFH1YRB/P8L1drUQB6H90KPNkCzuPni
         X4NTrrplqupy53rmjYAU4Z46qWtg798zc2zm3frvBGNONZ3DqWCnpqUvDHPblYOyNo0k
         vjIw==
X-Forwarded-Encrypted: i=1; AJvYcCVTiyC7XGyg7JbEmzrtwoMpVHgS6m2ktdleydw1gJrVfSHG1V8n6qdtPWg/rxyECYYxAi+wUXTuklKl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+5dykKHNwJGfy/ggm7XqghtaDnRGmOCDFRWpsoHJ9dGvB8Zz+
	qldbVMK0GC9smiUY2r84ZLxBtdtsbIWCWKys+CflaMoAH8kA/sxY41VJQb8qX4FMfgk=
X-Gm-Gg: ASbGnctaC5amdDfVixajVnSNUoJkSA9l+dYALNLX4Ask6ots7/npd2yVCKEGL4IiYHX
	uGud3GhbhMLgRFJHk/UOAZ5APsqfEDGV91dNhgxhcf0g8VlUEebNG0fRH7OlyXdmakxxA0DpoBg
	YZbynKmhn/CcFJjUw4DP9WrpZuWosPKGLn+NVjcv6o34ZAwZOtVZ1Odo1+UxrrPqRkahfaSg32l
	Vd23k75UlV53zBCcUdVot1GHtVJd73No8Nb/DqL1uTwIS8pikr039j0osTNhCkpG2/Bo0LTNFa5
	KSjWrLWawyeoeU/bJODVD9PDfcVw1PS9N4QVdCopPHC8hDDmInElDS14ZyTFYNRPY/Lu5+Mtwc1
	NfFgb7QPOS8C3IlwEu4QDHN57im19
X-Google-Smtp-Source: AGHT+IFc3c1i95mFKKiwhRskWte/zI9f2iV5+4DvWEUtWy3xpbU32DrMGlEVO2qex8u//4NOEEsbzw==
X-Received: by 2002:a05:6830:388d:b0:72c:10d5:783e with SMTP id 46e09a7af769-7355cfb0164mr17458a34.10.1748015824170;
        Fri, 23 May 2025 08:57:04 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d0c7:531a:e465:4a2e? ([2600:8803:e7e4:1d00:d0c7:531a:e465:4a2e])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6a4b206sm2902299a34.3.2025.05.23.08.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 08:57:03 -0700 (PDT)
Message-ID: <bcf45254-6c02-471e-86a6-66599a77c999@baylibre.com>
Date: Fri, 23 May 2025 10:57:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: iio: adc: adi,ad7606: fix dt_schema
 validation warning
To: Angelo Dureghello <adureghello@baylibre.com>, Nuno Sa
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org
References: <20250523-wip-bl-ad7606-dtschema-fixes-v1-1-d9147fb2a199@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250523-wip-bl-ad7606-dtschema-fixes-v1-1-d9147fb2a199@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/23/25 9:24 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Fix following dt_schema warning when offload is used:
> 
>   DTC [C] arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb
> /home/angelo/dev-baylibre/linux-iio/arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb: adc@0: 'oneOf' conditional failed, one must be fixed:
> 	'interrupts' is a required property
> 	'io-backends' is a required property
> 	from schema $id: http://devicetree.org/schemas/iio/adc/adi,ad7606.yaml#
> 
> Offload is a third option, so none of the above is needed. Used
> "#trigger-source-cells" to identify offload usage.
> 
> Fixes: ccf8c3f106a2 ("dt-bindings: iio: adc: adi,ad7606: add SPI offload properties")
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
> Fix dt_schema validation warning.
> 
> Link: https://lore.kernel.org/linux-iio/20250408-wip-bl-ad3552r-fixes-v4-0-b33c0264bd78@baylibre.com
> ---

I think this is too restrictive. Generally speaking, a trigger could be
connected to trigger something other than a SPI offload. So we wouldn't
want to exclude that possibility as this change would.

The existing binding has the same issue for interrupts. There isn't any
reason that we couldn't have interrupts wired up at the same time we
are using io-backends or SPI offload.

So I think we should just drop this whole oneOf: and let all of these
properties just be optional.

It smells to me like the original binding was written based on what the
driver supports rather than how things could actually be wired up.

