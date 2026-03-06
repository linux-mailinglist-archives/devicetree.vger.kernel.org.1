Return-Path: <devicetree+bounces-272308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IUyIGQUq2lzZwEAu9opvQ
	(envelope-from <devicetree+bounces-272308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:52:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 004AA226755
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D11A302291E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 17:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60C141C0AD;
	Fri,  6 Mar 2026 17:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="ITiXMpQk"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AC93A9DB6;
	Fri,  6 Mar 2026 17:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772819551; cv=none; b=SG7qY5eDh+sFdvx4WdIh6yzj1p0LgZ5PwYDG4+8j7vwf7BgmCcMQWR1GFUDZdpsZ9wzwDfj6wN/rI0kIqY7fWZGYxPc8To4Sd81SpX+qRHg7BYIaXV/ULQp535XlazPayv3x3KxGlKJgMz9iqGftmZt/0kwAddq0bxceKhjzpzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772819551; c=relaxed/simple;
	bh=EB/U3fWV1qGZzzcoIIuqMRDh1ydn2eVijuVLbb1xY+A=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=hfnOOjWibBCdbPFOeQ+JGXmNLPjZs9RAfZ5tl4326LFnwh4O4BysjpD05zFnkLQln68xNAa82BVyKMxc3OO0lm71+ix2d2GNF31qAb1nkMSGbI0OqC9EbO762FgYrGH6UcbHzVI4R7+sSYlIWKXhRpqCxvHUpvubtdvsPpguMPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=ITiXMpQk; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id E31A8779093C;
	Fri,  6 Mar 2026 11:52:27 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id UOtMyRmtu1ZA; Fri,  6 Mar 2026 11:52:27 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id EAEFB7790BD2;
	Fri,  6 Mar 2026 11:52:26 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com EAEFB7790BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1772819547; bh=KLvDy/vbC8ZuLGHlxb6+t6yVhKPrZuWhS1+HrkR6M1w=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=ITiXMpQkomHCSIGQDWB8gxI0PmkfJYP9YDG8D5sL552/YlSXvr0vvt3SimeBHY6c1
	 FUqAz9M0VDveK318GlXYuSqTGyf2C+ulAJ6TZjs60hIklUIpUPYuy7fcVS9hAIPT1x
	 PHQLCspI1c4Vrd8oFPq+v5zI6SMCmpSGCP9tXboc=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Se_47NLpTj6h; Fri,  6 Mar 2026 11:52:26 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id BECF67790901;
	Fri,  6 Mar 2026 11:52:26 -0600 (CST)
Date: Fri, 6 Mar 2026 11:52:23 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Conor Dooley <conor@kernel.org>
Cc: Raptor Engineering Development Team <support@raptorengineering.com>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Message-ID: <530063102.286103.1772819543617.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <20260306-playtime-glorifier-9dc7838283f4@spud>
References: <20260129192047.562540-1-support@raptorengineering.com> <20260129192047.562540-2-support@raptorengineering.com> <20260306-playtime-glorifier-9dc7838283f4@spud>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC143 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: 5EegI8XKUv1OaYITpQaNRsPAO3WX9w==
X-Rspamd-Queue-Id: 004AA226755
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272308-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3f:email,sony.com:email,devicetree.org:url,0.0.0.0:email,linaro.org:email,raptorengineering.com:dkim,raptorengineering.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tpearson@raptorengineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action



----- Original Message -----
> From: "Conor Dooley" <conor@kernel.org>
> To: "Raptor Engineering Development Team" <support@raptorengineering.com>
> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring"
> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio"
> <sanastasio@raptorengineering.com>, "Timothy Pearson" <tpearson@raptorengineering.com>
> Sent: Friday, March 6, 2026 11:49:18 AM
> Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Team
> wrote:
>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>> 
>> The Sony Cronos Platform Controller is a multi-purpose platform controller
>> that provides both a watchdog timer and an LED controller for the Sony
>> Interactive Entertainment Cronos x86 server platform. As both functions
>> are provided by the same CPLD, a multi-function device is exposed as the
>> parent of both functions.
>> 
>> Add a DT binding for this device.
>> 
>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>> ---
>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>>  1 file changed, 128 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> new file mode 100644
>> index 000000000000..a7e88fd42d39
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> @@ -0,0 +1,128 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +# Copyright 2025-2026 Raptor Engineering, LLC
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Sony Cronos Platform Controller CPLD multi-function device
>> +
>> +maintainers:
>> +  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
>> +
>> +description:
>> +  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
>> +  controller that provides both a watchdog timer and an LED controller for the
>> +  Sony Interactive Entertainment Cronos x86 server platform. As both functions
>> +  are provided by the same CPLD, a multi-function device is exposed as the
>> +  parent of both functions.
>> +
>> +properties:
>> +  compatible:
>> +    const: sony,cronos-smc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  leds:
>> +    type: object
>> +    $ref: /schemas/leds/common.yaml#
>> +    additionalProperties: false
>> +    description: |
>> +      The Cronos LED controller is a subfunction of the Cronos platform
>> +      controller, which is a multi-function device.
>> +
>> +      Each led is represented as a child node of sony,cronos-led. Fifteen RGB
>> +      LEDs are supported by the platform.
>> +
>> +    properties:
>> +      compatible:
>> +        const: sony,cronos-led
>> +
>> +      reg:
>> +        maxItems: 1
>> +
>> +      "#address-cells":
>> +        const: 1
>> +
>> +      "#size-cells":
>> +        const: 0
>> +
>> +    patternProperties:
>> +      "^multi-led@[0-9a-f]$":
>> +        type: object
>> +        $ref: /schemas/leds/leds-class-multicolor.yaml#
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          reg:
>> +            description:
>> +              LED channel number (0..14)
>> +            minimum: 0
>> +            maximum: 14
>> +
>> +        required:
>> +          - reg
>> +
>> +    required:
>> +      - compatible
>> +      - "#address-cells"
>> +      - "#size-cells"
>> +
>> +  watchdog:
>> +    type: object
>> +
>> +    $ref: /schemas/watchdog/watchdog.yaml
>> +
>> +    properties:
>> +      compatible:
>> +        const: sony,cronos-watchdog
>> +
>> +      timeout-sec: true
> 
> Why is there a child node to just add timeout-sec?

When I tried Krzysztof's solution, the validation tools threw an error, and this was the only way I found to get them to stop throwing errors.

> Didn't Krzysztof ask
> you to come up with a generic node name for the mfd to use instead of
> "smc", and to modify watchdog.yaml to accept the new node name? See
> here:
> https://lore.kernel.org/all/c7630eb1-2686-491e-81ed-fb43fff2dd31@linaro.org/
> 
> Something like "platform-controller" sounds generic to me, in a way that
> "smc" doesn't.

SMC is the name of the hardware block in question.  platform-controller generates some other confusion as there would be multiple separate hardware blocks that could fit that name.

> 
>> +
>> +    required:
>> +      - compatible
>> +
>> +    additionalProperties: false
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/leds/common.h>
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        smc@3f {
>> +            compatible = "sony,cronos-smc";
>> +            reg = <0x3f>;
>> +
>> +            watchdog {
>> +                compatible = "sony,cronos-watchdog";
>> +
>> +                timeout-sec = <20>;
>> +            };
>> +
>> +            leds {
>> +                compatible = "sony,cronos-led";
>> +                #address-cells = <1>;
>> +                #size-cells = <0>;
>> +
>> +                multi-led@0 {
>> +                    /*
>> +                     * No subnodes are needed, this controller only supports
>> RGB
>> +                     * LEDs.
>> +                     */
>> +                    reg = <0>;
>> +                    color = <LED_COLOR_ID_MULTI>;
>> +                    function = LED_FUNCTION_STATUS;
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> --
>> 2.39.5

