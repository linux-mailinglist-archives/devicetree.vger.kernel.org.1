Return-Path: <devicetree+bounces-184494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F91AD435D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 21:58:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6615189CD7C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 19:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FD5264FBB;
	Tue, 10 Jun 2025 19:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="QLm5kTGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42DE23BCF8
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 19:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749585476; cv=none; b=bneHHmAEMpA6nK1QPIrH52oheNEI2ydnJEEgHL9uTfPo1SkKbwqkdPCYNnQMZYUmcrED98u7QDXnBhLy/tt1o2OwKHtlAGus8glusOWoorqNeFNDlAmgDO5JZSkS4+M9cWy3fR1JPwp4/r1ANrtDB1GxKP7u1EToA5dMk8FcFZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749585476; c=relaxed/simple;
	bh=s6e6ud95i060by5ZDgVZWMBtZhqk8xi9O9Hn2Hs928U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pn4rEJkgOiyxJ7Udjhg5XkPgJfuLvZFJ0Yee/ugQFcmnepJqmJp/AGrTRDyVOja4fpUBEsG+XQRAcYtZZIgucM7CZ8iTSnTPb2YrEdwUNWUeFXOH23J9W7P7GVQ+wxWE78F/2UFQvbBab67G7AhGXWwGn+xE0EfqlxTsCetwBD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=QLm5kTGP; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3ddeaad6036so13077905ab.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1749585472; x=1750190272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8arP5MQ8o2r6kwstCGi8yYOLU/0CwgGbynmW/R6CU1w=;
        b=QLm5kTGPBjEbHzGvNoPUbsiJ6yD6zFJ7n0bbFpMl7BuBi4et5EVWEM7uvmIptA80eV
         hSPkd9BCdMxW9QPVZKS2eBqXY/qC1t7BHb7cziNXipWBH1wQZbGJJYouCG3jaWN3KEPi
         vMYTMhb/VSvDbVlAVslNB5kgcmP4qHmP8TtsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749585472; x=1750190272;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8arP5MQ8o2r6kwstCGi8yYOLU/0CwgGbynmW/R6CU1w=;
        b=Bccd+vW9/XoZWwYKZ1bEfqKVDmmLes4N88rjAgB94z7a/QpUh8WknDzuE8nKsyD/XV
         uRdXhwnEr1cAvbFF/vQEip+IGQPkaeMcQvmO+0POi52abMPMHhP9r9qzUfqrIeex+2Sl
         ne4686mFCGNdyAZA1hS+WMzCa9kWCDZY/os3Ee5ttCd8kHSx/QFettohMKbPAvk1YaBv
         WU7O7Rl0Bi/EfGCyaeWe7tq5LzlMY7V0qsvdK+xJdrgkdpJ/Q8dzfGfRmNNQB6A/RBDn
         QDoK6zp+/heyWNcQxgwfrDKe7Ao1y4uhKVx7n8M7vm4TBvEKRVW7tBpLHZFv3/emAFM8
         x4YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUZJA9tE9UCORpzZZmreGhu70PwNhCaO4rKki9zyKpZgG9OQ1QkNUvbyZBvOl8KUVbvUMHkGoZGf5K@vger.kernel.org
X-Gm-Message-State: AOJu0YyG379/KEIclqFgD9OCxqYxum/cUgcVpWHu6aus3luQIek45r1Y
	c34DDJDXlf0zTl1lRpvJ43IHoT0fQOAjcf56K+RuBZCMFQw97CKex2/XsS7otdKvPg==
X-Gm-Gg: ASbGncsAhM8XYLkn9Ptx1VzQ8UBEn5b92Hc+TcsyBTqHRXrkheZDMefSPcqagBsOCLM
	yI/LB8RFIXZdwW4fUzeWAzIjDCVsd5OaOTkzleYMVRjlsWVGeEM7ZuojRpvREzrSl2fJVOxOBr8
	zp1VVn7GfVFAVyTmO0cho24GeDnTe99WoQ5NXu7YN/TwDYDk/sYvxdBTImsrgfe5LGrfTRU68xc
	MuK5jUfuN0iw6fAD/aNu+VzceN/bZkaoDotA2rSw1w9fYLVPKzic4CCGrDQKdb+8Uj5H+px2B8c
	IIFbImUYnkr7yMy0/yWxb31m5fmwEkSBOKIpaXuXRZmBqE9gnNZ/Gv7oRJtnAeYJYRobNAWfOuk
	mjfAn68n52TesANMbwwpE
