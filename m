Return-Path: <devicetree+bounces-19031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DED257F9755
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA56BB209E0
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10BE710F3;
	Mon, 27 Nov 2023 02:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsjfeg/H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9341ECD
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:01:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40E03C433C7;
	Mon, 27 Nov 2023 02:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701050506;
	bh=EgxksDq3LQmHyJS4ifRmlqFHmouT9R9AMYeXY61aU3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xsjfeg/HjnrCCkdDXbboQlRW/NGMfyQGiwsdmht8Ml+uRuPTTKO1FO8FYcG+1Vo3W
	 aMf4svXEBN9a1rdm23DQ0OQcDUO6UjOkai2D2+afZu6senqgiQjSD/aZnBnCSz0jxt
	 Pw5vyexq2bPoYDWXWKi/S7Q/SCCzqq/XhG8+qePVrQeE7QVFGRXm3lCwAywelLEFwi
	 B77cQ+8ISSZEzgPQ4HtiwcdHR4Cn94JLQcWzXIV+7/Ycgyx2IdbZF72RR2+h56R4Sx
	 gfItgHos2oA0w3SKIE4cN5YgViHPXoFnoAYON0+44KplpmX5TTT4xNUGVAFwJDRde1
	 6he/MQTeEPZUg==
Date: Mon, 27 Nov 2023 10:01:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm: dts: imx6qdl: mba6: fix typo in comments
Message-ID: <20231127020138.GH87953@dragon>
References: <20231013134000.744168-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013134000.744168-1-alexander.stein@ew.tq-group.com>

On Fri, Oct 13, 2023 at 03:39:59PM +0200, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> 
> Replace 'SPPEED' with 'SPEED'
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!

