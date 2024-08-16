Return-Path: <devicetree+bounces-94095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCB2953FCE
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 04:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B6621C22016
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 02:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F474AEE5;
	Fri, 16 Aug 2024 02:41:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7AE42AA3
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 02:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723776101; cv=none; b=A7gghMiqBdM6bQPRzTB0m2gbvl11en4bbmTtSx/dcbm71pgNAA30IbgWWIeWvbFr6evb8tu1aSiQ0tyVYbFhtdjevejRZUGTRAx8Zs6dV6R35ZpAuHhOcDNHTYWnrI9OjIEFRTefrEGA9fBnSvGzXq4Xp99RbJJIVS/aAGH5KFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723776101; c=relaxed/simple;
	bh=FhBPB30lCHdceARlSz1Ube/vOmvN7eCh2G6DCdhlMFo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k/LIgDIVq/nk2lxp7Qr4H+Q3F/kBIgzjNFLa/tpDeNWcyayr+bd2o1qwwIZanuqvVitClECEE1CVmvyzRBFQSXTWqPVEVQuBR7G14kUI8S8pHVqN2i7gqxBCJ2EyFkg/QUJa1qsPucvB9aunumhH8hrDAMUSuMwV8fWcO4cpRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp89t1723776008tawgbe5g
X-QQ-Originating-IP: jbScS2UcZxac6RbZEF8W0Qbtl1SKBvP+W+/7u65jV98=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 10:40:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10602312911380447263
Message-ID: <BC8349733563E035+f32d703d-6329-437a-b684-4e82888cef5d@radxa.com>
Date: Fri, 16 Aug 2024 11:40:05 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: make "multi-led" controllable
 under sysfs for Radxa E25
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <20240816023243.487-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240816023243.487-2-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

sorry, commit message was not correct. I'll fix it in v2.

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/16/24 11:32, FUKAUMI Naoki wrote:
> Radxa E25 carrier board has 16x RGB PWM LEDs. This patch make it
> controllable under sysfs.
> 
> $ ls /sys/class/leds/rgb\:status
> brightness  max_brightness  multi_intensity  subsystem	uevent
> device	    multi_index     power	     trigger
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 72ad74c38a2b..1eaf304d94b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -16,6 +16,7 @@ pwm-leds {
>   
>   		multi-led {
>   			color = <LED_COLOR_ID_RGB>;
> +			function = LED_FUNCTION_STATUS;
>   			max-brightness = <255>;
>   
>   			led-red {

