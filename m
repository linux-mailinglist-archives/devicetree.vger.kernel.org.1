Return-Path: <devicetree+bounces-117789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6E99B7C88
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3C7B1F2185A
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 14:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C448E192B9E;
	Thu, 31 Oct 2024 14:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="ZFzwELqO"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6805C19C579
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 14:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730384109; cv=none; b=dbSxlpTUm67085i3tBVdAmTi0TmIuuVcVD91bmfYSVbrZRwJ7G6s5XnutVoTbMgVR8aYe89Bz2iPsR8ZMeU1REcLRjXZ4Qv2JYRqgj/jzGo/daMuwQVXhDEFr5hMlJk2GiXgfICRXxHB7mMmRhi8QKDpa6R353mRXOb4aWf0qA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730384109; c=relaxed/simple;
	bh=Kdog3okChVG+qtVt1DYFpPo7Ncm0Hjlct7/16T1KnLs=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jhNAkOgG1nnKJsb3yRxlWGfOq6zLlkhJAoa/8wE708yL+EMAbpZNkEFd/n/pTSzSFauRrscXHzzsPjed8fAZZI/rzs9OO025u3J1Uuybr/sKiVcM5dytTWzVLewpW5iG5zc7BPWHhnaFZM3U5VytszOhFHyU8E8qeZ7Jsta6qa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=ZFzwELqO; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
	by cmsmtp with ESMTPS
	id 6BqjtiH56umtX6VwztUA7K; Thu, 31 Oct 2024 14:15:01 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id 6VwxtR3PHdurn6VwytOsd6; Thu, 31 Oct 2024 14:15:01 +0000
X-Authority-Analysis: v=2.4 cv=aNH2q69m c=1 sm=1 tr=0 ts=672390e5
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=6Ujbnq6iAAAA:8
 a=7CQSdrXTAAAA:8 a=vU9dKmh3AAAA:8 a=oUTu_NvtNUWWlwhRUWsA:9 a=QEXdDO2ut3YA:10
 a=-sNzveBoo8RYOSiOai2t:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GY6AwgdHxbopxTlrLA2vjYBTcxsL4277viuzwS9TPwk=; b=ZFzwELqOkrSNBIMVRTiDlSFHyU
	uj5CcjhYb80VHZUVw7ln/7cP9qYhRKcYxMzRae/5d6Dmz47qP5nCVXEsYdZtSAdFgyVtwYmIRLd/z
	Po/4rajeYeTvsjdgq1evjHmH3bwOiXAFu3GsqHKS6zwO3Uy90qgzB1rIR5hrv5W2GsrVH8o+8OAOJ
	3baIK8SJmQAa7Fhi8mhpu2aWlNDzQm7YwS2/D8QNke3Op0VtQzkDqKyayfIflaAeVHfILbQXcXX2/
	bT5K+wuHNoK3tKUqeK4yEWjN1XVqYT+WBlqD8Cy+AcG3kBgXa02V19AM5iFV8coPfp6h5j+viKvc1
	cA8+nkxw==;
Received: from [122.165.245.213] (port=51552 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1t6Vwq-0038ez-1T;
	Thu, 31 Oct 2024 19:44:52 +0530
Message-ID: <fd26dadb-1a55-49dd-9530-5a3e2a58e36a@linumiz.com>
Date: Thu, 31 Oct 2024 19:44:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: parthiban@linumiz.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Nishanth Menon <nm@ti.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/13] arm64: dts: allwinner: a100: add watchdog node
To: Cody Eksal <masterr3c0rd@epochal.quest>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
References: <20241031070232.1793078-1-masterr3c0rd@epochal.quest>
 <20241031070232.1793078-3-masterr3c0rd@epochal.quest>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <20241031070232.1793078-3-masterr3c0rd@epochal.quest>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1t6Vwq-0038ez-1T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:51552
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKdfqdb5Cn3YhhbrvGcyqRY7MsI2ck6VH9OOcXpHPEkX5/SAq6wBc1qdWf+HLhbAs0gxRz+aHYSKwONRsmCtHZm8Fpt/Lh62YJnNj88/nW1bSCm6kkUk
 9fwBpBy8+cD5SzRa3T645Kx0o6EPz4uKrZ+Jpmky/b0jNZrAmZsq1OWBP69uqpqOoj7yin12vbWmMyMW5Nur64QiLCUYhsw4xm8=

On 10/31/24 12:32 PM, Cody Eksal wrote:
> From: Yangtao Li <frank@allwinnertech.com>
> 
> Declare A100's watchdog in the device-tree.
> 
> Signed-off-by: Yangtao Li <frank@allwinnertech.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
Tested-by: Parthiban Nallathambi <parthiban@linumiz.com>

Thanks,
Parthiban
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> index 1eca7c220ede..adb11b26045f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> @@ -144,6 +144,14 @@ ths_calibration: calib@14 {
>  			};
>  		};
>  
> +		watchdog@30090a0 {
> +			compatible = "allwinner,sun50i-a100-wdt",
> +				     "allwinner,sun6i-a31-wdt";
> +			reg = <0x030090a0 0x20>;
> +			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&dcxo24M>;
> +		};
> +
>  		pio: pinctrl@300b000 {
>  			compatible = "allwinner,sun50i-a100-pinctrl";
>  			reg = <0x0300b000 0x400>;


