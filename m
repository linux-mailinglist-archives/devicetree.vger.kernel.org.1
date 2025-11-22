Return-Path: <devicetree+bounces-241300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A46F3C7C4A2
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 04:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 431EC3A6C67
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 03:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A54E1C3F36;
	Sat, 22 Nov 2025 03:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="Ari733BB"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16FF29A2;
	Sat, 22 Nov 2025 03:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763782312; cv=none; b=g28lp2VjiQdyOWWyjYUzpIk+WuWLkH+66XN1/DjbuGpyDgExD/FO17kYVkSzUiZhsyY6yYtwFtRpN+rAIRQzQEaMXl3n/P6n7ErzwpuS69cC2HdsUV+fFjX6Q9O9s0UGWe3TjIpXFAylXAJ6tXiJ+tAqPb3qBh1UqCupnGrwGNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763782312; c=relaxed/simple;
	bh=GoQeNsgRFGWbHegDsR4NTdCQCkyyDFO2drcsPMURJIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WoH+1lahXYApo5dSXVS81wGzRnB7QYkpILX/UsYRlu/csm3AbmTqLQ+XaXJv097ozeaSg+sRgcqS5ZWA6Og8SOjsEp/O1FLqh0Nbytvvfhzq4FVUfoxI3N+p2tr1Of7HBREWKPFdycr4f0Xso9IOMTNHVfC4/4Rk+GXIX7oVRD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=Ari733BB; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1763782263;
	bh=dSCZow36UoMM46BBajqssiSEXL6PvDYG1E5ouX01BOk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ari733BB+zfdbjsK5vIlyi2TujrFex+AHjwQ7i0+Av0sbyI+wfCZAJ24At2uIC0+S
	 j9vdQLCadD2JF4bVuBHv8RrrBzMoPIXaeDdOVUI+T0AP+Ef4BCCgU6fX4Kxq4Pr6uL
	 F9WkFdrkq4gWsAUR8CjSsMNBeXrjEM3ljENWdmWD/5uvrRkkqCqZG2oIugzA7OaeX0
	 bcl3HqWntvR49i3hpDarUHQ8RNVHpQwd9ponL5c39URbpxuQkEbJv++zQJzXwdYA4z
	 0IMEJIOReGvYpcIWxSURerjVSwqMstJM2ep7jShpKzbM6ioKx/EZrrULjw+aNVIe3y
	 k5jswuNydDdqA==
Received: from [192.168.2.54] (unknown [143.105.119.236])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id E5F3CB221561;
	Sat, 22 Nov 2025 04:30:59 +0100 (CET)
Message-ID: <b61969d3-b00b-4ea7-bee5-ba7ffb530aa9@freeshell.de>
Date: Fri, 21 Nov 2025 19:30:57 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] riscv: dts: starfive: Add common board dtsi for
 VisionFive 2 Lite variants
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>,
 Conor Dooley <conor+dt@kernel.org>, Hal Feng <hal.feng@starfivetech.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
 <20251120082946.109378-4-hal.feng@starfivetech.com>
 <CAJM55Z8NsC_-jcrm+ndMonU6EtkSzhAQvoROXZwOWNi9FeQLXA@mail.gmail.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <CAJM55Z8NsC_-jcrm+ndMonU6EtkSzhAQvoROXZwOWNi9FeQLXA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/21/25 03:51, Emil Renner Berthing wrote:
> Quoting Hal Feng (2025-11-20 09:29:44)
>> Add common board dtsi for use by VisionFive 2 Lite variants.
>>
>> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
>> ---
>>  .../jh7110s-starfive-visionfive-2-lite.dtsi   | 691 ++++++++++++++++++
>>  1 file changed, 691 insertions(+)
>>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi b/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
>> new file mode 100644
>> index 000000000000..aa375c4a3fa3
>> --- /dev/null
>> +++ b/arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
>> @@ -0,0 +1,691 @@
>> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>> +/*
>> + * Copyright (C) 2025 StarFive Technology Co., Ltd.
>> + * Copyright (C) 2025 Hal Feng <hal.feng@starfivetech.com>
>> + */
>> +
>> +/dts-v1/;
>> +#include "jh7110.dtsi"
>> +#include "jh7110-pinfunc.h"
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/pinctrl/starfive,jh7110-pinctrl.h>
> ''
> I'm confused. In [1] you said "remove jh7110s-common.dtsi, because only one
> board uses JH7110S now." but this series still adds two different boards.
> 
> Also this derives from jh7110.dtsi rather than from jh7110-common.dts as I
> suggested in [2].
> 
> In any case I'm fine with doing it this way, so
> Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> 
> [1]: https://lore.kernel.org/linux-riscv/ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn/
> [2]: https://lore.kernel.org/linux-riscv/CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com/

"Yes" or "No" question from me: Is it necessary to introduce new
"jh7110s" compatible?

I am also confused as suggestions and feedback from v2 are not
implemented in v3:

"jh7110" or "jh7110s" filename prefix ?

<prefix>-starfive-visionfive-2-lite.dtsi includes jh7110-common.dtsi ?
Not changed in v3 with include of "jh7110.dtsi" and duplicating
jh7110-common.dtsi in a board dtsi file. This may be acceptable but it
makes no sense to me why is this done when the suggestion is for minimal
changes.

<prefix>-starfive-visionfive-2-lite.dtsi adds four pairs of
'/delete-property/' with OPP table where different from jh7110-common.dtsi ?

<prefix>-starfive-visionfive-2-lite.dts:
compatible = "starfive,visionfive-2-lite", "starfive,jh7110"
? (or else)
compatible = "starfive,visionfive-2-lite", "starfive,jh7110s"
? (or else)
compatible = "starfive,visionfive-2-lite", "starfive,jh7110s",
"starfive,jh7110"
?

<prefix>-starfive-visionfive-2-lite-emmc.dts:
compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110"
? (or else)
compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s"
? (or else)
compatible = "starfive,visionfive-2-lite", "starfive,jh7110s",
"starfive,jh7110"
?

-E

