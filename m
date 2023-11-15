Return-Path: <devicetree+bounces-16008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F837EC763
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D42511F27A9B
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C758E39FD7;
	Wed, 15 Nov 2023 15:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gdUd4Ujg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE9A3EA74
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:34:20 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B171A3;
	Wed, 15 Nov 2023 07:34:18 -0800 (PST)
Received: from [100.92.221.145] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: martyn)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4BB826603149;
	Wed, 15 Nov 2023 15:34:16 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700062457;
	bh=66db6GfHHnR8m3eMrA6GUpWG/wGdHrrqIWkULFznoU4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gdUd4UjgojBkEzoZ71USXnRnsvgTC9OhzQukBZuC40JAj1Ba4c5BAMIG+8S5H0s2J
	 UhGQN47wwzZyMwPK/4rPGQQucphfAUY61G3Kjdy0WpPjQqeWK2K82zbwAgvAZc5zJb
	 7wPg+PCnVhrV0Tqyst01KQ6hWPcdYsgtUp7mtHVk9YWF326+HM9eLYOq8bAnjyw8VA
	 nGAlTgetgZ/Joy9aWxjD9y6TJWh8W3NJaEHAm0oSHlYsH1oa4UuU9KJMUDzwqFjuUZ
	 KXAcu3842enDQUQCYuiJwQENGrPczh16HkO6HHv6ZmMsR7yACP/H5D8IKBTLF8aIVd
	 yYBO0RkYPR1ng==
Message-ID: <8b09aaf1-fb36-49e0-b36f-7daecbffdba4@collabora.com>
Date: Wed, 15 Nov 2023 15:34:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] arm64: dts: ti: Enable CSI cameras for AM62 family
Content-Language: en-US
To: Jai Luthra <j-luthra@ti.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Aradhya Bhatia <a-bhatia1@ti.com>,
 Devarsh Thakkar <devarsht@ti.com>, Vaishnav Achath <vaishnav.a@ti.com>,
 Julien Massot <julien.massot@collabora.com>
References: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
From: Martyn Welch <martyn.welch@collabora.com>
In-Reply-To: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/11/2023 09:51, Jai Luthra wrote:
> This series enables CSI camera support on BeaglePlay, SK-AM62 and
> SK-AM62A, now that the dt-bindings and driver support for CSI-RX related
> IPs is merged in v6.7-rc1.
>
> Along with the device tree nodes for CSI-RX, add new DT overlays for
> different camera modules like RPiv2 (IMX219) or PCam5C (OV5640).
>
> Signed-off-by: Jai Luthra <j-luthra@ti.com>


Tested applied to master on AM625-SK with OV5640:

Tested-by: Martyn Welch <martyn.welch@collabora.com>


> ---
> Jai Luthra (8):
>        arm64: defconfig: Enable AM62 CSI2RX
>        arm64: dts: ti: Enable CSI-RX on AM62
>        arm64: dts: ti: Enable CSI-RX on AM62A
>        arm64: dts: ti: k3-am625-beagleplay: Add overlays for OV5640
>        arm64: dts: ti: k3-am62x-sk: Enable camera peripherals
>        arm64: dts: ti: k3-am62x: Add overlays for OV5640
>        arm64: dts: ti: k3-am62a7-sk: Enable camera peripherals
>        arm64: dts: ti: k3-am62x: Add overlay for IMX219
>
>   arch/arm64/boot/dts/ti/Makefile                    | 17 ++++
>   arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 62 ++++++++++++++
>   .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 +++++++++++++++++
>   .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 +++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62a-main.dtsi          | 99 ++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 35 ++++++++
>   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi     | 15 ++++
>   .../arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso | 76 +++++++++++++++++
>   .../arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso | 74 ++++++++++++++++
>   .../boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso  | 74 ++++++++++++++++
>   arch/arm64/configs/defconfig                       |  3 +
>   11 files changed, 609 insertions(+)
> ---
> base-commit: a93441cc391f1923d031dcd463e3444c7c21bffe
> change-id: 20231114-csi_dts-5f433aca3665
>
> Best regards,

