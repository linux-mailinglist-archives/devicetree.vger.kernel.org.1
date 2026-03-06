Return-Path: <devicetree+bounces-272312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOwsDdwdq2mPaAEAu9opvQ
	(envelope-from <devicetree+bounces-272312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:33:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCB1226B32
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 401463021BBE
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 18:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96E135B643;
	Fri,  6 Mar 2026 18:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="KYec92Kh"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FCB306B1B;
	Fri,  6 Mar 2026 18:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772821976; cv=none; b=hiKT4vi0+Jef14NFf4joo4gLexEvX04nzoJCJugDh4T7GRns6aMAIrGU8HyMFtA2XTfYiVA7imrnrw3s8VyFQz8Fx1cVK/T63MgMDY4DkZMH1A34/CcIZQrmO6yQiGuTubPnZiR4RBUMp+k7u3u76aeKpKJVn3gYDK996FI6C/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772821976; c=relaxed/simple;
	bh=NzoRHoF4y1lYbkKoHg1sQ9QbVzVv5sE++k9xitug9GQ=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=sbqwLEMgHCaVk71Bwm6a2nu6p2tu6VhWc2D4J965FIuYaDhWrNecp/uEEivJ0FuyOqKsrCgEVKFZv6idD7JPoWJFSJpmhZ9uIG/5jCL4VQt/och9SmBAJlHIuSHhWm/E/xM2WufQQq4t90MPZo7rCvwXHaneyaZqfb19HnashxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=KYec92Kh; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 5AFF57791E1A;
	Fri,  6 Mar 2026 12:32:54 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 0ALcwKZ7EjCb; Fri,  6 Mar 2026 12:32:53 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 2E6957791E4D;
	Fri,  6 Mar 2026 12:32:53 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 2E6957791E4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1772821973; bh=hRH6/I0eWv5OzWzljqtgRVlfeNX/AaB4sjV471/28jE=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=KYec92KhRZqTe5bRKsThiGFfzseAOy6Ut7Nc1H+y68aCNmKaPGs/T4XXsp7A8dFEz
	 zNvvr3Rz5JJn8helhPHr9T+oGWK3NljO0V4qqtJeurfL8N4ZTOAV76I8W6cM/ymfH+
	 xMObdUFzGDLiUAJxWjL64AjQj+SjBlk1Z1mT5Kpg=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id XPLrDXdnOPsc; Fri,  6 Mar 2026 12:32:53 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id EB9397790D21;
	Fri,  6 Mar 2026 12:32:52 -0600 (CST)
Date: Fri, 6 Mar 2026 12:32:49 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Conor Dooley <conor@kernel.org>
Cc: Timothy Pearson <tpearson@raptorengineering.com>, 
	Raptor Engineering Development Team <support@raptorengineering.com>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Message-ID: <785729175.286160.1772821969715.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <20260306-prescribe-monorail-60836f62dc83@spud>
References: <20260129192047.562540-1-support@raptorengineering.com> <20260129192047.562540-2-support@raptorengineering.com> <20260306-playtime-glorifier-9dc7838283f4@spud> <530063102.286103.1772819543617.JavaMail.zimbra@raptorengineeringinc.com> <20260306-prescribe-monorail-60836f62dc83@spud>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC145 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: tYjO756mobSJkVVfigUyeYa9WUplzA==
X-Rspamd-Queue-Id: CDCB1226B32
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,raptorengineering.com:dkim,raptorengineering.com:email,sony.com:email,raptorengineeringinc.com:mid];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tpearson@raptorengineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action



