Return-Path: <devicetree+bounces-19053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3C47F97EE
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF87F1C20756
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C960320FA;
	Mon, 27 Nov 2023 03:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsQy/Z4H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4A423C8
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10A56C433C8;
	Mon, 27 Nov 2023 03:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701055524;
	bh=5F+fc/oItrdvQDeOgVfLwePvEYH547GfcINss4CmLRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UsQy/Z4HLv3TGOLojU0NHKyRL/I8dfAMMD9M9Aipj465vD/XgGMN0mnBIaHguj6Hj
	 4pdm9H1KDwcop7QJclXuTDjYc5ZJ6HoCgDOHVGV/XLW6iz4O50lFRotHIbfJbQ4FAE
	 rb7OKQ8J/LhHbJxedaOFMGmUAVWskWqTzSGS7RyVCYglA3NbSyb+Fuz57JpP5KZEy5
	 qInPwn148XinvK/PPOxAJ0ydOWbjTf0CN6yxQQva63J/h9e8Omqi3Q4cdrbDs5FK1T
	 hQe9G0X+Ccr4xqIF7DrGXMAHZ6CVBLVieZb08OfHelUrVzN/luz0tXcGqXERE7IOIJ
	 ws1jGpm8G3KyA==
Date: Mon, 27 Nov 2023 11:25:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: s.kerkmann@pengutronix.de
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx6q: skov: fix ethernet clock regression
Message-ID: <20231127032518.GB87953@dragon>
References: <20231101-v6-6-topic-imx6q-dt-v1-1-274f6c13c7d5@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101-v6-6-topic-imx6q-dt-v1-1-274f6c13c7d5@pengutronix.de>

On Wed, Nov 01, 2023 at 12:03:37PM +0100, Stefan Kerkmann via B4 Relay wrote:
> From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> A regression was introduced in the Skov specific i.MX6 flavor
> reve-mi1010ait-1cp1 device tree causing the external ethernet controller
> to not being selected as the clock source for the i.MX6 ethernet MAC,
> resulting in a none functional ethernet interface. The root cause is
> that the ethernet clock selection is now part of the clocks node, which
> is overwritten in the specific device tree and wasn't updated to contain
> these ethernet clocks.
> 
> Fixes: c89614079e44 ("ARM: dts: imx6qdl-skov-cpu: configure ethernet reference clock parent")
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Applied, thanks!

