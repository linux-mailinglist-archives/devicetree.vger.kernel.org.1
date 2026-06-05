Return-Path: <devicetree+bounces-307523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hg/VHugkI2qbjQEAu9opvQ
	(envelope-from <devicetree+bounces-307523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:35:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 764A864AF9C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:35:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=Shwld+Cp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307523-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307523-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF3CF300BC7A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 19:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A851937B003;
	Fri,  5 Jun 2026 19:28:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound7.mail.transip.nl (outbound7.mail.transip.nl [136.144.136.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1A536F918;
	Fri,  5 Jun 2026 19:28:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780687702; cv=none; b=BLDgYBlG9BKB9tvWajvo3Fc9VlzLV146aNFOonUygK4xphvlJgfYyh80Eo+d3XufH5BPrVfftDsi20GXHbT2Q8kulq7i1ZsG0/OuoChgRk/FlEzH8J/zZVAPCFS99Ca/2FB3Nc2z4WLFQ+Da/tbsgdYe4cTPhGuG1xXYx/hNXGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780687702; c=relaxed/simple;
	bh=QKE8vMgCB3mQJZMfmpaf0wSt/1YjPMFLzPhfcIPAIIQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=RyPkwt4OS9V17W33nOZy1Pz/9RdLXUcZiEuexCW3mWM827oXfIHOd/AEFQbcYr6VbAV5us9dzTmkcUOPWb0BcU2SBSYWmRmrljdNHfc8UVaK/MZv/EPWCCpF9A6c2ezritaJyJDzY3x0Z9PHbaPqpm5Sh1X5UFnlWt4DUwDB4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=Shwld+Cp; arc=none smtp.client-ip=136.144.136.7
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound7.mail.transip.nl (Postfix) with ESMTP id 4gXBKw49CvzQvv7c;
	Fri,  5 Jun 2026 21:28:04 +0200 (CEST)
Received: from transip.email (unknown [10.103.8.120])
	by submission11.mail.transip.nl (Postfix) with ESMTPA id 4gXBKv6y0qz3R3nyw;
	Fri,  5 Jun 2026 21:28:03 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 05 Jun 2026 21:28:03 +0200
From: me@herrie.org
To: Jonathan Cameron <jic23@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Herman van Hazendonk
 <github.com@herrie.org>, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tomasborquez13@gmail.com, masneyb@onstation.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: light: isl29018: add
 isil,cover-comp-gain
Reply-To: github.com@herrie.org, me@herrie.org
Mail-Reply-To: github.com@herrie.org, me@herrie.org
In-Reply-To: <b6919a62f06ad8e4e80232d9b2a0e706@herrie.org>
References: <20260604100617.3486541-1-github.com@herrie.org>
 <20260604100617.3486541-3-github.com@herrie.org>
 <20260604-energy-lid-e7949164431a@spud>
 <20260605140449.1d7538ee@jic23-huawei>
 <b6919a62f06ad8e4e80232d9b2a0e706@herrie.org>
User-Agent: Webmail
Message-ID: <bb7c65095dc53dd8723c1ecd9c33796c@herrie.org>
X-Sender: me@herrie.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780687684; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=RM1UwQ2hNqp1x3qGmKLfqqTeS2uUEn+qa002FsSD4pE=;
 b=Shwld+CpxgZJxZhjTQ20oe5/pDTHap05B3v+XzOZ89JH+bXc2VvAAoGx5i0oZ+htMXhcJc
 3vU0XZ9dnd4SVKQ9gBd3c98FtpGLz7EBr/xvliz/uf/atPp9OASd0LpyHBVUNEz9g94SA5
 kE4l0ROb6j8DuRS9ASQPt76TKdjNUd4HQoz/SjGwQhMkP1h6z4QmoXWK2CF+HJ9mfRPSzc
 mcKoB5XkMyR7Hi/MRgtSikhEQFiDu1cNrC1iJKpPh9KHVzj9tFYzttZM7a6x42MKZtpsia
 cTv9j2NZ3Aw/B7R9NXxgfEUaaemOV0Ryxi2pbQgZ9vjJ13INoXiaBHlR50gpRA==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.15 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307523-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[me@herrie.org,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[herrie.org];
	FORGED_SENDER(0.00)[me@herrie.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:conor@kernel.org,m:github.com@herrie.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,herrie.org,baylibre.com,analog.com,gmail.com,onstation.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[github.com@herrie.org];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	REPLYTO_DOM_EQ_FROM_DOM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[herrie.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:dkim,herrie.org:mid,herrie.org:email,herrie.org:from_mime,herrie.org:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 764A864AF9C

On 2026-06-05 15:18, me@herrie.org wrote:
> On 2026-06-05 15:04, Jonathan Cameron wrote:
>> On Thu, 4 Jun 2026 18:01:08 +0100
>> Conor Dooley <conor@kernel.org> wrote:
>> 
>>> On Thu, Jun 04, 2026 at 12:06:16PM +0200, Herman van Hazendonk wrote:
>>> > Document the new optional property that seeds the ISL29018 calibration
>>> > scale factor at boot from firmware, allowing boards with tinted cover
>>> > glass to ship with correct luminance readings without a userspace helper.
>>> >
>>> > The value is a positive integer (minimum 1, maximum 65535) that is
>>> > multiplied with the raw lux reading.  Userspace can still override it
>>> > at runtime through in_illuminance0_calibscale.
>>> >
>>> > Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
>>> > ---
>>> >  .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
>>> >  1 file changed, 13 insertions(+)
>>> >
>>> > diff --git a/Documentation/devicetree/bindings/iio/light/isl29018.yaml b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>>> > index 0ea278b07d1c..92ea2742bbd3 100644
>>> > --- a/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>>> > +++ b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>>> > @@ -34,6 +34,19 @@ properties:
>>> >    vcc-supply:
>>> >      description: Regulator that provides power to the sensor
>>> >
>>> > +  isil,cover-comp-gain:
>>> > +    description: |
>>> > +      Multiplier applied to the ambient-light reading at startup to
>>> > +      compensate for optical loss in the board's cover glass. Boards
>>> > +      that mount the sensor under a tinted or coated window typically
>>> > +      need a value between a few and a few hundred.
>> 
>> Is it useful to support decimal points on these values?  The userspace 
>> interface
>> does and you mention the 'right' answer might be only a few which 
>> means precision
>> at that range will be terrible - less of an issue if 100s!
>> 
>> Thanks
>> 
>> Jonathan
>> 
> Hard to say, my old HP TouchPad needs 100 as a value here (taken from 
> legacy 2.6.35
> kernel and binaries). So we probably don't need precision, but I have 
> no other
> references to substantiate.
> 
> Thanks
> Herman
Scratch that. Did some more research. Proof is in the legacy webOS 
binaries:

What legacy webOS actually does here:

1. Per-device calibration via factory token reads an ALSCal token from 
system storage
containing JSON with calibration points at lux_0, lux_50, lux_100, 
lux_400 (measured
ADC counts at known reference illuminance levels).

2. Computes a floating-point ratio AlsToLux_Ratio_WhiteLED = average of 
expected_lux /
measured_count across the JSON calibration points. This is a real 
number, not an integer.

3. Adjusts for light source spectrum at runtime detects illuminant type 
from ALS:IR
ratio, then applies a fractional spectrum correction:
Fluorescent above 100 counts: ratio x 0.4652
Incandescent above 700 counts: ratio x 0.4
Incandescent 50-100 counts:    ratio x 0.9
Fluorescent < 50 counts:       ratio x (-0.000724·N + 0.7463)

4. Final lux = ALSCount / spectrum_corrected_ratio - a true 
floating-point division.

Implications

- The "right" cover-comp value is per-device factory-measured, not 
per-board. Different
units off the same production line have different optical transmission 
due to coating
tolerance.
- The values are fractional by nature. Examples from the legacy code: 
0.4652, 0.7463,
0.8333. None are integers.

The ISL29023 datasheet itself says nothing about cover compensation - 
it's strictly
board-level optical correction. So there's no "right" answer from the 
chip side;
it's whatever the board's cover glass + coating attenuates.

ALSCal values found on the particular device:

{"lux_50":{"c":31}, "lux_100":{"c":58}, "lux_400":{"c":164}}

This is device specific TouchPad's factory calibration:
   - At 50 lux, ADC reads 31 counts  lux/count = 1.613
   - At 100 lux, ADC reads 58 counts lux/count = 1.724
   - At 400 lux, ADC reads 164 counts  lux/count = 2.439

Note the ratio isn't constant - the response is mildly non-linear, but 
per the legacy
code the driver computes the average ratio as the calibration:

   ratio = (1.6129 + 1.7241 + 2.4390) / 3 = 1.9253 lux/count

Independent verification:
   - At calibscale=34: lux = 1295
   - Implied raw count: 1295 / (34 x 0.015258) = 2496 counts
   - Applying legacy formula: 2496 / 1.9253 = 1296.4 = 1295

The factory-calibrated value for this specific TouchPad is 34.04 (not 
100). Per-point
calibscale values from the ALSCal JSON:

Cal point‚ lux/count ratio‚ Equivalent calibscale
lux_50    ‚ 1.6129          ‚ 40.64
lux_100   ‚ 1.7241          ‚ 38.01
lux_400   ‚ 2.4390          ‚ 26.87
average   ‚ 1.9253          ‚ 34.04

What this means concretely

1. Decimal precision is necessary, not nice-to-have. Real per-device 
factory values
span 26.9 - 40.6 across the chip's response curve. A single scalar 
approximation costs
precision; restricting to integer compounds it.

2. Updated v5 plan: switch to two-cell <int micro> for fractional 
values, and change
the tenderloin DTS default from <100> to <34 040000> (or close to that).

Thoughts on this?

Thanks,
Herman


>> 
>> 
>>> 
>>> > The value seeds
>>> > +      in_illuminance0_calibscale, so it can still be retuned at
>>> > +      runtime through sysfs.
>>> 
>>> Delete this, driver implementation stuff isn't relevant to the
>>> devicetree binding.
>>> 
>>> With that gone,
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> 
>>> pw-bot: changes-requested
>>> 
>>> Cheers,
>>> Conor.
>>> 
>>> > +    $ref: /schemas/types.yaml#/definitions/uint32
>>> > +    minimum: 1
>>> > +    maximum: 65535
>>> > +    default: 1
>>> > +
>>> >  required:
>>> >    - compatible
>>> >    - reg
>>> > --
>>> > 2.43.0
>>> >

