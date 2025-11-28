Return-Path: <devicetree+bounces-242981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BE91DC91F44
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5753934BFE9
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E2532570F;
	Fri, 28 Nov 2025 12:11:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FF330EF85
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 12:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764331886; cv=none; b=VxwnVGxQ/hb0x5mA6oNwc4sl2TMOGwUfYV1S0UvAEZto+Mu/Q61tXxv+agzJWKJKhuaRZR1KL3cq45lMxlW4JbrHY1xWy0BtPilbBZaidTMsTzW7Jc3IfSC2p+nTWmy9nu9PX4Id0m7Ze7U8sCJzEbhpR08qNkMsR/ZSFObEJLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764331886; c=relaxed/simple;
	bh=qF+qx5Iy3k9QBpsa0K83/tLj6smrnwPMstwvUoJU6qY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YBBukZ4tV81AlBE3SKq7Y4fgOTe6AkY1Jh4l6rgmlYH4DZfgM5RLpDMx6/R2PwG4uvzREwEaFUoyuohS4Tuxd7ODtG4aw2SlR8Cyw5zqOLb7D+7mdmnqMhemcbbWyY/5oN9mSmt91P22igUHIwsoZofdCkWbUsIPvGHrO08znu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1764331798t16b6af85
X-QQ-Originating-IP: cfnGSLqLqGTMnzWcT3j8p1pKNNvNYptMtg78vW/KmaU=
Received: from [IPV6:240f:10b:7440:1:9018:e26c ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 20:09:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14202036780138722348
Message-ID: <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
Date: Fri, 28 Nov 2025 21:09:55 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: Quentin Schulz <quentin.schulz@cherry.de>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M4K5nIxZYv59u1FlJQcKLzFeregahmkPUk2Y8zv0tuOSF+ilKOhjrdbO
	7NkGKqOpv6ig9IPcpvzbp7VtjY+kqTOngZnHvlvlzKaN0pNDSGHZ1x/4Ve/EXzGPRhnqAFf
	X9w/1gwU6445tfjjr0ujjIXv9kUG8BWN8mQXd3CuCq1aMvQdnunFbO6nacRK6oyH9j3UXgR
	iWMosvHWysTokLYb1wiS3sfjw0QsEUIdEBL+pD53Ucvn3Pb6xTUTxF4TYRcntwWVggawPH6
	AqZZpQ3Nx6L9dCU8ppKOanEV0Yyxi4+qrGjFpO29JYJhE/E9EXGBVrscC3ts4zq1S6ENNkM
	z2FE4n4bMLIfZ7OmOMN/MJ+l5OuqrAWcQLDoUhNu9h8mCnylhNxfruJPRSlt2J4DkMsy3tP
	sDt9n6cJehOnfUxROkkkEllwBdV1N3qJjVlpjGuN+W4RJ5JqTWC50sVS4gIoz/Q50Gf+zl1
	K9SY641fMtRuTp1xd6Bm3y+tI/ZNAp8FneuGbtibxTbzt6VKO/Q4rdpuV4fvWxVHWpZt+Bx
	08MV2UydcjDyoToSoTlTulDXLawCXfSL8TQyXsZKaPi0/TLgN7l6ARWd2tR0xtAkTrDGzEe
	SCHFcsu3cTb0uOyQLBxWCUXZ/uJPBTwHhX4LuwDh1J36wTiSEeEuVtts/HGFIwGQ1JBVC8e
	UQAae3mR+CefOtYgq0H5JYoHf0HUjffgGaNjP5eTpzJalK583N6yWxjPbnIv8zQg3ZTKqkG
	Q/FVbM0/7ilGeW/I59hceZN4IJ8JapKQCi53/clkrseYTeb7MIIVkGmcDoMSSI6pPGNJ2Th
	SZILx/lzx5LBZ1Ey6qGZXHksgRBmoT1b48hrkY1nb2cbrtpmkcFOsHFnN72SNUGkqcNP7Nb
	CFccSAhxrQyEbOLO+oMf2c1ZFdypSshrOpPiV9Y1PXKQw98hy6zZkeKeKRYJy2JkOY5AX2R
	74uZsLicI8IKcOv0aaE3Q43B/j6+i0SR6tSJPoriB1Wuw+A==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Quentin,

On 11/28/25 19:24, Quentin Schulz wrote:
> Hi Naoki,
> 
> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>> Hi Naoki,
>>
>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>> audio-supply for Rock Pi 4").
>>>
>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>>> [3][4][5].
>>>
>>> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
>>> and the garbled serial console output on Linux.
>>>
>>> The ES8316 headphone and microphone are confirmed to work correctly
>>> after this fix.
>>>
> 
> Please test the ES8316 works when booting Linux from a U-Boot where 
> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.

I tried below, and confirmed that ES8316 is still working.

diff --git a/configs/rock-pi-4-rk3399_defconfig 
b/configs/rock-pi-4-rk3399_defconfig
index 219f42bc7d4..276ca961c10 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
  CONFIG_SYS_I2C_ROCKCHIP=y
  CONFIG_LED=y
  CONFIG_LED_GPIO=y
+# CONFIG_ROCKCHIP_IODOMAIN is not set
  CONFIG_MMC_DW=y
  CONFIG_MMC_DW_ROCKCHIP=y
  CONFIG_MMC_SDHCI=y
diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi 
b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe32901..c734f7824c0 100644
--- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
+++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
@@ -51,7 +51,7 @@

         sound: sound {
                 compatible = "audio-graph-card";
-               label = "Analog";
+               label = "rk3588-es8316";
                 dais = <&i2s0_p0>;
         };

@@ -516,7 +516,7 @@
  };

  &io_domains {
-       audio-supply = <&vcca1v8_codec>;
+       audio-supply = <&vcc_3v0>;
         bt656-supply = <&vcc_3v0>;
         gpio1830-supply = <&vcc_3v0>;
         sdmmc-supply = <&vcc_sdio>;

Notes:
- SPL_ROCKCHIP_IODOMAIN is not set by default
- I don't understand alsa ucm2 ;) so I modified /sound/label

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Having the IO domain properly configured from U-Boot may make you think 
> that the ES8316 always work in the Linux kernel but that may not be the 
> case depending on probe order e.g. between the IO domain driver in Linux 
> and the ES8316 (if the original issue is indeed related to IO domain).
> 
> Cheers,
> Quentin
> 


