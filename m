Return-Path: <devicetree+bounces-22030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5734580640A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4ACD7B20F6A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45760A56;
	Wed,  6 Dec 2023 01:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5xEmSB9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E40A3F
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:23:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 957DFC433C8;
	Wed,  6 Dec 2023 01:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701825812;
	bh=5Eu7jo+JIE7fz8i/jqCUoUnz8Sm/OwdJtQDe2uCLfMI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5xEmSB9V72mWkaHt5Hg54bS38YTp4qt5riu03zTI/LsvBQAaEXQLmh6HTHbsMUwu
	 0csCJKgVi1/YhFGPAQTGqE7i7MPW4z0howzoIII26w1fUu889+gqoWk4gB8h0wTUla
	 DLicrW62zgC4HWrvMXx2aahOGMackHpikl7glIrXfiHEmz8u0CZo6bRs2OnFSvUcso
	 3bW6nM21Wp/thyw3F1RhGxKmTfk0pDCtVLqTrXFA4XYFyKvLpE7T+WdVqOYKCy8sHk
	 Bc+yXZI6G2RVXiNV/w9WvTFcXv6tYX7pCnAj4dA8oWkuonPRWq70XBrzNMXud9YzfB
	 ppmBMDHh38QgQ==
Date: Wed, 6 Dec 2023 09:23:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mpql: Remove invalid/unused property
Message-ID: <20231206012327.GX236001@dragon>
References: <20231117075957.2128070-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117075957.2128070-1-alexander.stein@ew.tq-group.com>

On Fri, Nov 17, 2023 at 08:59:57AM +0100, Alexander Stein wrote:
> 'dr_mode' is part of the USB DWC3 core, not the glue layer. Remove the
> property from glue layer. Fixes the dtbs_check warning:
> arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dtb: usb@32f10108:
>   'dr_mode' does not match any of the regexes: '^usb@[0-9a-f]+$',
>   'pinctrl-[0-9]+'
>  from schema $id: http://devicetree.org/schemas/usb/fsl,imx8mp-dwc3.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

