Return-Path: <devicetree+bounces-59088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD908A42DC
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 16:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9C251F21323
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 14:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A200953E0C;
	Sun, 14 Apr 2024 14:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DrOyZ5Ux"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E04F3BB32
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 14:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713103891; cv=none; b=sUkrqP2lAEVCXuPksjJOZesVI/F39F35XB4yP0rEoP1r83S+zVIunFQyatLIA3+WGFrdUH1bytrmE52ifqGaeioHF/IMTotV3npBBHpTvGxT2RutZDQITnfWsTMqBuO2Szjt4Vrk6sQB/auKrm/4iyE9n/xtb2jIIQms3pLTufw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713103891; c=relaxed/simple;
	bh=SJ0YxejBYj89m9OwFWAO38LZtF0S/Ba1ME5syo78nnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kK8xbuQb3lPNLtnVlkB00R0musQ7NAqzEXZJqgZVmCxzTKqVHcKt9moCeiuDHEOxr0ZacUIZIjErrFI1a5L2SuDoh59JQpojfwXPgBve1d2BPQTsR+JRBuoaPCnQ0TV0m8fB7mtyLAPTTRGyNQymFDQJVxtJzS9lBggMduQkC38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DrOyZ5Ux; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e69888a36so3117553a12.3
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 07:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713103887; x=1713708687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1tMpo/zuSFQ2iQW3o8k6ZDetDDrHwQ8KrFnSgtE+JhE=;
        b=DrOyZ5UxSE3oe5k2y8AXlyJrvGHfW9e7NSwkp04aDykiyEkGyww5HtI0/f8gFntedz
         4OZ4GOU231eDD9aAeYaXdeZ92t/P4SPvYBUddyH8lJZ9EQRGPn5M4sgbeEbLxDJHKTDy
         u+KZoqstN8iVwsjWxqruPXshvWbBbo19Z95oZMBjpBgjHLbDWgu1Ca7kCE1GOrH0q1Nr
         qRMdKDJ+1+Z5uiXCBmQ7FNvzLNZu67WLA5z5DxvH4sT9ZZn4sPcG1gNVSUj6L2bWkxyE
         rAL+q0VbLJiftavOy9cVi3f09eWdDUIq+ItNzytJCFfZUoW0NYz1QF/0v2gKN+Cjq1ge
         8H8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713103887; x=1713708687;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tMpo/zuSFQ2iQW3o8k6ZDetDDrHwQ8KrFnSgtE+JhE=;
        b=vBPuA7GgaFvDzXoX/o8Ie5C0GqsPootx+BJOIGoD4A9mQRpArl3ML+LY4A3xSiUZjz
         TY3Od+qs8vpMDNBcPrjVJNifIKkRR7RizTUJVmPK9Jv/ZwgEGzgoEDgrhofPINevJb5t
         vqhMJt8GxiFExo8UY9hzrDI3rwGvjvinXopDxGio1yqdWuWMbsTpeoI5/4kWnLpYu4aN
         zlQ76zpIlg2g5EfpuLjRb/2bcgytzv5eqc57Jqq2/pfK9cge/GO30z4Qx4Ktk1FUNOD/
         VFm9iGDcqSBfrbSJyAw9HGTvOolEEbqbAgJBKHnPcU0IenKadfr44yxZQh0dTbi6SLZD
         mriQ==
X-Gm-Message-State: AOJu0Yz04P+2bVka13jkecefEms8ZTmmB7VhA+1MS6gH1S+V5JPorieN
	1IrfJixP0k29ixtBhJKhYKOPw9e7fXO4C2rqsB4sH4X6GipO9fZKpa8w4RmA1npDizHGgFtb9cx
	f
X-Google-Smtp-Source: AGHT+IGnJxsmae6YrIT6o794astGVI6Dy1GaKU3o0017CUwUPHiQmtFXrO4tt5YaMDXk2xRQOVhCFA==
X-Received: by 2002:a50:cd1a:0:b0:56e:2332:cb4b with SMTP id z26-20020a50cd1a000000b0056e2332cb4bmr3855535edi.40.1713103886855;
        Sun, 14 Apr 2024 07:11:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id s24-20020a056402037800b0056e44b681a6sm3707332edw.57.2024.04.14.07.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 07:11:26 -0700 (PDT)
Message-ID: <cbcd0cf9-9e2a-43cd-afe8-844b513e3a7b@linaro.org>
Date: Sun, 14 Apr 2024 16:11:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240414131529.1730506-1-jonas@kwiboo.se>
 <20240414131529.1730506-3-jonas@kwiboo.se>
 <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
 <3abd2dfe-e4c9-42d0-89a4-4c340c08aea1@kwiboo.se>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3abd2dfe-e4c9-42d0-89a4-4c340c08aea1@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/04/2024 15:56, Jonas Karlman wrote:
> Hi Krzysztof,
> 
> On 2024-04-14 15:33, Krzysztof Kozlowski wrote:
>> On 14/04/2024 15:15, Jonas Karlman wrote:
>>> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
>>> computer based on the Rockchip RK3566, with a compact form factor and
>>> rich interfaces.
>>>
>>> The ZERO 3W and ZERO 3E are basically the same size and model, but
>>> differ only in storage and network interfaces.
>>>
>>> - eMMC (3W)
>>> - SD-card (both)
>>> - Ethernet (3E)
>>> - WiFi/BT (3W)
>>>
>>> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>> ---
>>>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>>>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>>>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>>>  3 files changed, 510 insertions(+)
>>
>> How do you build your patches? That's rhetorical, because they cannot be
>> built... Missing Makefile.
> 
> They where built using the generic .dtb-file make target, will include
> in Makefile in v2, thanks.
> 
>>
>> Are you sure therefore that your dts pass dtbs_check? If this is not in
>> Makefile, how did you run the command?
> 
> I built and tested dts files using the following make commands:
> 
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 defconfig
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3w.dtb
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3e.dtb

OK, thanks, wasn't sure it works without makefile. Anyway you still need it.

Best regards,
Krzysztof


