Return-Path: <devicetree+bounces-35322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1416B83CF4F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75A81F221C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70ED913A27C;
	Thu, 25 Jan 2024 22:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="afDf868J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E381130E52
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706221680; cv=none; b=RM0p0f+R92MpTJnlXVP3D4/audpVeDJxpwp8mtwyzufkjPRc6tozk0Fe1i6xGw3E/Y9e/Sc4cPe9g9hc66+o1hbAirYrm2t5MQR2dwFIDHPvkYS6RRSR+rApyEDJthNLjVlsWp5tXtHviQ3KtHWfpJLKsNbP9fpRwJHOFTyPROs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706221680; c=relaxed/simple;
	bh=E052tfF45ETVk0lLVMjSSEqXUojTAr94YatYSTS74Xw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=QTEorHoLTJolEkNgjvE5qa3qS2vgqozmK0p+D6ldx229ifvBhD/h2Iju3HEng8RDXhfl1vgQ8LhKOTrYWNi1/7QfTueb9ePX74BZ5xJnkkf/sUlcOYP3MQHFfVFK9vUGWWWd81p7mf8/+3W97h+smffvN4FcmEArIuuZPVQ+XRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=afDf868J; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706221676;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t5GBrBF9OsRnqoNks0VyPcm42QML8D6LHWRsiZLc/Xs=;
	b=afDf868JUOhmEDaAcgaOu0cgPEUnJCAgBeiD+sPTKYIuX1QidtgMluuzuWDcv8XzW542IE
	DIGn07R+zf2lQIhRbOAnvKZ/CxsqbueJp5SUCjJTp0/BnFds/G5qmrcmJPBLIoLFRcd+Aw
	2xNGEqMabo4h9EK/iLoZ8hPMh0VEiyH+zbol4568hoBmjf3OYL9ZjEpXd6P6d191DYrB2N
	BU5ytmmmJ/VkgCd2/XchEnWfZMiAOvrzgblvPcxz0UvBimD6+rFI4EQuhEHbn+KHRtek80
	CE920VJu1BK+xQgzK8IU0zqRjmBbKftHB4bssJHJoY1WC3pNYugwYF2ePDX69w==
Date: Thu, 25 Jan 2024 23:27:56 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Kyle Copperfield
 <kmcopper@danwin1210.me>, conor+dt@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
Message-ID: <4001cb956ec9603e21b31fc54007e467@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-25 22:12, Heiko Stuebner wrote:
> On Fri, 15 Dec 2023 06:00:33 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK3399 SoC dtsi.  The 
>> specified
>> values were derived by hand from the cache size specifications 
>> available from
>> the RK3399 datasheet;  for future reference, here's a brief summary:
>> 
>>   - Each Cortex-A72 core has 48 KB of L1 instruction cache and
>>     32 KB of L1 data cache available, four-way set associative
>>   - Each Cortex-A53 core core has 32 KB of instruction cache and
>>     32 KB of L1 data cache available, four-way set associative
>>   - The big (A72) cluster has 1 MB of unified L2 cache available
>>   - The little (A53) cluster has 512 KB of unified L2 cache available
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK3399
>       commit: b72633ba5cfa932405832de25d0f0a11716903b4

Great, thank you!

