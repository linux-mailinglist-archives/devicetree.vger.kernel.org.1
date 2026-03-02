Return-Path: <devicetree+bounces-270141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MrcCkG9pWn8FQAAu9opvQ
	(envelope-from <devicetree+bounces-270141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A611D1DD0AE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11F98304A888
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C00BF2E1C63;
	Mon,  2 Mar 2026 16:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QlUk4FxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8FB41C0DE
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469022; cv=none; b=an9DJw92CcwIniUB5+utwCTPEalzU33FT8oPdhSd/k2+D84CH1S18zIbFRf4r4mBMayzJXmiEmvrVQykVzNRc0wzUYjjV77lsdcBzZOj0xXSlFAuYqnJWLhZHD8NAX9TaTQ8coFTOIuKKPujRvZ3URhFE57Y11jT8tFNrbjm/Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469022; c=relaxed/simple;
	bh=InL1BUMOfeVyZo7m+EoNrF/nfvrIDyNxtRvoB+UGFdM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JuhxmEa3jxz2OiBm5QIq1BYlcojAfC71QEknIhmJeGYCSc64RyUlV9qcCKW/mCH0cQvowuYYCK/R7H1gHX19SQg2PZSje/iVKVl7PoRNcC9x45F92xesu0nfaBJlhT3GCN2NmcvBPW47e/xitzSVRViKkVDlmw4ewYDFvfdswNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QlUk4FxE; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-483bd7354efso62644095e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772469019; x=1773073819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0s39U97W2f9SABdbDeZAgoXF6pj1iuSWIw1QAIsWOcs=;
        b=QlUk4FxEII/LBOD7wpXXkIAPaat4PBoKmOny+rQpuminNVjhe27X9b4XZl6Ef75S/a
         kaAcecLQH1LnMXRZ3NNbBABu+EZlScBQQV1NYoAFh3XvR3i1vXUy9/TP6N4yX5twprfq
         B5jf9uvjvgtIXYxJgThoZHSkfTnVRO9Ml2gNv00r3cqwkCqjGKlQFAxuXge6//B1Jmun
         SzWiCwNbX7SvpIWP+FiLTh4bdo7mKzlyr1707oESQ71px9sS2QPKD6fw7f5zXGrl6qrv
         ZRUCOG3825DN5QPF+TBtkivgcGzncpA6aKxDHCXGOBOcpl72W4wfIEzBd0d6V3RbVNf5
         oeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772469019; x=1773073819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0s39U97W2f9SABdbDeZAgoXF6pj1iuSWIw1QAIsWOcs=;
        b=qBA767wJ+8+r02R/iVYQ/gaEvpT3avggWRsvhsYbD3lcgClS8qFIwA+dbebYclvN1m
         3ufMMQRZHtoToMol38WFL6tK0DE3HkQOe3qLH4rU4Id/eiJ36HjTpYwme3ZMLyuxSoKn
         a1wHiPaUCr4yOoZmcEVlpe3T/xrpuPlK7oxOsmnshqvstqQaR+s4YU252myqaZdPAlnF
         8+Le9+O86f/+0hq+mWG2WdLkLh09sJLdSXrBpefi5VR3PjFs9DT5Ze1noe8egAj3Mqrf
         HbS3dISAMRdMldz4lHy+KZpVW1Pi5niSeUMmo98k3lXl+ctSsiCmktw+ruF59PGKU2Hm
         CMwA==
X-Forwarded-Encrypted: i=1; AJvYcCV3LrGFyswtnB9Uko2zSprdD/IwekWYWEuRZOkDEGxevyQKEN5EQVAPK0LtsLTo6X7FlIZuDDS2pzik@vger.kernel.org
X-Gm-Message-State: AOJu0YykGN2gw6d+g19heiMJ8dZgzDUgiG2o2hGF3Zv9/3rTsrA7A4am
	sTD7r4Ah3cKf+pCircbUBkw1pLl3JhDD7L0uNsXB1rv88KAx8WQWxpemsf1d5i1sfsQ=
X-Gm-Gg: ATEYQzxUxpMRzakdOBXRmOrvQ98PzLi0cFDtx0WuxBjtMFGNPnRfYJ8r5pCqP9D06BW
	5G1He1h2rbm25sTVCE944CS+p9yxzEVv6udREx58NPcPmFShghBKV/NPABBYm7OMIgXwDmzrvX/
	4qqhWIvT+9VM7Q0N0PMwfZRueULR15Q8KY71R963PVPykqrtT6GDRewUsX7yg1HXz3pDtWXenUC
	k67fTtFU5wvI2rTKkb6K78vp3VeRjTngseZEOnX2YkDVYhwO3hNYH9HReuE2Ria7tU2gyGw3a0I
	yuCn/xUnXZ+QBjUFLJGLd6dcCjGP0ulnex/mkP+b2DImyVG4CNVoojlCTawUV9lwKzjnD4iW6tR
	ko4qz5OwHntCz72bEgCX6yHn9rVHG5DXBc3cZ2rogEVwFfnaZV1OQgT4q3ohbDTpt2jGP0j0lVz
	B2iMtG3pbgfmwCbux3wp7m0ylh7yt8epEoZuRi
X-Received: by 2002:a05:600c:a4b:b0:483:71f7:2797 with SMTP id 5b1f17b1804b1-483c9ba3785mr244820005e9.14.1772469019294;
        Mon, 02 Mar 2026 08:30:19 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b4d06c27sm10041568f8f.17.2026.03.02.08.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:30:18 -0800 (PST)
Message-ID: <0f19243e-60b2-42af-b059-fb19cec23826@tuxon.dev>
Date: Mon, 2 Mar 2026 18:30:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 03/15] PCI: renesas: rzg3s: Rework inbound window
 algorithm for multi-SoC support
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-4-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-4-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A611D1DD0AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270141-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

