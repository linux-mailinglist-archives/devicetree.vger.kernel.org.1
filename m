Return-Path: <devicetree+bounces-243578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8E4C9A1A0
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 06:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 309E64E0639
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 05:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3B522759C;
	Tue,  2 Dec 2025 05:34:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F1B15746F
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 05:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764653665; cv=none; b=YasdygGtgn1afAeYbBnnSvFnsYk/ldGg9CFOXKyj/j0BlHy+3JdI2hhSlQZV3kgTu7j+2GQklsB5i2jy9iORmHWHKCH3qQt5Gca6bLGTRtQ4C+rGjF0Ezot63CAZjrLr28SBjJx+Vbb/gGBOsAJ2F/xrX2IepLTgTUkjvc7MuWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764653665; c=relaxed/simple;
	bh=7dyochiWGC4/U+YXDroOppCOhVt3LeMaEh9tY3Lyxrk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tUUcdXtDuh5b/S5QwPb67gzJkSRSPCCVESzdMYtMrP/XvcXLo8z7/sVvIyFJh+RZwtIt5J7VbKt4FiEhMLzn+htI5ul1ckeQoQMwwXXaBB7VTxnkZdsinA0fA8vwRHgJXHbbIjtHHKDeJOpywpaNWwruJyxLQwk6ykSxbdJy7PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1764653631t5ccae0e7
X-QQ-Originating-IP: naTnx6ci3Ef6pXnpG8dnVHxLFIrtxNygixU8TzGW2dU=
Received: from [IPV6:240f:10b:7440:1:46e0:47f6 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 13:33:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8448205919639548247
Message-ID: <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
Date: Tue, 2 Dec 2025 14:33:46 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, michael.opdenacker@rootcommit.com, dsimic@manjaro.org,
 pbrobinson@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202052702.155523-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NSTiGhYb0MY6wn7NPDgA3hpXQmooXlgI9PE9t2LRyQbhl6gZB1htRvKj
	UpNeI7H+YQP5a8GCjiQJSLG9L5l3p0nA70cntwR9QQ/txkAKExhi9D9DrA5uQgIe2oiy9/G
	Afn2332ZFVxKKD+ETzeDDZUEBzzHS8xC923WY85seJ5NH7+j1nf7Li3cZvD3ReJ8UVQPEnI
	X6iXI8xU1afaPopSmcQw8LVk8F8OnpgBWSrp9ey6Juor8F/o/L9eyZhGprkz19x84qE/TDj
	AYpCkmaW8cv42kxi8yO7jWWki6G9ELgBxhd6W7mS30AtemXkHSrtEW+RguS9yU2aSGKDngx
	0H22XoPJBAsm+v3F/byDWv+YrGrNCTEe/Ncaa7Wg0q4vJsxbSSW+bfDwodTbMbf1fRzcHKh
	YA5rIkjncHn9zrO7agZgftzFJ7yJdap5qQamzIh7vZsXTuEtBHWYVyTaMGPdTaN9d+/2zfK
	FHcKdrknUMvX3VlQKwHV1MeYAAISlUz/0SmqoqN7YS6JHeSQMB1xplK6BZDFLtXVRiyhVLQ
	q5NcHmcFSmxDk86sq1mQ5MvbBMxFAHAdJj/4k8uhaoxYCIGUMGwZc9b0e6PPw9NwPw8ZAHS
	iZEeukB9GEqPGv2m1TdNA6x/2GrK0dV1YhlQs2tfFFQ3UUXH8oTlPpUF0wwmHLOceZT5vvW
	A08DmqUEec2vDu2rDg7jqnE7M2n2YHGY3I/9VzWQ3K3Envx74Kcr2/X6L3htTZcefMec68c
	BG+lxyT7YF+J7pK1gfmcrQ3JExdYz27RNMt/a3HPn/Ax5s7wlBp4iRA1DgPMWK2WjLqb3DK
	cyMYqtfBLqDtbUpJwMGl2bq9M8/ZL8l9Grqd33J1nOwRQBQi0H55NIZb46mO/PTfghJToFv
	mnowAnBGwOPgNlsIxqInd9rqE43XBJjPW/YAagWycYYDg/N3GTtZ60DkmV62sY3NT8bTt7O
	BJz6SQpvAMgnsD8r7aJWf1LVpm6JtVReqbeG4jdq+31GVkkFt8ak/Y+rmpbpDK/t4sf0laJ
	MRo5LMmdHn1Gwk2h6qvocjjSkXGQE=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi all,

I got the following email,

On 12/2/25 14:27, (Exiting) Krzysztof Kozlowski wrote:
 > Thank you for your email.
 >
 > Krzysztof Kozlowski no longer works for Linaro.
(snip)

I'll resend this patch series with the correct email address. I 
apologize for the inconvenience.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 14:26, FUKAUMI Naoki wrote:
> From: Joseph Kogut <joseph.kogut@gmail.com>
> 
> This patch series adds initial device tree support for the Radxa CM5 SoM
> and accompanying IO board.
> 
> V4 -> V5:
>    Patch (2/3), per Jimmy:
>    - Alias eMMC to mmc0
>    - Remove unused sdio alias
>    - Move gmac, hdmi0 nodes to carrier board dts
> 
>    Patch (3/3), per Jimmy:
>    - Enable hdmi0_sound and i2s5_8ch
>    - Remove redundant enablement of sdhci
>    - Enable usb_host2_xhci
> 
>    - Tested HDMI audio
> 
> V3 -> V4:
>    - Fixed XHCI initialization bug by changing try-power-role from source
>      to sink
> 
> V2 -> V3:
>    - Addressed YAML syntax error in dt binding (per Rob)
>    - Fixed whitespace issue in dts reported by checkpatch.pl
>    - Split base SoM and carrier board into separate patches
>    - Added further details about the SoM and carrier to the commit
>      messages
> 
> V1 -> V2:
>    - Added copyright header and data sheet links
>    - Removed non-existent property
>    - Sorted alphabetically
>    - Removed errant whitespace
>    - Moved status to the end of each node
>    - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
>    - Removed delays from gmac with internal delay
> 
> - Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com
> 
> Joseph Kogut (3):
>    dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>    arm64: dts: rockchip: Add rk3588 based Radxa CM5
>    arm64: dts: rockchip: Add support for CM5 IO carrier
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 135 +++++
>   4 files changed, 629 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi


