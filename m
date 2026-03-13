Return-Path: <devicetree+bounces-275563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK9SIbOHtGmBpQAAu9opvQ
	(envelope-from <devicetree+bounces-275563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:54:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FA028A346
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:54:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BAB130D5C32
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0703636AB4C;
	Fri, 13 Mar 2026 21:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoxNiUvd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93561EC01B
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773438874; cv=none; b=Y9lQJhlI6+ZMP5LOfBK/JtV1/wSZUS23MQf9rRl/u9Y85JNxLaW3vhQN4PMoSlj4T3dVISazRA0vhn6TarSoQxdwCxy0DD8dgns1UG+5hY2eBK9BNHvSYj856q7MW9SIarTMCb0BIj3NGTIV3BzuT0ZeFiEtZqMYT2PkccI+6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773438874; c=relaxed/simple;
	bh=ozmg9P3PCDEexpci6FTKVAMiXO8yAYuV7y2tvDYN3cE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gekyB+w3xQunexVQ3qV+awSAznCyGDj/phtQVIrH7cnOWXiFTUCY7dssVuVRo6VXYHYoL8Z+vALZO6lbQU5D45DUdFTF+ArOmGx74yM3D61hzdDA6Vb7z18KTwpqDWrajB5M2I+/nDVLDtfcxeiAtLRaolQ0bDCe8x0Y4nz4eSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoxNiUvd; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-12776bebe9fso1171162c88.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773438873; x=1774043673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8G/at76670ycOzH91CNexS5yCq4aAux5TqZxX053qrI=;
        b=BoxNiUvdpyFAphroKichZx7DaMcTZLevoFnReRpQhjMUr1LYQjIlguQpvJ8vF31W6p
         CQj2zxU1TotH7jmFVnNaNqAPLLwhPe6Ko0yYivlNgHZr6QIXP3jm93+1dQkaAwS9lmh7
         M1iQ9RSqr5osSoiJGNM1N+f5gUU8Po6nyPHFWIEz3VHhHMRQwYLpxVhfm/ULZKL32jaT
         CvgFzzSIjxRzr/uO+Fn3YEo6Vs3ecw4XD9L/VmEX2tnl03qFwe2GdkCN1Zf0PZYJHUQ/
         k1qWyMDvlLbhadGtK0Se/f3Bm9/UyxEiBXocY+qMr8aZNJOy3Lxn7GTzzRNDsuHCbBPu
         EM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773438873; x=1774043673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8G/at76670ycOzH91CNexS5yCq4aAux5TqZxX053qrI=;
        b=JqUww+JhWM0jGF+CbX24OgSp5ra7izUJLXG6O3lG2ig3O5+6a47jh91Ax6JTsq/0z3
         HepHfgiJofcu38BK0Nmq5TP2eqKO7q+7e1fb4RQq4+wEuN//mqfyZeoZQHAZ0uoe3OrB
         cKH3dOhxKXzdknWUDV5Vujzxmh/Fw5oFk2RwLqBe6g+wYggF/SwzMWPFsMIhWqAUN1qe
         bMuehmjxfFg2YLzFh/GwUJmcFSI5CD5JH+mSuA3G5QDlKZeTq4JQsuWCMQ1JriT5+EYU
         ZIWW3MdciBEbgp19iOaU7YVXhwP/O0ITDEqPA4X9VmFilawYZ7250JqXwmhqJeSNvak0
         RIQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfng3Ne7fx6I+YQg8ccJw2WYBF2PxAXrNrEFvIRLKZW2JYm/gIEQ9lRG2t12+PK3tP1QxTHKHYlnEW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+qi2F+XH+5CAhUbmUKIDuXI7xQ+7KOeafdGoJ8WCLMk88FQuo
	51J6OGcpR/EuQGZkr98ahA1IFLK5+GEavqUH+nGPnGixUU02t4UNbbYE
X-Gm-Gg: ATEYQzzBVSqQg0aq1ZwUU7p7UE29vn1cX3OVDXdvaw8/TPJZLkem4+E/slcLMFNqs7p
	FqMdqd5AdYWulzZQbL8ejPrNQ9VidwXqHde4CawYfVVitd7wmpY5/d3Z0M9eOS/W3yOYy/GZCKW
	TFiQWxYlWw1MOYwDrfyE8gF8SMC8bW+RLlPDBcjsfzWyk0pwvskeHvbODnRzbhUuq4kjR8LTb++
	rn9T6TrUPShJIiQZJxco/EKN4lRo/L6LQpcv19r4QoT7JgoG2Fsh67JCKGOve2x2oLMenttZEHy
	WvlMfu/rlQ+4syj1hnqRnbKP53ZNshHtzWb9S/NbZuSeBmiuRoMg9Hf6YLefI97SuU8c18Y21g7
	zgMFkW6Cttkz1JXKvOgjV19jnoSRQ7eWcJ+FAG3+JMEcpgb47Tw9XESXFTJxxCauKmwfgFdnf+9
	N8XA9WKWWG4/6GZCQsyCrGBr//2IUq4LuFMtpREH/U4bHaeJk=
X-Received: by 2002:a05:7022:309:b0:123:2c98:f65d with SMTP id a92af1059eb24-128f3d3cbe0mr2285425c88.13.1773438872617;
        Fri, 13 Mar 2026 14:54:32 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f6384e7asm3541611c88.11.2026.03.13.14.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 14:54:31 -0700 (PDT)
Message-ID: <f2cd9698-1200-4752-a61a-e4f311473523@gmail.com>
Date: Fri, 13 Mar 2026 14:59:44 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 5/6] riscv: dts: starfive: jh7110: activate XPbmtUC
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-6-ganboing@gmail.com>
 <20260313-overstep-viscosity-23f4f23e1871@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-overstep-viscosity-23f4f23e1871@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275563-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D2FA028A346
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