The patch title should be:

"PCI: rzg3s-host: Rework inbound window algorithm for multi-SoC support"

Sorry for missing it in the previous versions.

Thank you,
Claudiu

On 2/27/26 17:32, John Madieu wrote:
> The existing inbound window configuration algorithm has two issues that
> prevent proper operation on RZ/G3E:
> 
> 1. Over-mapping: Using roundup_pow_of_two() on the remaining region size
>     can result in windows that extend beyond the intended memory region.
> 
> 2. Alignment violation: Addresses are only aligned to 4K regardless of
>     the actual window size. According to the RZ/G3S HW manual (Rev.1.10,
>     section 34.6.6.7) and RZ/G3E HW manual (Rev.1.15, section 6.6.7.6),
>     bit carry must not occur when adding AXI Window Base and AXI Window
>     Mask registers. This effectively requires the base address to be
>     aligned to the window size.
> 
> RZ/G3E strictly enforces these constraints and requires precise window
> boundaries with properly aligned addresses.
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
> Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> 
> Changes:
> 
> v7: No changes
> v6: No changes
> 
> v5:
>   - Updated HW manual section specification
>   - Collected Rb tag
> 
> v4: No changes
> v3: No changes
> v2: New patch
> 
>   drivers/pci/controller/pcie-rzg3s-host.c | 53 +++++++++++++-----------
>   1 file changed, 29 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 222891324374..7f5ffc5c218a 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1270,50 +1270,55 @@ static int rzg3s_pcie_set_inbound_windows(struct rzg3s_pcie_host *host,
>   	u64 pci_addr = entry->res->start - entry->offset;
>   	u64 cpu_addr = entry->res->start;
>   	u64 cpu_end = entry->res->end;
> -	u64 size_id = 0;
>   	int id = *index;
>   	u64 size;
>   
> -	while (cpu_addr < cpu_end) {
> +	/*
> +	 * According to the RZ/G3S HW manual (Rev.1.10, section 34.6.6.7) and
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
>   
> -		/*
> -		 * According the RZ/G3S HW manual (Rev.1.10, sections:
> -		 * - 34.3.1.69 AXI Window Base (Lower) Registers
> -		 * - 34.3.1.71 AXI Window Mask (Lower) Registers
> -		 * - 34.3.1.73 AXI Destination (Lower) Registers)
> -		 * the CPU addr, PCIe addr, size should be 4K aligned and be a
> -		 * power of 2.
> -		 */
> -		size = ALIGN(size, SZ_4K);
> -		size = roundup_pow_of_two(size);
> -
> -		cpu_addr = ALIGN(cpu_addr, SZ_4K);
> -		pci_addr = ALIGN(pci_addr, SZ_4K);
> +		size = min(size, align_limit);
>   
>   		/*
> -		 * According to the RZ/G3S HW manual (Rev.1.10, section
> -		 * 34.3.1.71 AXI Window Mask (Lower) Registers) HW expects first
> -		 * 12 LSB bits to be 0xfff. Subtract 1 from size for this.
> +		 * Minimum window size is 4KB.
> +		 * See RZ/G3S HW manual (Rev.1.10, section 34.3.1.71) and
> +		 * RZ/G3E HW manual (Rev.1.15, section 6.6.4.1.3.(74)).
>   		 */
> +		size = max(size, SZ_4K);
> +
>   		rzg3s_pcie_set_inbound_window(host, cpu_addr, pci_addr,
>   					      size - 1, id);
>   
>   		pci_addr += size;
>   		cpu_addr += size;
> -		size_id = size;
>   		id++;
>   	}
>   	*index = id;


