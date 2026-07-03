Return-Path: <devicetree+bounces-320368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j/5QHPsfSGpWmgAAu9opvQ
	(envelope-from <devicetree+bounces-320368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 22:47:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5877705953
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 22:47:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=EnlIRSCw;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320368-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320368-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 475B5304E6C9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 20:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD3A360EC4;
	Fri,  3 Jul 2026 20:42:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7659B35B653
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 20:42:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783111358; cv=none; b=gvUWuhfUxtYE/Ea9DMSm4YM3bCEWefnN/jaKSWJ7ssMulb9cmvY/DnIx3nE5ZjdsPZBLjbwsE1uaICJ5s0tD+ltXwwNpmiL+WhQm+g8KHeHdKJ0zX24ysx8Ufhix65/PW13VPurcY7dr3TIdQidIXvwn2d/6HpTae6xdDIYWHHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783111358; c=relaxed/simple;
	bh=Eqv7+V31VY/0AFwk6Of9l7MrPycwP1CheiV+bakSUis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JsQk7VRJlnzqqjaOLmIeqHhAydpJ/ZHDMynaX3RaAlVRzULfJJ7LMyVOaWxixXihCWxAHHa6bon+aV+iYRDBbkUq+OXVFiGgYJnGUCPSe2ENoGhg7Gub5ICQ0Pn2Gbumd0YxT35OJ9LcSDpS0outuDGrf4JCMan4RmAA7pKzLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=EnlIRSCw; arc=none smtp.client-ip=209.85.160.47
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-448b0ff4a57so618511fac.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 13:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783111354; x=1783716154; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AJlO7KO6NzvLX9GqvLCqKw4zjECJWOBxuWDTUord5Kw=;
        b=EnlIRSCw8FPPcedvFuTf+xNu11mIcOCVqE0YpqYQxqh+xO9YpNMTRLcMThwi8eAdN3
         anLvTqDwOYG+FRrLBwKeWIJHWHgAjU2d+maK/3wbAVEh9YGDzsz3yecRxbXXE1RQLBCQ
         FCKEmQ2p9ePAMt5TdfJSPPC+IFBcynIv1brXIQgR/jcto+qDMBGS1lXbcajBIZQW5+/d
         glNbUyw1WJmK9VSv089qJe9LFOufnNlMH/C1+kKQ2Jqxm0DTnP0Um2RtamYOXkG/Ao2/
         7J+dWwWWuAhP9HxQhGmydpidcHhEsZ9wBmYSCVALSDZKbFfW0d7AIvKNcHiNqpOHHJ5I
         wpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783111354; x=1783716154;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AJlO7KO6NzvLX9GqvLCqKw4zjECJWOBxuWDTUord5Kw=;
        b=OYuyhbzsFv27+zrfKdeSHfwCQrSejTa0Et0/Ksi7AVqH52mKlnoTaVepTMiVPIBI4E
         my+q2VRJU1oM2DionvNCTvj0s22wS+5JJ6jS+0h8Ko4waMqJIsk3ckjgV+fDlQJ9a/HX
         x3qgrAVf5azLiLFHS714T+TopF9qbHATQ7wjNC4bmzZ+nOqPuhBR8CmlGdnzngCUSPIz
         TZm+oR0xinG07K+BFLgWxz3GVy/F+9b1xyq9RziqxKPqQOOq3+8ZNXBaCd8GPSHvR14Z
         iWhjHB8TRqDNaWpqIFiOvJEG3YKIinV7WF5Bj5qspoOtBVl4HDEFaAWohTCCekZlUp0Z
         Z+ZA==
X-Forwarded-Encrypted: i=1; AHgh+RojzuEP0+7O62Dxb2pTZM9Q98VCiELHKc7YUhdhWE28jvn988Wihw6uhDKe7Z0qj02V+umheGQPL19O@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7PcuPpkRpyXBgPhCRARYlAc4gOt9+ci0pOHHaXpsVDADrHTNJ
	Xq4MQihSD5hrWG+H9wt7TOZ6mF/9FZgrwvsnN4mjrTGduQQH6L3S+cvdxzxU/YEYVOQ=
X-Gm-Gg: AfdE7cm/jSue1j6Lm8ec2AwdgY16gS7lRUujjJeGVbCEvEIOCa31o9kKDT6ZdfekIrp
	pGc8VOU5ZCQ/Foh1SB6oaXNMir35h/4Off+GObFkOL8NBeW2asbzpg8mEOtBx6XjxSosNc/y7o8
	QkeQmGvzHbkmuzcwMVmsmAL5jheobLxT4r38Bzo+EHUnj6WGkHapgvZ7iuffxIE6j/Qf9YFOXkc
	fyXFWTW3/JY/r7NiO+l03GQ8wQkb8/SWD5wtoxxc+EoNM4D4/Q1vFykJaX6ppM6cyXAwRxiWza2
	V7HaEA2yt/nSbpb76eTv55JmzR3DlHqtmvoalPqEEla+2d9gDyelx7Ali0O1cqaaqzxTESWfEX0
	usPhAKrT9HfR75kc79u+fkwQDL00/APvUDC1FOJPjYN2dYQ4fFXxCKlAYJH0HGzkeoyZqt24PKj
	BuJf7Wv0Ms1uwWQxS0uePgIR3tWQ62lZZwMEaJCSgGGt2Ef4zuoYA0o8X5kcxlOwc=
X-Received: by 2002:a05:6870:1584:b0:448:558c:d8c7 with SMTP id 586e51a60fabf-44d183e0de2mr539088fac.37.1783111354455;
        Fri, 03 Jul 2026 13:42:34 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6af9:a9d7:17b5:2644? ([2600:8803:e7e4:500:6af9:a9d7:17b5:2644])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44cfb5db92dsm2878354fac.13.2026.07.03.13.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 13:42:33 -0700 (PDT)
Message-ID: <9768e9af-4ceb-4c07-ad85-4b7a62e81b6e@baylibre.com>
Date: Fri, 3 Jul 2026 15:42:33 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: iio: adc: add maxim,max40080
To: Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260703102941.1141341-1-stefan.popa@analog.com>
 <20260703102941.1141341-2-stefan.popa@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260703102941.1141341-2-stefan.popa@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320368-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[baylibre.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:url,analog.com:email,baylibre.com:from_mime,baylibre.com:dkim,baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5877705953

On 7/3/26 5:29 AM, Stefan Popa wrote:
> Add device tree bindings for the Maxim MAX40080 bidirectional
> current-sense amplifier with a 12-bit ADC and an I2C/SMBus interface.
> 
> Signed-off-by: Stefan Popa <stefan.popa@analog.com>
> ---
>  .../bindings/iio/adc/maxim,max40080.yaml      | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> new file mode 100644
> index 0000000000000..4cda6cea6022e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/maxim,max40080.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim MAX40080 bidirectional current-sense amplifier
> +
> +maintainers:
> +  - Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> +  - Stefan Popa <stefan.popa@analog.com>
> +
> +description: |
> +  The MAX40080 is a high-precision, bidirectional current-sense amplifier with
> +  an integrated 12-bit ADC and an I2C/SMBus interface. It measures the voltage
> +  across an external shunt resistor and the input bus voltage, and stores the
> +  results in an internal FIFO.
> +
> +  Datasheet:
> +    https://www.analog.com/en/products/max40080.html
> +
> +properties:
> +  compatible:
> +    const: maxim,max40080
> +
> +  reg:
> +    maxItems: 1

Missing vdd-supply for power and interrupts for ALERT output.

> +
> +  "#io-channel-cells":
> +    const: 1
> +
> +  shunt-resistor-micro-ohms:
> +    description:
> +      Value of the current-sense shunt resistor connected between the IN+ and
> +      IN- inputs. Used to scale the reported current.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@20 {
> +            compatible = "maxim,max40080";
> +            reg = <0x20>;
> +            #io-channel-cells = <1>;
> +            shunt-resistor-micro-ohms = <100000>;
> +        };
> +    };


