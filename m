Return-Path: <devicetree+bounces-7076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C77BF07A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01223281C9F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C0038E;
	Tue, 10 Oct 2023 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwknGgGa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25938A55
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:48:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67570C433C9;
	Tue, 10 Oct 2023 01:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696902503;
	bh=kUwYCV1HWM2P6lIEq3c4qI+osCI3I4iSKL4CC7IOPzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pwknGgGaIJbp3a4SIe6EeBsAKpOXssiNh0kEsBusc1Pp3GscQjPo6m1MOx9BboFzI
	 61aFnm4MwrQ+JDS46s2bpnT6yndY+1ucnp2J29URok67KKcasNfD3VtWAgLxJFbVTv
	 TkKTsKavDQlOHuQE2EnHROWbXK5xo2mSBRdvpBwWK6y1RBF2KsmyDFCLz62b0Dy6DX
	 gRsa201hH4rQSB0/j5fq/IIlSkhOVhSzGaZhcjxGQ5LttMr1xb+YBcI8yJLxVRlmcr
	 IFKWy7YwXTh42ezIhrp58k7UgipMJTcxMK9PE3NftY5n7fDddIBqRu5Unu3py2l6ze
	 NBVJK9mxhEOjA==
Date: Tue, 10 Oct 2023 09:48:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [v6 0/4] arm64: dts: freescale: Add support for LX2162 SoM &
 Clearfog Board
Message-ID: <20231010014812.GF819755@dragon>
References: <20231001103259.11762-1-josua@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001103259.11762-1-josua@solid-run.com>

On Sun, Oct 01, 2023 at 12:32:55PM +0200, Josua Mayer wrote:
> Josua Mayer (4):
>   arm64: dts: lx2160a: describe the SerDes block #2
...
>   dt-bindings: arm: Add SolidRun LX2162A SoM & Clearfog Board
>   arm64: dts: freescale: Add support for LX2162 SoM & Clearfog Board

Applied all 3, thanks!

