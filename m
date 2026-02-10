Return-Path: <devicetree+bounces-264293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHKGBPT8imlyPAAAu9opvQ
	(envelope-from <devicetree+bounces-264293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:40:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D51118FB3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4FB9300FEE1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199BF341648;
	Tue, 10 Feb 2026 09:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CL5CIkkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9C340298
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716278; cv=pass; b=ipMBHv5l3OK6roN7cosWHtuNlFjKLfW/oF6P42MmOefs2gjyPhKPMFDdtNBVl/sZD8zL6qxSd+L2BYrRgBrswpXkty8OUEeI4JRh21T1nPq0NBNMipXZ4FSLzYSnCftuJRAbvB4FnNlMlm1hNki9Qrn4vmscjpMaD0bQ9LiQyQk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716278; c=relaxed/simple;
	bh=7DIMjFeeo3eAla/lQXJGSagwHaW1sDqxPorzkJ5QBmY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FlpaudkbFGcwxBwU5YsR/3mD+Zi9CgtUixs8wg4JjwGcokZkzIHEandK0GeG8tEVk7Q1wZfS3cxKt5VtGMFSid4gJaTlmKxiLncu/vWQii/arROa3PnpKJpnEO7MLZ8GsmYvr3uSGP66rjWN//7zDtdPUuxBwGqxqW71o6eqdxM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CL5CIkkK; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43591b55727so3411357f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:37:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770716274; cv=none;
        d=google.com; s=arc-20240605;
        b=IquhUEVoFtcDiOmdc/ArOIwQAb738eA8bpY74d2wF0Ur9QgPfV47+DWVw+f4rY6teE
         Go0M/e+mRMCJjGRX+EpUgYC1JsKYBZWhpqgDg7bZTJwBzFPn3E+5zrZ9cxISKKG92j2V
         PrFtJwiQ8UROvd/XgDgCTrLAIBSkFE3FiVlFkrjkG3JbL5k8+/vcoYKKuYXPcXeKphpo
         RcXzOW4sXGtv6xZnF8Tf6mLkYwu3KUATZKyPlHPSBAp+A1g8351JFrFMuOE+uGGQ7Tht
         pixWpHZsN/QN4UY9puIjEVGUWw4wTSf3Ud8PmNNwQ8MSrJkkUhhkopXpzUrDXLGxNDAM
         7JBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=u9Y37ln8xuGFDWitJXwAsleyIOk7cbpvtjoxWooyXWE=;
        fh=f1pmFvb8N2hunfZeGmuTTdSqmasSQWfWJW5brUThMDA=;
        b=acxlrtBEZZkK7Xcvf1by+SbZf3jfLo7TDv7enYQtRIeSt9iPYq93Wtrjdl9/7MOK8p
         OT9XfW5Fk2DIndvDHv9OrM0+3f8xYtVGA8r6tX9U3gFg2YATXAVRoODBVGJw+9gJa6wC
         PvaAwU+2reybJ0Fdt05TQRhkdiuTIaLcuFl6+Wax/g7W2P0KctRwDho2wTnaeU1l3iOU
         2guyHnY+g5VxXhKguLwQaABW3+zKFWaiQ2xQf55CuU5+hTB+sgE2l1z/l609+MXShh3A
         3Jc/sSMq87TpS2XGjEKuPJdwg1e9xDbaUjgUDzuwJN6kEM1/ApLl0O1nj159B2EcRXA3
         cezQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770716274; x=1771321074; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u9Y37ln8xuGFDWitJXwAsleyIOk7cbpvtjoxWooyXWE=;
        b=CL5CIkkK5e2UxEC7ncV9OTJi2bZl+QdhePyt+67TuSigo1gDjCyMbV7q9S3UPR9/3K
         55KqN1UTcCBw8Fg+3njGkLNfZTuWEhfQVmkeyOaXOwdMlop7uV1/SpA5I9u2KQV0CChN
         wb1QOKo6OO6hpbkrETmxdRE0W3jd7Xe/kTpUA3pQuG0R3CMma4UJXUo512OYyOcl/rV7
         m317H8PGsd+So0hcIwnESjlK2yRB3idQYtx3+ntJ77oHK3hvWIlZJPlviimoIHNLSJTr
         qj3vkqD0Cirj/mvNz8tOSpkpuGaEFef7snlEMPmUaXuCtv94eWS64RcBZyIn0L2/+eld
         Eyxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716274; x=1771321074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u9Y37ln8xuGFDWitJXwAsleyIOk7cbpvtjoxWooyXWE=;
        b=CZtcx6oZus5kK1E/jaImyk7vPjnBoFtsAGSJ81oRI93K2CXQNrHUbjmrCvHkZSPVRq
         WvY19Xnwg0R58/UsuraKXipwNjT7U9xUwULFBNwy/BTapUsgwAM4UXcsJ9TfGesKNz4z
         TUbj6zSYrGFkGdUd/5+9W4DJBFGs8cgTmfPpknT8So6t7QBQopPwU/rOSVyO3q/uohmV
         7VBpMpPsVG66fX04aV5P/+6ocZfRUSMsfQdMlgsd/xCzSq7N4lwq+UL6qkKEw2yldEBx
         TnSprBH3o/9e5jdR9Yr13t4EJKbMVEMU8B/palTtiVcf/ibzuSPzVL++WrfxbYGGy75X
         zPsw==
X-Forwarded-Encrypted: i=1; AJvYcCWstHXjua1ajzU6JdqFqU3s3xDaoFFdfvitdjC13HJjt0j5mXlpUF9uC2wvd9GVPq/YBKZjlmM4+MYY@vger.kernel.org
X-Gm-Message-State: AOJu0YzZdd3pRg7WjSJZrD+oBuvCbepSUq9QIsD64HJ64YJYfqbCUeMd
	kJWhzqi+xaxteEHEWyH0TTcYhNyY+9qbvSvLzaQ7RQRYpTibwoMQh3GfTWxvLSlXTia1aYcdwPN
	rs5zPdnOY6+kBt9ZkPtbHnbo2NJA9gJY=
X-Gm-Gg: AZuq6aLmhlTC2qWwFHqQnv+0gPKgwBLPBpZobeDRr0phT5sL8nR6YO0PFgue2I/t9Ga
	bvapZkVlwydU7bRLsDlvQl5vL6SUdSTBzoCdpnXa7CBTESW3B4Kgfn2pKA6V/n4JRpo1YCr1DNm
	0T1UoBW6viSkBL2q0UWW/s1nBklE0Sc68P3wsrbF/gv7V9r1F+gZHTrHI9xd2qtU3SQpKNdYeIu
	lzWy0ElkZZjHwqltGcT12wCMlyRAzA+Koz/Z5JtWqGCfCDmtB+Z3F0qJM9+6tc1HhZOKDnEtBMk
	CK3enhxfvgg5T6SXpIE=
X-Received: by 2002:a5d:5f88:0:b0:435:8e14:9877 with SMTP id
 ffacd0b85a97d-436293b11bcmr21266056f8f.60.1770716274221; Tue, 10 Feb 2026
 01:37:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-4-clamor95@gmail.com>
 <20260210-sexy-grumpy-sambar-44edd2@quoll>
In-Reply-To: <20260210-sexy-grumpy-sambar-44edd2@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 11:37:42 +0200
X-Gm-Features: AZwV_QgL826wb_3IChyEYnKxPyG1ZElirm7op-wvlPZ1EK88mg4sg0InNYKSJlk
Message-ID: <CAPVz0n3fizf=r58Fr4YQ6pnjHq5p-7yFz95obss6w6x0bfgnDg@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] dt-bindings: mfd: document ASUS Transformer EC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sebastian Reichel <sre@kernel.org>, =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264293-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,devicetree.org:url]
X-Rspamd-Queue-Id: A2D51118FB3
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 11:22 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Feb 09, 2026 at 12:44:01PM +0200, Svyatoslav Ryhel wrote:
> > Document embedded controller used in ASUS Transformer device series.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../devicetree/bindings/mfd/asus,ec.yaml      | 152 ++++++++++++++++++
> >  1 file changed, 152 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mfd/asus,ec.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/asus,ec.yaml b/Docum=
entation/devicetree/bindings/mfd/asus,ec.yaml
> > new file mode 100644
> > index 000000000000..1d1a62761b71
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/asus,ec.yaml
>
> EC do not go to MFD, but to dedicated directory (there is such).
>

