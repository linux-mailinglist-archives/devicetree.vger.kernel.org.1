Return-Path: <devicetree+bounces-275558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJZYNHaBtGlTpAAAu9opvQ
	(envelope-from <devicetree+bounces-275558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:28:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF6028A229
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE1B6300B8D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF45C382F13;
	Fri, 13 Mar 2026 21:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RNsUaNnD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF74214A64
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437297; cv=none; b=hwhk8HJa/luLWnn93OtsHhv7aA2k7snz5S1UAsU9WV1XNjtG6Ou0nVwFnm8aSB2ZidX6l3NHSPSVJRQedeafivnjKTFEaQC/VkJG2oRo8pS85CJ49ge2N7FZsINPKZokTXRz8ReePOgwOpFYq6rXCqV91VKWsi9dLsO2TCPkkNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437297; c=relaxed/simple;
	bh=EOcuIn9GMaSAPBhs1LyfTZjpYqpuiHTFQE5/6H/nlik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HdaXc31ehKFhGpdFgFrR+TaZgZ+3S1KjxSq4cLFaUSiEROJOCbSoBrRqtgj/3uTSpGypPtFp/MuDvX/itjK0VHI3MZQ0+I26StPbQBB0ILX7HYkADkgNdzOAP+GmehgYfatnczUPYkepBV6J7Fddxx95FINYdGjxpiI6qg+eev0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RNsUaNnD; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2beb0246931so1368394eec.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773437295; x=1774042095; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFQN2iDyW5m5a7jX1vRhVdG+wB2cb7HPaqKy8sTeyCQ=;
        b=RNsUaNnDQ9UcHT4MRTTAoP2ibOfgm7QOwKdNP9B5AtsuzVKohZUB7vrIKnlLBli1Bm
         TXgn59WvkeUh47+DBVIg1r6HTUAF4M/fyHRvQE6Luq7xRG2zmWk/goPZyLjFQioXBUCA
         EsFTJG/urAsll0R8QSiYXI06k9DMImVJc1a/jI2GBhEZTIY0tmXFWu9g+/aaizhrCucL
         YbUcysFmzLhjOFcp9EZevCVr+MPtGYW6aP3XGBkLgD8hVX/2RdZ8ccl7rn8U2ukD/K/m
         sBCQrMxj5VB6HhgRecvhb3vxdOhWiPfYIW+diR10T6Tu7674yxe3XTyJYPcBzCC1/XLM
         C+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773437295; x=1774042095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XFQN2iDyW5m5a7jX1vRhVdG+wB2cb7HPaqKy8sTeyCQ=;
        b=LiAWLwyfTmBnHjZ2DnB5qDTBIKdfZmdzc8UIFdrwMAb3wGcqQ5Zv6E0GNjzNJ2Kvs2
         WGmWULN1Rd8jJ1UqruNpg4wodlp2CGYv7lrbQGeyrPVWuZF/jnCwjKfCiCXg6hBsiueC
         0G5RNyM6m3OjhEAzo08T/ae3vso+9ofYqDxmexXJ+lGvaLvG2iAIuAubcmC6k/Viy9QH
         54lmfzqq9o+h0Nb2CvmG+AOGfUPqUq7tqJ0NWH+u7KNqYV0enuXid6s0TLlx0MSPLsNq
         zdKzcziSFZPSotRV3m0uUXpiSHZSh16Q3N7huvCuhR6sbbUyzKIpZG59k7zWg6hZkasr
         WklQ==
X-Forwarded-Encrypted: i=1; AJvYcCVS23hhKTJD3MZKqJeXas/IJsDBLZCcALiOlqHJFfH9ggsArDZTdj9XDKQkOuIQH8ISQe1WqNLavYJQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxAF8Cx74/tiUcSvOGrEe2an/Oo9WiXCurb4Ueh/JZsfjYeNCSm
	lpBJN4ls5JVOwEW/B5GcStEr9/Qy6xk1uAaP/qZp1ch0FWAe1mmz1Ymh
X-Gm-Gg: ATEYQzy9juTUvhjF5yNq79UKXdY+xksW1w/Rbi7N1mN+PJ/kpMjgbOZKIUxCHsk32jg
	CFo9mrnbV5jSxF2TB6+HZexvghwdYH20t6GkAu95b6vu4omLn6CnVXE0nitCONc8bdHceFdwHDU
	117LFV6KJpC41Dtq3jalRzjPOzui+ubZhrRLppq7Hh90wyS62YSI1a3lYu7L1g4MfBVhxkENeZC
	LmD8ap0wxUhAv5YS1kMFsIDHXLhnMiSq1gY/F62ETnfqRLTmxLG8LVVCizzf+4xJCTVFzFCZ4Uz
	Mq5b4UndcJWeiCFMzhxq1jRpIOejAKheWjUZJ53n3MmQNTOGLnjxeIouA3DfFJR/JFx8FltxuQj
	XQwwpz+iB15JwRT/VZ1489eIEBF+RZx77RK6FfJetkqeMKN6Rn7+WK2eE3SiBeZ6/gVdB5olmUi
	VZjYlkGGZsqYcNcrwVt9dngywnSe/RMDbDL4bTigqMzRJ+L+g=
X-Received: by 2002:a05:7300:cb13:b0:2b6:ffb9:9633 with SMTP id 5a478bee46e88-2bea547cfb5mr2448749eec.15.1773437295332;
        Fri, 13 Mar 2026 14:28:15 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm503846eec.0.2026.03.13.14.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 14:28:13 -0700 (PDT)
Message-ID: <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
Date: Fri, 13 Mar 2026 14:33:16 -0700
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
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-visitor-majestic-1a6888dc57b2@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275558-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DAF6028A229
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

Thanks so much for the prompt review. See inline.

On 3/13/26 06:24, Conor Dooley wrote:
> Hey,
> 
> Gonna offer some feedback on the detail of what's been done in this
> series, without providing any commentary on whether this is the correct
> approach to take.
> 
> On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
>> On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
>> sometimes map the system memory twice in physical address space, one
>> as cached, and the other as uncached. Through the uncached window,
>> device drivers will be able to map DMA buffer for noncoherent devices.
>> Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
>> Make use of such feature by modeling it as "XPbmtUC", a customized
>> version of Svpbmt, where a single bit in PTE is used for UC control.
>> There's no IO bit with such scheme, as it's assumed that the PMA
>> (usually hard-wired on these SoCs) will properly convey the strongly-
>> ordered, non-idempotent attribute of the MMIO region.
>>
>> The enablement of such position of "XPbmtUC" is controlled by the
>> device-tree property "riscv,xpbmt-uncache-bit".
> 
> Firstly, the naming generally I take some exception to. If this is some
> fake vendor extension for linux purposes, it needs to have "xlinux" in
> it, like our xlinuxenvcfg does. It should also be consistent, don't use
> "xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.
> 
Makes sense. I can certainly change that to be conformant.

> Athough, I think I disagree fundamentally with this property, as it seems
> to me like "software configuration" that shouldn't be permitted in
> devicetree. Maybe I am misunderstanding, but the numbers you chose are
> convenient, not set in stone by the specific hardware, right?

For JH7110, the bit 32 (PPN bit 34) matches exactly with the HW. Meaning
toggling this bit would re-map the page to the uncached window, which
matches perfectly with the synthetic UC bit in the scheme.

For EIC770X, the bit 38 (PPN bit 40) is hand picked to be able to map all
physical memory space (40 bit), while making it very easy for the thin-
hypervisor, which can utilize Sv39x4 (41 bit) page scheme in G-stage.

I also considered the sbi call approach, where the kernel can query for
the support and position of the uncache bit. The thing is that JH7110
can just hard-code the bit without any changes to firmware, and I want
to have a consistent way for both SoC, thus the device-tree approach, to
let the EIC770X firmware/bootloader adding the property to dt at runtime.
Any better ideas?

> 
> I'd be much more comfortable with adding xlinuxwhatever to
> riscv,isa-extensions, to signal that a soc supports this stuff than with
> a property for the bit itself. I suppose that bit information could then
> come from a LUT in the vendor extensions, that a validate callback could
> check (via root compatible) before enabling. There's not a super neat
> way to do that at the moment though I don't think, code currently
> expects that vendor extensions are in a different "namespace" to
> standard ones, and this would blur the lines because it's not from a
> specific vendor, nor is it a standard extension.
> I guess, it could be done by keeping it as a standard number, but then
> it's a bit trickier to neatly access the LUT while keeping it split
> apart.
> I know this means having to modify the kernel if there's a new device,
> but I'm inclined to say "deal with it" because they could've done
> something standard and opted not to.
> 
> Could also argue that this should be shoved into a sifive specific
> thing, but I don't expect that they're the only ones with devices like
> this that could benefit.
> 

I've thought about riscv,isa-extensions. The issue with that is that it's
a per-CPU thing, but I'm adding a global extension, and I don't want to
pollute the isa-extension string. Thus, I followed Samuel's approach --
He uses "riscv,physical-memory-regions" in the root node.

>>
>> Example:
>>
>> Starfive JH7110 (Sifive U74):
>>             [0x0,   0x40000000) Low MMIO
>>      [0x40000000, 0x2_40000000) Cached Mem
>>    [0x4_40000000, 0x6_40000000) Uncached Mem UC+
>>    [0x9_00000000, 0x9_d0000000) High MMIO
>>
>> Device-tree:
>>    riscv,xpbmt-uncache-bit = <32>;
>>
>> Use PTE bit 32 (PPN bit 34) as UC (uncache) control to perfectly
>> match the memory map of the SoC.
>>
>> ESWIN EIC770X (Sifive U84/P550):
>>             [0x0,    0x20000000) Core Internal
>>      [0x20000000,    0x40000000) Core Internal (Die 1)
>>      [0x40000000,    0x60000000) Low MMIO
>>      [0x60000000,    0x80000000) Low MMIO (Die 1)
>>      [0x80000000, 0x10_80000000) Cached Mem
>>   [0x20_00000000, 0x30_00000000) Cached Mem (Die 1)
>>   [0x80_00000000, 0xa0_00000000) High MMIO
>>   [0xa0_00000000, 0xc0_00000000) High MMIO (Die 1)
>>   [0xc0_00000000, 0xd0_00000000) Uncached Mem
>>   [0xe0_00000000, 0xf0_00000000) Uncached Mem (Die 1)
>>
>> EIC770X is not directly compatible to this model, as the uncached
>> regions are offsetted, and the offset is different among the Dies
>> in the dual-die version (EIC7702). so we expect the firmware to
>> provide a thin layer of hypervisor to transparently re-map:
>>
>>      [0x80000000,  0x10_80000000) Cached Mem
>>   [0x20_00000000,  0x30_00000000) Cached Mem (Die 1)
>>   [0xc0_00000000,  0xd0_00000000) Uncached Mem <----------.
>>   [0xe0_00000000,  0xf0_00000000) Uncached Mem (Die 1) <--+--.
>> [0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
>> [0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'
>>
>> With that, the firmware/bootloader can set the following at boot:
>>    riscv,xpbmt-uncache-bit = <38>;
>>
>> Signed-off-by: Bo Gan <ganboing@gmail.com>
>> ---
>>   arch/riscv/Kconfig                  | 12 ++++++++++++
>>   arch/riscv/include/asm/hwcap.h      |  1 +
>>   arch/riscv/include/asm/pgtable-64.h |  8 ++++++++
>>   arch/riscv/kernel/cpufeature.c      |  8 ++++++++
>>   arch/riscv/mm/pgtable.c             |  7 +++++++
>>   5 files changed, 36 insertions(+)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 6b39f37f769a2..f2b4da6a3deb1 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -893,6 +893,18 @@ config TOOLCHAIN_NEEDS_OLD_ISA_SPEC
>>   	  versions of clang and GCC to be passed to GAS, which has the same result
>>   	  as passing zicsr and zifencei to -march.
>>   
>> +config RISCV_ISA_XPBMTUC
>> +	bool "Support XPbmtUC (customized pbmt uncache bit)"
>> +	depends on 64BIT && MMU
>> +	depends on RISCV_ALTERNATIVE
>> +	default n
>> +	select DMA_DIRECT_REMAP
>> +	help
>> +	  Add support for "riscv,xpbmt-uncache-bit" device-tree property.
>> +	  The bit denotes the bit in PTE that marks the page as uncached.
>> +
>> +	  If you don't know what to do here, say N.
>> +
>>   config FPU
>>   	bool "FPU support"
>>   	default y
>> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
>> index 4369a23385413..6baa6566cf4cc 100644
>> --- a/arch/riscv/include/asm/hwcap.h
>> +++ b/arch/riscv/include/asm/hwcap.h
>> @@ -111,6 +111,7 @@
>>   #define RISCV_ISA_EXT_ZILSD		102
>>   #define RISCV_ISA_EXT_ZCLSD		103
>>   
>> +#define RISCV_ISA_EXT_XPBMTUC		126
>>   #define RISCV_ISA_EXT_XLINUXENVCFG	127
>>   
>>   #define RISCV_ISA_EXT_MAX		128
>> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
>> index 6e789fa58514c..1a6d04884111d 100644
>> --- a/arch/riscv/include/asm/pgtable-64.h
>> +++ b/arch/riscv/include/asm/pgtable-64.h
>> @@ -140,6 +140,14 @@ enum napot_cont_order {
>>   #define _PAGE_IO_THEAD		((1UL << 63) | (1UL << 60))
>>   #define _PAGE_MTMASK_THEAD	(_PAGE_PMA_THEAD | _PAGE_IO_THEAD | (1UL << 59))
>>   
>> +#ifdef CONFIG_RISCV_ISA_XPBMTUC
>> +extern int riscv_xpbmtuc_bit;
>> +extern u64 riscv_xpbmtuc_mask;
>> +#endif
>> +
>> +#define XPBMTUC_HAS_PAGE_NOCACHE CONFIG_RISCV_ISA_XPBMTUC
>> +#define XPBMTUC_HAS_PAGE_MTMASK  CONFIG_RISCV_ISA_XPBMTUC
>> +
>>   static inline u64 riscv_page_mtmask(void)
>>   {
>>   	u64 val;
>> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
>> index fa591aff9d335..faec169004b4a 100644
>> --- a/arch/riscv/kernel/cpufeature.c
>> +++ b/arch/riscv/kernel/cpufeature.c
>> @@ -1118,6 +1118,14 @@ void __init riscv_fill_hwcap(void)
>>   		riscv_v_setup_vsize();
>>   	}
>>   
>> +#ifdef CONFIG_RISCV_ISA_XPBMTUC
> 
> Code like this needs to be unconditionally compiled.
> 
>> +	if (!of_property_read_u32(of_root, "riscv,xpbmt-uncache-bit",
>> +				  &riscv_xpbmtuc_bit)) {
>> +		riscv_xpbmtuc_mask = 1UL << riscv_xpbmtuc_bit;
>> +		set_bit(RISCV_ISA_EXT_XPBMTUC, riscv_isa);
>> +		pr_info("Using XPbmtUC bit=%d\n", riscv_xpbmtuc_bit);
>> +	}
>> +#endif
>>   	memset(print_str, 0, sizeof(print_str));
>>   	for (i = 0, j = 0; i < NUM_ALPHA_EXTS; i++)
>>   		if (riscv_isa[0] & BIT_MASK(i))
>> diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
>> index 807c0a0de1827..4ca442bc8595d 100644
>> --- a/arch/riscv/mm/pgtable.c
>> +++ b/arch/riscv/mm/pgtable.c
>> @@ -5,6 +5,13 @@
>>   #include <linux/kernel.h>
>>   #include <linux/pgtable.h>
>>   
>> +#ifdef CONFIG_RISCV_ISA_XPBMTUC
>> +int riscv_xpbmtuc_bit;
>> +
>> +u64 riscv_xpbmtuc_mask;
>> +EXPORT_SYMBOL(riscv_xpbmtuc_mask);
>> +#endif
>> +
>>   int ptep_set_access_flags(struct vm_area_struct *vma,
>>   			  unsigned long address, pte_t *ptep,
>>   			  pte_t entry, int dirty)
>> -- 
>> 2.34.1
>>

Bo


