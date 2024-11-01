Return-Path: <devicetree+bounces-118034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C349B8CA4
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 09:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 353BE283B0D
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 08:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77FAE17C91;
	Fri,  1 Nov 2024 08:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="QLLh9LOP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736C3155CA5
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 08:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730448472; cv=none; b=Ahq5+NvWFJP0abSwpyRXWhuQuxDKxNuvsjQFdpurn8woxYFZRbXDwTPvywfHLrNDWCrjHK5L0Q2vZU9c6FHovygBJIYMhl713Gz4SDwUBX0DvN/uVWjr9wVUVLO8JmJLixEZg9GPhsCDDkIpaskKUMkqLjeObaqDfXRgWr3uFoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730448472; c=relaxed/simple;
	bh=U/HONbm77dETP0WMiplqjApg5olOcejJfHuTDMiC6ec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MWPke3nqx1WMqtXq9zNB35H3z2Wdy8HUaspIskoeeYdhYVlF/ozResahWYSDAzGhLRENnbmR2x+d5sH13y20YplwVBYlqF2JGUwTn3T3GwiFFIzGugRQL6vMzcixQnhImEAOwl14RMrFqof95/MesaoCzd0aX5+kdIpUeoeuT88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=QLLh9LOP; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=13yVRjwRQ4uP7MVZUkbCgvEr+0M4fhtWPCcnIh1nW8w=;
	b=QLLh9LOP/E+liaFug0/xHR+3DNJTnhSJ9LXyZYu4iDsHaq6EEgF72VYElDykYF
	F13/SwWbTowVdp9YU3L5aGvueYiPxpLC3R2tFmK4CGMi5qlLO61l7ymxcOp4o9tv
	NbgtP8pEieU88l4yX28Llt0KbTxq1/nEBjiYm6kohdi0I=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgCX37wTjCRn9lFiAQ--.13649S3;
	Fri, 01 Nov 2024 16:06:44 +0800 (CST)
Date: Fri, 1 Nov 2024 16:06:42 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] arm64: dts: imx8dxl-ss-conn: change usbphy1
 compatible
Message-ID: <ZySMErIOlyRWzzrj@dragon>
References: <20240926073951.783869-1-xu.yang_2@nxp.com>
 <20240926073951.783869-3-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240926073951.783869-3-xu.yang_2@nxp.com>
X-CM-TRANSID:Mc8vCgCX37wTjCRn9lFiAQ--.13649S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7uw4fJryfur17Ar4fCF48WFg_yoW8GrWUpa
	4Ykr4DZr1SgF1j9F9rXa10kr98Jws3Cr409ry8G3y8Kr98ua4Fqa97urna9rs5Zr4rCw43
	GFn5Wry2y3WUZaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j5cTQUUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAgqKZWckfBgxrQAAsc

On Thu, Sep 26, 2024 at 03:39:48PM +0800, Xu Yang wrote:
> Make fsl,imx8dxl-usbphy compatible with fsl,imx7ulp-usbphy to fix below
> warning:
> 
> /home/nxf75279/work/linux-next/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: usbphy@5b100000: 'nxp,sim' is a required property

A relative path might be a better fit:

arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: usbphy@5b100000: 'nxp,sim' is a required property

I applied all 4 DTS patches with this fix-up.

Shawn

>         from schema $id: http://devicetree.org/schemas/phy/fsl,mxs-usbphy.yaml#
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
> index 1e02b04494e9..9b114bed084b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
> @@ -138,6 +138,10 @@ &gpmi {
>  	interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>  };
>  
> +&usbphy1 {
> +	compatible = "fsl,imx8dxl-usbphy", "fsl,imx7ulp-usbphy";
> +};
> +
>  &usdhc1 {
>  	compatible = "fsl,imx8dxl-usdhc", "fsl,imx8qxp-usdhc";
>  	interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.34.1
> 


