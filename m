Return-Path: <devicetree+bounces-263142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI5NFH3ohGnb6QMAu9opvQ
	(envelope-from <devicetree+bounces-263142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:59:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B60F6A4B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 55D123005584
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E0430B52B;
	Thu,  5 Feb 2026 18:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prbKmWYr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06A730B500;
	Thu,  5 Feb 2026 18:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770317947; cv=none; b=bwBjio72//nVIibrDiosxZMKqB10XLY48gcdreY/7utxjeE6zCotogWmCQmn95n9nqRxDzYS5ivrzZLkaNSERVwfUEFjhdM6lItlHms8dRR33yjD5+PDTlL8EwmUs95DRD8lF4mDCK30W/6Z2WuYnhKb9mRDRFQy8dUfjx/Q+co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770317947; c=relaxed/simple;
	bh=0RWLUwXfgwzIMMkOAdU1B8lsx67mPW8DTRDIndEvfSs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XE+qtwQ+CLJXYrnDFFBBcfSmsEuwbQNm1K8pEUTLI6/dO8NsCJKbkjE90NPEy/v/yP7sNSFJ5O5mh6FwIomL1gGwsgP2jNfncN6DFSmCsY0ilwYN8TYPtM2FsTQo4moVc6h+bic/nrfXkeMpOMRQ+xgv/JV/swBVj5W4BSyRnoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prbKmWYr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92ED0C116D0;
	Thu,  5 Feb 2026 18:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770317947;
	bh=0RWLUwXfgwzIMMkOAdU1B8lsx67mPW8DTRDIndEvfSs=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=prbKmWYrFpMvqasb32pcUS8cjqHhTn6Z9NicQE0XYphmUGT2dunMu4OXGjaJ9cINw
	 ixm4VWUuUJBsPQM8X5kK5OQQTaVATATthCxtChyJCRdGU2HmQBFISaNiTX2nHNdf0M
	 se6NkAHEcIjFhYM2oDkPCmqTTbTBM23U3WozwcfNio6jwoo8BlNJHCB3YFqULniKhE
	 ag/5i9Zh1XkErQ92CE/4ngQOKkoOti3Cjffns6gqb7EkGhhMIhhg09Q2HibJBKb3Xx
	 8K/ncM8VdQp1e9RJYe1sVecmkNJLE8v4fqajJJwPE5kq2eY6nshwfdEZDlPYC/IGg+
	 Daml0T9f6M1mQ==
Message-ID: <f8ac62ad-5b04-4148-aee6-cd401a2143cd@kernel.org>
Date: Thu, 5 Feb 2026 19:59:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW1BBVENIIHY3IDEvM10gZHQtYmluZGluZ3M6IHNv?=
 =?UTF-8?Q?c=3A_cix=3A_document_the_simple-mfd_syscon_on_Sky1_SoC?=
To: Gary Yang <gary.yang@cixtech.com>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Peter Chen <peter.chen@cixtech.com>,
 "unicorn_wang@outlook.com" <unicorn_wang@outlook.com>,
 "inochiama@gmail.com" <inochiama@gmail.com>,
 "alchark@gmail.com" <alchark@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
References: <20260204020644.155094-1-gary.yang@cixtech.com>
 <20260204020644.155094-2-gary.yang@cixtech.com>
 <20260205-noisy-fabulous-bumblebee-e0cb32@quoll>
 <TYUPR06MB587652FD43724BE26B15975DEF99A@TYUPR06MB5876.apcprd06.prod.outlook.com>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <TYUPR06MB587652FD43724BE26B15975DEF99A@TYUPR06MB5876.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263142-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E8B60F6A4B
X-Rspamd-Action: no action

On 05/02/2026 11:39, Gary Yang wrote:
> Hi Krzysztof:
> 
> I'm glad to see your comments
> 
>> EXTERNAL EMAIL
>>
>> On Wed, Feb 04, 2026 at 10:06:42AM +0800, Gary Yang wrote:
>>> There are two system control on Cix sky1 Soc. One is located in S0
>>> domain, and the other is located in S0 and S5 domain. The system
>>> control contains resets, usb typeC and more. At this point, only the
>>> reset controller child is described as usb typeC uses it by phandle.
>>>
>>> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
>>> ---
>>>  .../soc/cix/cix,sky1-system-control.yaml      |  49 ++++++
>>>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>>>  include/dt-bindings/reset/cix,sky1-rst.h      | 164
>> ++++++++++++++++++
>>>  3 files changed, 255 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
>>>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>>>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.ya
>>> ml
>>> b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.ya
>>> ml
>>> new file mode 100644
>>> index 000000000000..5fb6b97c3c00
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-contro
>>> +++ l.yaml
>>> @@ -0,0 +1,49 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause %YAML 1.2
>>> +---
>>> +$id:
>>> +http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Cix Sky1 SoC system control register region
>>> +
>>> +maintainers:
>>> +  - Gary Yang <gary.yang@cixtech.com>
>>> +
>>> +description:
>>> +  An wide assortment of registers of the system controller on Sky1
>>> +SoC,
>>> +  including resets, usb, wakeup sources and so on.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - cix,sky1-system-control
>>> +          - cix,sky1-s5-system-control
>>> +      - const: syscon
>>> +      - const: simple-mfd
>>
>> Drop simple-mfd, no children
>>
> 
> Yes, just now there is no child nodes. We want to reserve it for further.
> If you feel confuse, we can also delete this strings.

Sorry, you cannot reserve it. Bindings should be complete (see writing
bindings), so you should post a COMPLETE binding for this device now.

Adding ABI for "reserved case" is poor idea, because you will have to
support it forever.


> 
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  '#address-cells':
>>
>> Drop, no children
> 
> The same as above
> 
>>
>>> +    const: 1
>>> +
>>> +  '#size-cells':
>>
>> Drop
>>
> 
> same
> 
>> Do you see any recent simple-mfd binding written like this? There are no. Did
>> you read any of other bindings before sending this? Or at least my slides or
>> amny other resources from vast documentation from elinux.org?
>>
> 
> This yaml comes from microchip,mpfs-mss-top-sysreg.yaml as conor's suggestions on V3.
> More info: https://patchwork.kernel.org/project/linux-arm-kernel/patch/20251124063235.952136-2-gary.yang@cixtech.com/

Please point to a specific message, not entire thread of 8 untrimmed
replies.

> If you have the different views, please give more information. Thanks

These are simply wrong in this context.

If you claim you might need it, it means you actually need to finish the
binding with missing pieces. Look, do you write such Cc code:

int some_probe() {
	...

	if (0) {
		/* Code reserved for future */
	}

	return 0;
}

No. Creating unused code means more maintenance, wasted review, wasted
cycles of preprocessor or compiler. We NEVER write such code.


> 
> If miss any information, please remind me.

Yeah, please post COMPLETE bindings for this device.


Best regards,
Krzysztof

