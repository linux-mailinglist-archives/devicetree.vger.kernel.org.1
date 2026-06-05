Return-Path: <devicetree+bounces-307429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fy8GNsDOImq1dwEAu9opvQ
	(envelope-from <devicetree+bounces-307429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:27:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FFC64887B
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:27:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=iuOBXaDG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307429-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307429-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B22300CC14
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C3740E8D1;
	Fri,  5 Jun 2026 13:18:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl [149.210.149.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FF440E8C0;
	Fri,  5 Jun 2026 13:18:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780665537; cv=none; b=UiJIapdWP0lZU5MMaB5mlJTowKDzDracyFVDTkYlBUMjXRV+XNnot5VZ+F2smPcQ44HdeG1isfjyFO+NzaO9/cU6K00OrYWFKRRxE4QYJV7sUuibJkd+jILv8u5Mwr6XWfgVZPIHwok54LTjp8WCY3KLBCBZCEdxRJFvfwNZHo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780665537; c=relaxed/simple;
	bh=RwrbHH9+9wSryIYzjtFHFD7K/OAgolLTQNAo59cIB1A=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=EzzEoUgbmdWJS1lv0j3fzdY3E0BPd6ylA/gr0M6u+/0sIBejq1PURC/pZMFNQ7DY7Z3harB4NIAmDbb+she2sIBpKwEq9/1M9S/PUlpoEH6U7oQkOl2F3BhjaQ6t1p5WX/aBV8J4MQo6r5OSGJrQrdigZ0mAfrSBPRpi2QeqT5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=iuOBXaDG; arc=none smtp.client-ip=149.210.149.73
Received: from submission14.mail.transip.nl (unknown [10.103.8.165])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 4gX27l3ZG9zYdrq;
	Fri,  5 Jun 2026 15:18:43 +0200 (CEST)
Received: from transip.email (unknown [10.103.8.120])
	by submission14.mail.transip.nl (Postfix) with ESMTPA id 4gX27j5kYqz3RgQtt;
	Fri,  5 Jun 2026 15:18:41 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 05 Jun 2026 15:18:41 +0200
From: me@herrie.org
To: Jonathan Cameron <jic23@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Herman van Hazendonk
 <github.com@herrie.org>, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tomasborquez13@gmail.com, masneyb@onstation.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: light: isl29018: add
 isil,cover-comp-gain
Reply-To: github.com@herrie.org
Mail-Reply-To: github.com@herrie.org
In-Reply-To: <20260605140449.1d7538ee@jic23-huawei>
References: <20260604100617.3486541-1-github.com@herrie.org>
 <20260604100617.3486541-3-github.com@herrie.org>
 <20260604-energy-lid-e7949164431a@spud>
 <20260605140449.1d7538ee@jic23-huawei>
User-Agent: Webmail
Message-ID: <b6919a62f06ad8e4e80232d9b2a0e706@herrie.org>
X-Sender: me@herrie.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission14.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780665523; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=09KWYWN3aDGlrvx5eZ+tQ7JdO5jM2Se3rJrxGagpMz8=;
 b=iuOBXaDGiRGXGJzsHc1qGmOqznJVr6hvFDmx4hCZUOdCIIIAsgq6MI4zq2KnGPtQ03O6Vi
 wdV+Hzk0jWaZOMDhsedGGatDEotRQQeQ4FB9Cp/iOOxiEUyeGzV1F3dld5vCyH7IViK0r3
 2JKajZK5BYRC7e5iFddmqRI0B2u8rwNLStv8s+LGMIdVSN6rTcY4oDRLoXcbQl8NfZybWt
 QO/62GcfjM3qXJc2qg4ybqsmnSi0W3WQUKZYd9htvBpRGYfc9Byoy9JTxbUyDLbvwfeo6i
 96yYwLze4e01yZ+y+cmMpNAGaK0xsN3ptYNAQMrwF3hnwLFQY97J7VPDy5u/Sg==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.15 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307429-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 30FFC64887B

On 2026-06-05 15:04, Jonathan Cameron wrote:
> On Thu, 4 Jun 2026 18:01:08 +0100
> Conor Dooley <conor@kernel.org> wrote:
> 
>> On Thu, Jun 04, 2026 at 12:06:16PM +0200, Herman van Hazendonk wrote:
>> > Document the new optional property that seeds the ISL29018 calibration
>> > scale factor at boot from firmware, allowing boards with tinted cover
>> > glass to ship with correct luminance readings without a userspace helper.
>> >
>> > The value is a positive integer (minimum 1, maximum 65535) that is
>> > multiplied with the raw lux reading.  Userspace can still override it
>> > at runtime through in_illuminance0_calibscale.
>> >
>> > Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
>> > ---
>> >  .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
>> >  1 file changed, 13 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/iio/light/isl29018.yaml b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>> > index 0ea278b07d1c..92ea2742bbd3 100644
>> > --- a/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>> > +++ b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
>> > @@ -34,6 +34,19 @@ properties:
>> >    vcc-supply:
>> >      description: Regulator that provides power to the sensor
>> >
>> > +  isil,cover-comp-gain:
>> > +    description: |
>> > +      Multiplier applied to the ambient-light reading at startup to
>> > +      compensate for optical loss in the board's cover glass. Boards
>> > +      that mount the sensor under a tinted or coated window typically
>> > +      need a value between a few and a few hundred.
> 
> Is it useful to support decimal points on these values?  The userspace 
> interface
> does and you mention the 'right' answer might be only a few which means 
> precision
> at that range will be terrible - less of an issue if 100s!
> 
> Thanks
> 
> Jonathan
> 
Hard to say, my old HP TouchPad needs 100 as a value here (taken from 
legacy 2.6.35
kernel and binaries). So we probably don't need precision, but I have no 
other
references to substantiate.

Thanks
Herman
> 
> 
>> 
>> > The value seeds
>> > +      in_illuminance0_calibscale, so it can still be retuned at
>> > +      runtime through sysfs.
>> 
>> Delete this, driver implementation stuff isn't relevant to the
>> devicetree binding.
>> 
>> With that gone,
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> 
>> pw-bot: changes-requested
>> 
>> Cheers,
>> Conor.
>> 
>> > +    $ref: /schemas/types.yaml#/definitions/uint32
>> > +    minimum: 1
>> > +    maximum: 65535
>> > +    default: 1
>> > +
>> >  required:
>> >    - compatible
>> >    - reg
>> > --
>> > 2.43.0
>> >

