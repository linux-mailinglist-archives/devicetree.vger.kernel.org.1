Return-Path: <devicetree+bounces-307441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fXCeNkDXImoreQEAu9opvQ
	(envelope-from <devicetree+bounces-307441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:03:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C96A648B2C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:03:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iR76Fxbc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307441-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307441-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9FC89304862C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 14:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D16F350A18;
	Fri,  5 Jun 2026 14:02:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F9B340DB8
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 14:02:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780668167; cv=none; b=csgF64PrfGqyWh0DY36UhNEsoboIsyngNMfLqCxHawJtVdElQRJFeaMRMJhOuP13jEx3pwAdJWT4EjBhy91NABjp/4fYMeSzB9A0NmEiIwFcWIy+ZQsjlJIzLbnv2S5F+ErEkUxmwjuaMdeQ1/uCJbwlgjJiMTlp4KYe41abCiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780668167; c=relaxed/simple;
	bh=AV+WL8mMqsmvfSygNRSeuMcfwWhxeMoNTJseaBWO4ow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I8e/SqiA0Bzi9Gxjt8Rx0YQwO9U6tM2CjZGZMX7V0BK6PmHwK+k0EOP8NstLSRyWyrtHSXZfOOcCkagT11PP5sIARVMUbpyezb3d0pkyRnJPiCKTh/ftiW61Cat6DbJce7JqB5Jb0FKHICdQifxertFHqxhahXDpRxyeBGx3N3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR76Fxbc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 198A51F00893;
	Fri,  5 Jun 2026 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780668166;
	bh=uPcrV+iYaTLbAEiIZUrUU2DpWbYkJH1btO4i9xeqtSA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=iR76FxbcFBYTrnVAclYOopg77TV28mE8QOYq8HXlCrev9cXDK4aFowUSS/u2Hhw+N
	 B8h4L1VrSrBhbdBTWIZPnpDdc8bJmx0ZyEprGYu+g9wJTLdyOCWo7d1VOmcfmdUsbN
	 kbfj+vLTewS0ue9h4TUdyLxjxn0SQrRzdpLqEe5PdJBsopyYJCNzmLmoCXOLyUvNuy
	 1cze0/NY75rbpBcodfEcgUUmzihJgeqZysNUcVQZdDMfx4pqwYFBnDerf7m8y0EguN
	 c3lr+rEMoIKdD5P5xJUubbBG/BsXe1lSQ8u6QtV2nqqtVTnoU/uhNjDYCGUWv8ZHq9
	 mEOp49pkyHtHA==
Message-ID: <f3fd53dc-7010-4b3d-a33c-4d1d32d3a1a6@kernel.org>
Date: Sat, 6 Jun 2026 00:02:41 +1000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] riscv: dts: tenstorrent: Add Atlantis platform
To: Conor Dooley <conor@kernel.org>, Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
 Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Nicholas Piggin <npiggin@gmail.com>,
 Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-8-joel@jms.id.au>
 <20260604-pacifier-sludge-196f47ab3c11@spud>
Content-Language: en-US
From: Michael Ellerman <mpe@kernel.org>
In-Reply-To: <20260604-pacifier-sludge-196f47ab3c11@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307441-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[mpe@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mpe@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C96A648B2C

On 5/6/26 2:47 am, Conor Dooley wrote:
> On Fri, Jun 05, 2026 at 12:09:53AM +0930, Joel Stanley wrote:
>> Add initial support for the Tenstorrent Atlantis platform, based on the
>> Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG cores.
>>
>> The evb machine represents an internal bringup vehicle with just the
>> interrupt controllers and a UART. This will be replaced in time with a
>> full featured machine once details are available.
...
>> diff --git a/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts b/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts
>> new file mode 100644
>> index 000000000000..06259cca8357
>> --- /dev/null
>> +++ b/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts
>> @@ -0,0 +1,33 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>> +/dts-v1/;
>> +
>> +#include "atlantis-soc.dtsi"
>> +
>> +/ {
>> +	model = "Tenstorrent Atlantis development platform";
>> +	compatible = "tenstorrent,atlantis-evb", "tenstorrent,atlantis";
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	memory@0 {
>> +		device_type = "memory";
>> +		reg = <0x0 0x00000000 0x0 0x80000000>,
>> +		      <0x1 0x80000000 0x0 0x80000000>;
>> +	};
>> +
>> +	aliases {
>> +		serial0 = &uart1;
>> +	};
>> +
>> +	chosen {
>> +		bootargs = "earlycon console=ttyS0";
> 
> FYI, this should not be in here.

It should be there if you want a working console :)

I know it's a "rule" to not include bootargs, but this system has no 
boot loader, so not setting bootargs just means the DTS is no use to anyone.

>> +		stdout-path = "serial0";
>> +	};
>> +};
>> +
>> +&uart1 {
>> +	/delete-property/ clocks;
> 
> Why are you doing this? Looks kinda suspect!

On the bringup system the uart has a fixed clock, I don't know exactly why.

>> +	clock-frequency = <5000000>;
>> +	status = "okay";
>> +};
Having said that, I think we talked about making this DTS match the qemu 
model rather than the internal bringup system. So if we do that then 
this will change.

Thanks for the reviews.

cheers

