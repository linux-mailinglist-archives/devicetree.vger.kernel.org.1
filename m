Return-Path: <devicetree+bounces-7068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2B27BF007
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97DCA1C20A5C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EDB38D;
	Tue, 10 Oct 2023 01:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktT1nSg/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C27377
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:06:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E267C433C7;
	Tue, 10 Oct 2023 01:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696899964;
	bh=3M7y2jAvABpLSSXbCUfr8EM4/7YEtkkeJalnFbFT4fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ktT1nSg/0EmCEE5OBaANgx0m9VSUxfGhOqKFFcYxsyRWOQMckFUqktRsHkWzBVfsI
	 W8+eMnvCe9QNsGJtG+qXnA1Qdu4bsGpz9nppyEBYnpZcKxLzaEFLDU/E7Di0a/DKgO
	 2lGbytN7yUzY+qdtIUapjLSjzPe6b6FbR2CKEKLON5sjD5AEdsbPw4N6ZaXL91fpeS
	 Ll6Ybj0O+bk2JQVqXulfwI6QqzXe65k2iCoIclWQach+4Fl6LLdHhfcxa9GGerhZNi
	 AAMR0jQ/9h272dJeLMP4R6D1z5+218ID4Q4jDQWmOh6HoL0aeD/5GRcNyO0l8t3btk
	 L03xgmCNcpHvQ==
Date: Tue, 10 Oct 2023 09:05:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 3/8] arm64: dts: imx8dxl: Pass fsl,imx8dl-scu-pd
Message-ID: <20231010010554.GH733979@dragon>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926122957.341094-3-festevam@gmail.com>

On Tue, Sep 26, 2023 at 09:29:52AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Pass 'fsl,imx8dl-scu-pd' to fix the following schema warning:
> 
> system-controller: power-controller:compatible:0: 'fsl,scu-pd' is not one of ['fsl,imx8qm-scu-pd', 'fsl,imx8qxp-scu-pd']
> 	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all 4 dts changes, thanks!

