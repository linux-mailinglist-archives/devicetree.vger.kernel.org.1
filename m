Return-Path: <devicetree+bounces-26048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F305081560C
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 02:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B04B82877BF
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 01:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07CA5110E;
	Sat, 16 Dec 2023 01:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVzeJKUA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C7B110D
	for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 01:44:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E21AC433C7;
	Sat, 16 Dec 2023 01:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702691097;
	bh=NDaKnxFpSatWuIe4Y6JQ3p44xynVtrAD0kB0didCRyg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UVzeJKUAu0Ln7bHeeXO5WC5nHQClGazOU1967qbdmYe+06spY7L78EjDJPISPqlwz
	 ccWeDAlIUGgZtGMnByhdh89wpgjkCLyx/7M4fYflNoZuHIoYtdnn9tGpgHuezbEPyn
	 NhufZePTlkjrIwuf1C+MFUdtez1dJQAuaxirkO9oFmc6l7EKBjRfiUy2yPu1ljDmoX
	 3fGyJnpxXXRDuc2dRnXkqjO5dW/WMhooFEdzoLsUIzCYkrWiR8fqjoryKbOm8EHam4
	 Tz+iEktWyTfxDe0sSYfprTqzaknQpNkeeeagzT05NOaSZiZhbop6WnztSJlfmr5DPQ
	 AWl5Lx7+HCcQA==
Date: Sat, 16 Dec 2023 09:44:52 +0800
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
Subject: Re: [PATCH 1/1] arm64: dts: freescale: imx8qxp: Disable dsp reserved
 memory by default
Message-ID: <20231216014452.GL270430@dragon>
References: <20231214134259.1933541-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214134259.1933541-1-alexander.stein@ew.tq-group.com>

On Thu, Dec 14, 2023 at 02:42:59PM +0100, Alexander Stein wrote:
> Even if the 'dsp' node is disabled the memory intended to be used by the
> DSP is reserved. This limits the memory range suitable for CMA allocation.
> Thus disable the dsp_reserved node. DSP users need to enable it in parallel
> to the 'dsp' node.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

