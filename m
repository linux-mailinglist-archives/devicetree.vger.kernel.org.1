Return-Path: <devicetree+bounces-254777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0F6D1BFA3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E22B33012659
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DF02EC0A1;
	Wed, 14 Jan 2026 01:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="eur89zIM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E1A1C3BEB;
	Wed, 14 Jan 2026 01:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355014; cv=none; b=S5QUrYBBSRUgeGvsPygOeErrKCdYfOINOt/czOg9JxiuZz1c8FRB7M+xMYCN49KpTFJ7TmqxmllFAKXE9U5rrMR3sJRf2ePsal6XzqQ3eE1yiIsHovnj+2hh6FSDtNgY6xeNhzguzY4ZuFOiNbc/GJdGw8+T9gi/ac8nFEF6D3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355014; c=relaxed/simple;
	bh=Jd419EW+hpWH3aEU+/GmrjYgmKsk6TnjzKxGbYxxy54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fnden0MzPcgCag1F+tqJmaX+MBOqPBB3RkfM1MRLdMsJJJb4N+7YkCNigyWZGPMQpC6FPzh0Q5NEcrcPg1qc7SgA1/cbZbf6D6XuppkbvSzuDz9/q/JzS4B/oI8GqUQHqA7HbtEJB2ENcThQx8fDBS4v9LYfxgG/93OHAMe2tgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=eur89zIM; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768354968;
	bh=JtDaMTrCVYTenPyLUxDxSKCKTU8w9pk7EHSNHOX9HKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=eur89zIMyK3FbclthYE+EX59hwwexczAwUX3XWDeESPB8/Y8if3uDA4ar2eEtVYAx
	 7k0cAGyoVp5/izWUOQqQuYZL7pxEkzVKQSHuTcyF63CH7G9B0AbvurT0awDR1xE6Tv
	 uNF66mWvzs7T7WFXndvmfCf+LHuca7L2a0nrrRV0=
X-QQ-mid: esmtpgz12t1768354962tdb7ab234
X-QQ-Originating-IP: C3zBYr1GJh9vpI3rU4BSSw305QsfwgZ2bJEwtEh/f9c=
Received: from [172.16.12.51] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 14 Jan 2026 09:42:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7794570359675995168
Message-ID: <C5D30204B8186D5B+5f2f87f2-3fff-403e-a439-847fda61e2d8@airkyi.com>
Date: Wed, 14 Jan 2026 09:42:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add DisplayPort support for rk3576
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
 dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 cristian.ciocaltea@collabora.com, Laurent.pinchart@ideasonboard.com,
 mripard@kernel.org, hjc@rock-chips.com, robh@kernel.org,
 tzimmermann@suse.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
References: <20260109080054.228671-1-andyshrk@163.com>
 <aWa8mvBkTrKhZBFo@venus>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <aWa8mvBkTrKhZBFo@venus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NYlggeZuI0UGbpwYyyuZHUD1SJspaz4eZqapV6YiyWr791UtMxIjM8xu
	n/QW06wNu0DJgWH8Nhq6avXuRxczL1PxsOmTeavWGLWPvEw6F++H2DAJBpt+jsviApubUSQ
	0FENPRU2rGuy9CI6vYFScFsXzxkTH9Z1giPqAr2t/8RHjQSBKpH0e+kh3Ak8J7/B/K7Z1Jv
	D3qwaEwJf6FIWCtdRd9aaNKeJkyKquoy4pnSSYPWUhEucpgGJm8AoJnJT1LX9JyQQTQp8gc
	ifjTCC3Qk2Dp02ddLUO42JHoZFxau7pONftSCE38yc98IfnrLLX8G2MQSYj6EU/HKmsXQWW
	QfaClEFOSAx+3hDhrowQi9GXfK40yC/JDwD9k8ImI5YhTnQIS0rVbY6SHVPn40aOC3pg+Cn
	9FRR52yZ6WqGI0G20/TKhHr5Cr7Ewc2IVmR2RxlRIwty+jE1JlY3nvz6znhtZNPdA2ksUar
	j5LC4K55QbaGi05P3yw0qE9cI7MwY0Cbcvhc8tLegZ/EfA236Lrb9pZLbCakXLKubzGeBzR
	ELU/rXlj72edJ+vD1VqwEqexmk3kffqYTQcEzQQVzp8jvopCNrmMVFiyPyNwOQg1pgPS8ZJ
	k7U80jl9eVlLnJcykkn1F64mdqAjofnl6bqujfmn76L9VGrjEeReURaNN0H+9MdWN3tPjh4
	+BbpcOiiZSe90/XD3gomn61QOT3v+BICXVdlIyM1eyrfQzWxgByk4MH1NQR+iQNTWCYbl2T
	57b20UECF42UcDpY1zjo4vtXGpZPUsPi3OovnwZ6T5K1iXUs9NdkqKcs4WR0jC3Ogxk1bbd
	kTRbXBeuo346nF1NsrtOdW5U1+QubimtyDTfTodTBV5dbWM0POe/EnUAk/NiTDDegI0daZx
	pP96H4dcohWvi0wehfdt60vWQtKAfSP4HpP4NTC3aHh3jz3kH9lLlO1gTGohRyIdekE4nxB
	rzPIV0Rv/sf/Ct82qOASpUVBbV8x3CsVQET4MRcSq1a9B+xWHwdG/2mDm
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0

Hi Sebastian,

On 1/14/2026 5:51 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Jan 09, 2026 at 04:00:43PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> The DisplayPort found on RK3576 is very similar to that of RK3588,
>> but work in qual pixel mode and support for MST.
>>
>> This patch series aims to add basic display output, not include
>> audio and MST, which will be the work for the next stage.
>>
>> Only test with 2 lane standard DP port output now.
> 
> This is a nice minimal series :) I got it working to some degree on
> the RK3576 Sige5 USB-C port. The display connection detection is
> _very_ unstable, but that part is handled by the TypeC Port Manager
> and unrelated to the DP controller (and already an issue on the RK3588
> based Rock 5B). IF the display is detected (i.e. USB-C side worked
> properly), the DP controller managed to do proper output too. Thus
> I believe this should be merged. I plan to look into the TCPM issues
> in the meantime.

Based on experience with other platforms, I suspect that some HPD events
are not being properly propagated to the DP driver. This might be worth 
looking into.

-- 
Best, 
Chaoyi


