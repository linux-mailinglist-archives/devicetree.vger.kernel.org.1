Return-Path: <devicetree+bounces-6167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AFB7BA1AA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 241A628204F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FFD2AB4A;
	Thu,  5 Oct 2023 14:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Fcc6hcRq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD74228DB7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:55:26 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C290545A2;
	Thu,  5 Oct 2023 07:55:11 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 69804C000E;
	Thu,  5 Oct 2023 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696517709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SvI9F4vpIQD7DGUds/vKMgxKyvlPUyCYmEns2PApKAM=;
	b=Fcc6hcRqta8x25TA7UMjiq2gKaY+Q0us1KsJDE/UkN+k0KIcdLxomfknYlV9sp58coRJtE
	4VwtTbzPhf8EXROYr+gVTy688geKbr5i0ujDTwWT8Yt0HJYsPWfT2TxWTM9D6AaJiHodRm
	nVt8DH8DGnXS1RLIx6XzvCs01V1XhsFYQ1TovqYlI7OYD0wfLFo/Zu2rzwfbt2N2OvH/PK
	XwAXKhrfmDR8QHw3Px6XENUOZA8ZL4KX7yTd18QkZcwVDF6X2pcE20zK1GXSrvB9hMTICH
	VRUVB4+IvyAJc+bGMSlHXjBphHnQCFmNBAN8KzeRW3TG3UtE17eu/OjkcKb9zw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer
 <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Kondratiev
 <vladimir.kondratiev@intel.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 06/11] dt-bindings: mips: Add bindings for Mobileye SoCs
In-Reply-To: <CAL_Jsq+NkRM07U8enKSVvpOg+9qtDdnkqs2Pc0X8LgjVVo7Vhg@mail.gmail.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-7-gregory.clement@bootlin.com>
 <CAL_Jsq+NkRM07U8enKSVvpOg+9qtDdnkqs2Pc0X8LgjVVo7Vhg@mail.gmail.com>
Date: Thu, 05 Oct 2023 16:55:08 +0200
Message-ID: <87pm1tce5v.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Rob,

> On Wed, Oct 4, 2023 at 11:11=E2=80=AFAM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
>>
>> Add the yaml bindings for Mobileye SoCs. Currently only EyeQ5 is
>> supported
>>
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>> ---
>>  .../devicetree/bindings/mips/mobileye.yaml    | 36 +++++++++
>>  include/dt-bindings/soc/mobileye,eyeq5.h      | 77 +++++++++++++++++++
>>  2 files changed, 113 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mips/mobileye.yaml
>>  create mode 100644 include/dt-bindings/soc/mobileye,eyeq5.h
>>
>> diff --git a/Documentation/devicetree/bindings/mips/mobileye.yaml b/Docu=
mentation/devicetree/bindings/mips/mobileye.yaml
>> new file mode 100644
>> index 000000000000..f47767bc2c8f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mips/mobileye.yaml
>> @@ -0,0 +1,36 @@
>> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
>
> Use what checkpatch tells you.

From my point of view GPL-2.0-or-later is compatible with GPL-2.0-only,
but OK I will do this.

>
>> +# Copyright 2023 Mobileye Vision Technologies Ltd.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mips/mobileye.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Mobileye SoC series
>> +
>> +maintainers:
>> +  - Vladimir Kondratiev <vladimir.kondratiev@intel.com>
>> +  - Gregory CLEMENT <gregory.clement@bootlin.com>
>> +  - Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
>> +
>> +description: |
>
> Don't need '|'.

OK

>
>> +    Boards with a Mobileye SoC shall have the following properties.
>> +
>> +properties:
>> +  $nodename:
>> +    const: '/'
>> +
>> +  compatible:
>> +    oneOf:
>> +      - description: Boards with Mobileye EyeQ5 SoC
>> +        items:
>> +          - enum:
>> +              - mobileye,eyeq5-epm5
>> +          - const: mobileye,eyeq5
>> +
>> +      - description: Boards with Mobileye EyeQ6 SoC
>> +        items:
>> +          - const: mobileye,eyeq6
>
> Not valid to have only SoC compatible. Add this when you have a user.

OK

>
>> +
>> +additionalProperties: true
>> +
>> +...
>> diff --git a/include/dt-bindings/soc/mobileye,eyeq5.h b/include/dt-bindi=
ngs/soc/mobileye,eyeq5.h
>> new file mode 100644
>> index 000000000000..7d8cb97b45bf
>> --- /dev/null
>> +++ b/include/dt-bindings/soc/mobileye,eyeq5.h
>> @@ -0,0 +1,77 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright 2023 Mobileye Vision Technologies Ltd.
>> + */
>> +#ifndef _DT_BINDINGS_SOC_MOBILEYE_EYEQ5_H
>> +#define _DT_BINDINGS_SOC_MOBILEYE_EYEQ5_H
>> +
>> +/* EQ5 interrupts */
>> +#define NUM_INT_I2C_A                  1
>> +#define NUM_INT_I2C_B                  2
>> +#define NUM_INT_I2C_C                  3
>> +#define NUM_INT_I2C_D                  4
>> +#define NUM_INT_I2C_E                  5
>
> These are interrupt numbers? Note that we never do headers for
> interrupt numbers, so drop this.

OK

Thanks for the review the changesrequested will be part of the next
version.

Gregory

>
> Rob

--=20
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

