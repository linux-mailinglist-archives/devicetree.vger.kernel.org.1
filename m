Return-Path: <devicetree+bounces-61386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CA58AC7F2
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3E3E283F44
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C56C54666;
	Mon, 22 Apr 2024 08:51:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D207D58AB4
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713775879; cv=none; b=W43UQbFFLdv1Fmp7ymdbMQMCTViQUrQoNjC7PY7YO/5h1qHTl69pDCk/rPagBfV2NuPTQfG+nb22J4EoGrl0oCYMQdzJTaS+KFLC8/L+1vEwnOAKmMQItNMo+ujL3Tw8lWutHwIKenfhyDe+hdrF5KmKdyHm++6JY5FRErQMJdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713775879; c=relaxed/simple;
	bh=cPSG5BM69SWk6+aZtIIQTDm7qTEsLsxXRx6y4/OB6Eo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4PyEtdCddbXs925/vLpogG8gF2Q7T1WisySfSm+4jvbex2wTt+K2aRy5bZSKA4JcsFoVtEbHdPTrEnFd9S/FbiTZ6mDqsyAqvcrLLIXp5tdZddAz17gzBvU1oacIu/qavmrNPbsWRYGZySE7HpDWumPAYHX3mOHRXdAmk6PpTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rypOA-0005Bp-Pg; Mon, 22 Apr 2024 10:51:02 +0200
Message-ID: <5264bec0-8ff4-4b39-81bc-eb5226cbec6b@pengutronix.de>
Date: Mon, 22 Apr 2024 10:51:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] net: stmicro: imx: set TX_CLK direction in RMII mode
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Linux Team <linux-imx@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20240422-v6-9-topic-imx93-eqos-rmii-v1-0-30151fca43d2@pengutronix.de>
 <20240422-v6-9-topic-imx93-eqos-rmii-v1-3-30151fca43d2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240422-v6-9-topic-imx93-eqos-rmii-v1-3-30151fca43d2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Steffen,

On 22.04.24 10:46, Steffen Trumtrar wrote:
> +		dwmac->enet_clk_regmap = syscon_regmap_lookup_by_phandle(np, "enet_clk_sel");
> +		if (IS_ERR(dwmac->enet_clk_regmap))
> +			return PTR_ERR(dwmac->enet_clk_regmap);
> +
> +		err = of_property_read_u32_index(np, "enet_clk_sel", 1, &dwmac->enet_clk_reg_off);
> +		if (err) {
> +			dev_err(dev, "Can't get enet clk sel reg offset (%d)\n", err);
> +			return err;
> +		}

This looks like the property is not optional. The property needs to stay optional
as not to break backwards compatibility with older device trees.

Cheers,
Ahmad

>  	}
>  
>  	return err;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


