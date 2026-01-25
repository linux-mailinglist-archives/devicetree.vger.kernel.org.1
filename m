Return-Path: <devicetree+bounces-259232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id orD4MooUdmn3LQEAu9opvQ
	(envelope-from <devicetree+bounces-259232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:03:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5BE80919
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 095123007F70
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CF0237A4F;
	Sun, 25 Jan 2026 13:03:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A303EBF18;
	Sun, 25 Jan 2026 13:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769346183; cv=none; b=twQHslSgkeqn9QZtQhTLhwg0KiC/D54xzlSGAQPGO8hwK+g7z4TlWQbU9rZDfDcq9DEiOOGKWxBNS1OKEKwy23HHdbkaZC2xgVp4iYlLkiHcw20wvIs5X3XVs/R29U3okQBT9GUo5q/cP2oJQcftbicQt12IdC/D1ZtNA7Ryn58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769346183; c=relaxed/simple;
	bh=xtre1dUDUYZ4Q/Evoopq2aLMZmm8uOX3MPShwyhMd3s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rvvzKizf8Z11Qf/hlVAKrlBHjWebQY7A7W+aSNBjEiHkPB79OTOycxTerqt6vJqz1owA33XXIGfuSGqCdEj2jSQINW3y93Oo+MigH5JItCEmGMMQNYBxm0iPdEWwB7DmECz9jgSmirvf/3fz1eZRTW7yfKgkL/imBYI3F4+dfjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iscas.ac.cn
Received: from [192.168.0.107] (unknown [123.118.222.47])
	by APP-01 (Coremail) with SMTP id qwCowACH825yFHZpgUgsBg--.19908S2;
	Sun, 25 Jan 2026 21:02:43 +0800 (CST)
Message-ID: <b705ceed-3ee1-49ec-8f8e-e885e87f871e@iscas.ac.cn>
Date: Sun, 25 Jan 2026 21:02:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
To: Yixun Lan <dlan@gentoo.org>, Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <76bd53dd-0ca9-4358-a0b6-a49283e43c5f@iscas.ac.cn>
 <CAH1PCMZq++FYr_2WB=HvouXvnxcYGFk6tngqNUk3zTOM6xXLZQ@mail.gmail.com>
 <CAH1PCMbEcVa6mAvw9UAG2T2Jy0W-+nEcw79nTHDJr9xgEdm0VA@mail.gmail.com>
 <20260125110333-GYD71302@gentoo.org>
Content-Language: en-US
From: Vivian Wang <wangruikang@iscas.ac.cn>
In-Reply-To: <20260125110333-GYD71302@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qwCowACH825yFHZpgUgsBg--.19908S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCw1kGrWxArWfJrWrKF4DArb_yoW5Gr18pa
	9Ika9rKFWkKr4fZwnFkw1IyayFy397Jw45W345Kw15Gr90vF1agF1UK3yY9Fy3Gr4kCw42
	yrWUKas3JF90v3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvqb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26ryj6rWUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xKxwCY
	1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8Jw
	C20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAF
	wI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjx
	v20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2
	jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0x
	ZFpf9x07bIBTOUUUUU=
X-CM-SenderInfo: pzdqw2pxlnt03j6l2u1dvotugofq/
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259232-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[iscas.ac.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangruikang@iscas.ac.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:mid,iscas.ac.cn:email,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0E5BE80919
X-Rspamd-Action: no action


On 1/25/26 19:03, Yixun Lan wrote:
> Hi Guodong,
>
> On 12:27 Sun 25 Jan     , Guodong Xu wrote:
>> On Sun, Jan 25, 2026 at 12:18 PM Guodong Xu <guodong@riscstar.com> wrote:
>>> On Sat, Jan 24, 2026 at 2:25 PM Vivian Wang <wangruikang@iscas.ac.cn> wrote:
>>>>
>>>> On 1/24/26 08:20, Guodong Xu wrote:
>>>>> [...]
>>>>>
>>>>> Note: Patch 3 introduces a bisect breakage by transitioning to
>>>>> pin-specific supply names. Probe failures will occur on existing boards
>>>>> until Patch 4 updates the corresponding DTS file.
>>>> Ouch, that's not a bisect breakage, that's an *ABI breakage*. And AFAICT
>>>> this is still not okay in 2026,
>>>> see Documentation/devicetree/bindings/ABI.rst
>>>>
>>>> So the bindings would need to be changed to accept both the new and old way.
>>> Ideally yes. However, considering this ABI change's actual effect, the two
>>> K1 boards (BPI-F3 and Jupiter) in the kernel get their power settings
>>> from boot firmware as well, and the types of peripherals enabled in the .dts
>>> files are very limited, the probe failure of the pmic regulator doesn't
>>> affect much. So, I think this breakage is acceptable.
>>>
>>>> Driver-wise, at a cursory look from someone not familiar with the
>>>> regulator stuff, maybe we can make it compatible with old DTS by adding
>>>> the new names as aliases ({devm_,}regulator_register_supply_alias?) as
>>>> "vin" or "buck5", if we see the old vin-supply definitions?
>>>>
>>> We can do that of course. My hesitation is, however, it makes the driver take
>>> extra code which may not be needed once all .dts files have been updated. The
>>> driver code will be left there forever.
>>>
>> Mark gave his opinion in v1 review [1], please allow me to partially quote
>> here: "(it's an ABI change so shouldn't really happen, but perhaps there are
>> few enough users for everyone to coordinate and it's what you all prefer)."
>>
>> I do expect to collect more ideas before I decide whether and what to do in
>> v3, or maybe v3 is not required.
>>
> As I checked the dts tree (DT queued for v6.20), although we introduced the
> regulator of P1/PMIC, but there is no consumers so far, so in real life, we
> shouldn't break anything. In this case, I'd suggest we just give up for doing
> the ABI backward compatible work which should simplify our life..

Having checked again, I agree that this is not that big of a problem.
The breakage with old DT is limited to an otherwise harmless error on
boot that doesn't affect functionality since there are no users.

Vivian "dramforever" Wang.


