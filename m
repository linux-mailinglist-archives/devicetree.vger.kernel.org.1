Return-Path: <devicetree+bounces-133444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2395A9FA944
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 03:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B0DC18859C3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B0C15E96;
	Mon, 23 Dec 2024 02:16:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8535E632
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734920162; cv=none; b=SvmpGEZJKTEfyf6si5R7TPdBxGTu9V1yoBla0lF947fxbKaMpb7wYdzIuJmWA7MEV4WzYG1qru5ctmdIOVTDl0uRMqA9oEsTufy/4vWpw3oJEWgeXUn9O3OXTHwo4p66fi2bDPY5pHUtR0a/J7BTwTGQVfITC4flkBzS7KLpYDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734920162; c=relaxed/simple;
	bh=UCl9EjiEuRlIptFaKMqEUs4LaxlhfvwMDufgPrFMCeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S53Ih3XIaHDSECLSDYtLVz9kqqLmIMNo6qLX15fEox8HP503Oc3euw9Jo+vLckuWEUQHXQQb6weu4bAVMp1d8QvyB5OVIgZ5Pm7LGNLs8nuZme1mtJ7wK/CIPb1Dp0JGUbPdQvqGtWd06reNkXn3ZKUTDPV1TTpsr3t5Bh1SAOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734920023t3m8mb4
X-QQ-Originating-IP: pq+LjWfblgFmA/8l/bIoC+QSLwnpZOeFlxxgYsUWLOY=
Received: from [IPV6:240f:10b:7440:1:5968:fbf4 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 23 Dec 2024 10:13:34 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14632798559891521952
Message-ID: <88BD6226B9AC9C20+0d5797df-2163-44ca-b6f5-4b33a1ff0517@radxa.com>
Date: Mon, 23 Dec 2024 11:13:34 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Radxa E52C
To: Conor Dooley <conor@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, maz@kernel.org, tglx@linutronix.de, jonas@kwiboo.se,
 macromorgan@hotmail.com, andyshrk@163.com, liujianfeng1994@gmail.com,
 dmt.yashin@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-3-naoki@radxa.com>
 <20241222-wrench-chill-cbe767f2bd90@spud>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <20241222-wrench-chill-cbe767f2bd90@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NoS5wdqc5dY83GUBXTVgrxwseK1cobzIHucP6q22UNxtUm0JypwGKQC7
	R24ZEcd5aIoASKil8u0UAEAveW4vJu5XHKaGhlUIVOqzfbnaJ3uhcLK9i8wxSrMNXaZNdDB
	0eAtF4KZmGrZEEnJRPsfEZYhCMviF3+ntEhbl/SJjuGKynDnQXGkiWe3I6db/WuDq5dT+D2
	IEHr6AI5v3aSXLpXk/vyctUxOuGvgL76A52UzPyQu3Kk79RIX9OziPjZnjkkmIUwlEsdRPx
	m9H3hd+kixEVjFsrtverPM013GLPnGg43R7Oqz0l1KUJAg5XwRaAlWgbgRGrDRwP5dZNQAQ
	31n03dGrEYGl5QYvwZzf/tzqymRjAyB8OrpYPlXMDrOHoqTf6hIIfr8qvH2jxlE0LKidxgq
	yrT5PA63woYO5ykvVY970XoZayJvxSpDyGjX1lNx+5pcDh5bkjmZbakC0Xeu9Fac8P2634K
	V/z5SC7kZwBrGB79JuYcoRtW1F91BPDqqtUvCGJwFeWYV7wDZBzgweyuW2lzCFX6fTeke/o
	REYiaV5f+Mv6UslSNv5Tu8Gfg8vjxW+1UB6fw+VQkwi3s4p6ejHpyAsr7OvppkJVWJ9uFxh
	qWNCxstYZdmUZvBz19L0pEuHTdV0gB8sEbmlK/7Cri/fdscZQjMAEB1Wcyrj9eW6iy0woLc
	gxuFiqdbHmyZdbVQ0eiXDvI6oSkVBimqHyM0Up4efcNW8ERB8D0/SihEV0JKpB3oDorkivc
	h4LR+w10jyskRoVSb31Z4E8zqxo+SpXkNDS7VlOoKsl6dTGNVPJZkEvMw4/wqc3AzVwo56X
	usyfOwn26tRvsvNfU2Vi6E8ggBbUlmg/QS96HuZ3GEeBEJV+yriGQXpsNA/PtGC+vDBCTzr
	4r/Lw9ykn2BTg68ChG4jUsv5C7GNeBz+hSjRA6t0GZMjSYdOdcbqQQ==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Conor,

Thank you for your ack.

I fixed the patch so I didn't add your A-b in v2.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/22/24 22:11, Conor Dooley wrote:
> On Sun, Dec 22, 2024 at 03:03:54AM +0000, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa E52C.
>>
>> Radxa E52C is a compact network computer based on the Rockchip RK3582
>> SoC.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>


