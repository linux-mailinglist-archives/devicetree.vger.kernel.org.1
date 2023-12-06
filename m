Return-Path: <devicetree+bounces-22061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D8580648C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B502B20E0A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6668653AF;
	Wed,  6 Dec 2023 02:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQUBRNm0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466A1539D
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92EE8C433C7;
	Wed,  6 Dec 2023 02:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701828416;
	bh=2PnunHshfH2jdMqvDzbdFHu7hocNX8uyz8ujGPuP5hA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eQUBRNm0tvayYdIJGrcFeVcsVGA+5k4lYxvOM68JzH8wV27tMvNhcL5/g3UXqWQP4
	 XtV1RHjqTKsGMXV05Uk1aWKIEADWreaEuixoFNNSaff0RKnxzdE8ykvGkyaiqluOBg
	 pcpY4vJxSq4Sjv/nTDTcYGYM0jP8SEv8RGAI9mXz+TBHrQaCenE9bofS0QmMlkgSnQ
	 8UKNs1ipTyqa1NeBQa6JMwCNoMUpf0L0ksDyQEdVhED9CJrghRJf4iruWGPGOIJ+JN
	 peEnLPfYqizC2HwsMCk7uddePecfouDxw3a5E9mgUuIwJbHKDEk2HgJTBgBS5ER+2V
	 WkQqp4LoyA2xw==
Date: Wed, 6 Dec 2023 10:06:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx7s: Add on-chip memory
Message-ID: <20231206020651.GI236001@dragon>
References: <20231127-b4-imx7-ocram-v1-1-430a75e3e9db@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-b4-imx7-ocram-v1-1-430a75e3e9db@pengutronix.de>

On Mon, Nov 27, 2023 at 05:15:01PM +0100, Roland Hieber wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Add the 128 KiB on-chip SRAM at address 0x900000.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Applied, thanks!

