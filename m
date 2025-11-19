Return-Path: <devicetree+bounces-240147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4758C6DD87
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 245434E74A9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE60C342539;
	Wed, 19 Nov 2025 09:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="PIPyyuj4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED03341ADD
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763545684; cv=none; b=kJBAZK4Cz4nJ+DXdn5mrL8OHQzFmQXrD9Vn3tsN4/hRPMtdzgMH3x+h80/aodWVcR7bYWy1jm9nDNB2GsgJFY8R7iTKInp0zQLBl2L34cTBPH+/tjIeN2HxYz9Oa4bXFQcP7ijlu4/TiATYfQuHkfwd6gdwLZN6iGXo2yISs4YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763545684; c=relaxed/simple;
	bh=KVDkyd6zJ5GEfTnqSjGpaZhmhsDZdLIOa4wzdM374LM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KHphGctSJasuOgzN+DuJqYY3lrd9zsoxlOBoZZtRgG7p2BR+8c1HgTGhARE4YSqlAbib2E7pdctgrD53z6GdnCMCCpuI8IEsmP5Onmn3Wt4N/iRPSNj1pjAIReKSOus/Cbf5wiqdKA7V6xEaXM5c7zyzpeifhQ17HJhtM7nq+Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=PIPyyuj4; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1C6864E41794;
	Wed, 19 Nov 2025 09:47:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E44B760720;
	Wed, 19 Nov 2025 09:47:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6C86010371A28;
	Wed, 19 Nov 2025 10:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763545676; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=gK+LpoJANvwF55wwTCTYvBqZF4AfkizsKPUWssaz8k8=;
	b=PIPyyuj4oPsQg2Mgv/JY2ZedxflwsVFgnS6H/TLC+gMVKf8PUExM36+PzqFtY+liu+E+nu
	1DOLd7gSes3S0xROeu71i8jQJ0Tf8Hv1bh+gG51GH2NZv7O72CaChG4mJNgi+ox7cjM6tP
	ID5p+0Lc+xJKBnllhdc40aPHWPYYuaMtaWZV/BwlIMnuMC2Gwxi32fCcCFnP3T+HkPqyaU
	jQaAkKHqUelX6mWDSRmJo4k/q2xBSnJs6GjNaYMNlmt2ZPCfN8oKakeEbaWbfF6UukqtrV
	NsIHcvEdvGxFSIFTpPT7S22owaush4D+vZbViSLijAeUhtoKzmuWLhkj4mrrxQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Linus Walleij
 <linus.walleij@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, =?utf-8?Q?Beno?=
 =?utf-8?Q?=C3=AEt?= Monin
 <benoit.monin@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources
In-Reply-To: <20251117175955.GA225586-robh@kernel.org>
References: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
 <20251117-mtd-memregion-v1-2-7b35611c79a6@bootlin.com>
 <20251117175955.GA225586-robh@kernel.org>
Date: Wed, 19 Nov 2025 10:47:52 +0100
Message-ID: <87ikf6qrp3.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Rob Herring <robh@kernel.org> writes:

> On Mon, Nov 17, 2025 at 06:00:15PM +0100, Gregory CLEMENT wrote:
>> Enable access to memory resources not only via I/O address using reg,
>> but also through a portion of main memory using memory-region. To
>> achieve this, new compatible strings have been introduced: mtd-mem and
>> mtd-memro.
>>=20
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> ---
>>  .../devicetree/bindings/mtd/mtd-physmap.yaml       | 59 +++++++++++++++=
-------
>>  1 file changed, 40 insertions(+), 19 deletions(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Do=
cumentation/devicetree/bindings/mtd/mtd-physmap.yaml
>> index 1b375dee83b0c..0f75a1204b263 100644
>> --- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
>> +++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
>> @@ -13,10 +13,6 @@ description: |
>>    Flash chips (Memory Technology Devices) are often used for solid state
>>    file systems on embedded devices.
>>=20=20
>> -allOf:
>> -  - $ref: mtd.yaml#
>> -  - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
>> -
>>  properties:
>>    compatible:
>>      oneOf:
>> @@ -61,6 +57,8 @@ properties:
>>            - jedec-flash
>>            - mtd-ram
>>            - mtd-rom
>> +          - mtd-mem
>> +          - mtd-memro
>
> I thought we had a flag for read only.

The read-only flag is set at the partition level, not the device level.

>
>>=20=20
>>    reg:
>>      description: |
>> @@ -116,6 +114,10 @@ properties:
>>      minItems: 1
>>      maxItems: 8
>>=20=20
>> +  memory-region:
>> +    items:
>> +      - description: Memory regions to map into mtd
>> +
>>    '#address-cells':
>>      const: 1
>>=20=20
>> @@ -129,21 +131,25 @@ properties:
>>=20=20
>>  required:
>>    - compatible
>> -  - reg
>> -
>> -if:
>> -  properties:
>> -    compatible:
>> -      contains:
>> -        const: cortina,gemini-flash
>> -then:
>> -  properties:
>> -    syscon:
>> -      $ref: /schemas/types.yaml#/definitions/phandle
>> -      description:
>> -        Phandle to the syscon controller
>> -  required:
>> -    - syscon
>> +
>> +allOf:
>> +  - $ref: mtd.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - mtd-mem
>> +              - mtd-memro
>> +    then:
>> +      required:
>> +        - memory-region
>> +      properties:
>> +        addr-gpios: false
>> +    else:
>> +      $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
>> +      required:
>> +        - reg
>>=20=20
>>  unevaluatedProperties: false
>>=20=20
>> @@ -223,4 +229,19 @@ examples:
>>              reg =3D <0 0x04000000>;
>>          };
>>      };
>> +
>> +  - |
>> +    /* An example using mtd-mem */
>> +    mem_logs: mem_logs@10000800 {
>> +        reg =3D <0x1 0x0000800 0x0 0x000f800>;
>> +        no-map;
>> +    };
>> +
>> +    sram {
>
> It's really an abuse of /reserved-memory to define regions outside of=20
> what's defined in /memory nodes (or whatever defines system memory). Is=20
> that the case here with the suspicious 'sram'?
>
> If we do keep this, I'd rather just add the properties below into the=20
> /reserved-memory node itself. Devices are created for those nodes if=20
> they have 'compatible'.

The name is indeed misleading. I drew inspiration from the example
above, but the actual use case was to share data between the kernel and
bootloader, for instance. Therefore, it is truly part of the main
memory. I will modify the name accordingly.

Thanks,

Gregory

>
>
>> +        compatible =3D "mtd-mem";
>> +        memory-region =3D <&mem_log>;
>> +        bank-width =3D <4>;
>> +        device-width =3D <1>;
>> +    };
>> +
>>  ...
>>=20
>> --=20
>> 2.51.0
>>=20

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

