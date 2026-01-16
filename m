Return-Path: <devicetree+bounces-255923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1A7D2E45E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E9C2302E717
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5950C2BE65F;
	Fri, 16 Jan 2026 08:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zvBuCoPB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BCD2741DF
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768553453; cv=none; b=TYRUmbjmRGFzdROx4kmiBIahn+J+ozA0zaKgvdeKraMeEAR5wtzSy5N1YIimpdsC1+v9ULteao/euzASKMIu94lzf/qDJBTviViN/IwLhiUlNonFnHhsQYiqk1y+koKxD6kd5a19l6AsmEEL58RYPZzK1uDwPL8ig27LC3s/+5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768553453; c=relaxed/simple;
	bh=IxxkAHO4EnPiHaHTmJj8q4lvkE9SooXBNoQmhRF6Nyk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZFahueD2F+sduiohjoCQXmsQhetoRMIS9b6ZdMBxUGzivQilszJbSlH35z+4wrHswUifVY0txcu5fBr9/niHMuKYlesWCrqmoSn5JLFQoXfmf+V56brGFJ3J2Ww0HTVDYIYK2KFXMxcsxNXFaBdrHKN3IArdVcxVhzmpGE36SsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zvBuCoPB; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so4423265e9.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 00:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768553450; x=1769158250; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pXXyXgD5w4PG1Vior3rmQ9g78aObU3Raj1nrRdpjO4M=;
        b=zvBuCoPByJXT9NLYNA68cAungP0ITFpI66ZhsO+5vkuZ5N1TpAFG+ih63w5C76MILC
         G61Se8IF2SxC68Nr71xtzdG6xwL6Krchlw3SKkG22w1/NVpTUfbQ7A3n542Jt4LYu4tJ
         KKE33g1lXRqwinONAfe+l4Imp2CHXhDwiwWImNeogjaql4y4C1SeqN9RTOR3hpGAwGtH
         FnD7wBcDWaeZ5S8mJeHkeq/F8LvWJ5qtmtToGx4k0BhjDiInimIo+0MWgj9aVK/JXOh0
         ocunQbzUYBnIW/U6KMNGP+QgT/8TpTn63eKTh9NNJOBhaNNr29RlKwXLGxwlUNnfveI7
         QaOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768553450; x=1769158250;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pXXyXgD5w4PG1Vior3rmQ9g78aObU3Raj1nrRdpjO4M=;
        b=wUEZ7XzkykzT69i6LIYckydK1TTAjHC1A/eXyhaozP1oPorL3GiTdnIGHuCKw6ix/K
         qh7VZ0W2B4dBpc+kwTS3wqvSBToTewd77cznfFTj66Jn0H16/Bnot3F3Zgf+s5eO5Kgi
         uPkgJ+A3mvAqUmRXpWu5lEEjWznW8kC28DjNUuKNHGQ3xyTJgEwMgz9VcD3nY9uipsEM
         0N+TS+Zpvfor755VGeDOv+m17dx9hxmwjtyWRwo1AWXS4PKVbuq18Xvht5lTN3E2ZqzM
         zukai6H0vJ+OHuTw4vRIbPC5lFnF188n97DRvG+mQpxlGtk0G+nI8ffkey4p+k52Gaaz
         s8fg==
X-Forwarded-Encrypted: i=1; AJvYcCXGL2pof0ybO71NZveNxkYTXE2XJERJBx4YmGwiAwi0DyrS69YzsIn+H5SMEUwJ4v6tFKk6keSUfYif@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7se4QMJGK4Ot67MAymxkKNO9+qbcEez5wf7Z4bKNKr5dIrC/M
	VX+9oXz0o1rR410HM5JQGktbD4Ig0ClVfb9yFZDax9n8OZlpOElhpvhsHAPNYTq7Lps=
