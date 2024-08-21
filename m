Return-Path: <devicetree+bounces-95576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B01B795A028
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6EFEB24D3B
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 14:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7038C1B3B03;
	Wed, 21 Aug 2024 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="rdL2SywO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E281B2EFA
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 14:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724251171; cv=none; b=HSN0FcAFlUvu0AGNFVKYHJKUTnYCzLK4DFQvAqmNlhV7al/2s/CeN3ZozlDC5Ln7/r9T5tzTx67P6I3v9oJYl9ovvut8dZn0Yu1r3Okbh/fE+1WRZXQBwuWLBPBvwMIRfWvubBO1hozYJFRaKl7Z1W6qgHS3oaKbQR1q+lCrfeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724251171; c=relaxed/simple;
	bh=rpHc+9JzPatwK2JjLiqQok+PhFNbMwe+450h1ay/W7Q=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=g44RUxm5I9QrsRgTZQGZ4gcaIjQEcNqzdzEDfB4Webvy2tmEuLDKYLIdS8OnX0cTxDXF2sO/nSQ0JPWz4/PjYwNgN7oQgi5HFS5JHefxrVcSYOXsmYcuaVgB90sJqhMZKCJS2GnrMh3WMfmXU/FyOMsz68ECzEaOPf9pXz1mRzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=rdL2SywO; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724251165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=af/USMng0ATq4RdHLWtR6P/XVEHh9dXoWbxHkvOzCjw=;
	b=rdL2SywOcYjMLgkgvnTBaC/qHQzppS8gH/CDvJWNX6hoJonQ3CqO2NWEzjuJdp8HvRt+gK
	aOD5r37OpjpzDdtISd4Ul5Vz8Z8VpHzdySqll6/RlmwM/QW3LadAZgqnfGQR8Uqi6jyokD
	s8Ud71FfKwQo6Ev/3t9XoZBA0CxxAyHzDlsRwbiWEcuceWDkPpJOFmXlHWeQtA+GGtrEx2
	fAMwH2fh46ku2BmfmZ6W68MZcMCkIDTOzfd3/CcQ/3P0jMBdlM0aH+/zkJzF10Jx+qvQrh
	HqqnJIxMXu8n4+SZizSXnBh8B/P4QDfUI30SH0NIlRnILN8X6DnBySnMESs0mQ==
Date: Wed, 21 Aug 2024 16:39:25 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 naoki@radxa.com
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
In-Reply-To: <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
Message-ID: <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

On 2024-08-21 15:13, Krzysztof Kozlowski wrote:
> On 21/08/2024 12:26, Marcin Juszkiewicz wrote:
>> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>> 
>> The miniPCIe slot got removed and USB 2.0 configuration has changed.
>> There are two external accessible ports and two ports on the internal
>> header.
>> 
>> There is an on-board USB hub which provides:
>> - one external connector (bottom one)
>> - two internal ports on pin header
>> - one port for m.2 E connector
>> 
>> The top USB 2.0 connector comes directly from the SoC.
>> 
>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61 
>> ++++++++++++++++++++++
>>  2 files changed, 62 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile 
>> b/arch/arm64/boot/dts/rockchip/Makefile
>> index fda1b980eb4b..0f982c741243 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>> new file mode 100644
>> index 000000000000..e950e40632cf
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>> @@ -0,0 +1,61 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2023 Thomas McKahan
>> + * Copyright (c) 2024 Linaro Ltd.
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "rk3588-nanopc-t6.dts"
> 
> Do not include DTS files. Please rename board to DTSI (which is for
> includes) and then include it in respective boards. Remember to 
> generate
> patches with proper -M/-B/-C so the rename will be properly recognize.

This is perhaps a good opportunity to discuss this.  I already saw at
least half a dozen of instances where a board dts file is included in
another board dts file that modifies or extends it for another version
of the same board, or something like that.

Moreover, we'll most likely have to introduce quite a few new board dts
files, for board versions that use different type of DRAM and so far 
were
handled in U-Boot only. [1]

Thus, I think this is a good opportunity to conclude what to do there.
If you insist on converting already existing dts files into dtsi files,
we'll be introducing much more changes, which I'd be fine with, but I'd
then also like to convert _all_ existing cases of dts file inclusion 
into
proper inclusion of dtsi files, which will result in even more new files
being introduced, etc.

[1] 
https://lore.kernel.org/linux-rockchip/172408433165.1619643.7928785825448507704.robh@kernel.org/T/#m52de793f30579a8063f66eb2e64026776da55a66

