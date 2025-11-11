Return-Path: <devicetree+bounces-236989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C90C4B85D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:15:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F2D8C4E8806
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2151E1A05;
	Tue, 11 Nov 2025 05:15:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.77.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B3C19258E
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.77.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762838147; cv=none; b=QrTdPPa/fBZpKiu8pYkuJJKJ93dR3ffD3myNH1AIN0GXWhSN6+N2yrJgMQaeTaKy2Wo/LjUQPCpJOpwr04EbkqLjzEnZ7GREyIrpez3id8HAYiRNnl5v8P6o8BKBKRU43/BnEnxc2rIEN1dzQdFGRAdz6E82ZBZ/A5HX19S3UAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762838147; c=relaxed/simple;
	bh=v/txg5z6U7AlIUUG/UjHAN1e+QUeldamv5tosLPJ6Cc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LPWDhmcHVYAdjAvuucSEXkJMKRZUKstOx1wgYIlppu01/k+BQaiHe6F+qUuBfLRTBcrBKqhQggMI+vqRmrStgOC5sWQcwHfo4XDxXBaR76Ddc+IP2Q1FEWyhi0f5HvJD4WgZI1mLbCmuNmwl4JqLX9xSrE01TkS92zH6wUJIock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.77.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762838057tdec3b8cb
X-QQ-Originating-IP: 35SFHE8kZ7xGWDBoL+GKGPZwpecwnMu85STSw/6SU6k=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 13:14:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1116323696750514464
Message-ID: <763EE1918D15A524+92d33d40-8c8a-4ddf-81e9-2f57bcce821e@radxa.com>
Date: Tue, 11 Nov 2025 14:14:14 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/14] arm64: dts: rockchip: Make eeprom read-only for
 Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251109141859.206835-1-naoki@radxa.com>
 <20251109141859.206835-9-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251109141859.206835-9-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OZZSS56D9fAj4mwVxlYH8PbQQMreRN0J1dMIRig94zXrZokN8VryxVXc
	4q3pjIrlTMsEbEaTZNCcbnndrtMA9WzGKoWogAn/ONBgl5sfV7rxB54Nw6Auvg7UrfzHHM/
	32s07JrFB8PmZFlWNV63ouDjx3AIv07mVco9J1ADjH+BaJ64KBsyGSqPIDp+ntlKbkcn3FA
	mY/hoUSVUwoZhExBUAIklsvHNgvusy9cT4Atb7SWC3xe7SEG7AolBwj5C50tLgWoIosY1q3
	NG8LEiGm3v+MWd+dR9Chc6re7P5QGKig+qRgrrZK6jFJYcqBbu/z6RLVXwtRuBRzPv4a8cQ
	JZ3JDlK6ZrWr634CipxTdVbeZnhjNIrtE8yzU/AUqgwu0LVkerUkjVOF1qC0v202SAfA5Rr
	s7M7oYv3BXeEmHgiymabtuhho5a4al8OGw65b3meo/2WG4DWwtUfi17/FIuNdzkvaZaY82t
	ebiRW/5K2bRww8m0TR1aw1XQJX1zshUMpfn42QunaoRwf43cBsIySU7flWNI4YY5rwViOca
	Izlkq7BJAvCEAnNg8LDEgLtHaPrS5vz55l1jLRz1WstSm3SsGju79Ev9H1m9Fq3SOsAIdJ1
	XvG9xejCJsuKYMbrt2wx7YKaAQkLk+x9jqlvvV703GrOJFGGGbUEumlVwXcf63adlDZ65PN
	Yy0cYYLaPBrhGapaN1hneExMXrDIPB36lk6VbTcr1vSeoCjHctgPCQMgxbeY11R2SoG54Zh
	rygxYuRbfl63V8hnDnd8BGXI0BguR1oTCL6Y77W33fWSjfFBJM4UsCgMe33Rf3IP3OIBg12
	JNjepXo/qknAN1owFQ68kYX8pPzBJ4G3Uhc/j8S722VI5Cj3g5N2uMgZZ2KJettJFqUCx2Z
	WKLefbgVgnu8tFX06iQSsBJhMU9gOoQPqr4xzBJIPb8JRS+Bklh6UmvspPnbKpxyEKxruUa
	FxaUQXvFRZi95Hsv6br/tp36XzjU9f5987IFaGtns5sXZhDtgZ2Q6fD9o75EfHeRsZdbdxW
	gf1EXJlXjkKn/Rkl//OLN5f3Fyhlo=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi,

I'll drop this on v8. This will be handled in
  https://lore.kernel.org/linux-rockchip/20251111050924.54880-1-naoki@radxa.com/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/9/25 23:18, FUKAUMI Naoki wrote:
> Make EEPROM read-only as it may contain factory-programmed
> board-specific data.
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v7:
> - New
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index e3f286df93b05..4f5376d0d109c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -325,6 +325,7 @@ eeprom@50 {
>   		compatible = "belling,bl24c16a", "atmel,24c16";
>   		reg = <0x50>;
>   		pagesize = <16>;
> +		read-only;
>   		vcc-supply = <&vcc_3v3_pmu>;
>   	};
>   };


