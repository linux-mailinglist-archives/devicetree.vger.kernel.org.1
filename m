Return-Path: <devicetree+bounces-34618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72583A574
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61788B2CAC7
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AED17C7F;
	Wed, 24 Jan 2024 09:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="MyBtOAv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE8B17BDD
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706088625; cv=none; b=ZIKXCwoiEAL2Sspc7tZI8/7Kvy/fOTF91/gons9y2psj66eAWk95w4275SNk1u3sZm9Tb/hKaAAV7g6ykCxjHxOPXycK2LbYYHkOoL1pD2dnH/gDgy36ae0ZesP3Da8x8y3E8cZj7ZWE4i45bsKwFI+n1sAn0IuO1BmMD+gh8Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706088625; c=relaxed/simple;
	bh=NbSMFyHVexF1r6qIlI25N/dgdaTVhceWOLkZFVAfdyI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=YPEBAkCxG5zE0CLJ/AojIOHSsdknG7ekTh6VJK4jEtQWxWk1NNaDOqrCLrzmBtOiN4FLFWWORyzbE6BRolYXtZgxIwplOz862vhLPmaD3DR3ZWz0p8lddYt+G7QfWhviWKyBWtUbaZHWWIY5v35aImMvRdpxv0Jk9J6ZdiWjY/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=MyBtOAv7; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1706088611; x=1708680611;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NbSMFyHVexF1r6qIlI25N/dgdaTVhceWOLkZFVAfdyI=;
	b=MyBtOAv7WitejUIqbEho1dLWxraTETluhwTqlLKFBObN6ljk6LbFQqFcVgXaJTaX
	XAC8QS8ULXPNkw7X3S0RXJbbL/Re2ixN2PIIhmxQxtl7Pfh0kiLe2v41Jng4IHFM
	2HhfYS94NJTap4eVduvo6nRcbYVzy9KW+q1dn3eOJ0A=;
X-AuditID: ac14000a-fbefe7000000290d-fc-65b0d8a3ab72
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 66.2F.10509.3A8D0B56; Wed, 24 Jan 2024 10:30:11 +0100 (CET)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 24 Jan
 2024 10:30:05 +0100
Message-ID: <dc315213-5421-4343-adc0-c4396a4d85c4@phytec.de>
Date: Wed, 24 Jan 2024 10:30:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: arm: fsl: Add phyBOARD-Segin-i.MX93
Content-Language: en-US
To: Mathieu Othacehe <othacehe@gnu.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Li
 Yang <leoyang.li@nxp.com>, Primoz Fiser <primoz.fiser@norik.com>, Stefan
 Wahren <wahrenst@gmx.net>, Christoph Stoidner <c.stoidner@phytec.de>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Conor Dooley
	<conor.dooley@microchip.com>
References: <20240124074930.26101-1-othacehe@gnu.org>
 <20240124074930.26101-2-othacehe@gnu.org>
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240124074930.26101-2-othacehe@gnu.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsWyRpKBR3fxjQ2pBu8PcFqs2XuOyWLKph3s
	FvOPnGO1eHjV32LV1J0sFn0vHjJbHGo+wGSx6fE1VouuXyuZLS7vmsNmcf7uFmaLE10PWS1a
	9x5ht/i7fROLxYst4hbHT3QyOwh47Jx1l91j8ab9bB5t08w8Nq3qZPO4c20Pm8fmJfUed34s
	ZfT4/nUDq8fGdzuYPPr/Gnh83iQXwB3FZZOSmpNZllqkb5fAldHZOpO1YAZnxYwbbawNjJPZ
	uxg5OCQETCSmTgQyuTiEBBYzSax9fYYNwrnLKHH+8FxWkCJeARuJHy9Tuxg5OVgEVCXuz+5m
	BbF5BQQlTs58wgJiiwrIS9y/NYMdxBYW8JHoX/mVEcRmFhCXuPVkPhPITBGBVhaJjzs3gG1j
	FpjOKHHjzE6wbiGBRInG9V/ButkE1CXubPgGtoFTwExi0vSzzBCTLCQWvznIDmHLS2x/O4cZ
	olde4sWl5WBzJIDsaedeM0PYoRJbv2xnmsAoPAvJsbOQHDULydhZSMYuYGRZxSiUm5mcnVqU
	ma1XkFFZkpqsl5K6iREUzSIMXDsY++Z4HGJk4mA8xCjBwawkwntDcl2qEG9KYmVValF+fFFp
	TmrxIUZpDhYlcd7VHcGpQgLpiSWp2ampBalFMFkmDk6pBsb+P5t8eET62Kc9zN5/XHHCqvP3
	j55fc/vYVSfvXpe3B6JPc4rM8N/aYmIa09Xr+/rqWqnf5lHTBX8uuXN5zaSLW1dYLj7SsYv9
	a2fq9lW3DLdzKuwKvXJSY/Pv5U7Jc1/erhW/vfq1Ff8bfinl0wdyjB5IdfcsPbQryDPpr2qs
	6KH9mnnRW9q3K7EUZyQaajEXFScCAJEWVsPUAgAA


Am 24.01.24 um 08:49 schrieb Mathieu Othacehe:
> Add support for phyBOARD-Segin-i.MX93 board.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Mathieu Othacehe <othacehe@gnu.org>

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>


> ---
>   Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 228dcc5c7d6f..b6c523d02d29 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1275,6 +1275,12 @@ properties:
>             - const: tq,imx93-tqma9352        # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM
>             - const: fsl,imx93
>   
> +      - description: PHYTEC phyCORE-i.MX93 SoM based boards
> +        items:
> +          - const: phytec,imx93-phyboard-segin # phyBOARD-Segin with i.MX93
> +          - const: phytec,imx93-phycore-som    # phyCORE-i.MX93 SoM
> +          - const: fsl,imx93
> +
>         - description:
>             Freescale Vybrid Platform Device Tree Bindings
>   

