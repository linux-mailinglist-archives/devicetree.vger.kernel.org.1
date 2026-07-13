Return-Path: <devicetree+bounces-325267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0+x6NO6fVGqMoQMAu9opvQ
	(envelope-from <devicetree+bounces-325267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:21:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D60F07489A5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:21:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Zons0NaZ;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325267-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325267-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B71E30718DE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 08:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2893B42FF;
	Mon, 13 Jul 2026 08:11:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16843A75A4;
	Mon, 13 Jul 2026 08:11:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783930306; cv=none; b=hspjHPb+bBf7NN4ZATUUtcGshmM4uLr+aC910eLNQqJqTBuBvKNqlZzZay4iR/wPoOQEqpYVe6ChSilZBxt67oGtE91iknHH9k8dnJTFsgaP3grbfazXs5q74d6AgkSu8AK7tscvIWEW2m6WdHdDeQ2UvnX3dxg4T/YmN+307uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783930306; c=relaxed/simple;
	bh=nekH3c8fOVjXzri9HMJDZCZ+Cs7MULnXoNr/TShtOno=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SExLm3yF7SL6nEbCSj+PBHDUlEiMxwt/JYGQLJorcOsq7B6BzdErBmQNiwITWiPWiAvRSvIpAasnp5bvdOh5DBYviA8PAYmjvV8CedEin2emlrucgYnr9wTWaRmBkHqIwcQOXOYTMV1Bc4vuNrgRWRcUUiVL9c7bw4TDB/AaEFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Zons0NaZ; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783930302;
	bh=nekH3c8fOVjXzri9HMJDZCZ+Cs7MULnXoNr/TShtOno=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zons0NaZRFePVu2AFie0jHRJDaSl8nVZRnppWW3K5rXuujeJq89RNEwiLr+W4Ez1n
	 XqNQ9w7ETzBiN4jiaaKGFgK2J05DcFbj1EsTEnklxVGNSnDxjIwODNoCiu5eeib+eP
	 iBEnixp/SEl43F90hI/BEJoKIiKEk2YrZjiPEKZMHcH9c/Ts2Rv5AQD6hIbA1vRRDY
	 AKeCIlt+n9ubbCUY9L1rCtwStMnkfmU8+2OsMTAqcG+ZZIY6mebedYjlWgaDwHygf1
	 1rrT+Qq0g2UhQleHWRQI7hCZT8ZruH9g6YS35nhGmJuV99XAluti273G0joQA26vBQ
	 XbymhUnq3Ec7g==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3C6B317E07AA;
	Mon, 13 Jul 2026 10:11:42 +0200 (CEST)
Message-ID: <c11705b1-fc46-440b-a27e-0cc38f3b2d69@collabora.com>
Date: Mon, 13 Jul 2026 10:11:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] AUXADC driver for the MediaTek mt6323 PMIC
To: Jonathan Cameron <jic23@kernel.org>
Cc: rva333@protonmail.com, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Ben Grisdale <bengris32@protonmail.ch>,
 Conor Dooley <conor.dooley@microchip.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20260709-mt6323-adc-v5-0-d11b8332a735@protonmail.com>
 <f2d5801c-1d12-4a61-ac23-aa24dfd0ee5c@collabora.com>
 <20260710005424.5c559b5a@jic23-huawei>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260710005424.5c559b5a@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325267-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:rva333@protonmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:conor.dooley@microchip.com,m:andriy.shevchenko@intel.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[protonmail.com,baylibre.com,analog.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,protonmail.ch,microchip.com,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp,protonmail.com:email,protonmail.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D60F07489A5

On 7/10/26 01:54, Jonathan Cameron wrote:
> On Thu, 9 Jul 2026 13:33:46 +0200
> AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:
> 
>> On 7/9/26 12:52, Roman Vivchar via B4 Relay wrote:
>>> This series adds support for the 15-bit AUXADC hardware block found on
>>> the MediaTek mt6323 PMIC.
>>>
>>> The previous version of the series for all AUXADC, EFUSE and thermal
>>> drivers was split after Krzysztof's comment [1].
>>>
>>> Tested on the MediaTek mt6572 and mt8163 SoCs (Ben), both paired with a
>>> mt6323.
>>>
>>> [1]: https://lore.kernel.org/linux-mediatek/20260504-mt6323-v1-0-799b58b355ff@protonmail.com/T/#med30fad67a090be35f549231336b2dec295233f6
>>>
>>> Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
>>> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
>>
>> Whole series is
>>
>> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>>
>> Cheers,
>> Angelo
> 
> As noted on discussion of previous version. I picked up the IIO side of things already
> so I'm assuming nothing else for me to do here.  Shout if not!
> 

You're assuming right. I should've replied with R-b only to the last two patches as
it's too late for this on IIO - it's fine! :-)

Cheers,
Angelo

> Thanks,
> 
> Jonathan
> 

