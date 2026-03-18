Return-Path: <devicetree+bounces-277350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8L06Ky3dumk3cwIAu9opvQ
	(envelope-from <devicetree+bounces-277350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:13:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 182342BFFD3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E1183417366
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1A03C3C1D;
	Wed, 18 Mar 2026 16:01:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43FC63B27DB;
	Wed, 18 Mar 2026 16:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849671; cv=none; b=TJxPSTKE4ws+M19F1SZLl3p0/bNbSBLgKDIGdbOtbqBo9kKmNwpO1ROF9AsCRqoz/ROC5J3fQQvM3SFCx+/BoYiIF2YtoaEr9msbRn5+AjaTbiaCWNH5UaYNAz7nE4wXAvtj5pztLAkF6vw0RU9qXl1AEPGRI+/mUPGS8WOVPGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849671; c=relaxed/simple;
	bh=9lbXZPvYtJTGMGIkIWrytsOtkrhzDdxlxU1ozegV1Ao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iGgRBq4vzZYhBdmvpw+IxvBPOwzjT16TTZi25vOO6e2X1wLQvOmc8U18lJFCRVEBDIWpHp41k9s0b1WfPuVk5VIVOC5nb3iN//4dr7F073Sis2FF78n67KrUJZYPPg0US76TPkfnNsfYsBeL8b0oW55K+Mwxv5AhoGoDvHbEEPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75B7D1A25;
	Wed, 18 Mar 2026 09:00:58 -0700 (PDT)
Received: from [192.168.178.23] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F200B3F73B;
	Wed, 18 Mar 2026 09:01:00 -0700 (PDT)
Message-ID: <73a2e7fa-ab30-4d81-a4ff-0292b6adf346@arm.com>
Date: Wed, 18 Mar 2026 17:00:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] dt-bindings: arm: Add Live Firmware Activation
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Sudeep Holla <sudeep.holla@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Salman Nabi <salman.nabi@arm.com>,
 Vedashree Vidwans <vvidwans@nvidia.com>,
 Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
 Nirmoy Das <nirmoyd@nvidia.com>, vsethi@nvidia.com, vwadekar@nvidia.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260317103336.1273582-1-andre.przywara@arm.com>
 <20260317103336.1273582-2-andre.przywara@arm.com>
 <20260318-inventive-tortoise-of-romance-c7ceba@quoll>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260318-inventive-tortoise-of-romance-c7ceba@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277350-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.603];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,devicetree.org:url]
X-Rspamd-Queue-Id: 182342BFFD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 3/18/26 09:04, Krzysztof Kozlowski wrote:
> On Tue, Mar 17, 2026 at 11:33:27AM +0100, Andre Przywara wrote:
>> The Arm Live Firmware Activation spec [1] describes updating firmware
> 
> A nit, subject: drop second/last, redundant "binding". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Sure, will fix.

>> images during runtime, without requiring a reboot. Update images might
>> be deployed out-of-band, for instance via a BMC, in this case the OS
>> needs to be notified about the availability of a new image.
>>
>> This binding describes an interrupt that could be triggered by the
> 
> Describe hardware/firmware, not the binding.

Right, sorry, this slipped through.


>> platform, to notify about any changes.
>>
>> [1] https://developer.arm.com/documentation/den0147/latest/
>>
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>   .../devicetree/bindings/arm/arm,lfa.yaml      | 45 +++++++++++++++++++
>>   1 file changed, 45 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/arm/arm,lfa.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/arm,lfa.yaml b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
>> new file mode 100644
>> index 000000000000..92f0564fd672
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/arm,lfa.yaml
>> @@ -0,0 +1,45 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/arm,lfa.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Arm Live Firmware Activation (LFA)
>> +
>> +maintainers:
>> +  - Andre Przywara <andre.przywara@arm.com>
>> +  - Sudeep Holla <sudeep.holla@arm.com>
>> +
>> +description:
>> +  The Arm Live Firmware Activation (LFA) specification [1] describes a
>> +  firmware interface to activate an updated firmware at runtime, without
>> +  requiring a reboot. Updates might be supplied out-of-band, for instance
>> +  via a BMC, in which case the platform needs to notify an OS about pending
>> +  image updates.
>> +  [1] https://developer.arm.com/documentation/den0147/latest/
>> +
>> +properties:
>> +  compatible:
>> +    const: arm,lfa
> 
> Does specification has a version? Does it support version discovery?

Yes and yes. there is a mandatory LFA_GET_VERSION call, with major and 
minor version.

And please note that the discovery of the firmware functionality doesn't 
rely on DT (or ACPI) at all - it uses discoverable SMCCC calls instead. 
We just need this DT node to convey the (optional) platform specific 
interrupt number.

>> +
>> +  interrupts:
>> +    maxItems: 1
>> +    description: notification interrupt for changed firmware image status
>> +
>> +required:
>> +  - compatible
>> +  - interrupts
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    firmware {
>> +        arm-lfa {
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).
> 
> arm-lfa is specific, so this could be as "fota" or "firmware-update"

OK, will try to come up with a good name.

Thanks for the review!

Cheers,
Andre


> 
> Best regards,
> Krzysztof
> 


