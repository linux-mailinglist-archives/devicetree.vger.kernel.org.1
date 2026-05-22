Return-Path: <devicetree+bounces-301630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK6YBCocEGrqTgYAu9opvQ
	(envelope-from <devicetree+bounces-301630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:04:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC8D5B0D45
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 291043007B1F
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 09:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE383B47CB;
	Fri, 22 May 2026 09:04:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56F43B27E9;
	Fri, 22 May 2026 09:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.42.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779440675; cv=none; b=ZBCKY78sN6mXeWE8CUNJpRRnoO7XNQBK4AI+oP0FlCn36ZCNhfBUf6XsvuPsk8XR/p4EP8Bhm1LjbZEdqLqFTQkaXhqeF87vzw4sZ8V9ubDNkkHlp1xr6iedzQuDx5D3z8hy3Qd1I5HY8SAGzQOpdcTo0WuYaWnkzh91tBshj98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779440675; c=relaxed/simple;
	bh=GmpQyCnwSi3HeTaUflvNba8/clR0PQ0pY+xm4O82Ykc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D6szWh7YMQeER4zyCxvhN6E758YVOqoyiBQogjlBd07dujwtMH6mR8qfDpUUB7zm/vnVZolv+ppl/5LYtUTbs78A4/bT/BuJPbU6azDVIodEZydZQYFfQa3StSgH7WuGs/nyGGGeVqzGbVpKk9j1x7nR6PIPCT2Bw0nCXoAPmZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr; spf=pass smtp.mailfrom=online.fr; arc=none smtp.client-ip=212.27.42.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=online.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=online.fr
Received: from [10.0.0.2] (unknown [82.65.243.93])
	(Authenticated sender: legoll@free.fr)
	by smtp5-g21.free.fr (Postfix) with ESMTPSA id 85DA65FFAA;
	Fri, 22 May 2026 11:04:08 +0200 (CEST)
Message-ID: <a1e63aaa-1069-4308-931c-8140774d87e0@online.fr>
Date: Fri, 22 May 2026 11:04:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: spacemit: set console baud rate on OrangePi
 RV2
To: Jennifer Berringer <jberring@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Cc: spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260520111150.3300707-1-jberring@redhat.com>
Content-Language: en-US
From: Vincent Legoll <legoll@online.fr>
In-Reply-To: <20260520111150.3300707-1-jberring@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[online.fr : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301630-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.932];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legoll@online.fr,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0AC8D5B0D45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jennifer,

On 5/20/26 13:11, Jennifer Berringer wrote:
> Set the baud rate to 115200, matching what is used by U-Boot on this
> platform so that the console is usable even when console options are not
> specified in cmdline.
>
> Fixes: bab8dea259100 ("riscv: dts: spacemit: Add OrangePi RV2 board device tree")
> Signed-off-by: Jennifer Berringer <jberring@redhat.com>
> ---
>   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> index 7c49bce427f30..07dbd292eee33 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> @@ -22,7 +22,7 @@ aliases {
>   	};
>   
>   	chosen {
> -		stdout-path = "serial0";
> +		stdout-path = "serial0:115200n8";
>   	};
>   
>   	pcie_vcc3v3: regulator-pcie-vcc3v3 {
>
> base-commit: e2518e8cb1dde64af2d1bb246639bb7ef7523f7a

I did the same patch, a few days ago, and tested it OK, but did not have 
time to do a proper submission.

So, if it's useful, you can add my:

Tested-by: Vincent Legoll <legoll@online.fr>

Regards