X-Gm-Gg: AY/fxX6V7n/9vMB5xPtPxtFSI4P/KccIcw/P1QJbvJeocqNpA3Gvmo3v163n0e54tNU
	W9rcPZViYqEy/CPFb7A7Rd6eQ5KSZoIyaHn2uTqcun1eM7UHEg33p34YloZayO+rLv6bhztAJVS
	/+t/fDfXrGlSkl6HqelhtYWyRfRY9loQl1AoHDzTEjZew/5RcvlNb00eMVuFlQGGVAg+mvfCnvX
	tEcVtYL4KPo/S60Pvnxi/h9QlWx4cSFoZqcbECe35uWSskdYzS71N+KvVO8KsJUJGNmrpniK4e7
	jlaKVL7I37XU6cLQegsIEHWGjdDa7q7Cb1IQlSSD61pH0TyXwwIpZT4emRtqfKH9V0XCTpxdf34
	+C+sfBEyxcg/8D8a+75bPErSa9YPlxOlKRV9I2PAyiW3pyjGRmdpNv5PHNzXdUoNMyka6wB1vdT
	7WC7FrUyFJM3NDmKZIpA==
X-Received: by 2002:a05:600c:414f:b0:480:20f1:7abd with SMTP id 5b1f17b1804b1-48020f17c12mr10430535e9.31.1768553449885;
        Fri, 16 Jan 2026 00:50:49 -0800 (PST)
Received: from [10.11.12.107] ([86.127.43.8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4b267661sm87966875e9.13.2026.01.16.00.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 00:50:49 -0800 (PST)
Message-ID: <26d86470-aaa2-46e3-9940-010a903df4fd@linaro.org>
Date: Fri, 16 Jan 2026 10:50:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] dt-bindings: mfd: Add Google GS101 TMU Syscon
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, willmcvicker@google.com,
 jyescas@google.com, shin.son@samsung.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
 <20260114-acpm-tmu-v1-3-cfe56d93e90f@linaro.org>
 <20260115-slim-denim-potoo-cad9cb@quoll>
 <200d34bf-150e-4f8a-b400-2f54863502ac@linaro.org>
 <e2f028d6-774f-4773-889f-7d56b833067e@kernel.org>
 <fcc5405e-189d-4195-8db0-3acf35bbc0a9@linaro.org>
Content-Language: en-US
In-Reply-To: <fcc5405e-189d-4195-8db0-3acf35bbc0a9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/15/26 6:10 PM, Tudor Ambarus wrote:
>>> I'm going to link the ACPM TMU child node with the TMU node via a
>>> "samsung,tmu-regs" property.
>> This could be fine, but I actually wonder what's there. What registers
>> exactly. For example modern Exynos 88xx, already with APM block, still
>> have exactly the same TMU unit at 0x1008{04}000 with all typical
>> triminfo, current temperature and thresholds.
>>
> It's the same for gs101, the TMU instances have all the typical registers,
> it's just that everything is handled via ACPM but the intpend registers.

I could still use some guidance, Krzysztof, thanks for the help so far!

Based on the current feedback I was going to propose the following
description:

soc: soc@0 {
    tmu_top: thermal-sensor@100a0000 {
        compatible = "google,gs101-tmu-top";
        reg = <0x100a0000 0x800>;
        clocks = <&cmu_misc CLK_GOUT_MISC_TMU_TOP_PCLK>;
        interrupts = <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH 0>;
    };
};

firmware {
    acpm_ipc: power-management {
        compatible = "google,gs101-acpm-ipc";

        thermal-sensor {
            compatible = "google,gs101-acpm-tmu-top";
            samsung,tmu = <&tmu_top>;
            #thermal-sensor-cells = <1>;
        };
    };
};

GS101 handles the thermal sensors in a hybrid way: it uses the TMU IP
block to read the INTPEND registers, and everything else is handled via
ACPM calls. There's also the abstraction that one ACPM sensor is comprised
of multiple physical TMU sensors.

My concern now is that the ACPM TMU child node is not hardware per se,
but just a firmware abstraction (One-to-Many sensors).

If everything was handled via ACPM, without the need to read the TMU's
INTPEND registers directly, I would have describe the sensor just as an
ACPM child.

Because of the hybrid approach I'm arguing the ACPM child node does not
fully describe the hardware, and it's just a firmware abstraction.
So option 2/ would be to have just the TMU IP block described with a
phandle to the ACPM IPC:

soc: soc@0 {
    tmu@100a0000 {
        compatible = "google,gs101-tmu-top";
        reg = <0x100a0000 0x800>;
        clocks = <&cmu_misc CLK_GOUT_MISC_TMU_TOP_PCLK>;
        interrupts = <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH 0>;
        
        /* The "Firmware Phandle" approach */
        samsung,acpm-ipc = <&acpm_ipc>;
        
        #thermal-sensor-cells = <1>;
    };
};

Which one do you think it better describes the hardware?
Thanks!
ta

