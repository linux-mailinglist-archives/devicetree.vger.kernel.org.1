Return-Path: <devicetree+bounces-174858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B022AAF144
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 04:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 610F97A70F8
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 02:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206FA1DE8BF;
	Thu,  8 May 2025 02:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="YPGBrEvL"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F289B72639
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 02:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746672577; cv=none; b=NEhMVeE9InAmRZ+LnDbprWoCieW2b618ey85jruvvQ8e6+TWmx/AE1s4BgHF/K/Iwt2VuLZrUUvYnoGIZzyul0A6Te45scwi3mLQB5LNnTlXjTyWUL8DR4JR6hc/z+qTV+sUSHnvjCeqhP+8NPdp5G94AowGpjeSrjYu6ITiaNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746672577; c=relaxed/simple;
	bh=LWtro9cEpYvHuFt0E2C5crZKY/DWfTGNe9lKkzAMZQM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=lWJC7rU4+f0auRVscpAewbJAWM7euMWc+3Mvcvk917yUht5S//3ySGhgY0Z1PZ/cNxR3LrAABR/ivTMGe7k/VuOaDV+n+3jqmdTLsrLomGZjpjRA4i0HFshS8SMQPMBXmsquKgW/rartfPLRuFGfpREo2Tn3mpbRVvqZrrYuTSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=YPGBrEvL; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <2f2c5e56-35b1-4d23-be52-0266bcb1ca98@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1746672572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uO+pFkIESIfEB9NPR4KJeLeb/tgaXyqm4g7Fug6ky/Y=;
	b=YPGBrEvL3SEMn5dr9nQ0x93QbPXx+XXXHVY97lsPhPkCKfFvYbBMLHlyOnnNnkbr8EPgLh
	aOaNzBk5xrx+qzFXVRz9KyAzI9vdSEtPZHLJlNoJF9+SEOy9jS6XFN3IHu/Hu0w69ZKQ+K
	39aN7dI6hI+rtRaw0FjdlkUkejBPUUo=
Date: Thu, 8 May 2025 10:49:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] Initial support for CTCISZ Ninenine Pi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yanteng Si <si.yanteng@linux.dev>
To: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Junhao Xie <bigfoot@classfun.cn>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Aradhya Bhatia <a-bhatia1@ti.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 Mingcong Bai <jeffbai@aosc.io>, Kexy Biscuit <kexybiscuit@aosc.io>
References: <20250501044239.9404-2-ziyao@disroot.org>
 <d0575ec1-1901-4534-875c-fa9375e54e3d@linux.dev>
Content-Language: en-US
In-Reply-To: <d0575ec1-1901-4534-875c-fa9375e54e3d@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT



在 5/7/25 6:08 PM, Yanteng Si 写道:
> 在 5/1/25 12:42 PM, Yao Zi 写道:
>> This series adds support for CTCISZ Ninenine Pi, which ships an Loongson
>> 2K0300 SoC and various peripherals. The vendor prefix and the board are
>> documented and basic SoC/board devicetrees are added.
>>
>> I've successfully booted into console with vendor U-Boot, a bootlog
>> could be obtained here[1]. DTB and initramfs must be built into the
>> kernel as the vendor bootloader cannot pass them and upstream U-Boot
>> support for LoongArch is still WIP.
>>
>> Thanks for your time and review.
>>
>> [1]: https://gist.github.com/ziyao233/7fd2c8b3b51ef9b30fe5c17faae1bc4e
>>
>> Yao Zi (4):
>>    dt-bindings: vendor-prefixes: Add CTCISZ Technology Co., LTD.
>>    dt-bindings: LoongArch: Add CTCISZ Ninenine Pi
>>    LoongArch: dts: Add initial SoC devicetree for Loongson 2K0300
>>    LoongArch: dts: Add initial devicetree for CTCISZ Ninenine Pi
>>
>>   .../bindings/loongarch/loongson.yaml          |   5 +
>>   .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>>   arch/loongarch/boot/dts/Makefile              |   1 +
>>   arch/loongarch/boot/dts/loongson-2k0300.dtsi  | 197 ++++++++++++++++++
>>   .../boot/dts/ls2k0300-ctcisz-nineninepi.dts   |  41 ++++
>>   5 files changed, 246 insertions(+)
>>   create mode 100644 arch/loongarch/boot/dts/loongson-2k0300.dtsi
>>   create mode 100644 arch/loongarch/boot/dts/ls2k0300-ctcisz- 
>> nineninepi.dts
> 
> For all the patch sets:
> 
> Reviewed-by: Yanteng Si <si.yanteng@linux.dev>
I'm sorry. As there is no consensus yet on the name
of the development board, could you please refrain
from picking my R_B until this discussion is completed?
Thank you so much for your understanding and cooperation!

Thanks,
Yanteng
> 
> 
> Thanks,
> Yanteng
>>
> 


