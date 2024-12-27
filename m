Return-Path: <devicetree+bounces-134377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6509FD520
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:07:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46F34162D92
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108A21E529;
	Fri, 27 Dec 2024 14:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="v+8jVoKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F70B1E489
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 14:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735308431; cv=none; b=AqwoKceuwIT6ckPwi7Fb2MDdoJekd0QJCHa9M7rVd/+rYxSSQowu3rws4wZZxDyUZ7ilCflBCl5SQBe0HQJA5sUnUVN1+8DAv+LDoylnTj1Vhui8bgwoRFF91K9LfgwJfuA3sbH5IqYDRtHd5zG544mEDjLU3ixd6eYK/TcGpvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735308431; c=relaxed/simple;
	bh=6ZeLmXtszq1I2/qMjidB+M0UfAwk1r+DI8+bKzkV8Ts=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=JYScoD2cgzh/knS3IMSPUrIINyNMgfleEb1BlRU9/71fzhzXLR7iZ8szeaRDJ1PnEe37L5J0wxokfaG08b9Vx6T9+7K87kCjYFp6fba4/9flFS7zoXPRB1Tc2CY9OmAUljuxW6H0Jts3Kc26U35InjieS7kF/NuwYI31fU6qkvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=v+8jVoKV; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735308427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T9tP804CKKIc8fPyno90HqS3ih3nV1edUalGMWSC688=;
	b=v+8jVoKVewKz0JKLMRH781Ex5RKwvl0OpdQQ7PAJSh2+dkScAA1ba92TNcBtDA/Mc2Z2mi
	omTvJ6zuFoK6yxZRn6FD05NNKk5GWEqXSRPbdGpiGUOrO1B2gfTc32YpFt47QVWm5lswtH
	L8i3vu3bKBEcs2TsiG0FS9U32QlxwRelvfaiY1MsWVnkErNMGyeg9Mz0C9m6qhhKwugXh4
	2X7pL2QwW+kEQqjCPnR/z2gLYC9garblYugfuY5q0Y+CimMEleztp9LfKLz0A2mSSbPPSU
	4uhNJKktLM/dPLuold80X0uXthO9KehzGJbPTYFDUykNh1uBYUZORFtQW8CC5A==
Date: Fri, 27 Dec 2024 15:07:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <8f40821508fde291aab01674618c0a2c@manjaro.org>
References: <20241227133420.169714-1-jagan@edgeble.ai>
 <8f40821508fde291aab01674618c0a2c@manjaro.org>
Message-ID: <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-27 14:48, Dragan Simic wrote:
> Hello Jagan,
> 
> Please see a comment below.
> 
> On 2024-12-27 14:34, Jagan Teki wrote:
>> Rockchip RK3588M is the automotive-grade version of RK3588 SoC and
>> is operated with -40 °C to +85 °C temparature.
>> 
>> Add rk3588m specific dtsi for adding rk3588m specific operating points
>> and other changes to be add in future.
>> 
>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588m.dtsi | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> new file mode 100644
>> index 000000000000..0bbeee399a63
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> @@ -0,0 +1,7 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
>> + *
>> + */
>> +
>> +#include "rk3588-extra.dtsi"
> 
> I don't think we need or want a separate rk3588m.dtsi file for this
> purpose, unless the RK3588M variant actually differs from the regular
> RK3588 variant from the software standpoint.  The latter is already
> described in rk3588.dtsi, so it should just be included in the new
> board dts(i) file.

Actually, after having a look at the downstream code, it seems that
the RK3588J and RK3588M variants share the same OPPs, so actually
rk3588j.dtsi should be used for the RK3588M variant.  Could you,
please, confirm this?

Alas, it seems we've got some serious issues in the OPPs currently
defined in rk3588j.dtsi, which I'll double check to make sure I'm not
going crazy, :) and submit a patch that fixes those OPPs.

If you could confirm the RK3588M == RK3588J assumption above, I can
add some additional clarification to the rk3588j.dtsi file in the
above-mentioned fixes.

