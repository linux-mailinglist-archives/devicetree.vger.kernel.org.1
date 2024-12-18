Return-Path: <devicetree+bounces-132183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AFC9F612B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53CF5161DE1
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58AE5198E63;
	Wed, 18 Dec 2024 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwfvaUxu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BEE198A10;
	Wed, 18 Dec 2024 09:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734513319; cv=none; b=hXYmrZOYO7n9tPilTQcbkmiMWEy950lCR9iWROASnxYAqHILmGCsyU+QAo2OpUW4u/FLHsfCos15LSFEwGP4LlUFgN/as9B/wjSI32muo0ON1rV2Zoc+gwqQ8w1D9e5tZgsZ9cWQy1IUu2byaVh5X/Fjzzwf6IPPKhHLyYNGRoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734513319; c=relaxed/simple;
	bh=fbWSISg3pqwIP3gp/FXBpL6JXIqp0/i4mzGvP6dEieY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xs+rBgzHPQdgMELuDNG2pGL2AYkOCLw3WOU5hOETX4BL1g88UqejaikJlvIuzbANTpLnObT7YYPzL8bna7roFD/HRfSnscxUGLqQZ200uHQJAzQm2WYjbDuPj1nSKzF9IvHZSRfjKbs3XQH5GUGB4fJRMGZ63vUJbtEhmfSOQiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwfvaUxu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EAF9C4CECE;
	Wed, 18 Dec 2024 09:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734513317;
	bh=fbWSISg3pqwIP3gp/FXBpL6JXIqp0/i4mzGvP6dEieY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SwfvaUxuNabK48hCNq0fMTSo9p8Pbil63clvCW98USkYSOTvsHZpHiEa+EekRsX6K
	 U25tvqI0dMKdIUVo2u4zuGoGRXZvxFrifNwoOuyhoeq6KYD99VOtde2lnh/osEwOUd
	 r+7GXex44fQkvDMBfJRlEthMg7vWj99bjueJfG/hOhHI2U+zh1DvW5wrLn1qjBrLUt
	 No5sHjxfHAIUWnECmHRFIkcgIVrn5PrBh6fDq3tyfNLF8ONCtIiy5PDz2jmnsoesUO
	 GV+3VzPCJCTL3llr3oqIVemH3ilLbQtShBOeY5277hPLmM6KRS7iWaiyiPggA00h0c
	 YbWrK2l9+RiSg==
Date: Wed, 18 Dec 2024 10:15:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: dmitry.baryshkov@linaro.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
	vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	mripard@kernel.org, kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 4/9] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <euujxcd22nake5s4wioc7ew4rxhqwijh5vucozjorotn3nqdvc@q65uqqj2bjwj>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <f2b7beebeb99ca69021ca24744e29af3454f5620.1734340233.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f2b7beebeb99ca69021ca24744e29af3454f5620.1734340233.git.Sandor.yu@nxp.com>

On Tue, Dec 17, 2024 at 02:51:46PM +0800, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - remove data type link of data-lanes.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


