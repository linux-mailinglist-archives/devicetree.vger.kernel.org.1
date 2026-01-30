Return-Path: <devicetree+bounces-261236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOi0Ibm3fGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E78D6BB5AA
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 431883004D1B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8032DFF04;
	Fri, 30 Jan 2026 13:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="YIMR9XBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAA72DEA70
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769781175; cv=none; b=sW2Jr3qPeM+kh2mSGVBOG84pCh4zvPj5ByksVOvjlzDrYYUfYo/lc0EV5PjjfjgfutdH3vXd3hkvDayWdui92e5Z08H/7gjIwX6L7Qeh5zcbKClAGabmq3+Ofg9v33QgtSnEZXz9k8BY5Ab+FtET1Tjk+ObfZfHKWWXV2CYmrB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769781175; c=relaxed/simple;
	bh=7BkjoQJU+ia2PMS1t5wmpNqwQAEhRIVS+TW+cvlD5bw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uguCROEpoceEZHkeTJ1eqCkOJtuRnIrpWZbqmr8IDekDM6PQOp5Foya6FfS7mInYGRSfevlRp6yqnhcmDI2ImaMJoDDurXdgF+AMiID1Plvav+lLgcpdykXaQ3UrdKRhA10105HinXwrn8WKsPEIYsDUuODZhuf8tr2OwnHVIXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=YIMR9XBi; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so17175695e9.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769781171; x=1770385971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=INGNfIhX3cdl2idoxtcthwbVKbbQU48P6iBpGUwnFNY=;
        b=YIMR9XBiyiyxl12ahO49Vo1+a9wJ/8o0FOrtTzKlFIy0cBvSZLlgKl68Bl3jMQTQAq
         TcPbphZkyRtS+IyKrc2XcNpPTxQRBX15D1Fz+m0rgxLg4C4ZLHvvhvVPaRI46VCqygju
         1Vlok839z2bk6I62wSyA3QQf1+d13NOwShX4+xeu9A1284RfcO0k3JqvsBp01axcAbgG
         eP6r6zb4Qn4t6k5nVC4umGHO+yfybmicUug6BmV2pxKxn33xv8DIxm8KCJvvOZR/sfRg
         JfZJ1QjoukAL1R8BWPzMJoQXENPh0tO/LvBC7Zh1BsDBWLsWrqh0aCUkYfOgZ0GFOM+5
         ACWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769781171; x=1770385971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=INGNfIhX3cdl2idoxtcthwbVKbbQU48P6iBpGUwnFNY=;
        b=BaKQlhD0/RhtKgNjHclMfFSgbPYQgbWkKplM5I3cyNQLlIYXWe7VzvU3ueI43SoNyi
         oNrJvfOBCqu1KxEskAOGB+emXY/lxNsNz0T1palxnqtGs7RZBGEFfZjYrLSRba5wBX/P
         Usc+qa5EHVMCDBWH9nLSOUo30uU78dt3DaLuHFeWqtI3HoY/7kvTpu2gJlpmQUGDbLTb
         0875/OHKoIl5WZ8e5BKHHcKwYWUPrPnB6XGC1QCCJClEpugzNAKWOYUEXWuCj5xKMOSu
         2Nv+b+mgCsGjQoXD6qnjogaWsJ5Z5+NpQ72G0tIUZpXg3vP0X85+vKOQX5Pff8NZwqFA
         PV8g==
X-Forwarded-Encrypted: i=1; AJvYcCXhjH/TM5MEr1EIRIDvlmUhYna0dEbJgKCDBq1KzEgongpDElpxIP4UZv/qQiiVN+jxdVSWgf00r/Xr@vger.kernel.org
X-Gm-Message-State: AOJu0YyDhyXft6FZ0jBi4LZzO4msREdbn+AHVyQC47l9/m6EylsY1mbI
	oUF+gDoV+GrX5vp6bHAMcsmd2KUVSBU/clwfhmiEmqmZwpnAg9G8DtkHkj+9dwnvtnl1UR/Ssp5
	R/btw
