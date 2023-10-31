Return-Path: <devicetree+bounces-13300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF27DD674
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 20:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C545B20DD0
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 19:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644F821A16;
	Tue, 31 Oct 2023 19:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WCZxeK3s"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171FDEDA;
	Tue, 31 Oct 2023 19:01:21 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 865AFE6;
	Tue, 31 Oct 2023 12:01:20 -0700 (PDT)
Received: from [100.116.17.117] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 49CD3660739C;
	Tue, 31 Oct 2023 19:01:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698778879;
	bh=BsAPLmxB3DURCesPkkALL1Ia9odxLqJSAjKdGFe9DFk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WCZxeK3sLNVm9MIkijRBlhmkwy+YNEGi5hmdI3xqpapX61FnUrjRkL+OVx3VFmVRS
	 drh0mK9vLQP+hiWGTMupWxpUK3dHW3AsVKlU0EwqPDsnW3mLKoKyOONwGZMpq8HWJz
	 URc2exjGqu2/Y5ywgAZ3362kvT+5yZn7GlgWUx6EerBjLP2j+CTXlTQpy+Gph1EqW8
	 xdk7eBBSBJaQlo1MDw8Ft/ZYBEpGJl4NnoHL3cFKCgnapNzn0knWhG6LPvdOaE5KHV
	 vOBY59kZBj9096AbhYoDMrII3me6aa9boP5HBZtK6eIpo8fHs1vTeb4aHcbNZpukU5
	 FKOXKuH1JbEVw==
Message-ID: <4e71c2ff-6189-4a2d-8ec0-fb9fe4a9971f@collabora.com>
Date: Tue, 31 Oct 2023 21:01:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] riscv: dts: starfive: jh7100: Add ccache DT node
Content-Language: en-US
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Samin Guo <samin.guo@starfivetech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
 <20231029042712.520010-8-cristian.ciocaltea@collabora.com>
 <CAJM55Z8D12XoRG4WGaf=PG0_yp7d_xk9EhOk7bnCKQRMok9eBA@mail.gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <CAJM55Z8D12XoRG4WGaf=PG0_yp7d_xk9EhOk7bnCKQRMok9eBA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/31/23 16:38, Emil Renner Berthing wrote:
> Cristian Ciocaltea wrote:
>> Provide a DT node for the SiFive Composable Cache controller found on
>> the StarFive JH7100 SoC.
>>
>> Note this is also used to support non-coherent DMA, via the
>> sifive,cache-ops cache flushing operations.
> 
> This property is no longer needed:
> https://lore.kernel.org/linux-riscv/20231031141444.53426-1-emil.renner.berthing@canonical.com/

Thanks for the heads up! I actually noticed that from v1 reviews and was
just waiting for v2. :)

> Also it would be nice to mention that these nodes are copied from my
> visionfive patches ;)

Ups, sorry about that! Those were initially taken from a patch adding a
full DT (the repo is mentioned in the cover letter) with many
contributors mentioned, without being clear who did what. That's why I
didn't provide a Co-developed-by tag and, unfortunately, I also missed
to add it in v2 (will handle this in v3 and also provide the link to the
new repo), but I'm still not sure about the gmac stuff.

Thanks,
Cristian

>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> index 06bb157ce111..a8a5bb00b0d8 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
>> @@ -32,6 +32,7 @@ U74_0: cpu@0 {
>>  			i-tlb-sets = <1>;
>>  			i-tlb-size = <32>;
>>  			mmu-type = "riscv,sv39";
>> +			next-level-cache = <&ccache>;
>>  			riscv,isa = "rv64imafdc";
>>  			riscv,isa-base = "rv64i";
>>  			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
>> @@ -60,6 +61,7 @@ U74_1: cpu@1 {
>>  			i-tlb-sets = <1>;
>>  			i-tlb-size = <32>;
>>  			mmu-type = "riscv,sv39";
>> +			next-level-cache = <&ccache>;
>>  			riscv,isa = "rv64imafdc";
>>  			riscv,isa-base = "rv64i";
>>  			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
>> @@ -147,6 +149,18 @@ soc {
>>  		dma-noncoherent;
>>  		ranges;
>>
>> +		ccache: cache-controller@2010000 {
>> +			compatible = "starfive,jh7100-ccache", "sifive,ccache0", "cache";
>> +			reg = <0x0 0x2010000 0x0 0x1000>;
>> +			interrupts = <128>, <130>, <131>, <129>;
>> +			cache-block-size = <64>;
>> +			cache-level = <2>;
>> +			cache-sets = <2048>;
>> +			cache-size = <2097152>;
>> +			cache-unified;
>> +			sifive,cache-ops;
>> +		};
>> +
>>  		clint: clint@2000000 {
>>  			compatible = "starfive,jh7100-clint", "sifive,clint0";
>>  			reg = <0x0 0x2000000 0x0 0x10000>;
>> --
>> 2.42.0
>>

