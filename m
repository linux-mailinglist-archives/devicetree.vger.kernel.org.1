Return-Path: <devicetree+bounces-48096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7AB870262
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 14:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2B6C1C21B05
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 13:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5773C3D0C8;
	Mon,  4 Mar 2024 13:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="loPKmt0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FAF3D565
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 13:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709557927; cv=none; b=cA1AuBLn2yoEvm/rA9RXrM3d0IJiQpodT1BwYeGcGRVS8d05WQYt8mHISrjbN5hfPoShIO63FbR/z18TDOsBpZ3OObJfcGg8U6CuR1Z5Vsgfe0EVM2x3Yjv3R6FuHpuo47bQpPHxuKqELkaWKvRZd9QyHe6llJHL715X8K8u0R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709557927; c=relaxed/simple;
	bh=F3FUKp938SVxyDEse2B9IjtQiWZzPxBcVNnCQV83H9s=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Ri6gG9pyZF1uojW7LSmyEwRrcSiJPJCjv2f8P7G5OBuVTOU/idGkPmjEOfzlGuvUwoxOzzRrk+SHdnYgjoWVi5Mzm2pNC5/uX7XrWlHiTDgrzT3VT7pMljowI3WfraUWro7qVFZ+VcMesuDFJX/AKrWXsMnJVBjHc/VK/8XDNkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=loPKmt0/; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709557921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9cpsE+L2azdJH3agdL084pTpCyY9lSCsXj9FgOAjtRc=;
	b=loPKmt0/Vm2InjIYdY4wvQYlnkX2PFAO7E91agZe8raoFpIGnEXNkrFTOoN+4H2HrcaF3J
	FbvEyLiQox17HVBS8xiFKpU3gVfzFwmrmqkPXlLkdphfEMasmf8pBYRDCaZKV32dIEfJSh
	jxyxXFMAbiczz1ulQ3tOMkp+GpMd6XjkIzkZlH9cBqtQsrMK+tSwNBXz2SKFsmdhpA9dqP
	XP2nCAxBoUEnyYhr/hAhDOw13XmIXBQYkNX9KWW66+6OahchnStHv6Y7WqM+21RZPDz2/k
	b4uymx7ebzjBTa4CzBWl/gqyLQp3hYM1nW7y+oEBRYZcWD/2t0nPWi+hRNJ4Ww==
Date: Mon, 04 Mar 2024 14:12:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
 <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
Message-ID: <9100ca3393b415b369d2c5d63322e1a2@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Anand,

On 2024-03-04 10:21, Anand Moon wrote:
> On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>> 
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes /proc/cpuinfo and lscpu(1), to present 
>> proper
>> RK3566 and RK3568 cache information.  Also, it gets rid of the 
>> following
>> error in the kernel log:
>> 
>>   cacheinfo: Unable to detect cache hierarchy for CPU 0
>> 
>> The cache parameters for the RK356x dtsi were obtained and partially 
>> derived
>> by hand from the cache size and layout specifications found in the 
>> following
>> datasheets and technical reference manuals:
>> 
>>   - Rockchip RK3566 datasheet, version 1.1
>>   - Rockchip RK3568 datasheet, version 1.3
>>   - ARM Cortex-A55 revision r1p0 TRM, version 0100-00
>>   - ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02
>> 
>> For future reference, here's a rather detailed summary of the 
>> documentation,
>> which applies to both Rockchip RK3566 and RK3568 SoCs:
>> 
>>   - All caches employ the 64-byte cache line length
>>   - Each Cortex-A55 core has 32 KB of L1 4-way, set-associative 
>> instruction
>>     cache and 32 KB of L1 4-way, set-associative data cache
>>   - There are no L2 caches, which are per-core and private in 
>> Cortex-A55,
>>     because it belongs to the ARM DynamIQ IP core lineup
>>   - The entire SoC has 512 KB of unified L3 16-way, set-associative 
>> cache,
>>     which is shared among all four Cortex-A55 CPU cores
>>   - Cortex-A55 cores can be configured without private per-core L2 
>> caches,
>>     in which case the shared L3 cache appears to them as an L2 cache;  
>> this
>>     is the case for the RK356x SoCs, so let's use "cache-level = <2>" 
>> to
>>     prevent the "huh, no L2 caches, but an L3 cache?" confusion among 
>> the
>>     users viewing the data presented to the userspace;  another option 
>> could
>>     be to have additional 0 KB L2 caches defined, which may be 
>> technically
>>     correct, but would probably be even more confusing
>> 
>> Helped-by: Anand Moon <linux.amoon@gmail.com>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
> 
> Thanks, Please add my
> Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thank you for your review.

>> Notes:
>>     As already agreed upon with Anand Moon, this patch replaces the 
>> submission
>>     of a similar, albeit a bit incorrect patch [1] that appeared a bit 
>> earlier
>>     on the linux-rockchip mailing list.
>> 
>>     [1] 
>> https://lore.kernel.org/linux-rockchip/20240226182310.4032-1-linux.amoon@gmail.com/T/#u
>> 
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 41 
>> ++++++++++++++++++++++++
>>  1 file changed, 41 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index c19c0f1b3778..6dfb2d47d3d0 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -57,36 +57,77 @@ cpu0: cpu@0 {
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu1: cpu@100 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x100>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu2: cpu@200 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x200>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu3: cpu@300 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x300>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>>         };
>> 
>> +       /*
>> +        * There are no private per-core L2 caches, but only the
>> +        * L3 cache that appears to the CPU cores as L2 caches
>> +        */
>> +       l3_cache: l3-cache {
>> +               compatible = "cache";
>> +               cache-level = <2>;
>> +               cache-unified;
>> +               cache-size = <0x80000>;
>> +               cache-line-size = <64>;
>> +               cache-sets = <512>;
>> +       };
>> +
>>         cpu0_opp_table: opp-table-0 {
>>                 compatible = "operating-points-v2";
>>                 opp-shared;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

