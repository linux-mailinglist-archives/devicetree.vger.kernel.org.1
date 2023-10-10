Return-Path: <devicetree+bounces-7079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E562E7BF0DE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:25:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DCD2280FB6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AE681E;
	Tue, 10 Oct 2023 02:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdATxuCP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19467F0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26845C433C7;
	Tue, 10 Oct 2023 02:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696904731;
	bh=qDFAIZJBZaNLR6S/I5Pe62KY//2o+PXQuDVr5YqKROg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TdATxuCPTumxA4f6U0UOWfIcKsCH+Y+whTQgEUoHmZhwWOiMxA3BMYU2UMiZ21nWh
	 zRvp4SzjZvdpjIUlfYiLUMwd4l6k0lTT/PmjkN+JSytmxp7dUec6a1XAWqPQOOeIIi
	 Vn5+XxqY8jjPThmH74TDBYJQBGIxG6ZSULAAztmHXLraLY4sdNgUrc9NYJJVDROpir
	 +y7ogVkffDbX3YhD9+EjGZi21Z2AK52/KDnYZs2OvvLemqfS3BfdAdDrK6PIt86L5s
	 JJRmMkM4+OX2bqj44KV3f0uUaha766VvTyhHb1iAQF+omNadOsf2fdj62BkC1AfOM1
	 fFxGrkAWh2rSA==
Date: Tue, 10 Oct 2023 10:25:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH V3] arm64: dts: imx8mp-beacon: Configure 100MHz PCIe Ref
 Clk
Message-ID: <20231010022517.GJ819755@dragon>
References: <20231004235148.45562-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004235148.45562-1-aford173@gmail.com>

On Wed, Oct 04, 2023 at 06:51:47PM -0500, Adam Ford wrote:
> There is a I2C controlled 100MHz Reference clock used by the PCIe
> controller. Configure this clock's DIF1 output to be used by
> the PCIe.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!

