Return-Path: <devicetree+bounces-94448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 650E8955978
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 21:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 064C21F21AC7
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 19:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AA513664E;
	Sat, 17 Aug 2024 19:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="HF1+bvtn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56999646
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 19:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723924322; cv=none; b=imu3mxPApQw9FGuEAwWtcWZR+W7qFSSGLPnfSZZKGp6kKboZCR1Ibttl5RbQgGCNvxiJy+l/q26Kj40bCzKkLyXCLLJoa298FIadG5fzwE0z7dnKvRccwDQId5ON+n+RaaTGt6aptMl4CEzgAsyIc2CirRt2KGMGesHBURH/8Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723924322; c=relaxed/simple;
	bh=CrEcL8z3U18zFHL4ApyjmWyx3Q8KtISrEJ7YKq2igHg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=PZ3Y6FddDoolnZnEi8kNrf9rPYYh7JN5C+HIISxGub8tPqqI+ZTqVaGATnCV9gw+7x9IrPd4WKAIOadHr35M9u/MTJwP09TGhqVtXCCNQNwlXjjQWFKj9iYZde8qWoW6AVdo4krYu82lvsRYbMrZ9yKBYlz8muABe/uVoNCrv6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=HF1+bvtn; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723924317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tMUHzAPWeIe9jDKUn+917WgoVJcOaq2JBwVHOlqe/WA=;
	b=HF1+bvtnmpw1HozTFAc6NZw3WSaX9TekWfp7e3nzqEsg9bphRpRO1z42RvO+YTolWUCfX/
	8jSM2TAah9PT8qRN0VRbP62S7GBKrrdirM48zkLr1gOkKogF6chmTB0t+50eB6bkahbjlF
	7w+wdMdubYQJ7Ww6mn4wtfRVgIi4ZD5qS7RYF+xuD02J2rYtLyS+sq3VjxlEFdWjNFQb9Y
	NCOXCZASh1YRD5nyl6y1czqIH3JRswYbgqM1zmWDbigYEDHfjnyQJxsRufvLcbLzrch0Y+
	v5Ig2zK0mqg3GHy5GpgueXWWbSVpmHMwxn6DHvjeiRsSgtarSKKZZHDF5dHj2g==
Date: Sat, 17 Aug 2024 21:51:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <cd08ce18bde728e2b33a995834441399@manjaro.org>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
Message-ID: <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-08-17 21:28, Dragan Simic wrote:
> Hello Fukaumi,
> 
> On 2024-08-17 00:20, FUKAUMI Naoki wrote:
>> On 8/17/24 07:11, Heiko Stübner wrote:
>>> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
>>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the 
>>>> Rockchip
>>>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT 
>>>> configurations:
>>>> 
>>>> - Rockchip RK3328 SoC
>>>> - Quad A53 CPU
>>>> - 512MB/1GB/2GB DDR4 RAM
>> (snip)
>>> can you please describe what is different in that v3 board?
>>> Describing what is different to require a separate board should've 
>>> been
>>> part of the commit message.
>>> 
>>> Because from those changes, the bottom line currently seems to be
>>> the same board with swapped mmc aliases?
>> 
>> it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
>> different bootloader (U-Boot) is required.
>> 
>> adding v3 dts seems not to be so important for Linux, but it's very
>> important for U-Boot and OpenWrt(it includes bootloader for
>> distributed binary).
> 
> Aren't there different methods that allow such board variants to be
> supported in U-Boot, with no need for a separate DT in the kernel?
> IIRC, there are already more than a few examples of such board 
> variants,
> which require different DRAM initialization, which is covered in U-Boot
> by providing different builds that use the same DT.

As an example, please have a look at the following files in U-Boot:

- arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
- arch/arm/dts/rk3399-nanopi-m4-2gb-u-boot.dtsi
- configs/nanopi-m4-rk3399_defconfig
- configs/nanopi-m4-2gb-rk3399_defconfig

Basically, there's no need for separate DTs in the kernel, just to 
support
board variants with different DRAM types in U-Boot.

