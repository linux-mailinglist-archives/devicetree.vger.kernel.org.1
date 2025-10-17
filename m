Return-Path: <devicetree+bounces-228247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C47B9BEAA7C
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F5AE1AA24E3
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406382D9ECE;
	Fri, 17 Oct 2025 16:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XiH3hEGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB822D5930
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760718059; cv=none; b=g86OyFSqIa5jdK09Tl3xvhIIa6NF3vJf7W+LYgnjWFADvSrrBav2yr24DKCOzK3WWGb/M4dF7GYvXiFFfw5GP+jDrgYJMd8eroAvO17N1HtZP4C04MnIUycS/htPlUI7o3Z6JwRhIMfyAVRa6EgU7PWrBniTMFycvvbxJ5v5kgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760718059; c=relaxed/simple;
	bh=1MZ2AU1WSg264AVMPFKY6li+ENJlJqRj4V8LnjhTA9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YE5GvWKMstQTQfo3IRcx0GdyGQyiVdT1LrhYF5exJUkKf3OcIJeazTOHvDsUP+LRKSUZx52WVvFonaEJBrXw1AIepjWLkAwGxSSh1qPJwjtkfOQ4xeyv3n9EUpkhH6UkCpz8T4Rrl1STwpPhGq02ptywiDY5EdX0VpgowHgsMyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XiH3hEGn; arc=none smtp.client-ip=209.85.166.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f193.google.com with SMTP id e9e14a558f8ab-430ab5ee3e7so7362305ab.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760718056; x=1761322856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kq4xC/ePley+c3+EpvbCqMrUnY6wr0uXkN8/DbkCipg=;
        b=XiH3hEGns7pwGLvKkExI1XocRrvgMBckmrwxejQWD+MF2COFMGXwKUZN9vacKk7Bqv
         BDxhl3hSz4Ddecc6MKObzte+cxxw96szEbPJALpJBiQ0KMtmO10pdkLNxpXqzOymJfHk
         lQnei8pzkLct4R/TVfvQzgPtGnoBgPlQQXA8GUf4hP1Abm/s5QuzYhN4HSxheZ/Ctz1b
         SRkU82I+uEitVHIYoBe6nSrdfXAYiQ9OrxIS21nj2vj/VD+oG5p9jg432CGALm5TpN+4
         SqlhIR1J8P0cPoHe5NtI5VnsBZ3RPorAIaYqMnARbn/6YB/WKfqoDtq8k5BU5Qy+fJIG
         DYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760718056; x=1761322856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kq4xC/ePley+c3+EpvbCqMrUnY6wr0uXkN8/DbkCipg=;
        b=YUapIjDQsDXF0lniYWrxOXe3EixF1eDJBYSu8qiRQwWl/oRC3sUECjcKHNII37wwyF
         EpRngTp8T43925aYCh7AuyVGmzwb0Z31pIw+yOhsHUoeDDm7AX4JDyy8TYqjtai2mTl2
         a5OiFi8Z/6y3t1VY670N67/HDzDubv9YdJU2jIY5z9T1YPTYGf5J5qDbNHkLPsC0S697
         1BlSe/8o76FfVPcjcWrLWjn79JKcqONMveA5MrKlmF51qcf2+AL/8l7/thrpF8ile9AU
         EFFL3nTW5qODdjWm90pgdvwXT+aI0rZFWvxWmcpGna4jKc0r3do6uptw7xhOLC0PE1o3
         69rg==
X-Forwarded-Encrypted: i=1; AJvYcCWqskqn6LFfr/LPESIrR6Sp8EXQCPP+y1ZQPTiBCCoEtJqbFNyj4H/X98ht1/iihIH5hulGmf3MXLH8@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ0wBFMVfedBueFWkcMt9n9he04VHPdsFhBG8dUcGjafWM2MeE
	muTu+SF8inBBqio42VvBJxRi1Jfugv2jdSnyYbRcxPXzzCno4IXK6imUPDLkl/Vq/R0=
X-Gm-Gg: ASbGncsPUP5yIH5+czWnN07dj91ooIw/+op7mb9O90fQW0/Lf3q/nZz5mPhhKFp1HJo
	LUmj+xPv/p4pLP+SZJ916+SH7s9L+62TIT5cnV1hxcrKSIrnUjDggeOv4daFge9F7wq62ceQTm1
	RKG9ZaxyrFL7sriKFWT0Kt3D5CTFfTNbS/614gfm2C5CI8ot4+kGyJ+BFxHtiTHz48qnE5XmqFx
	SZfnxUu5PnuA0l/4iciEVqgNyUT882LWkJba+ISRFKobveknDWfGiBL7BFycXJERInsgCkZQFi+
	FxOCRBzYEj5tn9GCMtzt6RGw9uvNBj8w7ACALrbqqInUsmtrJjxqWTNSwZQpMzS7gA58I3LyDwd
	fMMnKgQNUWqy3b8SVH3JWnO0RAFkoFAhtAQMAcgvsC3/yq/RHyzCiG+pe8dApNnl5rL667E2SBb
	3vTNSiJknppEaLFxF7yk4ARbDVuqKSM+apdQIIVXncBo5yP2v7tw==
