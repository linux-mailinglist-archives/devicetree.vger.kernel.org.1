Return-Path: <devicetree+bounces-111107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 415C299D3F4
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:54:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 420C9B29833
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 15:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932DD1ABEAD;
	Mon, 14 Oct 2024 15:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="nCxpvM7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900771AB501
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728920960; cv=none; b=I9HUY0XdV2r960bSxMWqZ8AabTyr05Z1x6Rx3Gp1any4Pyt/BzeY9vEJOwGWuLp7XE/h1iGo/HS76FgBVHx9cCeSEEBpWkii8mKXEesCFPzLkgT03SVysYFn3XsBKCnVH+JT3kYYCsSu0OWPcII8D6YYEp6J26s6Q0shddAtW8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728920960; c=relaxed/simple;
	bh=bIQpmLT+G8QeXw+kJTQbwE8S1IxK2IKNJpbcf2rixg0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=rx97vcoiWJubQ2cFkZ++2yx91Omn+cwQK2/8BJvRYy3UJmX6c/LVZCMNVbygZCtE5QCbMNBYSrIEqGkPaV710cIkhdEO9XcBVptV3GnFXHfyncCXXPaTN7WUv8vLqtYctNdMytZGIZZouAgQY83n1tqUH/EJA2zkwYBaHmkBTU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=nCxpvM7/; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728920955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07GU8WAJO17q5kdEYI1T6Pkw2Te0wqsYowGyYUe3E2Y=;
	b=nCxpvM7/REPjEP7L+Eu+UD5LaESncMaO408biL9S099TjPN4oAaHd6bachmrfsWtbjEibr
	t0fMGljO5BKSv5Wy1Cg1NrFAgMkPEigUlQigSNlGoJZYi1QPo4KRayvO/jXsKZ70bRR65O
	taO/t1fcjayKsZ1V5IicY9Q/Gjh2aOUk9gYn8ZtKSSvxproXOZWMSspfT53xmNnDLi2CaH
	O9gIifPgOa+4bofj1RjK2bhIxW+S3mGJEkd/8vJiLmD2peJwevILTvOaIgAEJQUy357FlB
	BnWPN+F70tJtDnVdIa9sCp7YDDQj2vyuXg9tK7kBASbFBtbYkmfh+kmz5hTICg==
Date: Mon, 14 Oct 2024 17:49:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Klaus Goger
 <klaus.goger@theobroma-systems.com>
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
In-Reply-To: <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
 <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
Message-ID: <ff20557655d689571590d5b908b705c1@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Quentin,

On 2024-10-14 17:39, Quentin Schulz wrote:
> On 10/9/24 9:16 AM, Dragan Simic wrote:
>> On 2024-10-08 22:39, Heiko Stuebner wrote:
>>> All Theobroma boards use a ti,amc6821 as fan controller.
>>> It normally runs in an automatically controlled way and while it may 
>>> be
>>> possible to use it as part of a dt-based thermal management, this is
>>> not yet specified in the binding, nor implemented in any kernel.
>>> 
>>> Newer boards already don't contain that #cooling-cells property, but
>>> older ones do. So remove them for now, they can be re-added if 
>>> thermal
>>> integration gets implemented in the future.
>>> 
>>> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
>>> SoM with Haikou baseboard")
>>> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) 
>>> SoM")
>>> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) 
>>> SoM")
>>> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
>>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>> 
>> Looking good to me, thanks for the patch.  In addition to the amc6821
>> driver currently not supporting full integration into the thermal
>> framework, the "fan" DT node also isn't referenced in any cooling map,
>> so having it define the "cooling-cells" property is of no use.
>> 
>> By the way, it would be nice to see the amc6821 driver supporting fan
>> speed regulation, and test it to check who does a better job when it
>> comes to cooling and fan speed regulation, the thermal framework or
>> the chip's built-in logic. :)
> 
> Wasn't this feature added this summer by Guenter?
> 
> c.f. 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/hwmon/amc6821.c?id=becbd16ed2f8f427239ffda66b5d894008bc56af
> 
> Mode 4 is
> https://elixir.bootlin.com/linux/v6.11.3/source/drivers/hwmon/amc6821.c#L367
> ([FDRC1:FDRC0] = [01] -> Software-RPM Control Mode (Fan Speed
> Regulator) according to the datasheet).

Ah, SENSOR_DEVICE_ATTR_RW(fan1_target, fan, IDX_FAN1_TARGET)...
How did I miss that?  Hmm...  Maybe I was looking at some older
local branch, which happened not to include that commit.

Anywyay, good to know, thanks.

> In any case, we cannot compare those for our products as we do not
> have a genuine AMC6821 but a handmade simulation of the IP we run in
> an MCU.

I seem to remember your MCU that performs a few tasks, back from
some related discussions.  I wonder what was the reason to implement
it in software, instead of using actual fan controller chip?

> But that'd be an interesting data point indeed :)

I'm glad that you agree. :)

