Return-Path: <devicetree+bounces-138730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE8A11E9D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B1C1163003
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 09:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DED41EEA26;
	Wed, 15 Jan 2025 09:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="g9Hmqxqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F23248177;
	Wed, 15 Jan 2025 09:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736934728; cv=none; b=kuYxdzVuszFd+wXGR54JNQDXKsWVzyZQBa2RYxEH3x4SopXJyPDFU59iXvvYXtLxneCgiGowvgJTYefRUJhKX8TkKvO5MgYUQVg09zITLsUV9b0iA1lTfcHdupSAUUkYmay0Wjk6yB+gcnb0G1MTt2mBKDRswF2JJ35QQ1GRRsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736934728; c=relaxed/simple;
	bh=p3wlSF8fVhhnJy2je9U9RBF/jzTDV7iCZ0dJog1Yo+s=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=U4YqxYUfk52IAnUQKHcg4McxuYTTOKb3i/5UXSz+kD2QE2LTS4w9MptnqUr4MmfXW8xG/BfepDaQwzuIwdoXKONQzVmx26DkmzRhsI4XqXsuQqT660l1IKKv3K52Hs1las3vKM5tBlyixQjAo5UuKshwnbPkyH4zhvPkWiyRJ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=g9Hmqxqt; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736934718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MhzeunR8rJgrZ00XQVoPh7HS7sUwFQAgiu34BTjBQ7E=;
	b=g9Hmqxqt5W9Fcav3vjfAskxGSrwwUjqsZjenEBNE4dOTvaRg81qCWb95ztMh2IzQH+4Gzk
	FaiMX/gLzaDOL66pL0m2Io/R015jLWkH6l2vkCuVq4qoxrah2fHGiSG2H+lL9OSNAvGcej
	rK2dCgXVU/rO5V/YQP0jcP0BzFXL2jyiD8+x398nq73UyMeiIvk4buaYSC0T5cFklaeZ6k
	/mfSf9nWS1c0vbGlDN4fIrP2f1vcxiShzSmw4WsPlWx+k2KOmWfg4OBvtdVjl/b90cQ2TI
	ReIbSYuClhAgVltlKK3ADzzbHafZ9YjJ3+5dbfBe3CF8yIegOi3eELWbcm7vsg==
Date: Wed, 15 Jan 2025 10:51:57 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, didi.debian@cknow.org,
 marcin.juszkiewicz@linaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: Describe why is HWRNG disabled in
 RK356x base dtsi
In-Reply-To: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
References: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
Message-ID: <b1f97e555e57e6593251bb1ef1353423@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Just a brief reminder about this patch...

On 2024-12-02 15:44, Dragan Simic wrote:
> Despite the presence of the hardware random number generator (HWRNG) in 
> the
> different Rockchip RK356x SoC variants, it remains disabled for the 
> RK3566
> SoC because testing showed [1] that it produces unacceptably low 
> quality of
> random data, for some yet unknown reason.  The HWRNG is enabled for the 
> RK3568
> SoC, on which the testing showed good quality of the generated random 
> data.
> 
> To avoid possible confusion in the future, [2] let's have this 
> described
> briefly in the RK356x base SoC dtsi.
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/cover.1720969799.git.daniel@makrotopia.org/T/#u
> [2] 
> https://lore.kernel.org/linux-rockchip/20241201234613.52322-1-pbrobinson@gmail.com/T/#u
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 62be06f3b863..ab8f42c0a843 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1032,6 +1032,11 @@ sdhci: mmc@fe310000 {
>  		status = "disabled";
>  	};
> 
> +	/*
> +	 * Testing showed that the HWRNG found in RK3566 produces 
> unacceptably
> +	 * low quality of random data, so the HWRNG isn't enabled for all 
> RK356x
> +	 * SoC variants despite its presence.
> +	 */
>  	rng: rng@fe388000 {
>  		compatible = "rockchip,rk3568-rng";
>  		reg = <0x0 0xfe388000 0x0 0x4000>;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

