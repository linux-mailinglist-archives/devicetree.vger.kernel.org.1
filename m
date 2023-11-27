Return-Path: <devicetree+bounces-19038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 726237F9793
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A345F1C2048A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE2D1379;
	Mon, 27 Nov 2023 02:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOEzeulH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00317A3F
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:43:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21D3BC433C8;
	Mon, 27 Nov 2023 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053005;
	bh=5b9VS7f/K9dde70o1iJ9/Cmwsu92ztvC2aXIF2oskn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rOEzeulHL68+6ecmh+q9CWqkyj+cdRZ0w8oOwC4vRNBlZEe1ZQtT9h2IVHATcj7xv
	 AQ9v/K7354uuhER8BjqSrI6PTL6KRITx4GoX7raoeNtO8kQPysx7TP9Uan1wfVYf5J
	 WAXdVkBYSk4YSoDzgRV56BBOjCvY7Jh9jzRCWsWirhlMmCoYLi94G1iNmDVoOuUkbs
	 t6YxnagucV+d1udhOhODBNRUkK3CsaaNRdt2Epai68xX6miwOQlsENfjEf11UjEW5F
	 7vbDanAhFm/nZgQK1W9SxdyaQBgCtJN0TXpHCr5TSqRvCtaweFZpt0AUNy/ym1g25I
	 hY7wlQgVoqy/g==
Date: Mon, 27 Nov 2023 10:43:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice-gw72xx: add TPM device
Message-ID: <20231127024319.GM87953@dragon>
References: <20231018180838.2164177-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018180838.2164177-1-tharvey@gateworks.com>

On Wed, Oct 18, 2023 at 11:08:38AM -0700, Tim Harvey wrote:
> Add the TPM device found on the GW72xx revision F PCB.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

