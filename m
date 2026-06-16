Return-Path: <devicetree+bounces-312563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZDEbDzdSMWojgwUAu9opvQ
	(envelope-from <devicetree+bounces-312563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:40:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A793B690039
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:40:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arm.com header.s=foss header.b=CoUrDeIq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312563-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312563-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 437B230268BA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC09731E83A;
	Tue, 16 Jun 2026 13:39:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AE630648C;
	Tue, 16 Jun 2026 13:39:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781617142; cv=none; b=i3z1Kcnl8x8Hk0GYVjj++t1rBSDXq7gEQUvHJlOg6dOT/VhPy2dHEHG2HSIj6UfXTo84XVwEDrVQw5YSruSFiFQ0qmkEMmXoLXTF0lQIBM0hxSQF65zUndeu/06do3EbQgYyOpLQx9D81s4OdgnD70/4pWj4uPKaZkaMVMKlQMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781617142; c=relaxed/simple;
	bh=vHgwqjPAnui1vFfI/U4dBN4GhtxUFMHf4/+uBSe6sDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T6fyK5eIJvjA+h/G3gJLEcGxW1k6rl5VkA0C2nzuL/5Yuf6okr/0MpnRJM4Cpuj3Kw1U83i7rBNZvLh/N8DC5iDrgHeEManha5Z4Hy0Y+6oIGgqObHlZClYRiYJZ3UQ6YjLYUyVhkRBbL1BvTQCkSkWqreEM3RDqtcD6UKIYiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=CoUrDeIq; arc=none smtp.client-ip=217.140.110.172
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CFD135BD;
	Tue, 16 Jun 2026 06:38:55 -0700 (PDT)
Received: from [192.168.178.24] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E47083F763;
	Tue, 16 Jun 2026 06:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1781617139; bh=vHgwqjPAnui1vFfI/U4dBN4GhtxUFMHf4/+uBSe6sDM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CoUrDeIq57GBlIaQSiZ6IIZZXYYwvBjf9AtMwGTg8WTSlBAHp1guaKv17UCEaXsDV
	 ih/mSnXhuuoKY/hByor37luu/fn8K8ojll/MhfByHhaIIN1aH20ou4PrVANWJJk40y
	 3PfyZb/ddxw1qccXThjCpzVoJ83xZm1hA7B5sSdA=
Message-ID: <4709b24a-f421-4c81-a023-c37ea66c88bd@arm.com>
Date: Tue, 16 Jun 2026 15:38:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] dt-bindings: display: allwinner: Split H616 DE33
 layer reg space
