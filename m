Return-Path: <devicetree+bounces-1821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6447A8816
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDAFC2824BD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0EA3B798;
	Wed, 20 Sep 2023 15:20:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C8B3B78C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A045C433C7;
	Wed, 20 Sep 2023 15:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695223231;
	bh=wJPW/YXd/C75b2eoQp77Pa+wXTmlhrkE4P2PaUZHP+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n1tOEzhBDqAenMkyEQbHS9l0grfjneAyJ8ajThwfzeIx+WyK0cY31ZCf+G6sFVHS9
	 rKeM/5e5eiIUQweB1PBQvpT1+Wymmed8/JLfeUKlMcibJbpuvpirT1wlR1YzO51bxN
	 IJh5uAMP612tlR9PLQ/L1mjaJpwnqY8ba5L8eudeyw/ggjZMMTE+JPvzYYDRzP+CWr
	 AeD70pFU9BMQR00oL8RRIavTcwuNIoxPvOlmnMa7LCWuUAnpvMGSjrjNCAz2B0Ca1a
	 CEpiG9wHqUN85QmgrsObyNZpTFFaNO3CPvRIRVHP7+eyUbe6+6oc1Evf9CrJ/1zU3g
	 J4OwnA8M188uQ==
Date: Wed, 20 Sep 2023 17:20:24 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: freescale: tqma9352-mba93xxla: add
 'chassis-type' property
Message-ID: <20230920152023.GG11740@T480>
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
 <20230811085401.3856778-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811085401.3856778-3-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Aug 11, 2023 at 10:54:00AM +0200, Alexander Stein wrote:
> Add the chassis-type property to tqma9352-mba93xxla.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
> index f06139bdff97..f0d0bf84f6ba 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
> @@ -18,6 +18,7 @@ /{
>  	model = "TQ-Systems i.MX93 TQMa93xxLA on MBa93xxLA SBC";
>  	compatible = "tq,imx93-tqma9352-mba93xxla",
>  		     "tq,imx93-tqma9352", "fsl,imx93";
> +	chassis-type = "embedded";

Rob, Krzysztof,

Do we have binding doc somewhere for this property?

Shawn

>  
>  	chosen {
>  		stdout-path = &lpuart1;
> -- 
> 2.34.1
> 