X-Google-Smtp-Source: AGHT+IFTra9R68sarPEZ7JGiGUxqA+JBh5gKP1pY4jtUAbRv4g02dpfpSvuUEN/4DBcwJsgAfUmRPw==
X-Received: by 2002:a05:6e02:2307:b0:42f:a60a:8538 with SMTP id e9e14a558f8ab-430c52b5afemr49210015ab.16.1760718055789;
        Fri, 17 Oct 2025 09:20:55 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a962f04fsm22836173.21.2025.10.17.09.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 09:20:55 -0700 (PDT)
Message-ID: <72e30269-a7e1-4f34-81ad-9026ef95ddd4@riscstar.com>
Date: Fri, 17 Oct 2025 11:20:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dt-bindings: pci: spacemit: introduce PCIe host
 controller
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <20251013153526.2276556-4-elder@riscstar.com>
 <20251015164730.GA4032812-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251015164730.GA4032812-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 11:47 AM, Rob Herring wrote:
> On Mon, Oct 13, 2025 at 10:35:20AM -0500, Alex Elder wrote:
>> Add the Device Tree binding for the PCIe root complex found on the
>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>> typically used to support a USB 3 port.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>> v2: - Renamed the binding, using "host controller"
>>      - Added '>' to the description, and reworded it a bit
>>      - Added reference to /schemas/pci/snps,dw-pcie.yaml
>>      - Fixed and renamed the compatible string
>>      - Renamed the PMU property, and fixed its description
>>      - Consistently omit the period at the end of descriptions
>>      - Renamed the "global" clock to be "phy"
>>      - Use interrupts rather than interrupts-extended, and name the
>>        one interrupt "msi" to make clear its purpose
>>      - Added a vpcie3v3-supply property
>>      - Dropped the max-link-speed property
>>      - Changed additionalProperties to unevaluatedProperties
>>      - Dropped the label and status property from the example
>>
>>   .../bindings/pci/spacemit,k1-pcie-host.yaml   | 156 ++++++++++++++++++
>>   1 file changed, 156 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> new file mode 100644
>> index 0000000000000..87745d49c53a1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> @@ -0,0 +1,156 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SpacemiT K1 PCI Express Host Controller
>> +
>> +maintainers:
>> +  - Alex Elder <elder@riscstar.com>
>> +
>> +description: >
>> +  The SpacemiT K1 SoC PCIe host controller is based on the Synopsys
>> +  DesignWare PCIe IP.  The controller uses the DesignWare built-in
>> +  MSI interrupt controller, and supports 256 MSIs.
>> +
>> +allOf:
>> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: spacemit,k1-pcie
>> +
>> +  reg:
>> +    items:
>> +      - description: DesignWare PCIe registers
>> +      - description: ATU address space
>> +      - description: PCIe configuration space
>> +      - description: Link control registers
>> +
>> +  reg-names:
>> +    items:
>> +      - const: dbi
>> +      - const: atu
>> +      - const: config
>> +      - const: link
>> +
>> +  spacemit,apmu:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      A phandle that refers to the APMU system controller, whose
>> +      regmap is used in managing resets and link state, along with
>> +      and offset of its reset control register.
>> +    items:
>> +      - items:
>> +          - description: phandle to APMU system controller
>> +          - description: register offset
>> +
>> +  clocks:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) clock
>> +      - description: DWC PCIe application AXI-bus master interface clock
>> +      - description: DWC PCIe application AXI-bus slave interface clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +
>> +  resets:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) reset
>> +      - description: DWC PCIe application AXI-bus master interface reset
>> +      - description: DWC PCIe application AXI-bus slave interface reset
>> +      - description: Global reset; must be deasserted for PHY to function
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +      - const: phy
> 
> You expect/need the phy driver and PCIe driver to both reset the PHY?
> You should do that indirectly with the PHY API when you reset the
> controller.
This was previously called the "global" reset, and I renamed it
to align with one of the existing DWC "app" resets.

I put it here because I had the impression that it was required
to be deasserted for both PCIe and the PHY to function.  Currently
only the combo PHY gets and deasserts the PHY reset (for the
benefit of USB).

Instead, I'll require this global/phy reset for both the combo
PHY and the PCIe PHYs.  I will get it (deasserted) during probe
for all of them.  Then I'll remove it from the list of resets
required/managed for PCIe ports.

I'm going to keep your Reviewed-by on patch 2, even though I'll
be adding "reset" and "reset-names" as required properties.

Please tell me if you'd like me not to do that.

Thanks for the review.

					-Alex

> Rob


