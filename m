Return-Path: <devicetree+bounces-178269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ABBABB2E3
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 03:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B486518949F0
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 01:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D3884A3E;
	Mon, 19 May 2025 01:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="TqBOW5oM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F1D487BF
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747618475; cv=none; b=pcr0YZML62PGh0ZdprrxR3E6BE31GqpDWtOzWT7BIibNpLZz6shYXEkzH+ujYBA4bSsV1qk3XMcPvU3qccP/8tN89kUOrGHTLwBdDN3fjpRRNcKz9/+vW79C0TfaC/92KnOjHmaR9atZoIzTB2inS84UI5RETPab+Csfjrm1vZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747618475; c=relaxed/simple;
	bh=Qc1EXOp+VFVpo+P8qf5fZxdfoRyT6rf4SxmIwyBxt0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UL4j5JY/YYUulN9+KjxScBpqqyneXYWtcoxUi531olrQ5otrqxCCav0A6Sy7HCy8R1YzTFeJzd/FEHQgvX2dwF4oFvMXrXzr+/yeI0xMSoLJO22HcLwDayIBFLVTwHsZAKr578fJzQhUXeqaJ04WT5mAUfyV6oFUTh3kLuWk6CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=TqBOW5oM; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <00f3ca2e-1794-411b-b868-1f0e44159e3c@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1747618461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9MrpenPOGI8IOgPbQOKN/Gsm/XHAnt3uSEhFaolPauc=;
	b=TqBOW5oMD0qd5K35IcIbvrISxq9nMyhRKq1kDkKDcry1enoHyqieL2gQFDkpD69hEPs10E
	n0H2K0lbcahFy4iQQiQdCYrPjjM2iPWAP2WmLaAelkEJHNxK9P/f357CHqGlPvbtdXwg6b
	oPUGndS/xPSHAERlkH/6r/9NJQR1oAU=
Date: Mon, 19 May 2025 09:33:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/4] Initial support for CTCISZ Forever Pi
To: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Junhao Xie <bigfoot@classfun.cn>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Aradhya Bhatia <a-bhatia1@ti.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, Mingcong Bai <jeffbai@aosc.io>,
 Kexy Biscuit <kexybiscuit@aosc.io>
References: <20250518080356.43885-1-ziyao@disroot.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yanteng Si <si.yanteng@linux.dev>
In-Reply-To: <20250518080356.43885-1-ziyao@disroot.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

在 5/18/25 4:03 PM, Yao Zi 写道:
> This series adds support for CTCISZ Forever Pi, which ships an Loongson
> 2K0300 SoC and various peripherals. The vendor prefix and the board are
> documented and basic SoC/board devicetrees are added.
> 
> I've successfully booted into console with vendor U-Boot, a bootlog
> could be obtained here[1]. DTB and initramfs must be built into the
> kernel as the vendor bootloader cannot pass them and upstream U-Boot
> support for LoongArch is still WIP.
> 
> Thanks for your time and review.
> 
> [1]: https://gist.github.com/ziyao233/54ef900406876b5554f627d1ba0e130e
> 
> Changed from v1 ("Initial support for CTCISZ Ninenine Pi")
> - Board binding:
>    - Use "Forever Pi" instead of "Ninenine Pi" as translation of the
>      board model
> - SoC devicetree:
>    - Move UART aliases to the board dt
>    - Add the missing space in definition of liointc0
> - Link to v1: https://lore.kernel.org/all/20250501044239.9404-2-ziyao@disroot.org/
> 

> Yao Zi (4):
>    dt-bindings: vendor-prefixes: Add CTCISZ Technology Co., LTD.
>    dt-bindings: LoongArch: Add CTCISZ Forever Pi
>    LoongArch: dts: Add initial SoC devicetree for Loongson 2K0300
>    LoongArch: dts: Add initial devicetree for CTCISZ Forever Pi
> 
>   .../bindings/loongarch/loongson.yaml          |   5 +
>   .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>   arch/loongarch/boot/dts/Makefile              |   1 +
>   arch/loongarch/boot/dts/loongson-2k0300.dtsi  | 184 ++++++++++++++++++
>   .../boot/dts/ls2k0300-ctcisz-forever-pi.dts   |  45 +++++
>   5 files changed, 237 insertions(+)
For the patch sets.

Reviewed-by: Yanteng Si <si.yanteng@linux.dev>

Thanks,
Yanteng

