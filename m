Return-Path: <devicetree+bounces-82269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C64923B72
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:31:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9986F1C213B0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 10:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734B4154449;
	Tue,  2 Jul 2024 10:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="Pb3KRwfx"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F7A82D7F
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 10:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719916301; cv=none; b=YUoCi0WzpOAUklqi9t9CHpeCFpOKJ2o8LsAZ0mNU7507Du/bO+zhr+jf0A7Q7g7qO73MVjFFb5Oivts21JoeLMJ2CAq2CB46qCBdLss2xqCDSn0aaFkCjaRBGVaKQedVgphfU8dACXIddHqfgKYun9gUgA1+bdd3yNnC7iNglKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719916301; c=relaxed/simple;
	bh=0nUuaSJC0wos59bsTCAjg2ZKtMH3I2DJEL+CYXxMKqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OsSV+F23Jhcp9WAqOhmSTR8nvHvh5o3yogq53gccwLgAxJtrEnXX+ejF3ZlAjXBy5DCiQoSB7u7lMvnu619eV1hNT95AIj5aCcqG6Y5Cuh23lCZHY0koC//s59SDJdgrtUf9T+3cxE+ouTeKuZMMDoqCAaG7CDcELeZwpHpf0dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=Pb3KRwfx; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
	by cmsmtp with ESMTPS
	id OTahsbykejZAYOanKsT6hO; Tue, 02 Jul 2024 10:31:30 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id OanGsSxiJwj3FOanHs8VT7; Tue, 02 Jul 2024 10:31:28 +0000
X-Authority-Analysis: v=2.4 cv=UbRXSrSN c=1 sm=1 tr=0 ts=6683d700
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=4kmOji7k6h8A:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=5PsIE_XvEH0fwoVFwt4A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=B1Jjc+lEjY0Uw7nBJ3Zl64MagjypTEwjQImG0F/LFGQ=; b=Pb3KRwfxTE2+ZVvDrzZvX+GXVR
	zv+B5D5z+QzsFSYAWl/5QzHHQFw257mpEeC8KkqMCCyRW2w8/pxJL6ExJECpvMG4xENr6IH2WwyM6
	yf4ia17QQMdo96OKIqDAtCfXabrfzE4+GcgpvJigVDirLb8j463tPOic8j6vz1RWqjZ7QlyHmytYJ
	ib29V2lUVOMi/xFqbDxLR1bfH184VF70wHFRMLEO6vhm+jAZIuXjC61Y2mqE/PqacOft2j15K8V35
	0nf64q7KM7t+XDRV4/AvXpPvo0ZipEbiVmGAVL723GRIKB2hiQjjqg6/aBa0wo57RSMeO4XsJ4dLn
	FAwB/D5g==;
Received: from [122.165.245.213] (port=58716 helo=[192.168.1.5])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1sOanC-000xXQ-2K;
	Tue, 02 Jul 2024 16:01:22 +0530
Message-ID: <33ac3505-0f86-48e3-8cc8-ad949b04a074@linumiz.com>
Date: Tue, 2 Jul 2024 16:01:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm-venice-gw72xx-0x: Remove
 compatible from dtso
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tharvey@gateworks.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>,
 Parthiban <parthiban@linumiz.com>
References: <20240701231229.197614-1-festevam@gmail.com>
 <20240701231229.197614-2-festevam@gmail.com>
Content-Language: en-US
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <20240701231229.197614-2-festevam@gmail.com>
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
X-Exim-ID: 1sOanC-000xXQ-2K
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.5]) [122.165.245.213]:58716
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAzaNkMgoF15OTQ/4uoVDYfwyNOfrrV+vZjMPInYJhNKnIUMoUKwfmjhMpzzvdlLwYhQT0IhgbbapBFGA7doLkcx7FYCErJq8GttVI76PO395tRfGB/y
 RFi43MNYbIW3dLStEKJ/X+zcREu0Pn+opTogXhlnH9CoqFxBwP80E+PQrKkgVYFKmYOSmE3/pubOA4zlFV4apCJHjyYBeymExPY=

Hi,

I missed it, thanks for fixing it.

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
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso | 4 ----
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso     | 4 ----
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso     | 4 ----
>  3 files changed, 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> index f6ad1a4b8b66..47d3c0c49e8a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
> @@ -15,10 +15,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -&{/} {
> -	compatible = "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>  	rs485_en {
>  		gpio-hog;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> index c3cd9f2b0db3..7fcd8c851159 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtso
> @@ -18,10 +18,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -&{/} {
> -	compatible = "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>  	rs485_en {
>  		gpio-hog;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> index cc0a287226ab..b19e38fc27ba 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtso
> @@ -18,10 +18,6 @@
>  /dts-v1/;
>  /plugin/;
>  
> -&{/} {
> -	compatible = "gw,imx8mm-gw72xx-0x";
> -};
> -
>  &gpio4 {
>  	rs485_en {
>  		gpio-hog;

