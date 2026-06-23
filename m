Return-Path: <devicetree+bounces-314961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QmUhEh7eOmqjJQgAu9opvQ
	(envelope-from <devicetree+bounces-314961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:27:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 967576B9B26
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:27:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=osKsdsds;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314961-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314961-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C1A7304856B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F213932DC;
	Tue, 23 Jun 2026 19:27:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC938D402;
	Tue, 23 Jun 2026 19:27:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782242826; cv=none; b=IKCtZbGNo3el8naQ/ljGZHqrY3Pe7EyLTPIP+a0YcNRaL/zSmK637SMs9gYF0rclO/pbvGq9v+MKcyLByPeI9XByadoSiekAXhXPqZdp5kwHYELlQ8q2IL8DJmBd7xmaK5BaciuB51yAed8JZTTC5Gp1ZOKHmB1ILSH5kd0CVcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782242826; c=relaxed/simple;
	bh=UdJQ7MF+bWrHcMAMYbY3yufjN5biEaDg61DrZgkfktE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Go76do+SgoQoP21ZWevBcWerBzrlvAyAPUqmndv683f8LMuudXtlyCGr0287Bi95tCZAnAIWqlBJ4rpXev6xRRgzniLM/9PgT3BdLU933ReRMCIC2X266JH2c36C8PL1PSyYcDewEdaN6UlOrUXbcPM9ikiNCA11hR0XD7Gor/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osKsdsds; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0571F000E9;
	Tue, 23 Jun 2026 19:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782242825;
	bh=fY7+Qjso6OV5dU6LiTyf8OW91V/vJT0ZeQDfUV9KiE8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=osKsdsdsdSRrb1vztVn6OBLsx1boENTPDo0pPGyGgFxNUjqW30dFvb0qG9ZyKB0Q7
	 tWdqTH1vjkFvJ4Cwl6Xo2q6yF4qCluempfiUnUz2EE014VaK/27T9B7dOvJ0LI7Wgm
	 H26JPQSLtWuljqo8rCYjSszZpDgHFtN80eRMja4fYWL4dHJv8QKgSfgvVoV8+5N1jJ
	 qXRUFGvlFn4raTzOjNxKehSkbaGcBuwxbQMn2kaKpJ5hp/5wU8kapt27eC4UsgTfjq
	 aeHjjccUMdZTUcBf5TC5ssYp2E/6mI1WWsVuTQe/i2SCThTSM+x2VIZzDL4/YFqznF
	 0CtRCPiD8R/jg==
Date: Tue, 23 Jun 2026 20:26:52 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Denis Ciocca <denis.ciocca@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Denis Ciocca
 <denis.ciocca@st.com>, Linus Walleij <linusw@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: st,st-sensors: add
 st,fullscale-milligauss
Message-ID: <20260623202652.2f29a1fe@jic23-huawei>
In-Reply-To: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-2-063edcf74e60@herrie.org>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
	<20260616-submit-iio-lsm303dlh-magn-fixes-v2-2-063edcf74e60@herrie.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314961-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 967576B9B26

On Tue, 16 Jun 2026 15:02:05 +0200
Herman van Hazendonk <github.com@herrie.org> wrote:

> Add an optional st,fullscale-milligauss property that selects the
> initial magnetometer full-scale range at probe time, expressed in
> milligauss.
> 
> The motivating case is the LSM303DLH magnetometer on the HP TouchPad
> (apq8060 / tenderloin) where the kernel's chip-default +/-1.3 G range
> saturates the X axis to the chip's 0xF000 overflow sentinel out of
> probe, because the chip is mounted close to surrounding power planes
> and picks up enough DC bias to exceed the smallest range.
> 
> The chip is not wedged by the saturation: a sysfs write of a wider
> range to in_magn_x_scale recovers it on the next conversion, and a
> UDEV rule on add of the IIO device is a viable steady-state
> workaround. What the DT property buys is the probe-time window: the
> in-tree consumers we use (sensorfw's iio-sensors-adaptor and the
> geomagnetic / orientation services on top of it) start polling
> in_magn_x_raw essentially as soon as the device node appears and
> treat the 0xF000 sentinel as a legitimate sample. Until a UDEV rule
> fires and commits the wider range, every read returns the stuck
> sentinel, and on slow-boot paths the consumer may have already
> cached a bogus calibration baseline by the time UDEV catches up.
> 
> st,fullscale-milligauss lets the device tree declare a wider
> initial range up-front so the correct range is in effect before any
> IIO consumer can open the device, and keeps the board-specific
> magnetometer calibration alongside the rest of the hardware
> description rather than splitting it between DTS and per-distro
> UDEV rules.
> 
> The full property name is spelled out rather than abbreviated to
> "-mg" because this same binding file already covers ST accelerometers
> where the conventional shorthand "mg" reads as milli-g (acceleration);
> the explicit "-milligauss" suffix makes the unit unambiguous if a
> similar tunable is ever introduced for the accel/gyro/pressure
> families.
> 
> The property is scoped to magnetometer compatibles via allOf/if-then
> clauses, with per-family enum lists of the accepted milligauss
> values (1300..8100 for LSM303DLH/DLHC/DLM, 4000..16000 for
> LIS3MDL/LSM9DS1/LSM303C). LSM303AGR / LIS2MDL / IIS2MDC have a
> single fixed full-scale (15000 mg) with no register to switch
> ranges, so the property is rejected outright for them. DTSes that
> misspell the value, place the property on an accelerometer /
> gyroscope / pressure node, or set it on a fixed-FS magnetometer
> fail dt_binding_check rather than emitting a runtime warning.
> 
> The property is purely additive: if absent, drivers fall back to
> their existing chip default. No existing in-tree DTS is affected.
> 
> Assisted-by: Claude:claude-opus-4-7 dt_binding_check checkpatch
> Assisted-by: Sashiko:claude-opus-4-7
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  .../devicetree/bindings/iio/st,st-sensors.yaml     | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> index a1a958215cdb..f0805604c849 100644
> --- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> +++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> @@ -126,6 +126,13 @@ properties:
>    mount-matrix:
>      description: an optional 3x3 mounting rotation matrix.
>  
> +  st,fullscale-milligauss:
> +    description:
> +      Initial magnetometer full-scale at probe time, in milligauss.
> +      Per-chip allowed values are enumerated in the allOf clauses
> +      below.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
>  allOf:
>    - if:
>        properties:
> @@ -163,6 +170,70 @@ allOf:
>            maxItems: 1
>          st,drdy-int-pin: false
>  
> +  # Per-chip enum lists for st,fullscale-milligauss. Out-of-range
> +  # values fail dt_binding_check instead of being demoted to a
> +  # runtime warning by the driver.
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,lsm303dlh-magn
> +              - st,lsm303dlhc-magn
> +              - st,lsm303dlm-magn
> +    then:
> +      properties:
> +        st,fullscale-milligauss:
> +          enum: [1300, 1900, 2500, 4000, 4700, 5600, 8100]
Can we also add default: to these entries to document what happens
when nothing is provided?

Thanks,

Jonathan

