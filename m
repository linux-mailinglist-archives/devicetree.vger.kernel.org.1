Return-Path: <devicetree+bounces-16368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FF7EE64D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8B82B20B67
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40DE84654B;
	Thu, 16 Nov 2023 17:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSPpjdQv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B34653D
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 17:58:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73177C433C7;
	Thu, 16 Nov 2023 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700157525;
	bh=RxJ6S2Hi/3+YDzTC2uALLuab6Zat66e3MT6zAyEv5yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WSPpjdQveDhb+t5iA1s9xkPhSJowYPwGF0MCOFMCge22czZz10HFNo4z3C6iqDM+R
	 USUAIyO4Cw+39lKg9nZL9/jlnhlkTS3PcEWi3gmt+NncFKNUJlbdY4y+aG7aOlM3Kr
	 EzaKTTKGvX2L0DwEr4FXfxRWt/3GcLMSNuYjheb2cxlP/NMqj4ASM7ZnzC/NnBFOh+
	 dx8u9d4qKNfRV+z3nhVNpfWXc4j/V0OIpuHohJ/F16zft3W+2h9wsWjilPcQVHxjsI
	 lpiMGtwIsO4fUQ38FViuGH9tFXmP4zqUZtthkTNC0amMgw9jcOJcFKUqQ6tCSia2+t
	 LUczGkbbiP9Ng==
Date: Thu, 16 Nov 2023 12:58:44 -0500
From: Sasha Levin <sashal@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>, magnus.damm@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 6.6 34/40] arm64: dts: renesas: r8a779f0: spider:
 Enable PCIe Host ch0
Message-ID: <ZVZYVCE6rr9izfA2@sashalap>
References: <20231107121837.3759358-1-sashal@kernel.org>
 <20231107121837.3759358-34-sashal@kernel.org>
 <CAMuHMdXWBzM41KjWCVRTmncJa=e2degFqXpRG0M7jE+s-Rkysw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXWBzM41KjWCVRTmncJa=e2degFqXpRG0M7jE+s-Rkysw@mail.gmail.com>

On Tue, Nov 07, 2023 at 07:50:52PM +0100, Geert Uytterhoeven wrote:
>Hi Sasha,
>
>On Tue, Nov 7, 2023 at 1:21 PM Sasha Levin <sashal@kernel.org> wrote:
>> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>>
>> [ Upstream commit c588e1c9846b32182fd5a0ceb637b983810e7100 ]
>>
>> Enable PCIe Host controller channel 0 on R-Car S4-8 Spider board.
>>
>> Since this board has an Oculink connector, CLKREQ# pin of PFC for PCIe
>> should not be used. So, using a GPIO is used to output the clock instead.
>> Otherwise the controller cannot detect a PCIe device.
>>
>> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Link: https://lore.kernel.org/r/20230905012404.2915246-3-yoshihiro.shimoda.uh@renesas.com
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>Thanks for your patch!
>
>> --- a/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi
>
>> @@ -145,6 +157,18 @@ &mmc0 {
>>         status = "okay";
>>  };
>>
>> +&pcie0_clkref {
>> +       compatible = "gpio-gate-clock";
>> +       clocks = <&rc21012_pci>;
>> +       enable-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
>> +       /delete-property/ clock-frequency;
>> +};
>> +
>> +&pciec0 {
>> +       reset-gpio = <&gpio_exp_20 0 GPIO_ACTIVE_LOW>;
>> +       status = "okay";
>> +};
>> +
>>  &pfc {
>>         pinctrl-0 = <&scif_clk_pins>;
>>         pinctrl-names = "default";
>
>These references have a hard dependency on commit 183a709d3719e5c9
>("arm64: dts: renesas: r8a779f0: Add PCIe Host and Endpoint nodes")
>in v6.6+ (i.e. v6.7-rc1 soon).
>
>To actually work, this has a soft (runtime) dependency on commit
>0d0c551011df4519 ("PCI: rcar-gen4: Add R-Car Gen4 PCIe controller
>support for host mode") in v6.6+.

Sounds like I should just drop this patch :)

-- 
Thanks,
Sasha

