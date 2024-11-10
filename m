Return-Path: <devicetree+bounces-120589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F16439C354D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 00:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30442B215A9
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 23:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459191527B1;
	Sun, 10 Nov 2024 23:49:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA00F1369AA
	for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 23:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731282584; cv=none; b=Tmy3NyxD9WTRkoEyOat+DpVQZUVWYYnzU6llzbi8xh2bN1vLmVx49Vim86XcozoAkqVWd7/FIljjSIAxeHA6sZ8hwqpdSqZ6FAO5ewb9ci+usEmmuOvjQcatPtr1ggHHOMK80Q7jdx7incZFp2opbcmcR0q1LZOqouOW35oh37s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731282584; c=relaxed/simple;
	bh=2ZlUlTkDJBQYtAJCWh+6nHX65vaQrxciOnHb3d8kStg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S07kDqY3pNeDlcKveC/fCOM/SndmBlCbqnNGs4dNCSdSUqNlhKBXNZnELwm8opvM3sF9powEs7KlDCjS545t1DC/lyLT5e40MtSr/sDBtOqSNxtbEISk7vcVpulAfhvbLAqllTf9TZDfVFCYs3xC9s89YbvEI8gxukKeY7po2Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1731282543tgxeos8
X-QQ-Originating-IP: PWS1YtnGh1qsLOHKhwPI0ruBFkkmhb83c2QVyKeTzos=
Received: from [IPV6:240f:10b:7440:1:e6be:7b31 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 11 Nov 2024 07:48:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14112910990418840839
Message-ID: <EF2C2A37FE988DA0+32f2e055-1ffb-4dce-b7a9-c77b80d6ffbe@radxa.com>
Date: Mon, 11 Nov 2024 08:48:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK
 5C
To: Heiko Stuebner <heiko@sntech.de>
Cc: jagan@edgeble.ai, conor+dt@kernel.org, jing@jing.rocks,
 macromorgan@hotmail.com, michael.riesch@wolfvision.net,
 devicetree@vger.kernel.org, krzk+dt@kernel.org, jonas@kwiboo.se,
 andyshrk@163.com, cfsworks@gmail.com, tim@feathertop.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh@kernel.org, dsimic@manjaro.org, sebastian.reichel@collabora.com
References: <20241021090548.1052-1-naoki@radxa.com>
 <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MtTf9xe8ffoNr2Z02kRLe04V5o3V44pSNNwrgzvnv07ntbCHVpfAtULr
	t9L9jDqo7OzDlCcEA5ddw1JqTbUK45DLlUDqYqc+HBMjZ7foJ8FWNTQZL6WUmAWIn8k2Z2I
	OIayhZ95E6/ANhU8RMx2itNnYcAMkh2S9RhKk6mt3yFeFF6rsr+GOyETCgm/Eo4b15ZkmaA
	n+P6ZEBib0fwWP2PAKAP2UwIfsrtYIpDCqe+dCVsf5cERY9hqc8amdKCcMyMh8e88+EQGkz
	JLkydQtBQ7G7VmtJA0tYgOlOOzHGyOPY6N55jDoOmjC8UjkyzsTNa3314LMOh0C+E6hFUXe
	LEG61on1bAuPKdaS/rgyeJCbPEZYbFHgs+AGHSqKH29CYySqcTx8OexaiG8Df5g++YQk3Of
	i2gqlS9jFId/QXtjmveDU8w/HMwX+htndssB5rWt0PvfnZiYd31CX+LK+1GoE3vRTlb9Bzi
	Cj5MosRwNhXKAqEYF3i6PBMwfOKAVk1o+9XL+TZJJTnakySoTTgi/mUjMzWk9L+UG5Do9pQ
	t5+NJ2hY7Y5h6VW3uIwPCEPyx086lfO25qwF2DqM4iummaRNC3JAno9OkUb7QE1ETeqKNHg
	RnzUGT6cIiJinHcRgUaWJ6vDQVI/Gr989fHKrKO2u7sPC950qD/xBuib1GKgbsds8py721z
	LCFoH1hJgZawxVzMa6Hu7RnqIN2zCak7xLaM3E014KbZ5PvI+ZWDH8NlV1tiPyeHe+2kCie
	R+g9SP61qD9xaCYu/UKLzEjdubOV0nRlkpLh+ycoT+ODBuVezZ7+IMXk1TPOE2CRVQ6Tfyc
	1jFkYWzZe30gb4ugXn+TQjHPknrKzyOLepJwcZJEE57MOKr3yCIbvc21GDatqKTY9JIgkj5
	dbams5ZxQUlGyOPHUrMm4HfpCbg9fzO9Pmwan2Ohk9UlQbTfttpLMg56ii1C4iHBHxXG6Jr
	xSMoe6rCbHP7fXA==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi,

Thanks!

On 11/11/24 05:13, Heiko Stuebner wrote:
> On Mon, 21 Oct 2024 09:05:46 +0000, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa ROCK 5C.
>>
>> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
>> RK3588S2 chip.
>>
>> [1] https://radxa.com/products/rock5/5c
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
>        commit: 3920c37ea8ddc43e8f54083ed227f123acfa6ed2
> [2/3] arm64: dts: rockchip: add Radxa ROCK 5C
>        commit: 0173113ea6d7646fa0d7fd4d09b272d38a9ab9af

I forgot to add cd-gpios in sdmmc ;)
I'll make fix patch soon.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> [3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
>        --> I've folded this patch into patch2, as the hdmi
>            controller on rk3588 was added earlier.
> 
> Best regards,



