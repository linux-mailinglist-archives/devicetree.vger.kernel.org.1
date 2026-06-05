Return-Path: <devicetree+bounces-307261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VMLbNhmPImrRaAEAu9opvQ
	(envelope-from <devicetree+bounces-307261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 10:55:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5473A6469F7
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 10:55:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307261-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307261-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF828309E540
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 08:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729B43D25DC;
	Fri,  5 Jun 2026 08:45:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8BC47B431
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 08:45:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780649118; cv=none; b=lvnftEDBbVRRfqot4X+AkPc2Sas1uMBpcP8+KJgzmqS4xTVnSXTsFZKebDGxcw40p8xZXwEWGw7QoDwwBueyZlk3zqQMXwRZ55iXqMqZbnOMb/7fi7s2vAA2yP2PQOqucRjicL4ypW0yNRv6bA9I2XWKkC3UKzNnTcfRj/xg/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780649118; c=relaxed/simple;
	bh=8WCPoeh0BcZLAKb8hLkhJB2+pNWKzYNgBA/oVZlehgY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nYj08cX7R2kSK6TMEYz6NASQgQg7wAS6FoiQu+uEnV+VN+axj0hGDYQsxzgxcjH+WQTiuluknWpKYdonSoFoCNaPhDZvi/Riw2ukmZCWrnXeVsQpNAipHtYyRTQpYRtJhhytz3mWdBQ1MdiCfu/YdU/oJT6M/xCV0D7tCK5C64M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wVQAz-0003dG-DJ; Fri, 05 Jun 2026 10:45:13 +0200
Message-ID: <3cbee0dc-87a9-4b87-9d22-b3e378fa57c3@pengutronix.de>
Date: Fri, 5 Jun 2026 10:45:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: Add default-intensity property
To: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 sashiko-reviews@lists.linux.dev
References: <20260605-multicolor-default-v2-1-ed07271df6b0@pengutronix.de>
 <20260605073816.E916D1F00893@smtp.kernel.org>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260605073816.E916D1F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:kernel@pengutronix.de,m:sashiko-reviews@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307261-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jre@pengutronix.de,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jre@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,pengutronix.de:mid,pengutronix.de:from_mime,pengutronix.de:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5473A6469F7

Hello,

On 2026-06-05 09:38, sashiko-bot@kernel.org wrote:
>> @@ -73,6 +73,17 @@ properties:
>>         - keep
>>       default: off
>>   
>> +  default-intensity:
>> +    description:
>> +      The initial intensity of the LED color component. Used only during
>> +      initialization. Defaults to 0. As the intensity of each sub-LED is
>> +      multiplied with the overall brightness, without this property on a
>> +      sub-LED, the leds-pwm-multicolor-LED is effectively initialized at
>> +      minimum brightness regardless of its linux,default-trigger and
>> +      default-brightness properties.
> 
> [Severity: Low]
> This isn't a bug, but the description for default-intensity explicitly
> mentions the specific driver name leds-pwm-multicolor-LED.
> 
> Since common.yaml is intended to be a hardware-agnostic specification
> for all LED bindings, could this wording be updated to refer generically
> to the multicolor LED or simply the LED to avoid leaking an
> implementation detail into the generic schema?

I'll be leaving this as-is until human feedback.

I think documenting the property in common.yaml is correct because the
default-intensity itself is applicable to other multicolor-LED drivers,
I just only implemented it for pwm-multicolor because that's what I use.
But we could just as well move it to leds-pwm-multicolor.yaml for as
long as that's the only driver supporting it.

I intentionally included the "pwm" in that sentence because the
described issue that default-intensity is effectively required when
using linux,default-trigger may be pwm-multicolor specific.

I would not like to omit the sentence either because this situation is
the reason why one might actually need (not just want)
default-intensity (for -pwm-).

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

