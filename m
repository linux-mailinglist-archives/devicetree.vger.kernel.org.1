Return-Path: <devicetree+bounces-123295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24E9D3F30
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 16:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7D8128418B
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 15:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD3F13D520;
	Wed, 20 Nov 2024 15:36:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636DA74C08
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 15:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732117008; cv=none; b=aob3UBiwaZ0kPHTolzrStMHyt+DPbuPk8nKdG1XzYa2War2wZOquxZ5WQ8cMbj+Tw++GsjY3lz+4DxJHSYFpF/x9IBZTOT5udco1YQ1B/iisFwdaX8CHSQGoTJbiGhJyESHQiWliRI+TheJ+rCd0xRQMSSg27dgSqVECUPdLHpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732117008; c=relaxed/simple;
	bh=L2DkyljbYpDbQrOOJD3UjrFLxUtyxx4J/tFlahc+ZyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KT5dI+Dg/Sv4EF2YsxKwl+g3eRZryqWEAAlhEsgfopVWR6OoHh7YhSTp6SF2+lnhw9QDj73s7Y0RiA1b3+qQRDezhX/H/+leoOhf15wqQMf32c9wo0LkAJoJC+IMNJi1JBktVx4ukiuENuws2wyxvEKOjcFaLVEwpYPPP+DB1nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDmkn-0008HL-Rc; Wed, 20 Nov 2024 16:36:29 +0100
Message-ID: <11dd729c-df29-4d10-bf47-73e1fa01322f@pengutronix.de>
Date: Wed, 20 Nov 2024 16:36:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: Add dsp rproc related mem regions
To: Daniel Baluta <daniel.baluta@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Cc: aisheng.dong@nxp.com, imx@lists.linux.dev, conor+dt@kernel.org,
 robh@kernel.org, iuliana.prodan@nxp.com, shengjiu.wang@nxp.com,
 frank.li@nxp.com, linux-kernel@vger.kernel.org, laurentiu.mihalcea@nxp.com,
 devicetree@vger.kernel.org, daniel.baluta@gmail.com, krzk+dt@kernel.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
References: <20241120135859.3133984-1-daniel.baluta@nxp.com>
 <20241120135859.3133984-6-daniel.baluta@nxp.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241120135859.3133984-6-daniel.baluta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Daniel,

On 20.11.24 14:58, Daniel Baluta wrote:
> With imx8mp-evk board we are now configuring 'dsp' node for rproc usage,
> so add rproc specific memory regions.
> 
> Also, enable dsp node because it is ready to be used.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

>  &eqos {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_eqos>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index fa4ff75af12d..e6f3ac02689c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -282,7 +282,6 @@ reserved-memory {
>  		dsp_reserved: dsp@92400000 {
>  			reg = <0 0x92400000 0 0x1000000>;
>  			no-map;
> -			status = "disabled";

This reverts commit 010dc015b811 ("arm64: dts: imx8mp: Disable dsp
reserved memory by default").

Please enable the reserved memory node in your board DTS instead.

Thanks,
Ahmad

>  		};
>  	};
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