To: Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>, wens@kernel.org
Cc: samuel@sholland.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20260509190015.79086-1-jernej.skrabec@siol.net>
 <nIKN_benRn2Bk8SDZrkMCA@gmail.com>
 <86943057-f5b4-4fae-9172-45f13814494f@kernel.org>
 <0r4us4OeRRWtJhxvps-bZw@gmail.com>
 <b1f03d81-85db-4303-89ff-64440b6e1890@kernel.org>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <b1f03d81-85db-4303-89ff-64440b6e1890@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312563-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:jernej.skrabec@gmail.com,m:wens@kernel.org,m:samuel@sholland.org,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:jernejskrabec@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[sholland.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:dkim,arm.com:mid,arm.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A793B690039

Hi,

On 6/16/26 05:51, Krzysztof Kozlowski wrote:
> On 15/06/2026 17:47, Jernej Škrabec wrote:
>> Dne ponedeljek, 15. junij 2026 ob 06:28:54 Srednjeevropski poletni čas je Krzysztof Kozlowski napisal(a):
>>> On 14/06/2026 16:08, Jernej Škrabec wrote:
>>>> Dne ponedeljek, 25. maj 2026 ob 14:10:38 Srednjeevropski poletni čas je Krzysztof Kozlowski napisal(a):
>>>>> On 24/05/2026 23:33, Chen-Yu Tsai wrote:
>>>>>> Hi,
>>>>>>
>>>>>> (resent from new email)
>>>>>>
>>>>>> On Thu, May 14, 2026 at 2:04 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>>>>
>>>>>>> On Sat, May 09, 2026 at 09:00:14PM +0200, Jernej Skrabec wrote:
>>>>>>>> From: Jernej Skrabec <jernej.skrabec@gmail.com>
>>>>>>>>
>>>>>>>> As it turns out, current H616 DE33 binding was written based on
>>>>>>>> incomplete understanding of DE33 design. Namely, planes are shared
>>>>>>>> resource and not tied to specific mixer, which was the case for previous
>>>>>>>> generations of Display Engine (DE3 and earlier).
>>>>>>>>
>>>>>>>> This means that current DE33 binding doesn't properly reflect HW and
>>>>>>>> using it would mean that second mixer (used for second display output)
>>>>>>>> can't be supported.
>>>>>>>>
>>>>>>>> Remove layer register space, which will be represented with additional
>>>>>>>> node, and replace it with phandle, which will point to that new, shared
>>>>>>>> node. That way, all mixers can share same layers.
>>>>>>>>
>>>>>>>> There is no user of this binding yet, so changes can be made safely,
>>>>>>>> without breaking any backward compatibility.
>>>>>>>
>>>>>>> There is user. git grep gives me:
>>>>>>> drivers/gpu/drm/sun4i/sun8i_mixer.c
>>>>>>>
>>>>>>> which means this is a released ABI. As I understood, the old code was
>>>>>>
>>>>>> We held off on merging the DT changes so that we could rework this.
>>>>>> I can't find the actual request though. It was probably over IRC.
>>>>>>
>>>>>>> working fine but just did not support all use cases. Why this cannot be
>>>>>>> kept backwards compatible?
>>>>>>
>>>>>> AFAIK the "planes" block is shared between two display mixers. As the
>>>>>> commit message explains, this prevents using the second mixer, since
>>>>>> only one of them can claim and map the register space. And on the H700
>>>>>> (which is the same die as the H616 discussed here but with more exposed
>>>>>> interfaces), there could actually be a use case for the second mixer.
>>>>>
>>>>> It explains why you want to make the changes but not why you cannot keep
>>>>> it backwards compatible.
>>>>
>>>> I guess it can be backward compatible, but I don't think it makes sense.
>>>> Yes, original driver implemented original DT bindings, but there is no node
>>>> which uses that binding. If there is no user of that, why would driver
>>>
>>> Did you check all out of tree users of the ABI? All vendor kernels,
>>> forks and all of them for which the ABI was made for?
>>
>> Since when do we care about out of tree users? I understand that drivers
> 
> Since always? That is the meaning of ABI. Otherwise there is no point to
> discuss ABI at all. Why would it exist if you had all DTS inside kernel
> always matching the code?

In general I would agree with Krzysztof, merged binding means we need to 
stick to it, but in this case I think that would be over the top. As 
Jernej said, there are no users, since we didn't commit on the DTs, and 
the DE33 graphics support in the kernel (bindings and code) is 
incomplete: it's really just the mixer, but no other components (TCON or 
output PHYs) required. So it never worked as such.

In hindsight we could say that we should have never merged the bindings 
without having fully working, reviewed and accepted driver code, for the 
whole display chain. Which we need to do because we create those 
bindings based on reverse engineering efforts, not by looking at 
documentation or design documents (which we don't have).

>> must support old device tree files. Once they work, compatibility must
>> be carried forward. But that's not the case here.
>>
>> In any case, vendor kernels have completely different DT structure. This
>> was developed independently from them. Take a look at [1] how BSP DT looks
>> like, specifically Display Engine node.
>>
>> Of course there are some distros which grab WIP patches from mailing lists
>> soon after they are available. For example, I know that Armbian carried old
>> WIP patches which used old ABI. However, such distros generally don't care
>> about exact solution and ditch patches as soon as proper solution is merged
>> upstream or even when better WIP patches come around. DT files in such
>> distros get updated alongside kernel, they are not hidden in firmware.
>>
> 
> I am not talking about BSP. I am talking about out of tree users for
> which we defined the ABI and called it that way.

If you are looking for DT users outside of the Linux kernel, this is the 
result of a quick check (list of users from ChatGPT, checks by myself 
with git clone/git grep):
Zephyr RTOS: no graphics support
FreeBSD: no H616 support
OpenBSD: no H616 graphics support
NetBSD: no H616 support
U-Boot: no H616 graphics support
Barebox: no H616 support
TF-A: no graphics support
OP-TEE: no (Allwinner) graphics support
EDK2: no Allwinner support

Cheers,
Andre


