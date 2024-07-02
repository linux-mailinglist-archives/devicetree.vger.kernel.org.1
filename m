Return-Path: <devicetree+bounces-82270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5541D923B75
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88B971C21327
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 10:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0049157E6C;
	Tue,  2 Jul 2024 10:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="oJrmINnz"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1C32AD17
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719916356; cv=none; b=VZSh6smAdkaFukVBwKRvjhCu8rWu2b10d2VOr/vZEA5+KlD62G+VMKDoGUaH26wCLunWNeaP+ME5tpEhGY30zqM1tQJ/sgZsfECuACn3p44AYHWS9uqFTF3fDI1WltXVZBU1yWQs2KHq5VGPYcao7637sylhj3w5Mwb/iDZrGCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719916356; c=relaxed/simple;
	bh=oOPoxmQqMk0DZGMjUKjOJYzL93ih2nRjjY+8u2xowZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VvKH7Ff5e5ezVsUZqNcS0TlIB37vHTpSNxFqkgaEAGu+pd740q/1DYdnlvB1OyOAGHfNOK+/hvfdfZVyvMBUx2sBvUNklYQ6lkV24jlIiuyotFGzTG+GMfXN+3y3/IvFC9h2ShsiOSS2KuAhukNyYszKNfxxiat3rKBGMxeBAQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=oJrmINnz; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id OP48sb6wwjZAYOaoMsT7CR; Tue, 02 Jul 2024 10:32:34 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id OaoJsPXdWNr0IOaoKsgq5X; Tue, 02 Jul 2024 10:32:34 +0000
X-Authority-Analysis: v=2.4 cv=F4VRdLhN c=1 sm=1 tr=0 ts=6683d742
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=4kmOji7k6h8A:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=5PsIE_XvEH0fwoVFwt4A:9 a=QEXdDO2ut3YA:10 a=zQKKnh3XjkRIUfZBXW1I:22
 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KNBi4WQLOuxBFHcle2b3V/xmSum8KN3rwW/k73uVmrE=; b=oJrmINnzPzkek4TegnnIUFfbuI
	eihhd30rWeUfN5+ckEUHwQkQqiMPP0z1l9Xq8noHykL2LzSRndeppyMNhLy4rolxVmG39+KV6mms8
	kf9GroqVcQ77BecwHM+g0VioD3LJICtcA6hdyv7ecNP7Mp1mfRhdoZndE0W4z83aWnmBzl8TKbSED
	gDwBCgluJiwQlIJRd7jC2a4R2AX3WdQ1mghx4xVY5BQ6VNgfzJ41WOrVgt1YYCGTQO2YYx38Rudsz
	OTKJk3AKIzeR3HuWptOrHskxufBEDmHabB96igSQfGGbIuEag+XEqr1GJMRxQjZO80Y+P6ulCYiJ0
	QEqKIqrg==;
Received: from [122.165.245.213] (port=39758 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1sOaoE-000zPI-1h;
	Tue, 02 Jul 2024 16:02:26 +0530
Message-ID: <c6593bff-b850-4ab6-b203-b2b874c1611e@linumiz.com>
Date: Tue, 2 Jul 2024 16:02:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-phygate-tauri-l: Remove compatible
 from dtso
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tharvey@gateworks.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
References: <20240701231229.197614-1-festevam@gmail.com>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <20240701231229.197614-1-festevam@gmail.com>
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
X-Exim-ID: 1sOaoE-000zPI-1h
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:39758
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 12
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfN16lqUloIfF3LV9abEYS83Fqs/8s7BHZudiyy6+LLddlEI9NQF46riL3rvcxS2yilXKNh0F5rwoZskjlyzs7uiuDN0shwJKK2kWew1sqE66kEbtO5Cj
 qHK38CI5kOjtLr0E9laBFI7Xw/d9sXfvPry7IFXWJc9QjQy8WBhU222c/YHJJ0KnU7hdmDqri83MmO1omCksLdmRouMlkYDesBU=

Hi,

I missed this as well, Thanks for fixing it.
On 7/2/24 4:42 AM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> There is no need to describe the compatible string inside
> a dtso file.
> 
> dt-schema produces super verbose warnings about that.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Parthiban Nallathambi <parthiban@linumiz.com>

Thanks,
Parthiban N
> ---
>  .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso   | 5 -----
>  .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso   | 5 -----
>  .../dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso | 6 ------
>  3 files changed, 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
> index bf3e04651ba0..9dd070342363 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
> @@ -14,11 +14,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -&{/} {
> -	compatible = "phytec,imx8mm-phygate-tauri-l";
> -
> -};
> -
>  &gpio3 {
>  	pinctrl-names = "default";
>  	pinctrcl-0 = <&pinctrl_gpio3_hog>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
> index f4448cde0407..045cd8082781 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
> @@ -15,11 +15,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -&{/} {
> -	compatible = "phytec,imx8mm-phygate-tauri-l";
> -
> -};
> -
>  &gpio3 {
>  	pinctrl-names = "default";
>  	pinctrcl-0 = <&pinctrl_gpio3_hog>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
> index 107f743fbb1c..4719f5fbad03 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
> @@ -14,12 +14,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -
> -&{/} {
> -	compatible = "phytec,imx8mm-phygate-tauri-l";
> -
> -};
> -
>  &uart2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart2>;

