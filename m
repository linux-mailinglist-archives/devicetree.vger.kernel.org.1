Return-Path: <devicetree+bounces-106626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA998B08B
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 00:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 084E7B22E52
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 22:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2412183CA5;
	Mon, 30 Sep 2024 22:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="NXyV9Le5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7F621373
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 22:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727736956; cv=none; b=VKb6/4+DaQINJlDf8axctbgftCz+IHNAAe5tmr3SvhyDTc3g6X4n4pKjFB/fhVuGRT9Kw7QbPrsVr2zIB/SOI5dZfFCoognwkJdG5Zo6XcQsDkXcbssvZhsj4QQaNGh29AbN/S8cUC8eJz0G1wWyZYaKTpAlTF6uRNiVOirmZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727736956; c=relaxed/simple;
	bh=YLto6OKPEi8Gb/1EYAnn6Im9eelORVMf/MEjTcWaFEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R8HtcEUAcKFJMtuy/AbOvwu6xqFuXxf352A3/fB8jz6Eq1DX4zNf3Y2vJuc9zFiyMUua1IKSREqhqKyBW1/bXCdFWRbd837hHFzyTzpsElaNZGN9N4iHEbrbqdw9wD4ILsrDHTg5n/kfw/Jc3B6YtqI66Th3J2lOHVBqG+0YwhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=NXyV9Le5; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727736949;
 bh=hsMxoXwTk/RkP26yz02KeEDGy8kidPGtiIRE4uvB8sU=;
 b=NXyV9Le5XfeL9Qwn0JcGQu1b0hl1NxCM7U8kx5zJmP1wn1ShmnUyJ3xRbCIIYtPco5wy5PpQ5
 NW3Gvb0Qi4qoE7ssholCFNHw09Gd9ZOWYdTFO+ww8+ACfznBya10i9liRyXaisIfEbwht+RwYT6
 3DmFhWYcYfzb36sownlHVftJZwA706hJpmxmFzDEkDXoh1e1sPCZSm9tlO3anr5FZyzuJ+POwrQ
 A4E2nXr5ifFqdkQ1AAY077arOv1lnqKlANPllbfKccyjShibFMF4epXMESolM6MUqc2bFBUSbPV
 u3ba5huunQZYvZq6EpbIItxNxfgkYqrNhGkxAWc/BdnA==
Message-ID: <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
Date: Tue, 1 Oct 2024 00:55:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: rockchip: Drop regulator-init-microvolt
 from rk3568-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-4-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240930210112.1993625-4-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66fb2c74265a09cbe12df5bf

Hi Heiko,

On 2024-09-30 23:01, Heiko Stuebner wrote:
> regulator-init-microvolt is not part of any regulator binding and is
> only used in the Rockchip vendor kernel. So drop it.

Mainline U-Boot is also a user of the regulator-init-microvolt prop,
and use it to help configure an initial voltage on regulators during
boot.

Mostly useful for regulators that has different min / max voltage and
is not enabled by default or set to an unexpected voltage on boot, e.g.
the typical npu regulator on rk356x defaults to 0.5v, yet needs to be
around 0.9v during npu probe.

Maybe a better option would be to try add the init property to the Linux
dt-bindning?

https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40

Regards,
Jonas

> 
> Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
> Cc: Furkan Kardame <f.kardame@manjaro.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> index e333449ead04..2fa89a0eeafc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
>  				regulator-name = "vdd_logic";
>  				regulator-always-on;
>  				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -285,7 +284,6 @@ regulator-state-mem {
>  
>  			vdd_gpu: DCDC_REG2 {
>  				regulator-name = "vdd_gpu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -309,7 +307,6 @@ regulator-state-mem {
>  
>  			vdd_npu: DCDC_REG4 {
>  				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;


