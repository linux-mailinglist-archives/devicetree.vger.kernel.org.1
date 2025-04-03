Return-Path: <devicetree+bounces-162960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FEEA7A600
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 17:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5743E17238D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 15:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B331E288A2;
	Thu,  3 Apr 2025 15:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zXkmIKKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3D42505D6
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 15:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743693015; cv=none; b=bCzko0OtsCy+eVQfMagXj8dyFFD934J1y11fOAXTgDJjeW4fu23+s6eqGRXAdZwCTqL2sJxFH1NwgnMTkqh/ilNKdKii5e+0q7lHGFw8uWfg91TUv1zyr8RA4ArL23WGs0yQtszoB9P1IgTKoc7EtrOJELu4Gw1/qr0K0pKWfow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743693015; c=relaxed/simple;
	bh=3xsuXjoivOlqLYm45J8XhER5c8e8iHHhlk5GjLRhsfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b9ggsNGirNFhHHLsib0SuQeW37obG28+3ik9hEW82+P9m0CTc2flUn219WeHbtUa+3iHHGj2Gg/mOw+5zRDQkcX74+Vgaxw5mBDLBjO78bBMrHrR2YUUxc74NVIwYZ0b/gAUcA827Od10LjF4OWA2cbyZ5e8vFp932E4Xd0F0wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zXkmIKKp; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d0782d787so6736975e9.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 08:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743693012; x=1744297812; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhJ5g8kBFwNl+XQ2nWiu5GACX6MCWJ6Smtvjb3q8Bto=;
        b=zXkmIKKpoWKGbFoYbwdGvthQe7yCka+T6ZN97cA73Bvd4VJqm4JxzdBhILlH9wQPiC
         FA3DQQcR5Nghzb4xW7vcLEZvyWzwLxCJRv1I+NqFjTy27b6eYdBx8+YvuwHHZ+Vc5cDg
         nK/TL584fOgLuBal/PBangJattCVGn5MW5FlwhMoYBdwkmOdvlFdomBqGOppI/39EbPA
         k2EeHRQaoRjnC8/YbwfksUafBQs4wZ+wcz71bExzQKOkTCtIJBX12vxPEbpVgv940PC/
         AureMuHS199yjTQXLbV5LFLIdmN/e4c21QpWtKfOzs9Bf5arg2mN2yFLJ2n5laAv247g
         wCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743693012; x=1744297812;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhJ5g8kBFwNl+XQ2nWiu5GACX6MCWJ6Smtvjb3q8Bto=;
        b=Fx+dHjBwHvpsvOBLf8XbL5x0j8MfbJ15r/D4fn7jAQrgRoUyOT4udaEQm/DXBEvLv6
         sFTLfqRhreKlbaCUn9XNcOZLmvN3QCv//y/UbPcCBEAnA4UZQeDEwwoGyjCnZKmhC2VG
         AVWI+YUhOxcvHXPCaUXv2QPR9QuXmeRw7HVIjphmaDhdcMFx/tfe7kXDZQQ4+WoHIbZu
         RS/1cku518pxxr7BWygK4TBAhoekEqlQ31oyTRIcDsbK+YOZulnWpcYUer9hG5h2RBy8
         NFgoNuZdCoE7DlMdFX6TLZNNe/eqp4ffBJxoE1R+5tUqdxwRXdNdmzOfNDFVfIMttpH4
         qnjg==
X-Forwarded-Encrypted: i=1; AJvYcCWgxpVsSzB/9YGQrKYvVuklHxiQ48/ydox6OfcGbtZZ1o6PwqfYnm+cP5zspkuNV4o7GQI6AE2auQwA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy0NYFt43jBe+x1tutwryRzOWqykKMndehr3z2f5xY08unJ0ml
	qdCQ8ljRjuqE75GjbygrNf8pNt4QABR9QXWPpX+T6yZY5ukxN1EGz9mUYAjedz8=
X-Gm-Gg: ASbGncum+w+5P5OMAOfms/mC6TUxFwDc+RfO+MffjzBwfWzwqj/HLLibYzlSugJNSTP
	xk50ERaRsilRmHt2nh7K8eMmd/8rxmzk4dSDXqPf7sJ6q0PIJ118DUIooNgWCtFJ8zEHtRgcCjf
	aSaJupHOwhd/02zDcLUCwEGNo0ap7Emv5ddL0kAv9RS1ty/kSi+YSusq2bseobP9Hgbv0PYBuRa
	zsKZH2LsiNOg7iavWkmZR9vX7/GNV4KOsfuvmBwf/0wGv7KRTetOWvkY2q53Db3dZC/INfTxJJh
	ARMH1/lBHNdipqMnsZqV/Vuh7/2jnkH4ii6Y4lcMf8ghD36OwtG051A32AZhSBLH2FvanOiV1xW
	b8+vwTrb7
X-Google-Smtp-Source: AGHT+IHDhBcexcgG0SxAh6e6AVDE03TCQZ+YSRRIFhr8aPiKmaRvD2AOaeBMWRz175FPNNgUcLCquQ==
X-Received: by 2002:a05:600c:5486:b0:43c:f895:cb4e with SMTP id 5b1f17b1804b1-43db6249aefmr197046525e9.17.1743693012137;
        Thu, 03 Apr 2025 08:10:12 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43ec16a5776sm24935105e9.22.2025.04.03.08.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 08:10:11 -0700 (PDT)
Message-ID: <c570c99d-53f5-4f77-a730-42e5a2016dc5@linaro.org>
Date: Thu, 3 Apr 2025 17:10:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 Vincent Guittot <vincent.guittot@linaro.org>
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
 <20250402154942.3645283-2-daniel.lezcano@linaro.org>
 <64b6d599-fe67-586a-e4b0-73d9b73499de@oss.nxp.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <64b6d599-fe67-586a-e4b0-73d9b73499de@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/04/2025 08:19, Ghennadi Procopciuc wrote:
> On 4/2/2025 6:49 PM, Daniel Lezcano wrote:
> [ ... ]
>> +examples:
>> +  - |
>> +    watchdog@0x40100000 {
>> +        compatible = "nxp,s32g2-swt";
>> +        reg = <0x40100000 0x1000>;
>> +        clocks = <&clks 0x3a>;
>> +        timeout-sec = <10>;
>> +    };
> 
> The S32G reference manual specifies two clocks for the SWT module: one
> for the registers and another for the counter itself. Shouldn't both
> clocks be represented in the bindings?

AFAICS, there are two clocks as described in the documentation for the 
s32g2 page 846, section 23.7.3.3 SWT clocking.

The module and the register clock are fed by the XBAR_DIV3_CLK which is 
an system clock always-on.

The counter is fed by the FIRC_CLK which described as "FIRC_CLK is the 
default clock for the entire system at power-up."

 From my understanding, we should not describe the XBAR_DIV3_CLK as it 
is a system clock.

And the FIRC_CLK is only there to get the clock rate in the driver.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

