Return-Path: <devicetree+bounces-19026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC377F9725
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:28:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97BB9280D1D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 01:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1452EC0;
	Mon, 27 Nov 2023 01:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/HQF17Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8420D815
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:28:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C204CC433C8;
	Mon, 27 Nov 2023 01:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701048515;
	bh=6gJ+oVXcv85wKK5hi51Aq9ovh5iUlMZEHZqeIkmUNI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G/HQF17Zj4KnA5g6PmiJnyHdkhHSBuXOvxxS98kW7tkXSdZD/aKW+S3ky91EvRJ8A
	 uBiDW2nDhNJz9iR4TZywGOp+veME0bRvJcxFqbeT17eMRQ3Tcu1lJ16l7G5LdIRx3s
	 JsDV5KuABeTStqngW3znQrCqknzq+QNoOHlkx1jfrf3GBZhj/dJGVT73R3YuUekhoh
	 OQwjTDWdyeAdaKsnYdhZSifpVzwoxwRGYG5I3dlIQ057ilXx255fAD/OmK1UpUFIg7
	 r4BPzgVW7z7v80bHRmKv6QU0PA98iu0CUcaA0FtcNqf3CMU9gsYlBKWLdd/S5ndm9F
	 2kJwiFklfOvug==
Date: Mon, 27 Nov 2023 09:28:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 2/3] arm64: dts: imx93: Configure clock rate for audio
 PLL
Message-ID: <20231127012829.GC87953@dragon>
References: <20231122101959.30264-1-chancel.liu@nxp.com>
 <20231122101959.30264-3-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122101959.30264-3-chancel.liu@nxp.com>

On Wed, Nov 22, 2023 at 06:19:58PM +0800, Chancel Liu wrote:
> Configure clock rate for audio PLL. There's one audio PLL on i.MX93. It
> is used as parent clock for clocks that are multiple of 8kHz.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Applied, thanks!