X-Gm-Gg: AZuq6aJCMSfgP2SMys12bPRyuTS4jHYI+DAbXXUCa8fj1B35vTSvKIUadUCGb5L27y7
	OrQWhScGn2JXJC76bGJAsycIrEVvvV7XQxVee9xhjoSEyu0w/4LUn/ACo7ECOghIkHU3VCBjF1d
	uOrII9X7/c8x+LMIToMhedj1MRb9G9mqRJGW4kkmQHfA6zpO/TWacGMX58SYtBmufsjZXY+rfIU
	yaU75Jl/iQ7CzbKOqCkXp3lb+Wku20ILNUyVlj4Dy6WHYumEothd6Xm423srxYn2Uwzw7ZgZwlQ
	+39mlphUpAIBBA6hbRPjqYolp+WpgOt7XkKoKNk2v5lvAAC06tn6XIBm/OaTpzSdhNSalOpnzy3
	PuSOzjtB+ig0nQAntGyLiUKT3QmSPYq1Eu0Rq5ugoIeaN+x0JWoZa/u5VQYB8pcm/AC79L4cXx4
	U29CK7lrk5cDQGTr1dTSbsVgLmhzbJ
X-Received: by 2002:a05:600c:a306:b0:477:6d96:b3e5 with SMTP id 5b1f17b1804b1-482db45ded7mr32976715e9.7.1769781170326;
        Fri, 30 Jan 2026 05:52:50 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e047e644sm16278305e9.2.2026.01.30.05.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 05:52:49 -0800 (PST)
Message-ID: <4b4ddd9a-35d1-43d7-b25b-5101f914a68e@tuxon.dev>
Date: Fri, 30 Jan 2026 15:52:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/15] PCI: renesas: rzg3s: Rework inbound window
 algorithm for multi-SoC support
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260129214130.16067-1-john.madieu.xa@bp.renesas.com>
 <20260129214130.16067-3-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260129214130.16067-3-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-261236-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E78D6BB5AA
X-Rspamd-Action: no action

Hi, John,

On 1/29/26 23:41, John Madieu wrote:
> The existing inbound window configuration algorithm has two issues that
> prevent proper operation on RZ/G3E:
> 
> 1. Over-mapping: Using roundup_pow_of_two() on the remaining region size
>     can result in windows that extend beyond the intended memory region.
> 
> 2. Alignment violation: Addresses are only aligned to 4K regardless of
>     the actual window size. According to the RZ/G3S HW manual (Rev.1.10,
>     section 34.3.7.6) and RZ/G3E HW manual (Rev.1.15, section 6.6.7.6),

Section 34.3.7.6 does not exist on RZ/G3S Rev.1.10 neither on later revisions. I 
suppose this had to be 34.6.6, point 7.

>     bit carry must not occur when adding AXI Window Base and AXI Window
>     Mask registers. This effectively requires the base address to be
>     aligned to the window size.
> 
> While RZ/G3S tolerates these issues,

I don't think it tolerates this but I haven't tested more than one window.

