Return-Path: <devicetree+bounces-79508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F220E915911
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 23:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BF55B20D84
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 21:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180E019FA89;
	Mon, 24 Jun 2024 21:31:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F048381B1
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 21:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719264716; cv=none; b=A5iA8xca5OkaKAlapuIbYX29fERoJpBFgwacgDVTs7UcQf1qjh8XJ/MAsvEyxoFDlgAg09NEG2mCCpijiKqVEzyhtqW1oupWiGTpvf/A9DqKIWhfeSeoEhRdJQxbchrl7WW/6tZ6Oe2TKDprh4sC5Mj2aqOW8kyeXizHDxSiBmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719264716; c=relaxed/simple;
	bh=Pbil4931QtUK6BBiT10HNXq812CeU5xB/2Cdw4yZbyc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FEs/27xtZ+wrNanvL4MdVplgn89C0oOUJLjUFDpb/gdUrCoMScp6Ap/QgQ5b47kffWRSPO8ZmV7SmE7nkcGs0li6kzl3SlplQoUgwMkj/wevzP0oQYMbSyIUi26l2G7H5/mQqitRVir/hpnfJoVEflb8I7R77xDWCr2l5DpNas4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp85t1719264556togk5jli
X-QQ-Originating-IP: KDGt2dWE5y+1Ic10dkzvyxau3BTmxqdwpetv6MftoXA=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 25 Jun 2024 05:29:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14516342982163703582
Message-ID: <A160F02429E3991F+93c09bed-e66a-445b-a235-df6c6d6ea9db@radxa.com>
Date: Tue, 25 Jun 2024 06:29:12 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for
 Radxa ROCK 3C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
References: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
 <20240624100019.80529-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240624100019.80529-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 6/24/24 19:00, Chukun Pan wrote:
> Hi,
>> I see, I'll remove fixes tag in v2.
>> btw, is this change reasonable(acceptable)?
> 
> I think there's no problem and it's acceptable. It would be better
> if you could give examples of flash chips that might be used.

here is a list of my board:

  ROCK 5A: MXIC (SPI flash module, no schematic)
  ROCK 5B: MXIC (XTX in schematic)
  ROCK 3A: MXIC (Winbond in schematic)
  ROCK 3B: MXIC (Winbond in schematic)
  ROCK 3C: GigaDevice (same as schematic)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 

