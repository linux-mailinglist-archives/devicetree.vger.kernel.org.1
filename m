Return-Path: <devicetree+bounces-311827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /Xs5EsLLL2okGgUAu9opvQ
	(envelope-from <devicetree+bounces-311827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:54:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F36685314
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:54:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CfUH64ji;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311827-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 408C0300748C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA583DB319;
	Mon, 15 Jun 2026 09:54:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524313BBFBA;
	Mon, 15 Jun 2026 09:54:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781517248; cv=none; b=HF7iEsFmEpeuheEEJH0U+141NpOrokd0g/Z4ZxUJ1t4vwiToLQX+RwyWwHYJ+ivHB7zkziK74n2FwaeNMsacaJXMm4tziAfGDyNTbGHcHFdMJOwHSa791KyHmDZ5xT2FXRxIWutW9a0tNJvK9etKNYlqOl8UpqKsonn8wyO68Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781517248; c=relaxed/simple;
	bh=peZm/dA/V1NACXdcWFNQYDztQuC0ZGTliMu9Rdw8CFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RvbZiG7iEZc4q/F6+X/cgU7wa4/8W31XE0SA/efuFwdDT29wUss1xTBeZY8RtPF2PwnfkTkDV4s83zvIws/KpZMvTs3havAsccKeS4mQJuDXPwW/qALmfrLzMhNZUMz0z7gW65Bat4u8bU3KyhtImKzxmEFi6Dd3VZvfC9L05kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfUH64ji; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91ACB1F000E9;
	Mon, 15 Jun 2026 09:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781517246;
	bh=sFHjNnWDW/UEjcBAZ8oTGaGh+/904qdh9hRt8q+m+2k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CfUH64ji4H9oGcYm1b7GpH9cq745QX3p0TW/wSYa43ibNjqvpx+Hd/McMrmvC3RZP
	 fKKlFUWBKd8fCSQFcEue74uZcbpsIOc5vPi0r5bkB+XtlnaNE/sAJMnYoUHWBu3Ue4
	 Gwj0UV4h9AXhSDoIYQ8BTwcMYtwUEy3k/tkPsuHphxDwhr+gcHH5NqS0cL+O7fKu47
	 f5NHy1XgHmuF1GnLMgvoVNZbyt+41qW5X+KM4SlpHWXN4np1I4Y2bo4CSQPJLCWO9j
	 ujnzgkkZ50RhQ551DWVvzeN0I9g6Rtmj3BRfzZ8cEmRdMX34R67dwkB0c/3W5T0COd
	 WgiMNfuhfwb9g==
Message-ID: <f21486ea-db76-4b71-9b68-86c861b0be53@kernel.org>
Date: Mon, 15 Jun 2026 11:54:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: property: Fix of_fwnode_get_reference_args() with
 negative index
To: Alban Bedel <alban.bedel@lht.dlh.de>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@kernel.org>, driver-core@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
References: <20260611102806.2643869-1-alban.bedel@lht.dlh.de>
 <20260615-obedient-axolotl-of-argument-fb55ef@quoll>
 <20260615113330.11406fbd@OMT-CWNXR4TFW5-LHT>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <20260615113330.11406fbd@OMT-CWNXR4TFW5-LHT>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311827-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alban.bedel@lht.dlh.de,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:driver-core@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:tommaso.merciai.xr@bp.renesas.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2F36685314

On 15/06/2026 11:33, Alban Bedel wrote:
> On Mon, 15 Jun 2026 08:33:32 +0200
> Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>> On Thu, Jun 11, 2026 at 12:28:06PM +0200, Alban Bedel wrote:
>>> fwnode_property_get_reference_args() should return -ENOENT when an out
>>> of bound index is passed. An issue arised with the OF backend because
>>> the OF API use signed indexes while the fwnode API use unsigned ones.
>>> When an index value greater the INT_MAX was passed to the OF backend
>>> it got casted to a negative value and it returned -EINVAL instead of  
>>
>> INT_MAX is not out of bound for this function. It is invalid value,
>> because OF code expects signed.
> 
> But this is fwnode code, it use the OF API but it should implement the
> fwnode API which, unlike the OF API, use unsigned index.
>>> -ENOENT. This patch add a check to of_fwnode_get_reference_args() to
>>> catch negative index before they are passed to the OF API and return
>>> -ENOENT right away.  
>>
>> I do not understand why are you fixing this issue that way. For this
>> API, the INT_MAX is correct value, but you claim that it is wrong and
>> should be ENOENT (even if there is entry).
>>
>> Fine, if this is not a correct value, then EINVAL.
> 
> Indices larger than INT_MAX are valid in the fwnode API, so returning
> -EINVAL is not appropriate here.
> 

Then neither ENOENT are.

But really, EINVAL is correct here. This is OF implementation, so this
implementation decides what is EINVAL and what is right. Not fwnode API.


>> But more important I think this should be just fixed in different way -
>> why index in OF calls is signed in the first place? All indices are
>> supposed to be unsigned in general, because that is both logical and
>> readable when accessing arrays.
>  
> I agree that would be the better fix in the long run. But that would
> impact a lot more code and I found it difficult to ensure it would not
> potentially break some of its users. 

I don't see how this fixes anything. You basically replace correct
return value to a different one.

Best regards,
Krzysztof

