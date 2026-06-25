Return-Path: <devicetree+bounces-315519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k0FfEyLePGpDtggAu9opvQ
	(envelope-from <devicetree+bounces-315519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:52:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B25166C37FF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:52:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RC6vLQu9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315519-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6A49302A7B2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B079A373BE6;
	Thu, 25 Jun 2026 07:51:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C9C37106A;
	Thu, 25 Jun 2026 07:51:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782373917; cv=none; b=WSy04UrZyYaW3vT8KQmZ6PTaWXy/siYzNNtlipS+5s52HVkockTjJNCr1CIfYIL+UV918R26Q7IURMKZWGWE/UpNiRkXyrrzovakwCIcKOSxImRPHq6108hL9lljl0fCwA1WpfTgyRWgiiVaeglwxV+Hau2BIgxE30mC6ZGKjnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782373917; c=relaxed/simple;
	bh=BXXfuWEl/4U0jtRxTwwcjesAUfpaT++iaZTOE9GLos4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pPv8f2LYsuBcuDT1XsXjpJq1oCecjYfzuDFc3IF6hvypx9YjiJ7Aw+5IhU/UdHvmBEJMK7ECkKZSPa5B9WYT7EIt5baVxOqups5g8cc1ERS80wqvAFqHw6mcAaqxataXJcZ39wWxnR9iRwZAJWKBXvgR+y3s/NOfJmcb868E6WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC6vLQu9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22E9D1F000E9;
	Thu, 25 Jun 2026 07:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782373916;
	bh=xwtL/5t2sZzWXgRi6A1c3mxLOpkwjN6Py+VqRMXJW+4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=RC6vLQu98HW/BDFmYNPQFAUoCP67QGR73xWnEqsPnRMvjQy8dIB0j5YIZOF1IE6pb
	 IJ3UV3kg3Ywf+g2B/zI4a4vceaTU8O9krxseid+bde5FwIm0mVytbSN/NxAo9b+rcW
	 N84JmwX2YqRmfh83UdXG+lyuvLrh3Iapa4vH5jvA2paVowHvKkF99b2sdz/XF7Kyll
	 nulsKbNlsPOxyBx3ngOgoYNy/ejG48+vCvgHszst+lPSOpiHH8VWT+NwGKmqpqKMbM
	 NgEkRXAHwRY4Z1TpfU10dt3+ooB027a+Uz2Z01jsokqRpTw9+VrilaoYL7pV2K884x
	 4ua10fwtMAu6g==
Message-ID: <733859d6-8286-42c9-9f56-76d4602ff238@kernel.org>
Date: Thu, 25 Jun 2026 09:51:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: ti,irq-crossbar:
 Convert to DT schema
To: Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Bhargav Joshi <j.bhargav.u@gmail.com>, simona.toaca@nxp.com,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, m-chawdhry@ti.com,
 daniel.baluta@gmail.com, Thomas Gleixner <tglx@kernel.org>,
 Sricharan R <r.sricharan@ti.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 goledhruva@gmail.com
References: <20260612-crossbar-v3-1-266747bc2e86@gmail.com>
 <178154975475.1640860.7016352484406221018.robh@kernel.org>
 <42760292-3a29-4600-8676-6a79d3b5d7a4@kernel.org>
 <CAL_Jsq+5-7FRFfzP9Lw2CVtnn2fyjW9M9SrKp7wX4CYDucEMOQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <CAL_Jsq+5-7FRFfzP9Lw2CVtnn2fyjW9M9SrKp7wX4CYDucEMOQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315519-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:konradybcio@kernel.org,m:j.bhargav.u@gmail.com,m:simona.toaca@nxp.com,m:krzk+dt@kernel.org,m:m-chawdhry@ti.com,m:daniel.baluta@gmail.com,m:tglx@kernel.org,m:r.sricharan@ti.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:goledhruva@gmail.com,m:jbhargavu@gmail.com,m:krzk@kernel.org,m:danielbaluta@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[konradybcio@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,nxp.com,kernel.org,ti.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konradybcio@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B25166C37FF

On 6/24/26 5:49 PM, Rob Herring wrote:
> On Wed, Jun 24, 2026 at 6:22 AM Konrad Dybcio <konradybcio@kernel.org> wrote:
>>
>> On 6/15/26 11:01 PM, Rob Herring (Arm) wrote:
>>>
>>> On Fri, 12 Jun 2026 02:42:29 +0530, Bhargav Joshi wrote:
>>>> Convert TI irq-crossbar binding from text format to DT schema.
>>>>
>>>> As part of conversion following changes are made:
>>>>  - Add '#interrupt-cells' as a required property which was missing in
>>>>    text binding
>>>>  - As irq-crossbar is interrupt-controller. Move binding from
>>>>    bindings/arm/omap to bindings/interrupt-controller
>>>>
>>>> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
>>>> ---

[...]

>> KeyError: 'http://devicetree.org/schemas/interrupt-controller/ti,irq-crossbar.yaml#'
>> make[2]: *** [Documentation/devicetree/bindings/Makefile:75: Documentation/devicetree/bindings/processed-schema.json] Błąd 1
>> make[2]: *** Kasuję plik 'Documentation/devicetree/bindings/processed-schema.json'
>> make[1]: *** [<snip>/linux/Makefile:1672: dt_binding_schemas] Błąd 2
>> make: *** [Makefile:248: __sub-make] Error 2
> 
> We should fix this to avoid the splat, but that would still be a new
> tool version.
> 
> So we either need to revert this and delay adding this schema or force
> people to upgrade.

I think we may find a static version check useful (i.e. something akin to
what scripts/cc-version.sh does with compilers) to make things more
obvious

Konrad

