Return-Path: <devicetree+bounces-2908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D17ACDE5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 6FAB11F24142
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08EDC10E2;
	Mon, 25 Sep 2023 02:07:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0BFEA9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:07:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF937C433C8;
	Mon, 25 Sep 2023 02:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695607627;
	bh=9NZEuYch24JR1sI2HnCzwnig5hRMmoeVEUVakVvIYj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dt6Cj1OX/eql50/F7VNfEAR4kt8w/Qpoa8Hauvv7uhUnD1lrj4Vtk72LPRACUEmnY
	 Yol2IlvfqzwRlfWwC12nkldqJAaFw6XhKkf75jrJ7ajtBjG5KJUBFu849hVoBpEObM
	 YoJIVAE6BGOUS/imYX22Alg8kgHnxClRno/KVsBgXdvjqspOEJaEIWGTP7y2tLtAL1
	 9Xj9lqkK/w/HercIgUueoqeADhh6W95FmSFrE0RuL3GRPXBKQmqA0OP/pW38bRoWCC
	 hu75ynfiy4pIHP/q3nckWGzkAsAKGWFwdkFhAtPEUUc6ALwNkTftb8QD32xHHr1ZIV
	 ImI1SDZ2CoK+Q==
Date: Mon, 25 Sep 2023 10:06:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, rafael@kernel.org,
	daniel.lezcano@linaro.org, amitk@kernel.org,
	linux-pm@vger.kernel.org, linux-imx@nxp.com,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] arm64: dts: imx93: Add the TMU interrupt
Message-ID: <20230925020656.GX7231@dragon>
References: <20230910125726.1243652-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230910125726.1243652-1-festevam@gmail.com>

On Sun, Sep 10, 2023 at 09:57:25AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The Thermal Monitoring Unit (TMU) interrupt is number 83.
> 
> Describe it in the devicetree to fix the following schema warning:
> 
> imx93-11x11-evk.dtb: tmu@44482000: 'oneOf' conditional failed, one must be fixed:
> 	'interrupts' is a required property
> 	'interrupts-extended' is a required property
> 	from schema $id: http://devicetree.org/schemas/thermal/qoriq-thermal.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