----- Original Message -----
> From: "Conor Dooley" <conor@kernel.org>
> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> Cc: "Raptor Engineering Development Team" <support@raptorengineering.com>, "devicetree" <devicetree@vger.kernel.org>,
> "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring" <robh+dt@kernel.org>, "Conor Dooley"
> <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Lee Jones" <lee@kernel.org>, "Georgy
> Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio" <sanastasio@raptorengineering.com>
> Sent: Friday, March 6, 2026 12:14:19 PM
> Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On Fri, Mar 06, 2026 at 11:52:23AM -0600, Timothy Pearson wrote:
>> 
>> 
>> ----- Original Message -----
>> > From: "Conor Dooley" <conor@kernel.org>
>> > To: "Raptor Engineering Development Team" <support@raptorengineering.com>
>> > Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>> > <linux-kernel@vger.kernel.org>, "Rob Herring"
>> > <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>> > Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>> > "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>,
>> > "Shawn Anastasio"
>> > <sanastasio@raptorengineering.com>, "Timothy Pearson"
>> > <tpearson@raptorengineering.com>
>> > Sent: Friday, March 6, 2026 11:49:18 AM
>> > Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
>> 
>> > On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Team
>> > wrote:
>> >> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>> >> 
>> >> The Sony Cronos Platform Controller is a multi-purpose platform controller
>> >> that provides both a watchdog timer and an LED controller for the Sony
>> >> Interactive Entertainment Cronos x86 server platform. As both functions
>> >> are provided by the same CPLD, a multi-function device is exposed as the
>> >> parent of both functions.
>> >> 
>> >> Add a DT binding for this device.
>> >> 
>> >> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>> >> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>> >> ---
>> >>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>> >>  1 file changed, 128 insertions(+)
>> >>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> >> 
>> >> diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> >> b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> >> new file mode 100644
>> >> index 000000000000..a7e88fd42d39
>> >> --- /dev/null
>> >> +++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
>> >> @@ -0,0 +1,128 @@
>> >> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> >> +# Copyright 2025-2026 Raptor Engineering, LLC
>> >> +%YAML 1.2
>> >> +---
>> >> +$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
>> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> >> +
>> >> +title: Sony Cronos Platform Controller CPLD multi-function device
>> >> +
>> >> +maintainers:
>> >> +  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
>> >> +
>> >> +description:
>> >> +  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
>> >> +  controller that provides both a watchdog timer and an LED controller for the
>> >> +  Sony Interactive Entertainment Cronos x86 server platform. As both functions
>> >> +  are provided by the same CPLD, a multi-function device is exposed as the
>> >> +  parent of both functions.
>> >> +
>> >> +properties:
>> >> +  compatible:
>> >> +    const: sony,cronos-smc
>> >> +
>> >> +  reg:
>> >> +    maxItems: 1
>> >> +
>> >> +  leds:
>> >> +    type: object
>> >> +    $ref: /schemas/leds/common.yaml#
>> >> +    additionalProperties: false
>> >> +    description: |
>> >> +      The Cronos LED controller is a subfunction of the Cronos platform
>> >> +      controller, which is a multi-function device.
>> >> +
>> >> +      Each led is represented as a child node of sony,cronos-led. Fifteen RGB
>> >> +      LEDs are supported by the platform.
>> >> +
>> >> +    properties:
>> >> +      compatible:
>> >> +        const: sony,cronos-led
>> >> +
>> >> +      reg:
>> >> +        maxItems: 1
>> >> +
>> >> +      "#address-cells":
>> >> +        const: 1
>> >> +
>> >> +      "#size-cells":
>> >> +        const: 0
>> >> +
>> >> +    patternProperties:
>> >> +      "^multi-led@[0-9a-f]$":
>> >> +        type: object
>> >> +        $ref: /schemas/leds/leds-class-multicolor.yaml#
>> >> +        unevaluatedProperties: false
>> >> +
>> >> +        properties:
>> >> +          reg:
>> >> +            description:
>> >> +              LED channel number (0..14)
>> >> +            minimum: 0
>> >> +            maximum: 14
>> >> +
>> >> +        required:
>> >> +          - reg
>> >> +
>> >> +    required:
>> >> +      - compatible
>> >> +      - "#address-cells"
>> >> +      - "#size-cells"
>> >> +
>> >> +  watchdog:
>> >> +    type: object
>> >> +
>> >> +    $ref: /schemas/watchdog/watchdog.yaml
>> >> +
>> >> +    properties:
>> >> +      compatible:
>> >> +        const: sony,cronos-watchdog
>> >> +
>> >> +      timeout-sec: true
>> > 
>> > Why is there a child node to just add timeout-sec?
>> 
>> When I tried Krzysztof's solution, the validation tools threw an error, and this
>> was the only way I found to get them to stop throwing errors.
> 
> So you were not able to do what he did, and modify watchdog.yaml?
> What did you try, and what were the errors?
> 
>> 
>> > Didn't Krzysztof ask
>> > you to come up with a generic node name for the mfd to use instead of
>> > "smc", and to modify watchdog.yaml to accept the new node name? See
>> > here:
>> > https://lore.kernel.org/all/c7630eb1-2686-491e-81ed-fb43fff2dd31@linaro.org/
>> > 
>> > Something like "platform-controller" sounds generic to me, in a way that
>> > "smc" doesn't.
>> 
>> SMC is the name of the hardware block in question.  platform-controller
>> generates some other confusion as there would be multiple separate hardware
>> blocks that could fit that name.
> 
> Node names do not have to be unique. If there are 10 platform controllers
> on the platform, then having 10 platform-controller@<foo> nodes would be
> fine. We explicitly want node-names to describe the type of device, not
> be a unique identifier. That's what compatible strings are for.
> I'm unsure why there would be any confusion caused by the node name,
> can you elaborate on that? What other devices connected to the BMC would
> be considered "platform controllers"?
> 
> There's no explanation anywhere here where "smc" even comes from, none
> of the description text or commit message has something that I would
> expect "smc" to be shorthand for.

Understood.  Let me rework.  I'll see if I can provoke the error regarding the watchdog YAML again as well.  It may be a couple of weeks before I respond as I have other active projects at this time.

Thanks!

