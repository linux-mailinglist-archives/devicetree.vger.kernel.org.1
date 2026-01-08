Return-Path: <devicetree+bounces-252620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B59D1D01FD1
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1486377883E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31BEC3587A8;
	Thu,  8 Jan 2026 07:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Y8+YIwoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49228.qiye.163.com (mail-m49228.qiye.163.com [45.254.49.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB9A357718;
	Thu,  8 Jan 2026 07:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767858507; cv=none; b=pKD2Zi0S16YqvkWE6poeMAM3WQy3XM8TSZdgjWbpdq3IhPzg6IURoUo7E9pM33KzuVfib+ZsBbYB4y35IthaIePFgH2pWxQVVzxxUPDlLHD4xGBr5yutLL1kaaX9x/6jGS3QPwe/ekyKxg+dtnYBm11MTUU9cF3cgRRPpNanz/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767858507; c=relaxed/simple;
	bh=WIvm+g/bCBKAi01Sy7PTELuPpRKOvrB16zahvFvnfvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S+NviMLEcJ5eu4HTEkbzFJDq64DuMXQXcNTEZmPQNUXmSNtEYe6IFZ+LoYaIVkwzMkAXeO5O8cF+KgeKv7HOnilLqQW6IgqCQrwgsSNixb+HjbuAoQgBw+6psqsG3mYHknHI24ob7xAEe2T20sLWYbOHEiOE0Zgln7g0hsYCXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Y8+YIwoH; arc=none smtp.client-ip=45.254.49.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fed15929;
	Thu, 8 Jan 2026 15:42:55 +0800 (GMT+08:00)
Message-ID: <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
Date: Thu, 8 Jan 2026 15:42:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Alexey Charkov <alchark@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b9c8efda503abkunm2d36d937104d66
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4dGFZNGU1DGExCHR0dQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0
	pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=Y8+YIwoHc856GmeEMveVCfqT8KiQX1sselQNiwuq8B+h7JxTb9Q6cm+VsiJNeOGmlbJah+Ts55e0jhCk4PbqtrqwdlQcC0zWYdd+gcWRlE3aMubiYhePGU1YnPFkx4+hkYAussZWBv/V+aPUBgMS0yjHUgQaMbwRhZ2PCMXTLAA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=V9rWjfplznBvilASYj5bEBiyrUdrnhQnLhBnfs2cv1g=;
	h=date:mime-version:subject:message-id:from;

Hello Alexey, Andrew,

On 1/8/2026 2:53 PM, Alexey Charkov wrote:
> On Wed, Jan 7, 2026 at 10:18 PM Andrew Lunn <andrew@lunn.ch> wrote:
>>
>>> +&gmac0 {
>>> +     clock_in_out = "output";
>>> +     phy-mode = "rgmii-rxid";
>>
>> rgmii-rxid is odd. Does the PCB really have an extra long TX clock
>> line, but a short RX clock line?
>>
>> Try changing this to rgmii-id, and drop the tx_delay property.
> 
> Actually it would be great if Rockchip could clarify the delay
> duration introduced by a single delay element in GMAC-IOMUX delay
> lines, which are controlled in the GMAC driver by the {tx,rx}_delay
> properties. Maybe we could then switch to using
> {tx,rx}_internal_delay_ps for fine-tuning the delays on the GMAC side
> as envisaged in DT bindings [1], and use phy-mode = "rgmii-id"
> throughout. Chaoyi, any chance you could ask around in your hardware
> team?
> 
> Currently though removing the delays at GMAC side altogether causes
> unstable link operation - see [2] for example.
> 
> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L342-L347
> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/372f3e9ae62cc62cdf2543391ea57be6bb548a0c

Sorry, this problem has been discussed many times before. It's because 
the gmac on the Rockchip platform currently relies on setting the 
corresponding delay via phy-mode [3].

[3] https://lore.kernel.org/all/mqoyjn7mnq6tmt6n6oev4wa3herjaxlupml2fmcampwiajvj4a@r5zs4d3jdm5p/

The delay introduced by the delay line is not absolute. In reality,
it depends on factors such as the chip's design and process technology.

And for RK3576, you can assume that:
	
	time(ns) = 0.0579 * delay_line_count + 0.105

For example, tx_delay = <0x20> means:

	time = 0.0579 * 0x20 + 0.105 ns = 1.9578 ns

And I believe {tx,rx}_internal_delay_ps is indeed a good idea. 
I'll try to add them in v3. Thanks.

-- 
Best, 
Chaoyi

