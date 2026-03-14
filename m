Return-Path: <devicetree+bounces-275588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLnBM9CqtGn+rgAAu9opvQ
	(envelope-from <devicetree+bounces-275588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:24:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAFC28AECE
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:24:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 34732302D953
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC8E21ABAA;
	Sat, 14 Mar 2026 00:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TNUBDCXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF79921C9EA
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 00:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773447885; cv=none; b=h3lahWK/WFyyW2C1FNH1rqL4e9EuUzmop8UnP4HHU2Qpy1AzZcxedt4IO3WD/dMQyVT5XnrF6eu6dMbbo8d4ahLgtm6y0ZdwAGbpp4+w7KodV76a14vkEzIvYLrEvwv0M1vaYlJeZ3vfM5nso8MLDACe1J0ikSHWBlTs8bHfuUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773447885; c=relaxed/simple;
	bh=Q/HyYhUSBkGl5OIU7Ka9HWfoV71iDxkfeYJdGyxMw5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T95YZIVIIEnXYc75LzW8XW/ctAWAOMD7uv9gKaonXIecFEWUOvYvB2/qNjFgG6S8nAxTII+KAQcRsVDjsc52qGTMmrXZkBXbALTMql159wZ20tByL7u3ey23uRiJC/S5geSLtU3DVVxSTcaLYKGFX8aCsPyQ25Ht8dPy5UUGt9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNUBDCXB; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2bea8220c38so246985eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773447883; x=1774052683; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IUQbXFzRWv42EKkNfoDDsBdsogIZ8MSrAt4p0nD/KCs=;
        b=TNUBDCXB194w25xsk13USUpBASPpb55WurNNtM/hrGBh6oZsp8GvIp1NVPBfP6twUo
         UWYakQmUwlK11jOTgNTdm1nkoMAisygMbjDmukJfCz3YXacp2KMjV3VtBZa8w0YqpySO
         PL0gDAl5MCAbneXCpJgNPAdVQHtErnwwS1jVR3AZW0fwO1huAwax4iu3O8AnVZ3/S0Fz
         VXAA+DSuptvdUW7Jw5+2jMpagrC5TyH+eYo2ZRevSWUBI2bxYRyXf0s9HQmrsz9JFq+/
         tN0oi1swONoVjQbW33qyvjO9Cr9E26vVKCz1KyWBAoAHYpBUyBjcyv80Tv2xwzQhsRXO
         8iBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773447883; x=1774052683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUQbXFzRWv42EKkNfoDDsBdsogIZ8MSrAt4p0nD/KCs=;
        b=DWHMJKZIQdFCxZUi5IKBsYYbeAQhwxjcClC+PladX/moQg8JRldfvfImCBx5UmoKT8
         pmkP8Ns9HfZQVAv9oV3znbXG+bLpiYL+bM6v+Pd5IUf15AU6a2n79znznGtXxa3k3XGO
         wbL76ljUUdNi0U3f/dY/N05SXNZL0meBIzpSeUVAgX0TI/uciSLxnxsFoRL7iufvIi4L
         Ww1yxGX54YmsL6yxeU9KvC6hHValvOuek9V+sgHQAo+VQ15OyZfps1I1Cqjb9+uua3LR
         PuQTZjCkB+ZGWFBixDqKcq1VagR9Jf+/t0Vvo6T/TjkuEFxHYco/fVmLMzZLUW2NH7sT
         4HIg==
X-Forwarded-Encrypted: i=1; AJvYcCX6yAaCZVRnxC/VdH/dy39keFtQccSWODSIT6AJ3x/kxYBFXAw0sIGH1gCpBHloAugtMkM1w4lNLrsA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi5iJuluKlDwB9bW20AwWCeGQNioMSKBFcxxwddIuk8Z8ULvBC
	deRoUEKfSlI0X5sZOz7HBApumfPkUqLJndEVoG+cKVlQ8YIw77cVwQxC
X-Gm-Gg: ATEYQzwq6xWTpb09+RkoSZvWNBJeJNFt936vCBMdnh+cpkoejkH/n1HN1ojQ/QNikc8
	vnfTfXM7J3NIhl3NajrxR/vLqsPUGvYUM7GkM5tGYJ9+fabrKYz5sFz0K6P1JeXK7Nx32+6X9LC
	qz4PFKRf52U0OGElQZIINU/farecjQZCjEHrW+xdhSJsSRzSnspShfLy6Qz4LCc8A8aBpaeHNzA
	V7Ck5j+pbCsI07aRJKYESr4o0iXUcXj63e4wKIX2g8tam8sd7YVSqxopK5ROoeSWXOxfqrE1nFo
	vogFo+8Gln+i6kxy9ivOIaI+Y5kcvm0e+y9isQWAyGtJY9VNGG78ooyC48GqGXtcIisNlb84+OK
	cfmeiZt+USBrizEi4/ZlTc72rxWpwYpSyPsA/QHmpGukz0dmf9MaxQVrm1W22thgf6rjdxKNOwM
	OtsHGcJA248r9W74Y1ohWibAe5ez/vUFLbm7ZyGd3YVRZ9WhM=
X-Received: by 2002:a05:7301:4b03:b0:2ba:96d8:530b with SMTP id 5a478bee46e88-2bea55f6892mr2515723eec.32.1773447882614;
        Fri, 13 Mar 2026 17:24:42 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3ea2cfsm5522621eec.11.2026.03.13.17.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 17:24:41 -0700 (PDT)
Message-ID: <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
Date: Fri, 13 Mar 2026 17:29:53 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of Svpbmt
 "XPbmtUC"
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
 <20260313-spiny-duration-702fff6bca17@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-spiny-duration-702fff6bca17@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275588-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3CAFC28AECE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

On 3/13/26 16:55, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 02:33:16PM -0700, Bo Gan wrote:
>> Hi Conor,
>>
>> Thanks so much for the prompt review. See inline.
>>
>> On 3/13/26 06:24, Conor Dooley wrote:
>>> Hey,
>>>
>>> Gonna offer some feedback on the detail of what's been done in this
>>> series, without providing any commentary on whether this is the correct
>>> approach to take.
>>>
>>> On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
>>>> On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
>>>> sometimes map the system memory twice in physical address space, one
>>>> as cached, and the other as uncached. Through the uncached window,
>>>> device drivers will be able to map DMA buffer for noncoherent devices.
>>>> Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
>>>> Make use of such feature by modeling it as "XPbmtUC", a customized
>>>> version of Svpbmt, where a single bit in PTE is used for UC control.
>>>> There's no IO bit with such scheme, as it's assumed that the PMA
>>>> (usually hard-wired on these SoCs) will properly convey the strongly-
>>>> ordered, non-idempotent attribute of the MMIO region.
>>>>
>>>> The enablement of such position of "XPbmtUC" is controlled by the
>>>> device-tree property "riscv,xpbmt-uncache-bit".
>>>
>>> Firstly, the naming generally I take some exception to. If this is some
>>> fake vendor extension for linux purposes, it needs to have "xlinux" in
>>> it, like our xlinuxenvcfg does. It should also be consistent, don't use
>>> "xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.
>>>
>> Makes sense. I can certainly change that to be conformant.
>>
>>> Athough, I think I disagree fundamentally with this property, as it seems
>>> to me like "software configuration" that shouldn't be permitted in
>>> devicetree. Maybe I am misunderstanding, but the numbers you chose are
>>> convenient, not set in stone by the specific hardware, right?
>>
>> For JH7110, the bit 32 (PPN bit 34) matches exactly with the HW. Meaning
>> toggling this bit would re-map the page to the uncached window, which
>> matches perfectly with the synthetic UC bit in the scheme.
> 
> What does "matches exactly with the hardware" mean? AFAICT, you picked
> it because it was the best value, but you could also have picked another
> less optimal value?
> 
>>
>> For EIC770X, the bit 38 (PPN bit 40) is hand picked to be able to map all
>> physical memory space (40 bit), while making it very easy for the thin-
>> hypervisor, which can utilize Sv39x4 (41 bit) page scheme in G-stage.
>>
>> I also considered the sbi call approach, where the kernel can query for
>> the support and position of the uncache bit. The thing is that JH7110
>> can just hard-code the bit without any changes to firmware, and I want
>> to have a consistent way for both SoC, thus the device-tree approach, to
>> let the EIC770X firmware/bootloader adding the property to dt at runtime.
>> Any better ideas?
> 
> Is the only thing that's variable on your eic770x platform whether or
> not the bit is enabled? Or are you looking to vary the bit depending on
> the specific platform?
> 

It'll be "fixed" for eic770x if a thin-hypervisor re-mapping is enabled
underneath. It just so happens that the physical address space is 40 bits
(ignoring the 40bit+ upper uncached region for interleaved memory, which
we don't need when the "xpbmt-uc" is enabled anyway), and the hypervisor
can use Sv39x4 (also 41bit) to re-map everything.

The variation comes with different SoCs, JH7110 vs. EIC770X. I'd like to
make it a variable, to make a unified kernel binary boot on all SoCs, so
I need to fix the alternative logic for PC-relative instructions to read
from a global variable "xpbmtuc_bit/mask". Also I want to avoid adding
too many branches to the alternative macro.

>>> I'd be much more comfortable with adding xlinuxwhatever to
>>> riscv,isa-extensions, to signal that a soc supports this stuff than with
>>> a property for the bit itself. I suppose that bit information could then
>>> come from a LUT in the vendor extensions, that a validate callback could
>>> check (via root compatible) before enabling. There's not a super neat
>>> way to do that at the moment though I don't think, code currently
>>> expects that vendor extensions are in a different "namespace" to
>>> standard ones, and this would blur the lines because it's not from a
>>> specific vendor, nor is it a standard extension.
>>> I guess, it could be done by keeping it as a standard number, but then
>>> it's a bit trickier to neatly access the LUT while keeping it split
>>> apart.
>>> I know this means having to modify the kernel if there's a new device,
>>> but I'm inclined to say "deal with it" because they could've done
>>> something standard and opted not to.
>>>
>>> Could also argue that this should be shoved into a sifive specific
>>> thing, but I don't expect that they're the only ones with devices like
>>> this that could benefit.
>>>
>>
>> I've thought about riscv,isa-extensions. The issue with that is that it's
>> a per-CPU thing, but I'm adding a global extension, and I don't want to
> 
> Most of the extensions in that string are effectively global. There's no
> need to worry about "polluting" it.
> 

Got it. So I can use something like "xlinuxpbmtuc38" in isa-string? (until
someone comes up with a better naming. Naming things is hard...)

>> pollute the isa-extension string. Thus, I followed Samuel's approach --
>> He uses "riscv,physical-memory-regions" in the root node.

Bo