> RZ/G3E strictly enforces these
> constraints and requires precise window boundaries with properly aligned
> addresses.
> 
> Rework the algorithm to properly handle arbitrary region sizes and
> alignment constraints by splitting non-power-of-2 regions into multiple
> windows. The new approach iteratively selects the largest power-of-2
> size that:
>   - Fits within the remaining region (__fls of remaining size)
>   - Does not exceed the natural alignment of the CPU address (__ffs)
>   - Does not exceed the natural alignment of the PCI address (__ffs)
> 
> This ensures windows never over-map beyond the intended region and
> satisfies the hardware requirement that base address + mask must not
> cause bit carry, while maintaining the 4K * 2^N byte window size
> constraint.
> 
> The reworked algorithm is required for RZ/G3E support and remains
> fully compatible with RZ/G3S.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> 
> Changes:
> 
> v4: No changes
> v3: No changes
> v2: New patch
> 
>   drivers/pci/controller/pcie-rzg3s-host.c | 53 ++++++++++++++----------
>   1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 58e78fc52913..7b42f9415d3a 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1270,50 +1270,59 @@ static int rzg3s_pcie_set_inbound_windows(struct rzg3s_pcie_host *host,
>   	u64 pci_addr = entry->res->start - entry->offset;
>   	u64 cpu_addr = entry->res->start;
>   	u64 cpu_end = entry->res->end;
> -	u64 size_id = 0;
>   	int id = *index;
>   	u64 size;
>   
> -	while (cpu_addr < cpu_end) {
> +	/*
> +	 * According to the RZ/G3S HW manual (Rev.1.10, section 34.3.7.6) 

s/34.3.7.6/34.6.6.7 or 34.6.6 point 7


> and
> +	 * RZ/G3E HW manual (Rev.1.15, section 6.6.7.6):
> +	 * - Each window must be a single memory size of power of two
> +	 * - Mask registers must be set to (2^N - 1)
> +	 * - Bit carry must not occur when adding base and mask registers,
> +	 *   meaning the base address must be aligned to the window size
> +	 *
> +	 * Split non-power-of-2 regions into multiple windows to satisfy
> +	 * these constraints without over-mapping.
> +	 */
> +	while (cpu_addr <= cpu_end) {
> +		u64 remaining_size = cpu_end - cpu_addr + 1;
> +		u64 align_limit;
> +
>   		if (id >= RZG3S_MAX_WINDOWS)
>   			return dev_err_probe(host->dev, -ENOSPC,
>   					     "Failed to map inbound window for resource (%s)\n",
>   					     entry->res->name);
>   
> -		size = resource_size(entry->res) - size_id;
> +		/* Start with largest power-of-two that fits in remaining size */
> +		size = 1ULL << __fls(remaining_size);
>   
>   		/*
> -		 * According to the RZ/G3S HW manual (Rev.1.10,
> -		 * section 34.3.1.71 AXI Window Mask (Lower) Registers) the min
> -		 * size is 4K.
> +		 * The "no bit carry" rule requires base addresses to be
> +		 * aligned to the window size. Find the maximum window size
> +		 * that both addresses can support based on their natural
> +		 * alignment (lowest set bit).
>   		 */
> -		size = max(size, SZ_4K);
> +		align_limit = min(cpu_addr ? (1ULL << __ffs(cpu_addr)) : ~0ULL,
> +				  pci_addr ? (1ULL << __ffs(pci_addr)) : ~0ULL);
> +
> +		size = min(size, align_limit);
>   
>   		/*
> -		 * According the RZ/G3S HW manual (Rev.1.10, sections:
> -		 * - 34.3.1.69 AXI Window Base (Lower) Registers
> -		 * - 34.3.1.71 AXI Window Mask (Lower) Registers
> -		 * - 34.3.1.73 AXI Destination (Lower) Registers)
> -		 * the CPU addr, PCIe addr, size should be 4K aligned and be a
> -		 * power of 2.
> +		 * Minimum window size is 4KB.
> +		 * See RZ/G3S HW manual (Rev.1.10, section 34.3.1.71) and
> +		 * RZ/G3E HW manual (Rev.1.15, section 6.6.4.1.3.(74)).
>   		 */
> -		size = ALIGN(size, SZ_4K);
> -		size = roundup_pow_of_two(size);
> -
> -		cpu_addr = ALIGN(cpu_addr, SZ_4K);
> -		pci_addr = ALIGN(pci_addr, SZ_4K);
> +		size = max(size, SZ_4K);
>   
>   		/*
> -		 * According to the RZ/G3S HW manual (Rev.1.10, section
> -		 * 34.3.1.71 AXI Window Mask (Lower) Registers) HW expects first
> -		 * 12 LSB bits to be 0xfff. Subtract 1 from size for this.
> +		 * HW expects (size - 1) for mask register, e.g., a 4KB window
> +		 * (0x1000) requires mask value 0xFFF.

This change is unrelated for this patch. It can be dropped.

With those addressed:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

>   		 */
>   		rzg3s_pcie_set_inbound_window(host, cpu_addr, pci_addr,
>   					      size - 1, id);
>   
>   		pci_addr += size;
>   		cpu_addr += size;
> -		size_id = size;
>   		id++;
>   	}
>   	*index = id;


