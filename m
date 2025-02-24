Return-Path: <devicetree+bounces-150617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 566BDA42DEE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68E1A1898410
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D7E245000;
	Mon, 24 Feb 2025 20:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpPUC/MN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D1B244EA0;
	Mon, 24 Feb 2025 20:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740429182; cv=none; b=iVoak2b2gjjwZV0MDbMjqchqUZD10CUOQAUw93ifjE1K39Mv5FDMTENhCAlJPixPTvyQ17AiweMnmEEQfm/nCNqVCw6CAq8lz20hQ3jS4djWX9AFHKXC2m65OI84OQPQYpv09ZE71pn2/SWNM9gCrhj1a34+bR8sypyAaP1Hras=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740429182; c=relaxed/simple;
	bh=GkLISPYYv7MHf+2XRcdkauAMMfvihArhSS/JM26Wlk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aA8+ZPsFMPELXZFeYNAS10c8+MmjW3K6yR3wcd2YdrCwaK7JnYOKtlyPnjF+LD6QL3mZlsK5TlTONWmpt3HAokpdaaM3rUYNAh0sfRlgB3qqRYm8BQfVj4nj/8lj7X/KHVTzgq+TdBHSuQsVn2Qgzf9Eyr+R1scurywjwHiipFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpPUC/MN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD4F5C4CED6;
	Mon, 24 Feb 2025 20:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740429181;
	bh=GkLISPYYv7MHf+2XRcdkauAMMfvihArhSS/JM26Wlk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SpPUC/MNxb4S9qhxCSK6x4tUp63wfrH1fgOsvPNILny2LanDLJyZTIgrgiu7/xQtX
	 O5aUVEUcqlyG4BMcNvDLCYINAv+uLxhR4/dhnCRpdc6wQfI4YD92xr+BhVqJ02Obvv
	 wLF29hb5o1JX+bhYumNmpjiRWxJE40eWYOcQtCTiq/9P+lFUWDZPEkACHcQLlwiLOk
	 HVdfUdoFZ1YdJeWXMtZf+z43+iW7xslG3ueuc/GqMEH6I8mB2M4ORJVg1m/Wc2xeoh
	 +nTUgVlmlMqq2kapHvxa6cgiMKWo6bxnCncKBKPTy18xQZBAQElatFG3LBz1k96W97
	 tBV7fCVpjQ9dw==
Date: Mon, 24 Feb 2025 14:33:00 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Maud Spierings <maudspierings@gocontroll.com>
Cc: Fabio Estevam <festevam@gmail.com>, Liu Ying <victor.liu@nxp.com>,
	David Airlie <airlied@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-arm-kernel@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	imx@lists.linux.dev, Neil Armstrong <neil.armstrong@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: Re: [PATCH 03/14] dt-bindings: arm: fsl: Add GOcontroll Moduline
 Display
Message-ID: <174042917969.4048644.15922990848676002211.robh@kernel.org>
References: <20250224-initial_display-v1-0-5ccbbf613543@gocontroll.com>
 <20250224-initial_display-v1-3-5ccbbf613543@gocontroll.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224-initial_display-v1-3-5ccbbf613543@gocontroll.com>


On Mon, 24 Feb 2025 14:50:53 +0100, Maud Spierings wrote:
> Document the compatible strings for the Moduline Display controller.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


