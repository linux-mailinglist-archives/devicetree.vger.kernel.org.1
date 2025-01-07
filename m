Return-Path: <devicetree+bounces-136333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E85A04D6A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18E58162CE8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E091E0DF5;
	Tue,  7 Jan 2025 23:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9VmdG/r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2C6273F9
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736292189; cv=none; b=DlcATuiuqwDPttsH10hC5+rpa4Kqzi4K623sKDpJ3xR9NBX1STaftcbWlQlybwXphiFthnK7rkosvL9xq4BLp70BWFf3Idis79xEWXavWFx8pNRx+XJcrAKJgAik4BIHgOoxgW7wRyj0nLfxoIGqR4tPz/gCTIy9udAIHHOPx1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736292189; c=relaxed/simple;
	bh=Q3yRCHCX/2HbN6xwYgE3+FSs8cJMDQK71kn/k4aPaQw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vGTe8rX6FRixJjztD25VwQrr0UBOJmOvRYoWAHfoSgQh8iFpq4Tdquj9zu5wjI14kIWCS6a+8YaKgGlWAT4SgMzhPuaVtytcss6vC5d4hFC/NqnfEUBLf+/xY5enSUBp64ejVXBEtDEQHVyjHcKLpa+0eyc4t121cvVTPx9GfMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9VmdG/r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D79EC4CED6;
	Tue,  7 Jan 2025 23:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736292189;
	bh=Q3yRCHCX/2HbN6xwYgE3+FSs8cJMDQK71kn/k4aPaQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9VmdG/r4WSM89OjKynkbHkiPCfh9P4hlp9oYCNkcTQghHJL9xZBzDox8rX2yIWP4
	 ifly861Q0vzP/cTbQL2GWzWkcC9d03uF91VCvuhb0vAAszuQcsdvNK36MIh5IVWagN
	 jhf6SxZRNiFonHDOyz/Wr+xBLp7burtrlwIoK3rHprzWTJEB4B53xAoRKm4uqBO9GQ
	 3/rMTZqbpIfCSelNsD53b8vczvCGwnvbbhyy2MeXvfzyqbQbWoToeOnxyyxKwD8gpr
	 Jegx+MpcBKmJVFKvdaFXJHmqbwdiX789KoyU3TMtQPCTLBO/5884lXby1TPY59fsiH
	 Tisw5YZnw51WQ==
Date: Tue, 7 Jan 2025 17:23:08 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: samsung,mipi-dsim: Document
 fsl,imx7d-mipi-dsim
Message-ID: <20250107232308.GA2039463-robh@kernel.org>
References: <20241217131431.1464983-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217131431.1464983-1-festevam@gmail.com>

On Tue, Dec 17, 2024 at 10:14:31AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX7D MIPI DSIM block is compatible with i.MX8MM.
> 
> imx7s.dtsi uses the following compatible string:
> 
> compatible = "fsl,imx7d-mipi-dsim", "fsl,imx8mm-mipi-dsim";
> 
> Document "fsl,imx7d-mipi-dsim" to fix the following dt-schema warning:
> 
> ['fsl,imx7d-mipi-dsim', 'fsl,imx8mm-mipi-dsim'] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

I applied this one[1] instead as it reuses an existing items entry.

Rob

[1] https://lore.kernel.org/r/20250107094943.518474-3-alexander.stein@ew.tq-group.com

