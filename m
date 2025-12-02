Return-Path: <devicetree+bounces-243665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9FFC9B0D7
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B36C34E2978
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2D7277C86;
	Tue,  2 Dec 2025 10:17:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2A91E9B3D
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 10:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670633; cv=none; b=VcYjv8HVbTU7vI84SEdVz9bN833HXXn6vjV1jKrrvmNHhfrfmjhHgVCk7kGefhcYwvjqxp8zZ2oHUIeGEznJzIveUJcRZ9BsAKpm449Fa6HKjxVz8gzVs/o0Q9aIUEsgq7fH912O25VSIpZwGD51HDUhgt6kkRXUoXQBdFJPXKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670633; c=relaxed/simple;
	bh=z60OTS9xyuC63QhZLjJqSN1Hy33mcfe3OrTqgyOoabg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jGl8LmLEPHVn/B+jxkdvHv8d/fDa8vV/A/ZFqkY2eehhV7+ZBcIGHjBvnrWEa80sfPHrDH8ZxijYx0qXVjPXwMcqF5QgpXQ+eYn8h2e02pElZBCS+CixhMzn4hdkjWohzas2y4b8d1y/eSMIcjYzgdIVO5hgegFne19HNbP9t00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1764670596tb5c8027c
X-QQ-Originating-IP: 45aTlnqbD37PSHSG5JK3F5q4dRBD3dp3ujSAhjyqz/0=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 18:16:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10838209078401624065
Message-ID: <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
Date: Tue, 2 Dec 2025 19:16:33 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202084052.1517-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Mc/7Da/97eYX2ZL9MKjPfVjLV/TgZ3KB/eIV8mloUSpPUH2mE6rqBJcN
	TeOPl0VmuRByXZb6KKwNqzkGmWvstXbNqbq5vYJ56Nx49zeJ0Qf/89l21geJv4OvQxmP0eh
	2JkpXyy9ytFrH+KexngybEvXWL0IBu2aYmL3fSx58t8ZgvaE2RrXYE+ZpiyCqKxKlNq1mr4
	3yw2BNnwVI5iLXvTxizGHU/PsVFdHiW7v0n+9mm8ztAN7rClAFw2/xeMgVgen5gKzLSndDt
	Pu4JWvIADKwbZFXtDp7s2x8voomVf22VIXV7CL8nwsq+jgPFW9nnCHaIj5f1CNVH9Nk8r4l
	QWQfPkTyst3rTXG9BMRKOHFYubeMUPAgZQ4UV43Nrn9l8eUZN4rDW+EuFVg6nT82y6X/F76
	Tc4fitCLdI8oHN8TGlV15YEjZu9t6QjyPytXQrmzRBCo6gm/3YFnJxwT3oCAD4IL0sTwJHF
	DaRkimOvlSP5XUkEi83TClZLvGrXmlaacy1PqXVZMV6fxm3FnOZZkItskByVznJSi/e6RmS
	IYIbKQWQVvAXYDi4GW8aNCL0dXN2zchkucnhLDmOzNf423PilVBVC5FJmymRZVJ5rKp190k
	zSYwKOF1hDqVLmes68deS1hXW5zpK9c0rjNgU8WBNt9cC7czVr6ybkxSI9kITN7doDiBenq
	s5w7iW0VXCDtYR6ZKcii6i3vo+aHcY1N6kHKkYJ4JJUuUDWkcW8sk1v+gMhAN8ZCyKw5x8H
	fV6GFkHAxQK08No2boV2lZeZ4ki18NfTntYRT+YhukMBI0gJMlpOiszT/arxbENWdsbt9bV
	E2Q85RQtrxIz9p54d95o+bagDGSw2KyVbAlkXN+Amthog3R3oA4YVJgWriQR4Ka5C6Tfme8
	fE7P0e9gnQnnPSMxGrbwSCQWPYOYV1dInqoNAStn/QXyX/RfVP1/mhisvbU1dAgotD3qgBH
	wlfuCPE+EbSQf1bhrMnDudFv8y9fO4Tl3UzYuk+epi8S/8itP2AUF2l2B
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi all,

I sincerely hope the following will be helpful in your review.
  https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
  https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts

Also, if you have a CM5 IO Board and require U-Boot, here you go:
  https://github.com/RadxaNaoki/u-boot/tree/cm5-io-v2025.10

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 17:40, FUKAUMI Naoki wrote:
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



