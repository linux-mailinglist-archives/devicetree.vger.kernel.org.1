Return-Path: <devicetree+bounces-125889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B759DF9BE
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 05:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 581F1B210B3
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6E12AF0B;
	Mon,  2 Dec 2024 04:00:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg156.qq.com (smtpbg156.qq.com [15.184.82.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5032A1D1
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.82.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733112006; cv=none; b=LEv9MfCf1qfJ27jXwPo3DhelVhlL4cp0ZLCQc+L5mqirlsJFPeN2z1kpa2qW3kCOPIdq79HQXCtVwZVN+pORmPvnw61pUSX69PbXiZDl8s5c0Vn+L7/Zquk2zZat8qY8Gkn2RQKmBzOcFrPGIgujt7RQrp6R4kmhMyq6TDl6NOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733112006; c=relaxed/simple;
	bh=ermHuo6jV/pcLVbGYfZxvZxG1sVeTGCBgJ+A6kxc1Jo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ijNegrfEd462gGBKJA9bafVFGDrmJwwsfXAtuKzeQTbVMIkNIPcfJllbGDuHJTvD8XI+aifGJOicHLFHEn0iaW6voqMIFc8VHGSqYOAmyoH/baPjjwWHEPZ6lNbwzDXHNohV6SjoJF6MZyNRFCUlKKiXJhP0FmdGjoKy4L6/tdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.82.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1733111899tlvff56
X-QQ-Originating-IP: vMQJaOZ47cUFKgAjPqPaMmnImir+v1iuEhaK45dHo9g=
Received: from [IPV6:240f:10b:7440:1:f3e2:5ab0 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 02 Dec 2024 11:58:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14815698824521554148
Message-ID: <E09DCB0C302E5757+722fa6e3-3001-4c3d-8a31-bbd7efa0d3b3@radxa.com>
Date: Mon, 2 Dec 2024 12:58:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa
 ROCK 5B
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, alchark@gmail.com, krzk+dt@kernel.org,
 dsimic@manjaro.org
References: <20241202023227.2671-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MRY6qckr/MVJ2xWtCpd5wkq6Prz6Albv7Q5hK2xBLOFOSa3E19CUut/l
	n5IwDPpcooFCC/j8yzUL8WdK21WehKkufQbdDgu0tlImFge2oFV9fu1OIf23+l9Sem2wHoG
	JaqYcvSNEA2pUafhFCh/zds+KOqZVFdoplzTFh4V79Ow2frqiVJbZd0xKMAjWLQjOQ+v7lb
	oWrDpheskCcJ0nCFojsPdQUhU+Rq9sGjbgHuSAfaXXTTsDOvXeezqIktM18+UL7oW+JcYG0
	NIwIhFRqBJf/o4D6eHmUEMOgbGeU2OVnASaWNtxPyK2pl7RznHLNKIc/S+NYTL1tzkHt5p5
	lHdm4D4TvyrJCxbiyaqu3fs0xz2OrdNDga40JRqKx9VxAVVRxJGwA+Zlo98vOP2qQG5Jo1h
	Hh0YYqlB6H///7aiY1Eq3TbxT2Lx5UeLvxqubo7oVwtfQ/o0yNhKwtredvIgFw74zSwF59f
	TunUKGgQljc4aTHQfUprtCHQV2MEgnonmGR7qlr6uvUFi1KECrvMNiRmmGuQPBus6N+La8U
	HbeFxqsLwBp1cXLkJnhYfI069LoqXk+u0XKBlD9tgV4dpLu6zMOOtbBH7iLtCV4V+ilg2dP
	cNhKuutWgbUTmVISorm6E3BFWAe0KHoNw3yDSH8opD+EjSdlHDdNOopcrTjmUyeBed2Iu8A
	NHTasuqNNky0N7SNa8q1QR1g3pIxBIpDuWriGeB9yYbIQuGGluja8AVxUADbIeFDFUacO7Y
	lbBqKtVX0Apug0hmu/v6m2w2++BnRS2Wfkj7I3NGLroqLozO2lljY4j/d4R5HdR/9T61rAt
	st6JnwBaZDsTwDdFFvPl5m68DtP6ojMK8F7JbtkJfkNO4T9yzSKwx2O9q2gkpJBlNfbnxqh
	8PIvo7WesV7k/o0QenSPqcicM/vWE8ccpQQ1PHWREKY=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi,

I'm preparing patches for ROCK 5B+ (upgrade version of 5B) and for ROCK 
5T (upgrade version of 5B+).

I think it's possible to make shared .dtsi for these three boards.

then, these two patch series
  "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
and
  "arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B"
will be dropped.

please wait a week or so to submit my new patch series.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/24 11:32, FUKAUMI Naoki wrote:
> this patch series sort nodes and properties, remove redundant
> properties, and minor cosmetic changes.
> 
> no functional change is intended.
> 
> this patch series depend on following patch series:
>   "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
>   https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/
> 
> FUKAUMI Naoki (4):
>    arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
>    arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
>    arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
>    arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
> 
>   .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
>   1 file changed, 86 insertions(+), 98 deletions(-)