On 3/13/26 06:48, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 01:44:06AM -0700, Bo Gan wrote:
>> Set riscv,xpbmt-uncache-bit to 32 to match SoC memory map:
>>
>>             [0x0,   0x40000000) Low MMIO
>>      [0x40000000, 0x2_40000000) Cached Mem
>>    [0x4_40000000, 0x6_40000000) Uncached Mem UC+
>>    [0x9_00000000, 0x9_d0000000) High MMIO
>>
>> Signed-off-by: Bo Gan <ganboing@gmail.com>
> 
> 
> What I want know is how this whole setup interacts with the existing
> support that we have for these devices?
> Samuel's patchetset removed from the devicetree all of the nodes related
> to having two mappings of the same memory, and modified the existing
> erratum to only be required for older devicetrees.
> You've not removed them, only added a new property. The non-coherent
> peripherals on jh7110 already work prior to this patchset, is there not
> going to be funky behaviour with both of these things operating in
> parallel?
> 

I just want to clarify that Samuel's change is not touching JH7110, but
*JH7100*. They are very similar chips, can can confuse people sometimes,
but JH7110 evolved to put more devices such as gmac/sdio/usb/pcie through
the front port to make them cache coherent. The left over noncoherent
device are dealt by the driver through cache flushes, I believe. That's
why we have out-of-box support for JH7110 even without Samuel's patch. On
the older JH7100, none of the peripheral is DMA coherent, so we either
use ERRATA_STARFIVE_JH7100, making kernel NONPORTABLE or Samuel's patch.
Refer to this pdf for a detailed comparison:
https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache%20Coherence%20V1.0.pdf

My patch doesn't touch anything JH7100. It's an enhancement to JH7110 (the
newer chip). The issue is that even though basic peripherals are coherent,
the video subsystem, GPU/VPU/ISP... is still not. (See page 6 in that pdf)
Hence technically, we still need to deal with the same issue on JH7110.
E.g., part of the reason we can't have GPU driver working is because we
can't map a DMA page as uncached in userspace. There's no cache flush insn
in userspace, either. This change tries to solve the issue in a simple yet
elegant way.

There's no other changes to the device-tree required, just adding the prop
for JH7110, and things should just work. As for JH7100 (the older chip), I
don't plan to support it, as the cached/uncached region are offsetted by
0xf80000000, so it can't be modeled by a single UC bit (w/o hypervisor
re-mapping it underneath, and there's no H for JH71x0) The chip was also
superseded very quickly after the release of JH7110. I don't imagine too
many users demanding support.

>> ---
>>   arch/riscv/boot/dts/starfive/jh7110.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> index 6e56e9d20bb06..6dfeb31538fba 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> @@ -14,6 +14,7 @@ / {
>>   	compatible = "starfive,jh7110";
>>   	#address-cells = <2>;
>>   	#size-cells = <2>;
>> +	riscv,xpbmt-uncache-bit = <32>;
>>   
>>   	cpus: cpus {
>>   		#address-cells = <1>;
>> -- 
>> 2.34.1
>>

Bo

