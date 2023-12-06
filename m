Return-Path: <devicetree+bounces-22020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 139E58063A2
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C2EDB20DD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 00:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C31650;
	Wed,  6 Dec 2023 00:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHTIQAtR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9C62A
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50153C433C7;
	Wed,  6 Dec 2023 00:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701823775;
	bh=pUu4T3RbOJaOKyAMtNvfnPVIR42cAMmezEVLe9JyB84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aHTIQAtRxJiPRpOd2KeyUjX5PjjvR55c5TBr2iQXmoa7iz7uBueLGZKKzV0hleHO0
	 mT1dYbxsrbxBmFBVBjjCmyk1snX2Yjfl1qthNlLJ4pnNLbj5gmgKfRX5MtMu+SfSsd
	 //58K6OvzCzM1gbAR2zxQs71srtrpgkznfdVBa2xj6u94Ijg9y9SAWI+CVmUx+sB/N
	 IZIS81OUlhpFdAY6YGJoycTqCMqLwoMXI1UuY8nRiZrJOis9+DedAqLgX7WxJHim6u
	 CLZpxac3v7/djnrJgcSVp/Tlbr9F2Fb5BgN6j0nCY3PB5pfTZb7/3aN4n8EdD/JhFo
	 RP5peYgT0r7hg==
Date: Wed, 6 Dec 2023 08:49:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, leoyang.li@nxp.com,
	robh@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH v5 0/3] board: imx8mn-rve-gateway: add support for RVE
 gateway board
Message-ID: <20231206004928.GJ236001@dragon>
References: <20231205150814.344883-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205150814.344883-1-hugo@hugovil.com>

On Tue, Dec 05, 2023 at 10:08:11AM -0500, Hugo Villeneuve wrote:
> Hugo Villeneuve (3):
>   dt-bindings: vendor-prefixes: add rve
>   dt-bindings: arm: fsl: add RVE gateway board
>   arm64: dts: freescale: introduce rve-gateway board

Applied all, thanks!

