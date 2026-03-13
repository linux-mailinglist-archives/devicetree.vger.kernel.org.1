Return-Path: <devicetree+bounces-274902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBLsNyWws2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:35:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B73927E30C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1D7330151C2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026FF332917;
	Fri, 13 Mar 2026 06:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lpayoPPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777A41DFDA1
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383702; cv=none; b=AwScWNVK6Rf6A4E6gEXWMEpHR91bjBYtNJSjw9wEb47TVEni3hzig7bXONPDeWvAaU4l5Z5b3ueSRDugdnuM/2/u7hCR9sxSZciqp/fqgLHM1Aehe/w3BCJkYKkbXEIKt5q20Nfq7WwwrIaQZ+xCxQkOfN9Eqx03LdhBmLqQuv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383702; c=relaxed/simple;
	bh=2va6sdFJPKAQtWF5TqnT8UQlob2M5LdSHIMSGn7Lebs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LG3oXzGs26QKTTdqwgHHsrXGYAzdn6CghA7ckoVR/zbWzP74w1F9CFFOIvWVG9WQHjT33kvCSj2EiP1s1Tda3GMYxOrtx/+eivFZHh0anq/6qnlJ2BQ+bAkkSayt4LgwSPrZpk7yYUUuKmQ+20AC+0I8GkqCDDnk84rv9XU0N/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lpayoPPO; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-35a09e0dd63so1820795a91.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773383697; x=1773988497; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q/jr7J8T+jhR53vKzR5OkWAl9M6wmaMQ89KXNhbZ4Ss=;
        b=lpayoPPOOx738SrNj+BPEAgr+tiK/8+9oMqvPyM3dygMMrZr6f8ny/Crc87s2VDraY
         C3S76x3E3GgSGUjyWBTX7unRH3zMegOhb2a1SrLFRedahaL/tx2JWV8AD+CapjsjQLbK
         m1je4BTxsSB5w092HCgg6hFla9b09NFsGEs6WjdEVcIZD+SN5AjwDboSM5Uze7KgM2W5
         2Jr+0Y0tPUi5tGJHu/QchSOp4eo4GKzSuO6M9wLI51krbrJfS1pFCN/JANV8jolYWKDC
         z49tMhrKS/1WJlfgqPnkHZinx0HdKaSbxyWrQvKALPDW6is4YCJkbJ7NYDSQ4+3P5iqD
         V0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773383697; x=1773988497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q/jr7J8T+jhR53vKzR5OkWAl9M6wmaMQ89KXNhbZ4Ss=;
        b=fyvvcf9Pcm+7XZOd6Xw7jAxlRdro8KzuRFnC5vwerJ6/fjNFqG2Y1+z2X8Uj4ZBUD7
         rHHrHjSMu0+EP5cO8atZgmY1lb8TtOD3yWb8AUduyqcs5G3fgwzara18eyHaYZ8lEDIN
         QifQHH09cG4vlf96WpOa1EOqEWnxJfVGoduSOS+Rd0UXggo/pZsOhLsaBh6ZRWeGSsxO
         qumdy+DvZ7Cdb0PUrvGYEzb4lqVyWFbm4DdX4QFO2t/Fx5n1m7uY0G6hHh2wUBXhnMzE
         mEcCrvG52R6uTuj0f5YzeqIVrD5XYPxnLWB31hjO+75FhbOG3mON9iKMh+kslpdgU9Vm
         dNjg==
X-Forwarded-Encrypted: i=1; AJvYcCXbHyYog49rMz41ZlqtEDNYGQkR4QVDIqLDUAt2wxlg4RyAULHxJNV5aKtvy6mZ1FEHUCNaA4n4ZP1E@vger.kernel.org
X-Gm-Message-State: AOJu0YwEr8sxHX8HkY8reyZPQ/fHSusF9etV4t7VkYmhweaiI3HTc2Ax
	4Te5tc1KlENY4aJEY6fNCDVhaLi+4oe2eKVR8rzmxxkiiOgUX3CT4XEv
