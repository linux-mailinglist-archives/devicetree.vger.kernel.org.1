Return-Path: <devicetree+bounces-7075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2507BF072
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D32FC2817B9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 710A3621;
	Tue, 10 Oct 2023 01:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVuOJwP3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542B238E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:44:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F816C433C7;
	Tue, 10 Oct 2023 01:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696902298;
	bh=k0eRqqsMXVD3oC/A3a5V9R91vn65AeWHRVM7YZojLFo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BVuOJwP3hJprYLEK4gr0WlsjZmxuJGEWqIyoxHn/X0iIvrt7awg6Yu1Sr45riaw32
	 0RwH8muyLuuTLTzjckTO0nxJawr8Gq4APnMcv4U2TzytAWTWQyVlWLqjrAwwS5i5A4
	 NH/3P9+VvYFalHm81eVf0LDZQ5eEhQXgu4LWYojRrvyOC8lEtwu6qGlSroPhlqC6PE
	 sZ3LqwPIbQZb8aXPFqX+SwmPFcapo6V+XX0zUnTISoap7kcIONb5hqWZuFkDJPU7K9
	 QrGGLcKbML9HLzQ/qfEwZ93DKvQY7wA9+DtQc3tXJUHrAV0AjUmG0tLb5Pe6tBl/NW
	 Ytz5NA2HHdlEg==
Date: Tue, 10 Oct 2023 09:44:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Marco Felsch <m.felsch@pengutronix.de>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 7/7] arm64: dts: imx93: update gpio node
Message-ID: <20231010014444.GE819755@dragon>
References: <20231001-vf610-gpio-v5-0-8d873a8f224a@nxp.com>
 <20231001-vf610-gpio-v5-7-8d873a8f224a@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001-vf610-gpio-v5-7-8d873a8f224a@nxp.com>

On Sun, Oct 01, 2023 at 04:27:58PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per binding doc, i.MX93 GPIO supports two interrupts and one register
> base, compatible with i.MX8ULP. The current fsl,imx7ulp-gpio compatible
> could work for i.MX93 in gpio-vf610.c driver, it is based on the base
> address are splited into two with offset added in device tree node.
> 
> Now following hardware design, using one register base in device tree node.
> 
> This may break users who use compatible fsl,imx7ulp-gpio to enable
> i.MX93 GPIO.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks!

