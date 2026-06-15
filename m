Return-Path: <devicetree+bounces-311873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5HSQJjThL2qHIQUAu9opvQ
	(envelope-from <devicetree+bounces-311873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:25:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4642F685B6F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:25:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=herrie.org header.s=transip-a header.b=gXMH3QkN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311873-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311873-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4E693300A4AF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8133E4C81;
	Mon, 15 Jun 2026 11:25:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from outbound3.mail.transip.nl (outbound3.mail.transip.nl [136.144.136.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6DA3E451D;
	Mon, 15 Jun 2026 11:25:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781522733; cv=none; b=kSbVDR5WW5NF22vpMRX6uB+4xcSCtHul7M6xntHuv2odzvWv/KJvHqfmJ7VPRxl5DN9nM42k7n0Smzcukms8PO8iq91Zfeeri5T97yR0si/BHFtYwSviIkR8cY1dyNWMTHAd1zjzqXG4DgWBbFrMSaHSziRzdgLhdd+gGT1xpyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781522733; c=relaxed/simple;
	bh=cQH1sK9ywuIvxsElmR4fYXGHy8mHdAWvIiisK90YMoU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=f/FZqcwrsczlmCcS6aznT9vskSSysXvQ+aPfVTt+adcMYFg5aNsIK/l+tJuAv20XTDV+LVbahTLS1LuTtcDyvADPctV30TWO0Cq3zHPOJOB3KNhMhEI4O0SZd5QDtlt5mzrNrqsY451JxUsK5Umzw0QbOWIteqN7KiwS4k63d0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=herrie.org; spf=pass smtp.mailfrom=herrie.org; dkim=pass (2048-bit key) header.d=herrie.org header.i=@herrie.org header.b=gXMH3QkN; arc=none smtp.client-ip=136.144.136.12
Received: from submission3.mail.transip.nl (unknown [10.100.4.72])
	by outbound3.mail.transip.nl (Postfix) with ESMTP id 4gf6yY6295znJN6;
	Mon, 15 Jun 2026 13:16:53 +0200 (CEST)
Received: from transip.email (unknown [10.100.4.34])
	by submission3.mail.transip.nl (Postfix) with ESMTPA id 4gf6yX3fmPzf52bR;
	Mon, 15 Jun 2026 13:16:52 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 15 Jun 2026 13:16:52 +0200
From: me@herrie.org
To: Jonathan Cameron <jic23@kernel.org>
Cc: Herman van Hazendonk <github.com@herrie.org>, linusw@kernel.org,
 denis.ciocca@st.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, sanjayembeddedse@gmail.com, maudspierings@gocontroll.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: iio: st,st-sensors: add st,fullscale-mg
Reply-To: github.com@herrie.org
Mail-Reply-To: github.com@herrie.org
In-Reply-To: <20260614194442.61191f68@jic23-huawei>
References: <cover.1780652883.git.github.com@herrie.org>
 <e49aba850b1f48ea00089e7142c00584541001eb.1780652883.git.github.com@herrie.org>
 <20260614194442.61191f68@jic23-huawei>
User-Agent: Webmail
Message-ID: <6475e269775789d61ade326190b0d234@herrie.org>
X-Sender: me@herrie.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission3.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1781522212; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=bqvfzkE4HUcU/icIm8AEDN04DpjOTFRGQukbi8ELWCs=;
 b=gXMH3QkNxJccoPsoWEeFIsHrljeeC2nSqfX/VeSn+mAXG75V803+0g8Y4Inw527neDtcXH
 MwV5D/qA9fddFOCTyufXUdHHJLHeWaiq089QLjo07vvaT1mIp/p54I8+QvoW32ZAuQ8t+v
 aGvXRT70YlQ9oFr/xYmkvC0vywePzHspADUMX9WU0jeesw1ocl5JwzOA8IF2bFtiGOGHam
 8ZN88pUcbl3bBq0DCoN89GT05UUykpAFCbiEvOD41U9FHCoF2thaDX5AnMd6xVkTTK0aDO
 yhU2RGpm3NiX45Whyto9eB23HAw+oX5WAAxEscX0oKhzho/ZmXA+CCvMV31kUA==
X-Report-Abuse-To: abuse@transip.nl
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.15 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[herrie.org:s=transip-a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311873-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[me@herrie.org,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[herrie.org];
	FORGED_SENDER(0.00)[me@herrie.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:github.com@herrie.org,m:linusw@kernel.org,m:denis.ciocca@st.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:sanjayembeddedse@gmail.com,m:maudspierings@gocontroll.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[herrie.org,kernel.org,st.com,baylibre.com,analog.com,gmail.com,gocontroll.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:from_mime,herrie.org:dkim,herrie.org:email,herrie.org:mid,herrie.org:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4642F685B6F

On 2026-06-14 20:44, Jonathan Cameron wrote:
> On Fri,  5 Jun 2026 12:08:42 +0200
> Herman van Hazendonk <github.com@herrie.org> wrote:
> 
>> Add an optional st,fullscale-mg property that selects the initial
>> full-scale range of an ST MEMS sensor at probe time, expressed in
>> milligauss for magnetometers (and analogous engineering units for
>> other ST sensor families that may grow this property in the future).
>> 
>> The property is purely additive: if absent, drivers fall back to
>> their existing chip default, and if present but unsupported by the
>> specific sensor the driver warns and falls back. No existing in-tree
>> DTS is affected.
>> 
>> The motivating case is the LSM303DLH magnetometer on the HP TouchPad
>> (apq8060 / tenderloin) where the kernel's chip-default +/-1.3 G range
>> saturates the X axis to the chip's 0xF000 overflow sentinel out of
>> probe, because the chip is mounted close to surrounding power planes
>> and picks up enough DC bias to exceed the smallest range. The driver
>> core hardcodes fs_avl[0] as the starting range, so userspace cannot
>> recover without racing the driver to write the in_magn_x_scale sysfs
>> attribute after probe. st,fullscale-mg lets the device tree declare
>> a wider initial range up-front and avoids the race entirely.
> 
> I'm trying to understand what you mean here by racing.
> 
> If we get this overflow condition the chip is wedged until reset, or
> userspace simply has to change the range to recover?
> 
> I'm wondering if a UDEV rule is sufficient in theory to fix this.
> 
> I'm not necessarily against having the range in DT as it is effectively
> hardware dependent but just want to make sure I fully understand the 
> issue.
> 
> Jonathan
> 
> 
> 
>> 
>> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
>> ---
>>  .../devicetree/bindings/iio/st,st-sensors.yaml | 18 
>> ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml 
>> b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> index a1a958215cdb..335f38e9f78f 100644
>> --- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> +++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> @@ -126,6 +126,24 @@ properties:
>>    mount-matrix:
>>      description: an optional 3x3 mounting rotation matrix.
>> 
>> +  st,fullscale-mg:
>> +    description: |
>> +      Selects the initial sensor full-scale at probe time, expressed 
>> in
>> +      milligauss for magnetometers (or analogous engineering units 
>> for
>> +      other sensor families that may grow this property in the 
>> future).
>> +      The value must match one of the sensor-specific full-scale 
>> ranges
>> +      supported by the chip; if the chip does not support the 
>> requested
>> +      range the driver falls back to its built-in default.
>> +
>> +      This is intended for boards where the magnetometer chip picks 
>> up
>> +      enough DC bias from nearby PCB structures (power planes, 
>> ferrous
>> +      shields, etc.) that the kernel's chip-default 
>> highest-sensitivity
>> +      range saturates one or more axes to the chip's overflow 
>> sentinel,
>> +      and userspace observes that axis as permanently stuck. 
>> Declaring
>> +      a wider initial range avoids the saturation at the cost of a
>> +      slightly coarser quantisation.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>>  allOf:
>>    - if:
>>        properties:
Hi Jonathan,

"racing" was loose wording on my part. The chip is not wedged. Once 
userspace writes a wider range to in_magn_x_scale,
the next conversion comes back with sensible data and everything works. 
A UDEV rule on add of the IIO device would, in principle, fix
the steady-state problem.

What I was clumsily pointing at is the probe-time window: the IIO 
consumers in our stack (sensorfw's iio-sensors-adaptor, geomagnetic
/ orientation services) start polling in_magn_x_raw essentially the 
moment the device node appears, and they treat the saturated
0xF000 sentinel as a legitimate sample rather than as overflow. Until 
the UDEV rule fires and the kernel commits the new range, every
read returns the stuck sentinel, so orientation/compass features are 
wrong from boot for some non-trivial number of samples (and on
slow-boot paths the consumer may have already cached a bogus calibration 
baseline by the time UDEV catches up).

So the trade-off as I see it is:

- UDEV rule: works for steady state, fully out-of-tree, but the 
per-board configuration ends up split between two places (DTS for
"this board has an LSM303DLH at i2c@... in this orientation"; UDEV for 
"and by the way it needs a wider range or its raw readings are
nonsense"). The wider-range requirement is purely a property of how the 
magnetometer is mounted on the board, which is what DT is for.

- st,fullscale-mg in DT: keeps all hardware-dependent calibration in one 
place, available before any IIO consumer can open the device,
and harmless on boards that don't need it (absent property existing 
chip-default behaviour, no   DTS in tree changes).

I'm happy to drop the wording about "racing" in v2 and replace it with a 
more accurate description of the early-consumer issue if that
reads better. And of course if you'd rather we ship a UDEV rule 
downstream instead of adding a binding, I'll yield, but my read is that
this is hardware-dependent enough to belong in DT.

Thanks,
Herman

