Return-Path: <devicetree+bounces-135048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFBF9FF8B6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 12:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2E507A15F4
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913701917EE;
	Thu,  2 Jan 2025 11:26:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E382722083;
	Thu,  2 Jan 2025 11:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735817205; cv=none; b=IKxCeaYltqk6OGVCQF4aGhVUbxyY++ChL2+doD1+9Oy7GMsufj8669F1evJMRfXi25xaPx8CqIlviTxdUylUEPloTZxuj+eJGPMYglpLs3IvIKuEA5vnxySHoL4Fgn+uoxreEKw2BN0/mEdy+X7AOcg49SZKGEEZ7XZmoXo4Gys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735817205; c=relaxed/simple;
	bh=HWPxYLw9taa0O9rbYJ2WYvXzx5alUFXBGWVWHMKi204=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	 In-Reply-To:Content-Type; b=XHWfUDlo/p8avvJ6u1TSFSDfp6WngcEsWDrrvVQvn5/3IOh3bdHIHr8C1EPrIVg3fkRdLVzfk0Taiup5QqyRO2ts7JOCajKhEBoHvVg6U6rVWiN9r3fMVDFLL9gX/yBKgRIwdfw/UgCp+5B0YD3pIW2XIyRUX7z9Sf2Uk7cCvbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=hisilicon.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=hisilicon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.163.252])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4YP4B014z9zrS7M;
	Thu,  2 Jan 2025 19:24:56 +0800 (CST)
Received: from kwepemd500014.china.huawei.com (unknown [7.221.188.63])
	by mail.maildlp.com (Postfix) with ESMTPS id D73471800D1;
	Thu,  2 Jan 2025 19:26:38 +0800 (CST)
Received: from [10.67.121.2] (10.67.121.2) by kwepemd500014.china.huawei.com
 (7.221.188.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Thu, 2 Jan
 2025 19:26:38 +0800
Message-ID: <677677ED.7060902@hisilicon.com>
Date: Thu, 2 Jan 2025 19:26:37 +0800
From: Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
To: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <xuwei5@hisilicon.com>
Subject: Re: [PATCH] arm64: dts: hisilicon: Remove unused and undocumented
 "enable-dma" property
References: <20241115193454.3619297-1-robh@kernel.org>
In-Reply-To: <20241115193454.3619297-1-robh@kernel.org>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemd500014.china.huawei.com (7.221.188.63)

Hi Rob,

On 2024/11/16 3:34, Rob Herring (Arm) wrote:
> Remove "enable-dma" property which is both unused in the kernel and
> undocumented. Most likely they are leftovers from downstream.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> index a589954c29e2..12f621cedf89 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> @@ -728,7 +728,6 @@ spi0: spi@f7106000 {
>  			reg = <0x0 0xf7106000 0x0 0x1000>;
>  			interrupts = <0 50 4>;
>  			bus-id = <0>;
> -			enable-dma = <0>;
>  			clocks = <&sys_ctrl HI6220_SPI_CLK>, <&sys_ctrl HI6220_SPI_CLK>;
>  			clock-names = "sspclk", "apb_pclk";
>  			pinctrl-names = "default";
> 

Thanks!
Since the "enable-dma" and "bus-id" both are not used by the pl022 driver,
when applying this patch, I have removed the "bus-id" and changed the 
commit message as well.

The detail is as following:
https://github.com/hisilicon/linux-hisi/commit/4a45f8c502a8b8a836c3c932a18d538856097ac7

Best Regards,
Wei

