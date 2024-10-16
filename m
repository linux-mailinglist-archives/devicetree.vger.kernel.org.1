Return-Path: <devicetree+bounces-112217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FB69A16E3
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 02:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AFD3286890
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 00:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F99161;
	Thu, 17 Oct 2024 00:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="eEmmwRCc"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC981F942
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 00:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729124683; cv=none; b=uZsh6HdX/O60h18jioufYuan+beodg1AZQurMcjmeNqJn+P+Sho/0Ubad91/vLmCpzUl4xWQasErGV/g05cA3yg5kPZIk3oqEOGBV925zfE1EH9yeK6B2nk/HQxJTgmdgTVsd02xmHQf4gZdBLulW0J0uovDIBN9x2rvmsJgw0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729124683; c=relaxed/simple;
	bh=6oj9CeQOHzTxmczbSuY3in3kUN6TA1wSaP99HOf6cGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tAuUasocu4Geo6+81BGH/D3aq/LsTPdmKbv3MfnJgvuueYbUKmlrqQ9uVoqyI0zXTrVMysv/tWGH8uIgc08yfOJl57ESCsC1Av2uoumW+x1xLnINKtDdgq64aasvmiljUqkJj9K54Oi/SXKnaj+8cY2Dsfb2+Snn5wL58Rp4w/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=eEmmwRCc; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id A8A8588DD1;
	Thu, 17 Oct 2024 02:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729124680;
	bh=J9dWPuM1moFzn7UwaenM6QAIwd/7k3O72CW5bOKuV+s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eEmmwRCcZXFKFjVxz9RBVsapjgteNeMTi8M2peZpSOZ5u45igKB1KJN28PEVWr+lt
	 XE5tejs/zPBk/XZ5SPBZzRsSh92MLxGaSl6hGxtrhRL5z1bZIOorm0jlKvwpGlUxpP
	 oV8AqfK14JnMr90/tROIE51JginjHDNsmsG8CTvxAMdjzLXDpL5R0SYB10vLZKW1dl
	 UAGBYqgX+7E0+j0nNvKR/pdsz3S/BDvP1Aq4tO0XMcgQRcb1v+cbvyaDHngKj12H/I
	 oJBOBvfpcPg6MMKhXZaFKJ8M9MyC2h8mzCiakDFe1JMF6sQSXp8hI1by/+e0cT8NU2
	 Z85s5s7sax3yg==
Message-ID: <2055a272-8391-4990-bc13-329247e09197@denx.de>
Date: Thu, 17 Oct 2024 00:48:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: regulator: lltc,ltc3676: convert to YAML
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
 kernel@dh-electronics.com
References: <20241015224343.94302-1-marex@denx.de>
 <oif3padobl4laflhuqyw3hdqnf4rdwlzh2twllieoelyxcgtdk@fulczljt7hwq>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <oif3padobl4laflhuqyw3hdqnf4rdwlzh2twllieoelyxcgtdk@fulczljt7hwq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 10/16/24 9:24 AM, Krzysztof Kozlowski wrote:
> On Wed, Oct 16, 2024 at 12:42:51AM +0200, Marek Vasut wrote:
>> Convert Linear Technology LTC3676 8-output I2C voltage regulator IC
>> DT bindings to YAML DT. Add missing interrupts: property as this IC
>> does have interrupt line and it is used in existing DTs.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Liam Girdwood <lgirdwood@gmail.com>
>> Cc: Mark Brown <broonie@kernel.org>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Tim Harvey <tharvey@gateworks.com>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> ---
>>   .../bindings/regulator/lltc,ltc3676.yaml      | 171 ++++++++++++++++++
>>   .../devicetree/bindings/regulator/ltc3676.txt |  94 ----------
>>   2 files changed, 171 insertions(+), 94 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/regulator/ltc3676.txt
>>
>> diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
>> new file mode 100644
>> index 0000000000000..ec9ce856a944d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
>> @@ -0,0 +1,171 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Linear Technology LTC3676 8-output regulators
>> +
>> +maintainers:
>> +  - Tim Harvey <tharvey@gateworks.com>
>> +
>> +description: |
>> +  LTC3676 contains eight regulators, 4 switching SW1..SW4 and four LDO1..4 .
>> +
>> +properties:
>> +  compatible:
>> +    const: lltc,ltc3676
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  regulators:
>> +    type: object
> 
> Move the additionalProperties:false here.
> 
>> +    description: |
>> +      List of regulators provided by this controller, must be named
>> +      after their hardware counterparts (SW|LDO)[1-4].
>> +
>> +    patternProperties:
>> +      "^(sw[1-4]|ldo[24])$":
>> +        type: object
>> +        $ref: regulator.yaml#
> 
> Move the unevaluatedProperties here, ditto in other places.
Fixed in V2.

I wanted to ask though, there are these patternProperties here which 
cover sw1..4 and ldo2 and ldo4, and then there is dedicated special case 
for ldo1 (because this LDO node must always contain regulator-always-on 
property) and ldo3 (because this LDO node must NOT contain 
lltc,fb-voltage-divider property). Is there any way to place all the 
sw1..4 and ldo1..4 into patternProperties, and then selectively DISABLE 
lltc,fb-voltage-divider requirement for LDO3 and ENABLE 
regulator-always-on for LDO1 ? I was looking at allOf:if: , but couldn't 
find anything.

Thanks !