X-Google-Smtp-Source: AGHT+IHA9PT4YsWq3Yi8UtnOBccsoGJ8i5Yqo7UNIrwpHrqWTEgWuM/Hzq+BjXEkalsT57ohB6FBsg==
X-Received: by 2002:a05:6e02:1528:b0:3dc:8109:d64b with SMTP id e9e14a558f8ab-3ddf4d54d2amr367215ab.5.1749585471672;
        Tue, 10 Jun 2025 12:57:51 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id 8926c6da1cb9f-5012aaa2869sm52955173.69.2025.06.10.12.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 12:57:50 -0700 (PDT)
Message-ID: <5084a99a-9140-4c4f-9873-f5478f48a49d@ieee.org>
Date: Tue, 10 Jun 2025 14:57:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: spacemit: add K1 PCIe/USB3 combo
 PHY
To: Ze Huang <huangze@whut.edu.cn>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, Junzhong Pan <junzhong.pan@spacemit.com>
References: <20250527-b4-k1-usb3-phy-v2-v5-0-2d366b0af999@whut.edu.cn>
 <20250527-b4-k1-usb3-phy-v2-v5-2-2d366b0af999@whut.edu.cn>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20250527-b4-k1-usb3-phy-v2-v5-2-2d366b0af999@whut.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/27/25 7:01 AM, Ze Huang wrote:
> Introduce support for SpacemiT K1 PCIe/USB3 combo PHY controller.
> 
> PCIe portA and USB3 controller share this phy, only one of them can work
> at any given application scenario.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Co-developed-by: Junzhong Pan <junzhong.pan@spacemit.com>
> Signed-off-by: Junzhong Pan <junzhong.pan@spacemit.com>
> Signed-off-by: Ze Huang <huangze@whut.edu.cn>

This PHY has an interaction with PCIe port A.

In practice this PHY is only used for USB 3.0 (not PCIe).

However I am told that only the PHY used for port A is capable
of performing a resistor termination/tuning process (not ports
B and C).  As a result, the PCIe driver needs this process to
complete on the PHY for port A; it can then read the port A TX
and RX calibration values (4 bits each).  It uses these values
to configure the PHYs for ports B and C.

For this reason, this PHY code (and binding) should not be
merged until we are sure that the solution will also satisfy
these PCIe requirements.

					-Alex


> ---
>   .../bindings/phy/spacemit,k1-combphy.yaml          | 72 ++++++++++++++++++++++
>   1 file changed, 72 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-combphy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-combphy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..93f7a3bb06bba380def77f87f6db0184af26e9e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/spacemit,k1-combphy.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/spacemit,k1-combphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SpacemiT K1 PCIe/USB3 Combo PHY
> +
> +maintainers:
> +  - Ze Huang <huangze9015@gmail.com>
> +
> +description:
> +  Combo PHY on SpacemiT K1 SoC. PCIe port A and USB3 controller share this
> +  phy, only one of PCIe port A and USB3 port can work at any given application
> +  scenario.
> +
> +properties:
> +  compatible:
> +    const: spacemit,k1-combphy
> +
> +  reg:
> +    items:
> +      - description: PHY control registers
> +      - description: PCIe/USB3 mode selection register
> +
> +  reg-names:
> +    items:
> +      - const: ctrl
> +      - const: sel
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      Indicates the PHY mode to select. The value determines whether the PHY
> +      operates in PCIe or USB3 mode.
> +
> +  spacemit,lfps-threshold:
> +    description:
> +      Controls the LFPS signal detection threshold, affects polling.LFPS
> +      handshake. Lower the threshold when core voltage rises.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 0xff
> +
> +  spacemit,rx-always-on:
> +    description:
> +      Affects RX.detect, enhance compatibility of some DFPs in device mode but
> +      increase power consumption.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - resets
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    phy@c0b10000 {
> +        compatible = "spacemit,k1-combphy";
> +        reg = <0xc0b10000 0x800>,
> +              <0xd4282910 0x400>;
> +        reg-names = "ctrl", "sel";
> +        resets = <&syscon_apmu 19>;
> +        #phy-cells = <1>;
> +    };
> 


