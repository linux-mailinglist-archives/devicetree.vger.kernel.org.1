Return-Path: <devicetree+bounces-21653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EAE804C74
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58EDC1C20BEF
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A34C53C067;
	Tue,  5 Dec 2023 08:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXUzwDjh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FE43D977
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:33:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F70BC433C8;
	Tue,  5 Dec 2023 08:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701765203;
	bh=ls7QYnZoAsXnjVPCwoKCbFvmyNk3iEr0faVWrH3Pvvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VXUzwDjhgMKrEoQNQA0omHhVrcA1hxx3hKQ2pvWeCjCtAfeNYGxw0gb2c+psRC1Wg
	 pV/1UGp9P6hZhOHELAM5sAwHSe7INAWYL0AVLO4ZgfKOlWLYD/dYrS9OY+t36YAm3R
	 51xKkGcHza0uPqNZ3IsH6l0/wO6uW3kHRp0vpSuqyV13XdjBkuUzikQrxLB3h3QFtJ
	 2n3vIXhtbbNlMmRvLx1mwlJhR6rHqFm44j0Nx67iRZnvAqHO7AwXIRZl944eCgT8lT
	 2PvfTWNI39JH9y2mYLH3t0cH5hJrVVGbNvyiM5b50yeCqWXQzqjzrmYiO2WxXemn9T
	 ZMkkeuy3xLPew==
Date: Tue, 5 Dec 2023 16:33:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] arm64: dts: freescale: debix-som-a-bmb-08: Add CSI
 Power Regulators
Message-ID: <20231205083311.GB236001@dragon>
References: <20231127124037.888597-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127124037.888597-1-kieran.bingham@ideasonboard.com>

On Mon, Nov 27, 2023 at 12:40:34PM +0000, Kieran Bingham wrote:
> Provide the 1.8 and 3.3 volt regulators that are utilised on the Debix
> SOM BMB-08 base board.
> 
> Facilitate this by also supplying the pin control used to enable the
> regulators on the second MIPI CSI port.
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Applied, thanks!

