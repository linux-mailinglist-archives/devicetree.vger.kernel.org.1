Return-Path: <devicetree+bounces-275615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CL/qEbLttGm/uQAAu9opvQ
	(envelope-from <devicetree+bounces-275615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 06:10:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B938A28BB3C
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 06:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69A41304FFB2
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 05:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9EE30170F;
	Sat, 14 Mar 2026 05:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aEnD4M1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D561634E74D
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 05:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773464947; cv=none; b=g0LlxSqpVCnCJVz2lVAwTiJAN7aq4GBHInqhVGXnC7+uZSRXjTNKF0piU/3gF8sDksesBNtuywiSQXeqxzMYTul+aPkwQrFEoNhUcShren5M1eY4gAySKrmu7ng9XWyqrbtvSj1prFOgStHLgqfgIhcwzKHm+wCwjIFpTrFK/BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773464947; c=relaxed/simple;
	bh=yo8dOWNMEfmk5HIddUOZQeY22TSl9oqccLx+KblwPos=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EUTFq8mhzweN4wXXjnyQw3Kc3wDGvt9xztaV2cIwIy1CnCRF5zsg0Dspmq7U4L2/msofv98XHz/98zz2uhq3vSCb1NkMeallichjAOKu+Mg8ci56gFBx114LbX4h3Ep7viA3wGChfgg/WZnMM0engSPhipJl3PALqaAA86dJgZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aEnD4M1m; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8cd73c4a827so280084285a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 22:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773464945; x=1774069745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w/e/9v0Sp4Vhwdmz1g84yGNuM71VzfuGISYjVINsFhk=;
        b=aEnD4M1mkPgQ/wslMZgPxkLnXyPql7YOhhLJGUu5w2hlByVl9y1oTTkX+NnkhMomjo
         vhQoIBDnhCP/nuGhhDR3dffhxn+F5UihLZDsHcY4Xqo8d3Zx0lT5GZhqGwMhR+wzJORE
         q/jqyZwjAQEXP6NjWcEy+p6phAHOCT58DqGxqOiwhkV5ayeZt59coNpDrb+rYZFbACDE
         xXXmL3U3zah7PVj4F7aCpQNZVUtP7q2ktrNxDFYOIPlMSAMviOwG1u7p24DNIJzVzrFS
         jUPARh6+rbxvEkPfWzjD0vw6fpZQkjJZcNioAPDQcYZ7RM1eR80SjIHKdux+cbZ7Px2r
         9l6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773464945; x=1774069745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w/e/9v0Sp4Vhwdmz1g84yGNuM71VzfuGISYjVINsFhk=;
        b=e4OZ14Ml5Jl+EufzSApoeCXwXa+Snx3LhGWnDyumbspHC1uypXjg6GS7GQAFnpge52
         2O4CSdcGI6z/GwSHiieUB80LSVoYKxPqxwoZH7hmgrP44RpjITFBU37H+7O4ClkvnpcJ
         kXdGZeeRSt34UFR3CcB9VQjTwW7PYafPZNvAGkdi+IarZA3dfKlUvA3+B+RC8uutDfEP
         SU+lBb/LjzRT7/7jxF90+WiczgV4ooTWt/v8v1/VRq1+QjqRIgaHhSUTKrJStZtWM7Xf
         aUGVYGSKY4M7tf6hWyomNV9nt/NAktWrQqkxrcGbzTPuADjiiySgGIs0g9YEIY0Gx2IO
         1arw==
X-Forwarded-Encrypted: i=1; AJvYcCWDpAg4ZnBTMr46MjDODK6PUde+D4iDeciYECe4Gsckp7gP4Y+Y1XiPjjwB1IoutKq/k8oPHfPHAFyR@vger.kernel.org
X-Gm-Message-State: AOJu0YzXgfYHO2z1C9KaX883VZHECZA5pbQCbfAXI0ImN7ISWMts3AHm
	6sJRLPIaWjwEndmyDfdaCB1hyvklqDCSUeviRmzt3nuXFMExZywg3+rk
X-Gm-Gg: ATEYQzwzgP0PhYDgRkhw9muqF/FEC/tXSdt5dkem8Sk84w2ciC3q+m9KA5sZ9JndLZz
	BTdJVvH1gEmTr0wBZPmg52jwb3kmgr2y9XzBQhHX5Y138qKPcr8G8/eO8hoFqNErLpdG+iaHrTQ
	1u3k/6yCMG71aVprolJtIWD0YshLnfoQoio+jCcLd/8pXKb98XfxmkiOT5ZpPVma6PXhAg96rGE
	G6DH2ODllu7V+f6K5w2frWugsQ7lRimYHq4nOpVH3eOcIz/qSmyo+xKXSSItBKx3H9kIY6/jhJ5
	PdDUwnq/LSxSn7Eyw2bVC/VvrLGiIuxzwzxeymGnPyCbb30uH1SpI+Qc9RIRHGKPNXe0jFevieU
	SDkncN68ltJDrR8TE9Gfp/ZiRsVvVA2VLwS79l/tJxdBJSH2h6VLy4tWOq2eC5OmhuNDBrAaDiO
	xcguu77a8DrK6bOpDjABkphtpM
X-Received: by 2002:a05:620a:4613:b0:8c8:753a:7d9 with SMTP id af79cd13be357-8cdb5b6f808mr807185585a.66.1773464944670;
        Fri, 13 Mar 2026 22:09:04 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cdaac435dbsm559487285a.16.2026.03.13.22.09.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 22:09:03 -0700 (PDT)
Message-ID: <9592ecf2-8410-4df7-9b2c-17564426240d@gmail.com>
Date: Fri, 13 Mar 2026 22:06:42 -0700
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
 <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
 <20260314-errant-gnarly-dcca92457051@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260314-errant-gnarly-dcca92457051@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275615-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B938A28BB3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

On 3/13/26 18:18, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 05:29:53PM -0700, Bo Gan wrote:
>> Hi Conor,
>>
>> On 3/13/26 16:55, Conor Dooley wrote:
>>> On Fri, Mar 13, 2026 at 02:33:16PM -0700, Bo Gan wrote:
>>>> Hi Conor,
>>>>
>>>> Thanks so much for the prompt review. See inline.
>>>>
>>>> On 3/13/26 06:24, Conor Dooley wrote:
>>>>> Hey,
>>>>>
>>>>> Gonna offer some feedback on the detail of what's been done in this
>>>>> series, without providing any commentary on whether this is the correct
>>>>> approach to take.
>>>>>
>>>>> On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
>>>>>> On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
>>>>>> sometimes map the system memory twice in physical address space, one
>>>>>> as cached, and the other as uncached. Through the uncached window,
>>>>>> device drivers will be able to map DMA buffer for noncoherent devices.
>>>>>> Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
>>>>>> Make use of such feature by modeling it as "XPbmtUC", a customized
>>>>>> version of Svpbmt, where a single bit in PTE is used for UC control.
>>>>>> There's no IO bit with such scheme, as it's assumed that the PMA
>>>>>> (usually hard-wired on these SoCs) will properly convey the strongly-
>>>>>> ordered, non-idempotent attribute of the MMIO region.
>>>>>>
>>>>>> The enablement of such position of "XPbmtUC" is controlled by the
>>>>>> device-tree property "riscv,xpbmt-uncache-bit".
>>>>>
>>>>> Firstly, the naming generally I take some exception to. If this is some
>>>>> fake vendor extension for linux purposes, it needs to have "xlinux" in
>>>>> it, like our xlinuxenvcfg does. It should also be consistent, don't use
>>>>> "xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.
>>>>>
>>>> Makes sense. I can certainly change that to be conformant.
>>>>
>>>>> Athough, I think I disagree fundamentally with this property, as it seems
>>>>> to me like "software configuration" that shouldn't be permitted in
>>>>> devicetree. Maybe I am misunderstanding, but the numbers you chose are
>>>>> convenient, not set in stone by the specific hardware, right?
>>>>
>>>> For JH7110, the bit 32 (PPN bit 34) matches exactly with the HW. Meaning
>>>> toggling this bit would re-map the page to the uncached window, which
>>>> matches perfectly with the synthetic UC bit in the scheme.
>>>
>>> What does "matches exactly with the hardware" mean? AFAICT, you picked
>>> it because it was the best value, but you could also have picked another
>>> less optimal value?
>>>
>>>>
>>>> For EIC770X, the bit 38 (PPN bit 40) is hand picked to be able to map all
>>>> physical memory space (40 bit), while making it very easy for the thin-
>>>> hypervisor, which can utilize Sv39x4 (41 bit) page scheme in G-stage.
>>>>
>>>> I also considered the sbi call approach, where the kernel can query for
>>>> the support and position of the uncache bit. The thing is that JH7110
>>>> can just hard-code the bit without any changes to firmware, and I want
>>>> to have a consistent way for both SoC, thus the device-tree approach, to
>>>> let the EIC770X firmware/bootloader adding the property to dt at runtime.
>>>> Any better ideas?
>>>
>>> Is the only thing that's variable on your eic770x platform whether or
>>> not the bit is enabled? Or are you looking to vary the bit depending on
>>> the specific platform?
>>>
>>
>> It'll be "fixed" for eic770x if a thin-hypervisor re-mapping is enabled
>> underneath. It just so happens that the physical address space is 40 bits
>> (ignoring the 40bit+ upper uncached region for interleaved memory, which
>> we don't need when the "xpbmt-uc" is enabled anyway), and the hypervisor
>> can use Sv39x4 (also 41bit) to re-map everything.
>>
>> The variation comes with different SoCs, JH7110 vs. EIC770X. I'd like to
>> make it a variable, to make a unified kernel binary boot on all SoCs, so
> 
> FWIW, I have no interest in things that are not multiplatform-safe, so
> anything I've been suggesting has been with that in mind. When I was
> talking about not conveying the bit via DT, but storing the value in the
> kernel, I was still considering that the values would be stored for
> specific soc compatibles.
> 
> To be honest, I'm not completely dead-set opposed to a property that has
> the bit positioning, but any property being added for what is
> effectively an erratum needs to pass a high bar when the info could be
> gathered in another way. That the eic7700 one depends on firmware for
> what the bit may be is points in your favour, since firmware variability
> is part of what dt is there to do. The jh7110 is points against, since
> it could be fished out of the errata handling code.
> 
Even for JH7110, I don't think it can be handled through the errata. It
describes the errata of the core (if I'm not mistaken), and there can be
other SoCs using the same core with the same archid/impid, but maps the
peripherals differently, and the UC bit position doesn't apply there. I
think you are probably looking for "SoC level errata" handling. It's not
there AFAIK. Hence I guess both SoC cases point in favor of the dt prop?

>> I need to fix the alternative logic for PC-relative instructions to read
>> from a global variable "xpbmtuc_bit/mask". Also I want to avoid adding
>> too many branches to the alternative macro.
>>
>>>>> I'd be much more comfortable with adding xlinuxwhatever to
>>>>> riscv,isa-extensions, to signal that a soc supports this stuff than with
>>>>> a property for the bit itself. I suppose that bit information could then
>>>>> come from a LUT in the vendor extensions, that a validate callback could
>>>>> check (via root compatible) before enabling. There's not a super neat
>>>>> way to do that at the moment though I don't think, code currently
>>>>> expects that vendor extensions are in a different "namespace" to
>>>>> standard ones, and this would blur the lines because it's not from a
>>>>> specific vendor, nor is it a standard extension.
>>>>> I guess, it could be done by keeping it as a standard number, but then
>>>>> it's a bit trickier to neatly access the LUT while keeping it split
>>>>> apart.
>>>>> I know this means having to modify the kernel if there's a new device,
>>>>> but I'm inclined to say "deal with it" because they could've done
>>>>> something standard and opted not to.
>>>>>
>>>>> Could also argue that this should be shoved into a sifive specific
>>>>> thing, but I don't expect that they're the only ones with devices like
>>>>> this that could benefit.
>>>>>
>>>>
>>>> I've thought about riscv,isa-extensions. The issue with that is that it's
>>>> a per-CPU thing, but I'm adding a global extension, and I don't want to
>>>
>>> Most of the extensions in that string are effectively global. There's no
>>> need to worry about "polluting" it.
>>>
>>
>> Got it. So I can use something like "xlinuxpbmtuc38" in isa-string? (until
>> someone comes up with a better naming. Naming things is hard...)
> 
> I don't think the encoding of the bit should be in the name, otherwise
> we'd need to many different variations, if using riscv,isa-extensions is
> the approach that ends up being used.
> 
>>>> pollute the isa-extension string. Thus, I followed Samuel's approach --
>>>> He uses "riscv,physical-memory-regions" in the root node.
>>
>> Bo

Bo


