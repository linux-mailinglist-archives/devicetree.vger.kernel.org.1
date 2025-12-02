Return-Path: <devicetree+bounces-243579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F93C9A21B
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 06:49:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E330F346401
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 05:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AC72FC895;
	Tue,  2 Dec 2025 05:48:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F017146D5A
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 05:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764654536; cv=none; b=HCns5mVTVqsuXT0k07RJBmmUMhds1Gr4upA+DCJ1PfKqjl55JriCOR1V8/NQ9UF+dCZHYnYfZ6F+KolTm6wb9jtUHoODhGv2EB3z5zs7iDg3E0vz7eEjsyVkSOMxaQQTB4DJuDHTVHZlhcDVR98ixcIbXQ9CsBs1zLGwtm2vs8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764654536; c=relaxed/simple;
	bh=oI+tC3Jadvgt/LW0P4YTF/eG9VVvXLP/pGPWNVSTJEY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=FJoiwgb3B1RQm1ccL/PjkFNJCR8lhjHqZ4Gol4l6BzNL/dGnYGiMpl9dkcifF606o/D7Lgema0CAuD4+Ahpg7KZbuZxJQB60I7TjrK4WvLr87leBFe4nHYZt9fwt3FqUxQEwl4ZtGsaMbsEna0gFzXjSMNfg/plocV2BmZ7F/cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1764654497td7f0bbc0
X-QQ-Originating-IP: dMNj7OuMLUQ2s1/IHTY+KIkE0jPm5R5G3jBjoT7KqxQ=
Received: from [IPV6:240f:10b:7440:1:46e0:47f6 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 13:48:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8057048665388331268
Message-ID: <4BCD7F3839A572DE+ff51f239-1c74-44b8-829d-4f821508f09c@radxa.com>
Date: Tue, 2 Dec 2025 14:48:12 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
 <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
Content-Language: en-US
In-Reply-To: <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MQmEcA2BVZmJhwWEculrUnkiVk+9mlsKLAz+NUvUHYm1EnRRSIWLGJsZ
	d4R96oyCQYyYotvyis+HpN8hq4uSVaXzchA4ixIYDMwBktUqK25+dBU+2KGr411KSaFSw2i
	d8KiaHsxEmryCbMk8z6w20UcyqT3r6PHTl9JfKIRpCzA31oJQ+2zqvJHefwZ3/woWfNuNPF
	+PVw6g50RGSYZvOZnu30IgmFIy/y6JV9QVc1deXBnug3GS6hk68xTKpFRgsSoyw7/0YBsUd
	Mg//r6MT1ej8U5THE6i/7L7tGupEAKW4yc5G2cNaXrsLXGA0hf/z81deUsKdvLs60JIw6fv
	TbQwfuEjlUwAd7HbSQgfiDShY1SjFbUQGv5/19Ejejxf7ijwD+k6TJ3Nv6jNg5EfzR2fuFg
	KJme9XjZdiWuvDJQpzZMNr0ocOHsZ4LxHwIYhtBP4X6Z/k9xstjaAtsdjmUnRNlUJs2y7Wr
	5dlMXHVaYLRc+7kHH/AqEWRG4O2Wbg08ccuolAZuNnJhjHWWPv7M2kXx7XlSZl+lg590OPu
	06jgwQGqa/9sIHMHN+6hlH3QT1sx8wrHBeJEQEBDWw/ovnNLTNsdYMnLBGnrTrufTAztejb
	DEho++HlIoTkAI2+3IUxKCLEy9UflmQxmaz3tEQlGBr9Q8HwcCEp0A/zgtB0TgOZNwJHviW
	f1zvG30RgfA9gL/7gG55Q9RIo0DkHlpDYMGZet/eWf++GuQkGZNyj8sl6IC82+7EypgmnoV
	ePA3euu1rAd8hDPt6HdF/lRccEKRM9lr68MtLfZX0FnzDTP7Vyy5J19+SIOu4JpGTbMTiZW
	C7HE5axVwmipa7O5QGrJgFr6hGMzNnHhLNrGea8Ni9sPIZXx1sML/SQSR4laBzPZLoaGhW3
	NLOe3hQk81G9nC8D1nbZugCm1LZOdevkRXjRbDSE769PdQ81fYQexjXxdsIEEGXJE3fkv4e
	7Ola7di0hSiYsjq0TshXJL44ivEfvJmXEBHZqXvGOQJ5Efdu9s2KjvJg916szGJJERSo=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Sorry,

I checked shell history, and I sent email to "krzk+dt@kernel.org", not 
"krzysztof.kozlowski@linaro.org".

I will not resend this patch series.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 14:33, FUKAUMI Naoki wrote:
> Hi all,
> 
> I got the following email,
> 
> On 12/2/25 14:27, (Exiting) Krzysztof Kozlowski wrote:
>  > Thank you for your email.
>  >
>  > Krzysztof Kozlowski no longer works for Linaro.
> (snip)
> 
> I'll resend this patch series with the correct email address. I 
> apologize for the inconvenience.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 12/2/25 14:26, FUKAUMI Naoki wrote:
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> This patch series adds initial device tree support for the Radxa CM5 SoM
>> and accompanying IO board.
>>
>> V4 -> V5:
>>    Patch (2/3), per Jimmy:
>>    - Alias eMMC to mmc0
>>    - Remove unused sdio alias
>>    - Move gmac, hdmi0 nodes to carrier board dts
>>
>>    Patch (3/3), per Jimmy:
>>    - Enable hdmi0_sound and i2s5_8ch
>>    - Remove redundant enablement of sdhci
>>    - Enable usb_host2_xhci
>>
>>    - Tested HDMI audio
>>
>> V3 -> V4:
>>    - Fixed XHCI initialization bug by changing try-power-role from source
>>      to sink
>>
>> V2 -> V3:
>>    - Addressed YAML syntax error in dt binding (per Rob)
>>    - Fixed whitespace issue in dts reported by checkpatch.pl
>>    - Split base SoM and carrier board into separate patches
>>    - Added further details about the SoM and carrier to the commit
>>      messages
>>
>> V1 -> V2:
>>    - Added copyright header and data sheet links
>>    - Removed non-existent property
>>    - Sorted alphabetically
>>    - Removed errant whitespace
>>    - Moved status to the end of each node
>>    - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
>>    - Removed delays from gmac with internal delay
>>
>> - Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts- 
>> upstream-v4-0-8445db5ca6b0@gmail.com
>>
>> Joseph Kogut (3):
>>    dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>>    arm64: dts: rockchip: Add rk3588 based Radxa CM5
>>    arm64: dts: rockchip: Add support for CM5 IO carrier
>>
>>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 135 +++++
>>   4 files changed, 629 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5- 
>> io.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> 