Noted

> > @@ -0,0 +1,152 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/asus,ec.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASUS Transformer's Embedded Controller
> > +
> > +description:
> > +  Several Nuvoton based Embedded Controller attached to an I2C bus,
> > +  running a custom ASUS firmware, specific to the Asus Transformer
> > +  device series.
> > +
> > +maintainers:
> > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
>
> Drop oneOf
>

Noted

> > +      - enum:
> > +          - asus,ec-pad  # Pad part of Asus Transformer
> > +          - asus,ec-dock # Dock part of Asus Transformer
>
>
> Compatibles are way too generic. "ec" basically means you document all
> Asus EC, which is for sure not true. You need specific compatible for
> this specific model.
>

Asus were not so generous to provide more specific data, they call
there controllers asusdec and asusped in their sources.

> Missing blank line.
>

noted

> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  request-gpio:
>
> gpio is deprecated. gpios, look at any other binding.
>

noted

> > +    maxItems: 1
> > +
> > +  asus,dockram:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: I2C device used to access power related functions.
> > +
> > +  asus,clear-factory-mode:
> > +    type: boolean
> > +    description: clear Factory Mode bit in EC control register
>
> Why would this be a static/fixed property over lifecycle of all devices?
>

Specify pls.

> > +
> > +  battery:
> > +    type: object
> > +    $ref: /schemas/power/supply/power-supply.yaml
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        const: asus,ec-battery
> > +
> > +    required:
> > +      - compatible
> > +
> > +  charger:
> > +    type: object
> > +    $ref: /schemas/power/supply/power-supply.yaml
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        const: asus,ec-charger
> > +
> > +      monitored-battery: true
> > +
> > +    required:
> > +      - compatible
> > +
> > +  keyboard-ext:
> > +    type: object
> > +    description: top row of multimedia keys
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        const: asus,ec-keys
> > +
> > +    required:
> > +      - compatible
> > +
> > +  led:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        const: asus,ec-led
> > +
> > +    required:
> > +      - compatible
> > +
> > +  serio:
>
> All of these children are pointless - no resources. Drop all of them,
> it's btw explicitly documented rule in writing bindings.
>

They are all needed to be able to disable them individually from the
device tree if needed.

> Best regards,
> Krzysztof
>

