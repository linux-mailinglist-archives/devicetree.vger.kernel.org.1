Return-Path: <devicetree+bounces-6188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43C7BA27F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 1AD85B20957
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CFA30D05;
	Thu,  5 Oct 2023 15:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gk/mNWQa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEEE200AE
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:39:24 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8087F2D0D3;
	Thu,  5 Oct 2023 08:39:23 -0700 (PDT)
Received: from [IPV6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd] (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B46156607332;
	Thu,  5 Oct 2023 16:39:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696520362;
	bh=f7LqF9CFfJY9QHYGeDMcAcJhPQ5LfK29gaDUJGIvsf0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gk/mNWQaeZW5VNWjb0QhyjivV4pkm/Bn0WgD9z2Ii07D8AnAUrGTiOX1wy/5lemO3
	 bgXyBJirN3X+jfJpPwGvFNdsZvukKNaqg/m96w5FUO9QMhwLaJfkRVjPEIMzepEn2i
	 lbm5Rf+6RI8wLBvlJMumDPRkkOpW1q2MYyGbsF4vyxOSO4itrxXSR7huKZk0C8tZyB
	 c1jjbAXLrsptEsv/BUQ0dngw5s9QCcnO0UauFIptC7VVL1/2oZFUWP3Ax7cdE/EJ0r
	 xQHOFqGuV2GIeflUDg0NqwQLq2DuiCXVzaJaBhb+AclpGmqPNXI6pUuP4iEfUHLcYa
	 YlOHkfRJPLyag==
Message-ID: <531ea6cc-83b5-4c88-90a3-576e2e38bf80@collabora.com>
Date: Thu, 5 Oct 2023 17:39:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
To: Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
 <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
 <2298521.ElGaqSPkdT@phil>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <2298521.ElGaqSPkdT@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


Le 05/10/2023 à 17:30, Heiko Stuebner a écrit :
> Am Donnerstag, 5. Oktober 2023, 17:12:10 CEST schrieb Sebastian Reichel:
>> Hi,
>>
>> On Thu, Oct 05, 2023 at 04:54:20PM +0200, Benjamin Gaignard wrote:
>>> Add node for AV1 video decoder.
>>>
>>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>> No need for my SoB. Instead have this one:
>>
>> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>
>> Also worth mentioning, that this Patch needs one small fix in the DT
>> binding (adding "resets") and one small fix in the driver for out of
>> the box AV1 support:
>>
>> https://lore.kernel.org/all/20231005144934.169356-1-benjamin.gaignard@collabora.com/
>> https://lore.kernel.org/all/20231005145116.169411-1-benjamin.gaignard@collabora.com/
> additionally the node name should be generic.
> The phandle can of course be av1d but the node
> name itself needs a change.

Does "video-codec-av1@fdc70000" sound good for you ?

>
> Heiko
>
>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
>>>   1 file changed, 14 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>>> index 5544f66c6ff4..835e66d85d5f 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>>> @@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
>>>   			#interrupt-cells = <2>;
>>>   		};
>>>   	};
>>> +
>>> +	av1d: av1d@fdc70000 {
>>> +		compatible = "rockchip,rk3588-av1-vpu";
>>> +		reg = <0x0 0xfdc70000 0x0 0x800>;
>>> +		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		interrupt-names = "vdpu";
>>> +		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
>>> +		clock-names = "aclk", "hclk";
>>> +		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
>>> +		assigned-clock-rates = <400000000>, <400000000>;
>>> +		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
>>> +		power-domains = <&power RK3588_PD_AV1>;
>>> +		status = "okay";
>>> +	};
>>>   };
>>>   
>>>   #include "rk3588s-pinctrl.dtsi"
>
>
>

