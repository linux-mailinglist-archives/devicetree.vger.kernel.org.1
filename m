Return-Path: <devicetree+bounces-212019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AF4B41890
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CBB61BA4548
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9C72EC55D;
	Wed,  3 Sep 2025 08:29:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg4.exmail.qq.com (bg4.exmail.qq.com [43.155.65.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA72EBDFD
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.155.65.254
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756888173; cv=none; b=j41fz567sbOR/vtNlB10ytUhnoIi4JCt3dtLPbp1+A/Frecj3K6B71Hfnrl4/FQPqTSF0Hxecgu40H2dvpPpySlW94QYdOt0m83/J1pF6/jTm+VhOfNWKCnfsfHD0RulKN2RFimbuhVf8AsaUJdfMy3tLUTrCc2OKEckl2bP9k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756888173; c=relaxed/simple;
	bh=NINH+7RW+iIpNTyQMVL/D0TplY6oTWE3aNOfI4gj8H8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ew9jUGZp9CR4/5onkYIOdsGDtRiYFuHm1rB3M4akWu5KwfdDeZ9BHBRfWE07B0uYhRgWKz0vM7+YbdQvNoxOPnI9q1UOLv1RYN9EtugWZ9nHvsN2WjTsZzgUDB/70xO3wf5cjJQ8KFFYHWtL4gEuM84Te7f3PE0VZK1bN9lkbto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=43.155.65.254
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1756888125t2bf0b974
X-QQ-Originating-IP: hNMMUBWBZAMjlucA+xBTHqWVycX+g2+pxJSCJlsVS4I=
Received: from [IPV6:240f:10b:7440:1:81b2:3bee ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Sep 2025 16:28:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13612785056484846069
Message-ID: <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
Date: Wed, 3 Sep 2025 17:28:39 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: Joseph Kogut <joseph.kogut@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OSf9GMjVgk1FA5RtHdGYUb7MCjBdmMO+pQAtQLTr1sfyTpwGKoKr8jsF
	+EXcjURPAA9kAAgejrTybPwiqCfA5iCvT99nPT8BRuX6sPYtQGnuX7KcWIQutfPAIwWQzp7
	TeG5UlcxyRTJAykdxg1OMabUMdphTwtS8pblkin2r2Sr2CMPthebaQc/Ez/dAdmGGzDDz/R
	S7//jrz4TgqGFwLb/DdEiSk6/0VGwQPbBtVYRemnr3xqqlx6du5dQEDvSFgYp1cBTEmE4XD
	ZyHdY79E46x8gcbzY+GxdNDALozoWDAMi8cVl9pah2B1DQPd3mWcCqOXDgexkBvzCbuSLQr
	bUDvmLL/YQkJQs+YGyGR5vLOEMu8ozltdHwyEH4fhHJAtqeO6VvRuvHhEEofzIs3RPZ8JAR
	NuEaWINnsuYeLyyh3B4r7fUQoXgSk7F1TuRWNXz1tAEHQ9njL+a9fPZK7VLJg4MEdnzOOHR
	8h8SRdmnoCrV+gcMEf4tORuHI6YyVPNY9nfby3GARrYZ+GcVdJ0SP3I1AMmNU64XrRrf39I
	1HCC3NSDVRFmklNzu/TDLt8t87Wxo+uB5T92fOAmD0owiNJln6C1zSGgwmqfASfNLxBJLnx
	0Fs5dpZp/W9+jkp0cd73gs9bsXNnWToyxDOAyD/q6xL1AqQ5eeAqwRVk1765v/kTVW5AJ8r
	BW+YPC8yhnxR1BOe//xmJmDoAyJtP5zMnSDJvCcr7YmCMnxsmKv4BcQE2T7UMkmaNXfwoUQ
	ImCmUE0uD7/yYMW0tjTzV4HPNxlpnsApt4Esx7uUCHKbOFB4XO2/9Q6Hm56RQiBXTGnhREh
	9sB4pPd6YgCPjR4Xi4HDw0z6SACg3anWzQ1ABq0Z7N6yCtB/qK2SON1CHf570hoUDwZB4OD
	bkN0mTYQ+oEG9CdC9HoWf+j+NzkqPk6SXZD3Q/3vqbiMWFA9gTkxAT/T34o5KpBjM00gUmH
	AikN1d6hYhXkyy9jNSByU4lUdzM1kZZo6Ft1dK1iYoXc46WCJc8e3G1fjAtIEwDALzrr27D
	7P6ZawnoOl7EKqQvrYCcgPurV01ALDiv3AoQW0wHaZfn68jsBKvFKlrcGbQKg8j3FL2At6c
	pjDTTAdww/j+8EWbiuo9Hw2nByypChStA==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-SPAM: true
X-QQ-RECHKSPAM: 3

Hi Joseph,

I'm thinking of continuing your work, so if you've already done 
something, please let me know.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 6/18/25 07:11, Joseph Kogut wrote:
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
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
> Joseph Kogut (3):
>        dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>        arm64: dts: rockchip: Add rk3588 based Radxa CM5
>        arm64: dts: rockchip: Add support for CM5 IO carrier
> 
>   .../devicetree/bindings/arm/rockchip.yaml          |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>   .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 +++++++++++++++++++++
>   .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 ++++++
>   4 files changed, 629 insertions(+)
> ---
> base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
> 
> Best regards,


