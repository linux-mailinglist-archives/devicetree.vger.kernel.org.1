Return-Path: <devicetree+bounces-264349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD9xGA4Qi2l/PQAAu9opvQ
	(envelope-from <devicetree+bounces-264349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:01:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F22D5119EDB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8469E3037430
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C5D3612F7;
	Tue, 10 Feb 2026 11:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IB5Zvk76"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DB3318EEC
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770721208; cv=pass; b=cDKQ7VDRf3TvoGJ7kAfc5cn5hR7Jbt8KosYewHQAEm06K0R65KgJ8yQlN7Bz0hBmmog5Y2O3a/BkWDptPquPWg1jK2OLACx28EyBRt+qSY1DWyTIZP9UvX95mH732hpn1yTUY5cLngecoPNq85K9SMuJme54IIwnlM/9P1MWFOM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770721208; c=relaxed/simple;
	bh=1OYwpF7TO7xoKHzCuy52J4aRjvgLTtucW1e1JzBZV/4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dL1icsC77AOavZVekkmkrcOEsqZG2foZYUSx0k3FuKdcPAfcj258VKpGZspm0mDG8Pm6ereQ7+pb37f3bB/1CJFCSwWnASfCLvRhPOoWmIksHeVFWmc7vpva6zEsw52gIlYiN7xemF8nR5ots2Vx5lwPo4j15D3efHUTzNsfy5M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IB5Zvk76; arc=pass smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-43284ed32a0so3704466f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:00:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770721205; cv=none;
        d=google.com; s=arc-20240605;
        b=hmXcgySCtK6HeIGL/G4WJmVavQNAdNmyEdAuLXD21JN9P+egkXym/z+TkI28NQVjHE
         Y5LL9/Gt8O7HtOJoBakJtMhnNGaDP/CvXZ66n1UPh5HCX3b78ojZGoOGiMWFsGYDoOu3
         e+5ILAhPlFkJp85Fkmkwn3fVC6AhbC6w5pld0EZVhaHdEmoF3L2EhFJYgKGOXoRFCDZt
         jf9AiponyhK01IwoDmUvc5rOUsUSXNVUoE9qWjd8KJSBc5vx4YQWK2TTsCB9fOedUg/T
         oSsWPfmlyU9+J98q5beHFDMFjgR0aS2tVD/REKAAxYMH1ti2O3iPv4Y3jakhFR/vMEHW
         3rOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OfSBwZ5L6uqnAzvcQ05vMPY2K5kDs14EhIIFhtKNvQM=;
        fh=9S8Ul6i8k2zSs433lAJq03+UMdWKYqajzu9UXWoiziE=;
        b=dBFEQXfdxIqWmrrCrh/CC+sbfochb3lUuV069cM51l4KVmyUfh5gBuiZZPeuyopFnu
         SH4oS9C5u2UCCY/vvq4Yf1b63GJ1sWeGmMK87MDAr+J2ESFT/5qpqublbwdN0mgNoc3X
         2AQ80wsc0TOjUKjvqYLq7YCfL657Ws839ddQb+fZKs4EI/eUa/5ZB0iBaNZhkkD5TW2O
         Rb81NQRtW5gHIk9q9ur3D16GGA51ykVLRN9H4pD29p5RltDhP+Hdt0GpJwVRJ8LBAMFM
         AKRi1trJp1v5afSbKyQztqTWJcpVgTG5j9ci2Ubcqbs2fFz+XLiAB73RlOTtDbU9NzMQ
         g02g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770721205; x=1771326005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfSBwZ5L6uqnAzvcQ05vMPY2K5kDs14EhIIFhtKNvQM=;
        b=IB5Zvk76VicVMOwP5OTF/oc7e2kErV3U3/Z8I2dJzS8UzMScFyV6fILwusyIvugkAi
         bsYQlBd7/VZYsx2dxt1iCQAo3DTZOLJA4ls+e4a/xV+oqCA0SXmFfwLoy0YY8OtfV0BX
         lunMzkjiHvk5lqRF427yB+uAP8t4ARoplWh7XfzS5GNfJkQq9/sGj4VKAdOfpthtJ/J4
         xCKB9g27f1mJHwljbsZ8zJzZ6LaZz/LIKQzstixgGD8SlfVJI71D6aHpcEMFUbbKKjoN
         ScE4W6gNG9wLGZarv4lah+ED/DPqrQm1hx29hCqfLlxaWMP5jQwWo6VJDV/bcOFa8Pwu
         j9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770721205; x=1771326005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OfSBwZ5L6uqnAzvcQ05vMPY2K5kDs14EhIIFhtKNvQM=;
        b=TRF0d/lKI/ztnt/3ZjeV0yztac8R+o97cSoR+AwASYbSsi0DXkrPZQYYvfKrRchYU9
         vlUR1/LSL/jQDvnRMT/uh2ztdvsj5s4GM15B6YI9ZnqaXdoGzWw05VmVRleR9FSjpAlj
         EYKzs2PZ7RcPqxjpg+oGCv+1vSASu4i0dzk2IYO5fnUoH8dC6qwI0RN5wFFSucSncr+k
         aHT5dCcwanwJuppNy5EtSAX+uCeGQDXDEReKNudTfJj2ZpG2UtgcLdtR7pLxR8rkXHGd
         lRfadihZSwI2Em4HpkZTZcrj/C9hA8/boSt20oh7QhAnpZBf4nGnWs9p/DSX4R3on/07
         vTIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcoZnNJ0/lwmVCul0ywoejObTRhZ4lNf2H6y/T1cnAKkNoz+zk+LoyCemNrDVfW00rrrVdZZ05AfGs@vger.kernel.org
X-Gm-Message-State: AOJu0YzBFT98Ns8v9xyBazenDylaOarpRg+bnkv8wKSTIAlHAfHhaRLK
	Ke5OAt6qP1lbSswLEwWRjVXnQL65EY3NyfJxd6DMTly7LdqdBgajcHz2cZoNV3ef1vDqwlTqSBD
	465lUrCixMMczD5xwR1WbryentK8taGU=
X-Gm-Gg: AZuq6aIVykrRj9KY8HluL22s5Y3iXYXwPYocYMXSpdQI5Bk26x7mxJiJQtZeFw8RMYO
	D48BR4ZxTdcKr2e8DCLr2aPHlf6volGBuVRp+2zTHSkg/14h9qS13vfvi37eZIfXuFgkxQC5jFh
	9YQutPzGTPRGRJkHgvv5StpONlU810icYXVdF5raouQ1LvLmmG6QopSGEJR4vScwIJmlTsaLgPz
	tybMWZ+wbSCam1uVaAuJCFdZJq8J2D0ChX0kAxfqWuxEVusww6kuNBW8w2wzKZ3N9nHLs+4hkqA
	dhf1IyUI
X-Received: by 2002:a05:6000:22c4:b0:436:38a7:b486 with SMTP id
 ffacd0b85a97d-4377a5021c6mr2312017f8f.8.1770721204589; Tue, 10 Feb 2026
 03:00:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-4-clamor95@gmail.com>
 <20260210-sexy-grumpy-sambar-44edd2@quoll> <CAPVz0n3fizf=r58Fr4YQ6pnjHq5p-7yFz95obss6w6x0bfgnDg@mail.gmail.com>
 <d1973810-d3f5-4ed7-ba0f-6bf93c1c7f3d@kernel.org>
In-Reply-To: <d1973810-d3f5-4ed7-ba0f-6bf93c1c7f3d@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 12:59:53 +0200
X-Gm-Features: AZwV_QjgDJzQTiiKU4SQZozTCvRGlQSh-OCg1lxd7C4cK92P8FnftCEFnLl9FiU
Message-ID: <CAPVz0n1foyy9g7MAurSAyLCUHTzrPPu0ceqy9YpcDA9uzgjGng@mail.gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[devicetree.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264349-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F22D5119EDB
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 12:48 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 10/02/2026 10:37, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 11:22 =
Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On Mon, Feb 09, 2026 at 12:44:01PM +0200, Svyatoslav Ryhel wrote:
> >>> Document embedded controller used in ASUS Transformer device series.
> >>>
> >>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >>> ---
> >>>  .../devicetree/bindings/mfd/asus,ec.yaml      | 152 ++++++++++++++++=
++
> >>>  1 file changed, 152 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/mfd/asus,ec.yam=
l
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mfd/asus,ec.yaml b/Doc=
umentation/devicetree/bindings/mfd/asus,ec.yaml
> >>> new file mode 100644
> >>> index 000000000000..1d1a62761b71
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/mfd/asus,ec.yaml
> >>
> >> EC do not go to MFD, but to dedicated directory (there is such).
> >>
> >
> > Noted
> >
> >>> @@ -0,0 +1,152 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/mfd/asus,ec.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: ASUS Transformer's Embedded Controller
> >>> +
> >>> +description:
> >>> +  Several Nuvoton based Embedded Controller attached to an I2C bus,
> >>> +  running a custom ASUS firmware, specific to the Asus Transformer
> >>> +  device series.
> >>> +
> >>> +maintainers:
> >>> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    oneOf:
> >>
> >> Drop oneOf
> >>
> >
> > Noted
> >
> >>> +      - enum:
> >>> +          - asus,ec-pad  # Pad part of Asus Transformer
> >>> +          - asus,ec-dock # Dock part of Asus Transformer
> >>
> >>
> >> Compatibles are way too generic. "ec" basically means you document all
> >> Asus EC, which is for sure not true. You need specific compatible for
> >> this specific model.
> >>
> >
> > Asus were not so generous to provide more specific data, they call
> > there controllers asusdec and asusped in their sources.
>
> Look how other ECs are called. Your device is not "", but e.g.
> "Transformer".
>
> >
> >> Missing blank line.
> >>
> >
> > noted
> >
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +
> >>> +  interrupts:
> >>> +    maxItems: 1
> >>> +
> >>> +  request-gpio:
> >>
> >> gpio is deprecated. gpios, look at any other binding.
> >>
> >
> > noted
> >
> >>> +    maxItems: 1
> >>> +
> >>> +  asus,dockram:
> >>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>> +    description: I2C device used to access power related functions.
> >>> +
> >>> +  asus,clear-factory-mode:
> >>> +    type: boolean
> >>> +    description: clear Factory Mode bit in EC control register
> >>
> >> Why would this be a static/fixed property over lifecycle of all device=
s?
> >>
> >
> > Specify pls.
>
> Provide rationale why we need to clear it every time, not once. Or any
> other rationale why we would accept that property.
>

Cause it is done by original Asus code and Asus did not provide
schematic or any data apart from downstream source regarding this EC.

> >
> >>> +
> >>> +  battery:
> >>> +    type: object
> >>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>> +    unevaluatedProperties: false
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        const: asus,ec-battery
> >>> +
> >>> +    required:
> >>> +      - compatible
> >>> +
> >>> +  charger:
> >>> +    type: object
> >>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>> +    additionalProperties: false
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        const: asus,ec-charger
> >>> +
> >>> +      monitored-battery: true
> >>> +
> >>> +    required:
> >>> +      - compatible
> >>> +
> >>> +  keyboard-ext:
> >>> +    type: object
> >>> +    description: top row of multimedia keys
> >>> +    additionalProperties: false
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        const: asus,ec-keys
> >>> +
> >>> +    required:
> >>> +      - compatible
> >>> +
> >>> +  led:
> >>> +    type: object
> >>> +    additionalProperties: false
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        const: asus,ec-led
> >>> +
> >>> +    required:
> >>> +      - compatible
> >>> +
> >>> +  serio:
> >>
> >> All of these children are pointless - no resources. Drop all of them,
> >> it's btw explicitly documented rule in writing bindings.
> >>
> >
> > They are all needed to be able to disable them individually from the
> > device tree if needed.
>
> They should not be disabled from DT, so they are not valid here. The
> given EC for given device is fixed/static. Does not change.
>

Have you considered a possibility that function may be
disabled/unrouted within the controller. By the vendor.

>
> Best regards,
> Krzysztof

