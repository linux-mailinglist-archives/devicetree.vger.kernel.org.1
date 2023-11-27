Return-Path: <devicetree+bounces-19025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B85B67F9724
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C4571F20172
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 01:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A00EBD;
	Mon, 27 Nov 2023 01:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4nAgSuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C7A44
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0362DC433C8;
	Mon, 27 Nov 2023 01:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701048498;
	bh=pMn0ALzR57zJy6WWUl9/MYezMl/SFwEMMySu1BA/Gfw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u4nAgSuQLTaMv2Iln2/7AiGra7MQK3QQBm4kqJ/R0X01Xh+DDrZqLz7m+CpZmfU6Y
	 6715YG45kizVIM94jaJSbJXf+hh9NL1OzJOja3lYsqL4dlQhdHBokV1AR+B4qA1agY
	 L7gEDz64U3bG+nTAQ7yitUpPi+sawZ8vKhdnuqgReEi6g2Gg6SWz0kpnKqG0jiGaQ9
	 6luRLfhyEj+EoPmU5Fx2gEnqV5LJkmCJWfgmpH6qls2Y/2pldPmdFnJrN7Q7ri7bbm
	 wPtfbIUTTROdZZ6TLl3xj2KzraOKUOPpty4j4lL/b/sroSA+hCoGx+2HPFsWHXNbQ2
	 9/DyZFjzTZGtg==
Date: Mon, 27 Nov 2023 09:28:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 1/3] arm64: dts: imx93: Add audio device nodes
Message-ID: <20231127012811.GB87953@dragon>
References: <20231122101959.30264-1-chancel.liu@nxp.com>
 <20231122101959.30264-2-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122101959.30264-2-chancel.liu@nxp.com>

On Wed, Nov 22, 2023 at 06:19:57PM +0800, Chancel Liu wrote:
> Add audio devices nodes including SAI, MICFIL, XCVR and MQS.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Applied, thanks!

