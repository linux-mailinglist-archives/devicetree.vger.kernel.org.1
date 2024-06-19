Return-Path: <devicetree+bounces-77628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2263990F765
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 22:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DD322811A3
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 20:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66C8156F25;
	Wed, 19 Jun 2024 20:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.77.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384ED74068
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 20:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.77.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718827710; cv=none; b=aMgx1UPjvdQFbuFfLCjVVJ5Ik+qUbWPz1oSaacJuqVH5smt0/ZXT0e7tI2jBz9/gemPMqN1r88dfmSfYFtaBQt8mdWatgDVxOSfv0ZqUpOHgZ2z1wcKKzsXUe7V+k9xdQ9cJCtywBJHfyICHkqB0Kh92b67RkBK4CZ6/VvICR3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718827710; c=relaxed/simple;
	bh=cvrBZln9gKR3UAG0iw5LN0Je9nVil18tCh2F+MX6NO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t68GZciU061KJ0foWUqOcfb8/OLfh6K+3cwCQzoJwTCeioLLKUa5DuQp9smG2d7RY5DjLf7XHLv0itzjGlFKoabthVWChwH5xvQ4DxK1/js9J1EVJGppf814g9tEdadQ8IMmYbgUjWGmognOB9dEtJ1TSa/r8ZngV61NAK+hYAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.77.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp90t1718827648t29alr3u
X-QQ-Originating-IP: jw7JnoawfYHHbSslnwUqf/bSFS+/9CI8+eX4tr78MCc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 20 Jun 2024 04:07:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 964551825667608247
Message-ID: <793B93C3DF509ADC+f2b62f2b-bc05-4573-b783-ac0a6083a21e@radxa.com>
Date: Thu, 20 Jun 2024 05:07:25 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin
 on ROCK Pi E
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240619050047.1217-1-naoki@radxa.com>
 <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0

Hello,

On 6/20/24 04:31, Heiko Stuebner wrote:
> On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
>> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
>> pre-production board.
>>
>>
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
>        commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc
> 
> 
> Patch 2 is not appropriate, sorry.
> 
> The aliases are sorted this way since 2021 and the order is userspace-
> facing. So for the last 3 years people have boards with the sdmmc as
> mmc0 and changing this now would possibly break a number of boards.

this is the reason I didn't add Fixes tag. I think this change in next 
major release is acceptable... but it's wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

