Return-Path: <devicetree+bounces-94446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 53505955968
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 21:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC248B21867
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 19:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6FD13CFB8;
	Sat, 17 Aug 2024 19:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Q+RD2yaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DBB4A2D
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 19:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723922944; cv=none; b=cWqAVR8uAKKCmzo6UcXxq4WKCjrSNVOhqGDMpcBkUfAhSh5SnvhQkM/oikYJL0p9/h35ulPYV7itiVvYJEfpL9rIupP5oDQXJHvi+fo2A8jHy8uq/XwKV2vHp3LA8T0EChXgjqSza5SFp0z+XiuO3c09x2tVvJSbDZ317UcwVbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723922944; c=relaxed/simple;
	bh=1GYh7H3LQLZVQe1qP8gvrDkvvb/mIUsPEPL/HAUFGzg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=P6Y0QKw1sOPrp/kADCNn32bN+h0KX6z1sWDNXck0iITv8AeUd6yEFwgQHglFsa3xFsL2FlRSBcAMBj8I36kWLt1tnNMV2WgSK+n/XH2XvhF/WXUEkxF/+fEwD7b+wLL/SlU5Y0U+eN9TVVqBSEq7w444s9a+0BU5GFRVb+6QXcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Q+RD2yaX; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723922939;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tFYiRFpZZ+LNudIAcbFcB7B2vLrHqRZwTC94lvXn3wM=;
	b=Q+RD2yaXAD+UIMBDhG5F2lRVFX4nhejf4WoZ3YnBxQueiAsDjvDKRUvCRAIT/vp/TQuBjg
	dCb/0HJT7V/hhXJs6/Q7jZ+54m1KUWlM385q1iaYJIblPjz7rYlscvWOlqK6XdpDH2e68+
	/Ynm6CZ0Tj21IYwEtO+0u8CdxRlVTcAUTaR4pwzXtJ3By3G4DkCRD19eWP0i22AV6USOtW
	Zz22hJCzM4vNYf6ikvPdQOgL7gq59ebZLv7n2qeIhJz7+9x3yDt0QNShKV0ZfP/SeKrb5d
	3nFWcW/fZi0AjWYDTsKxb6qYWUpLmBnIPGsJgB7XyflnHq4XXQf/t5FDE0mwOg==
Date: Sat, 17 Aug 2024 21:28:59 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
Message-ID: <cd08ce18bde728e2b33a995834441399@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-08-17 00:20, FUKAUMI Naoki wrote:
> On 8/17/24 07:11, Heiko Stübner wrote:
>> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the 
>>> Rockchip
>>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT 
>>> configurations:
>>> 
>>> - Rockchip RK3328 SoC
>>> - Quad A53 CPU
>>> - 512MB/1GB/2GB DDR4 RAM
> (snip)
>> can you please describe what is different in that v3 board?
>> Describing what is different to require a separate board should've 
>> been
>> part of the commit message.
>> 
>> Because from those changes, the bottom line currently seems to be
>> the same board with swapped mmc aliases?
> 
> it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
> different bootloader (U-Boot) is required.
> 
> adding v3 dts seems not to be so important for Linux, but it's very
> important for U-Boot and OpenWrt(it includes bootloader for
> distributed binary).

Aren't there different methods that allow such board variants to be
supported in U-Boot, with no need for a separate DT in the kernel?
IIRC, there are already more than a few examples of such board variants,
which require different DRAM initialization, which is covered in U-Boot
by providing different builds that use the same DT.