X-Gm-Gg: ATEYQzxesSyordJZiCB+zN821Y3OcdMwwbFHxDnV401M1rtOQb1gRSfJwjyugDym+1l
	xryXhyy0kqlz62a6YJnWd6jacq/J2NvjzT6maHWDdDaosvWXfJvqaDw+NXVnUzjtBWyzv9b4D4w
	qLRBZvZJNba8klLpOYtkQUKA3e85zsZEayutnDBJ1QDeL/4dL9zrWKL99RKI3tggO+WNn4LnW/Q
	wkeyRJUipsQTh+nMjpKuNnycpNFNuG98Tj8EeDU002iZ3A93PLvX03n16uiIKxfUzYQmaz/brln
	vNkITLeqC33r5o4JG6RGd2SnQaJUS9s85UP4In2ro+xRmRLsLuds989KIkqZKxLW/BlHbhdeXfl
	IHjECMSyLdk7JOpwC0bagShx0yE/yyR6vD7R5pCV4PC5d4iTGYqII9p6rSJgOJlP1oGMYOvdkf3
	llx45dnVXI1to7wBRN3v7UryCzBU4oSU6aTq86Ay2wvfNG1OTXvGK5HcY=
X-Received: by 2002:a17:90b:5185:b0:359:8ed3:8a65 with SMTP id 98e67ed59e1d1-35a22113798mr1985658a91.34.1773383697493;
        Thu, 12 Mar 2026 23:34:57 -0700 (PDT)
Received: from [192.168.1.5] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a07f0a365sm6999155a91.13.2026.03.12.23.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:34:57 -0700 (PDT)
Message-ID: <648da83c-79c5-4936-939d-690e7af1f95e@gmail.com>
Date: Fri, 13 Mar 2026 12:04:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: usb: generic-ohci: add AT91RM9200
 OHCI binding support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
 <20260307-atmel-usb-v3-2-3dc48fe772be@gmail.com>
 <20260308-camouflaged-sage-warthog-fdbb7d@quoll>
 <1d49a4f4-8694-470f-82e2-6021772fc821@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <1d49a4f4-8694-470f-82e2-6021772fc821@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274902-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 4B73927E30C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 08-03-2026 14:58, Krzysztof Kozlowski wrote:
> On 08/03/2026 10:23, Krzysztof Kozlowski wrote:
>> On Sat, Mar 07, 2026 at 09:16:19AM +0000, Charan Pedumuru wrote:
>>> Add binding support for the Atmel AT91RM9200 OHCI USB host controller
>>> to the generic OHCI schema.
>>>
>>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> 
> Also:
> 
> A nit, subject: drop second/last, redundant "binding support". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> And you cannot add support for bindings. The DT schema or some kernel
> Makefile gave that support, not this file.

Okay, I will change that.

> 
> 
>>> ---
>>>  .../devicetree/bindings/usb/generic-ohci.yaml      | 33 ++++++++++++++++++++++
>>>  1 file changed, 33 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>>> index 961cbf85eeb5..a8a94b9c1fee 100644
>>> --- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>>> +++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>>> @@ -55,6 +55,7 @@ properties:
>>>            - ti,ohci-omap3
>>>        - items:
>>>            - enum:
>>> +              - atmel,at91rm9200-ohci
>>>                - cavium,octeon-6335-ohci
>>>                - nintendo,hollywood-usb-ohci
>>>                - nxp,ohci-nxp
>>> @@ -137,6 +138,16 @@ properties:
>>>        The associated ISP1301 device. Necessary for the UDC controller for
>>>        connecting to the USB physical layer.
>>>  
>>> +  atmel,vbus-gpio:
>>
>> gpio is deprecated. All bindings use gpios. Also, pins do not use vendor
>> prefixes.
>>
>>
>>> +    description: GPIO used to control or sense the USB VBUS power.
>>> +    minItems: 1
>>> +    maxItems: 3
>>
>> Why is this flexible? There is only one VBUS, no? Which pin is it
>> exactly on this device?
>>
>>> +
>>> +  atmel,oc-gpio:
>>> +    description: GPIO used to signal USB overcurrent condition.
>>> +    minItems: 1
>>> +    maxItems: 3
>>
>> Same question here - how is the pin called in the schematics?
>>
>>> +
>>>  required:
>>>    - compatible
>>>    - reg
>>> @@ -144,6 +155,28 @@ required:
>>>  
>>>  allOf:
>>>    - $ref: usb-hcd.yaml
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: atmel,at91rm9200-ohci
>>> +    then:
>>> +      properties:
>>> +        clock-names:
>>> +          items:
>>> +            - const: ohci_clk
>>> +            - const: hclk
>>> +            - const: uhpck
>>> +
>>> +      required:
>>> +        - clocks
>>> +        - clock-names
>>
>> There is already if:then:else covering clocks, so this makes multiple
>> clauses being applied to same device. That's not really readable.
>> Unfortunately that's a bit of a mess from existing binding. This can be
>> solved by moving this to separate schema, especially that you want to
>> add some specific properties to this device.
> 
> I guess Rob was fine with this, so let's keep it in this file.

Yes, it should be defined here as the fallback compatible is already defined in this existing YAML.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Charan.


