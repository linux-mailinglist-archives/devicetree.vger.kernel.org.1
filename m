Return-Path: <devicetree+bounces-109118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A729953D3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC155286881
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605EB1E0493;
	Tue,  8 Oct 2024 15:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Eeea0gNF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7706E3BBDE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402830; cv=none; b=oyZFhSm0qlCwWt0tt5mebm1PMnEwxmduZ4j0vX+jij8y14IeZPJEKy7Rula7mfBp53E9VFl5Ajj+Zk3Aei92pn+xZGQd5S9fPXggRAjKe1bvPBEhWu5vFWs5RYP4q8IjjIQeS7Asyp/KPeCpib2Yk7fDIi/0fE+7Yvl7jfuBd8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402830; c=relaxed/simple;
	bh=oJVOaqc+UiXxcMIPTWV9i3CyE5ydEoOcMoy5s5N9Ho4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=N4N15MhROjtMhGHku6qDooP0VxBuPyHXuKvJe507pW0OxMUP+pQY5lUPGm9NOmS5MDvgyKTWu5XYPVlmUQ7IkcN8briA1RUiZLUtO+1EbP4Q2wYuqbh4Dd6XXkw1SZ87cIkYbuIHyNafVWG3LHHOn4NRIFeotvdAVbnrRtHHOxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Eeea0gNF; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2mfspLx2hCQEP4cMmIHTkKBp0jQPvfQ+o6+ZDw/dmb8=;
	b=Eeea0gNFIW+ZhFdh6WObao2Dgj+c0gctmB4yiWE8k0KCf7nReRJb4ZBShbip4Oem8ZMRuR
	O2L0M2nVxkGbp+igvScBzcA5EP++YrEMX3ypXnaQDw5SUig2B3Qyc9xl79Xbs/593w1Dqs
	JGxkuDrVMBPuScik43gEeiifLxzEVhvMe7xtNAFHHZD9suA2td4UB5huCJ4rqUK+1Bhbtd
	6fzEKSfNj7sCDSod4TOl8ERwMmWQEe4NNqqD4KHvLwnhKKHBWE8m4CXosDb4al192mTeEc
	wG9Pv4UFUn1LrhIF3Q9gCJlAszXZFGCg/5vFJHcCCeHm0yaK+IBQzQNmJo08Yg==
Date: Tue, 08 Oct 2024 17:53:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-4-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-4-didi.debian@cknow.org>
Message-ID: <dbcb2cbd1bb00332370a550b493de099@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Diederik,

On 2024-10-08 12:48, Diederik de Haas wrote:
> Property 'rockchip,system-power-controller' was deprecated in commit
> 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate
> rockchip,system-power-controller")
> 
> in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
> replacement is (just) 'system-power-controller'.
> 
> Update the rk3368 DT files which still used the deprecated variant.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

This patch is looking good to me, all changes introduced to the
board dts files are fine and pretty much straightforward.  Thanks
for this patch, and please feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

See also a related rk8xx MFD patch that I just submitted. [1]
It builds upon the changes you introduced and helps with saving
a few CPU cycles while probing.

[1] 
https://lore.kernel.org/linux-rockchip/08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org/T/#u

> ---
> changes in v2:
> - rephrased commit message a bit
> 
>  arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> index 029b8e22e709..03ebf66e9bfc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> @@ -113,7 +113,7 @@ rk808: pmic@1b {
>  		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> index 8ac8acf4082d..dbf9fef9bc36 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> @@ -179,7 +179,7 @@ rk808: pmic@1b {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&pmic_sleep>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> index 29df84b81552..26de79388db8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> @@ -73,7 +73,7 @@ rk808: pmic@1b {
>  		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;

