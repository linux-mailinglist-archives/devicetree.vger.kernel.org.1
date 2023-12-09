Return-Path: <devicetree+bounces-23538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 844D080B81E
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27B12280F1E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6AF1EA8A;
	Sat,  9 Dec 2023 23:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="YmgWZZGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225B0137
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:43:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702165436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B2LjM9kLddV3nWEq7a7Mfq3FRRtXLfau/i6hlC2gKKs=;
	b=YmgWZZGloi+9A+lD73Jev2cdJ3BQQakA1rTxvxx19v5cbqO4q7MAFQltdVWCSx7xwhUTR+
	M5vJYkFWB/iUQOR3lorqftfiKhLm9qJZhGCrEufMisaurE7s3jH0/thkRyXEb47ZilOjxD
	T8ytxkCKIAGWi67Z9KFF2dYRXZSxboMPlDzXKn5SjxPj+egzYQBa5bD5AWYF92L0oluhQU
	tfO7CNAOCvT1CjxGMxzbZ0M3sMijjJeSBopGMNLGIXGgJDZFzAfXgzBMDYXuCivlY285BS
	BwLuVRP6nQzSoORWx0zp0QNgZ0Lku02wgi5p1AuSE1oXwfSUvSfwBXwYv1Avcw==
Date: Sun, 10 Dec 2023 00:43:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <20231209233536.350876-1-i@shantur.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
Message-ID: <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Shantur,

On 2023-12-10 00:35, Shantur Rathore wrote:
> USB port regulators should be controlled by PHYs
> so we remove always-on property and let PHYs manage the
> regulator.
> 
> Typec port has misconfugred phy-supply and now that we are
> removing regulator-always-on, we need to fix the phy-supply
> so the PHYs are able to turn power to type-c port.
> 
> Signed-off-by: Shantur Rathore <i@shantur.com>
> ---
> + devicetree
> 
> After this patch the ports were confirmed to power up and down
> in u-boot when doing usb start and usb stop.
> At boot the regulators were off, the devices connected weren't
> powered up, on usb start the PHYs are able to power on the ports
> and on usb stop they were powered down.
> 
> At the boot, the ports were powered down which was again powered
> up by Linux kernel when booting up.
> 
> 
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index bca2b50e0a..bd2824aa48 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_host_en>;
>  		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
> 
> @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_typec_en>;
>  		regulator-name = "vcc5v0_typec";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
> 
> @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
>  	};
> 
>  	u2phy0_host: host-port {
> -		phy-supply = <&vcc5v0_host>;
> +		phy-supply = <&vcc5v0_typec>;
>  		status = "okay";
>  	};
>  };

Quite frankly, something doesn't feel right there.  Would you mind, 
please, to place this patch on hold until next week or so, at which 
point I should have enough time to go through the RockPro64 schematic 
thoroughly once again, and test the patch in detail?

