Return-Path: <devicetree+bounces-160236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 658EFA6DFC9
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 17:33:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AE5B3B3895
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 16:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8091F261380;
	Mon, 24 Mar 2025 16:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZHNRmw7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19C25EFB9;
	Mon, 24 Mar 2025 16:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742833918; cv=none; b=q47VViFMGBt95sJ+yOpsmGwlwnTWfvUBdkgfNRIYc1eR0tMzeyuxbyuZdqj66k20qJ9EWV8KuWpBjVzDXuJKiqBuiZY8/w706fVvZ9jcJKaY2LPMD+HYBKLQstBwBeCPbwEI34KXwOrLBzB8gwYCvZF8mDhyVxkSd1s4kYPiyXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742833918; c=relaxed/simple;
	bh=o3I1e5fW/j1ECXyCGvpQUQbB9Bbur37HOh3CsImYTnY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k8c7lmePgDkyVCU6/VvJqWyPGxIr6w05mv2OjTjP0vRpbG1KHiXC9VCMAfPMf787TGuk2SNOAyzzNrUU2O1OmItIQN9nmOfdIe0bCSD4BbdvQfXWc6dBG6YQhO6FMvu9SkIaR03DXLmEx3l3L3+z9p5nnfha09PFXLGCS/kxI7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZHNRmw7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F7F0C4CEDD;
	Mon, 24 Mar 2025 16:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742833917;
	bh=o3I1e5fW/j1ECXyCGvpQUQbB9Bbur37HOh3CsImYTnY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QZHNRmw74+ekrr0zxkkjseLuXiaqsD5WNVYWDlcI2/bERR6y0T+HFDCtn1gYK4Ak1
	 JLgmb+VfUQyuiudy+XqUgBqrY99obqIb1gXHBeZ7Vm4P1A2hCx4JChnCMse4xZv6pn
	 C09EgkVkJDDWA+BMEvCEv2rdApQY2WmQgBJeIoTm128OY8pPrXSQsuuajAiD6x7sk1
	 EeXRLoT0MwEsTyn+X9xVsMJOeIKumvB10uvHaf8MgClykEqhM8glRYeJ+AHy2pWMRW
	 jDPtC+ZiSsugV4gkgccUwYggW3q+Snk2Lj1da9O9lTV8l3+DmGRS1GUQywaO2E6MiC
	 Je6dvOdLxbz0g==
Date: Mon, 24 Mar 2025 11:31:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Steven Price <steven.price@arm.com>,
	Sebastian Reichel <sre@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Frank Li <Frank.Li@nxp.com>, David Airlie <airlied@gmail.com>,
	devicetree@vger.kernel.org, Simona Vetter <simona@ffwll.ch>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 7/9] dt-bindings: gpu: mali-valhall-csf: Document
 i.MX95 support
Message-ID: <174283391598.303728.5865660880555702267.robh@kernel.org>
References: <20250321200625.132494-1-marex@denx.de>
 <20250321200625.132494-8-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321200625.132494-8-marex@denx.de>


On Fri, 21 Mar 2025 21:05:57 +0100, Marek Vasut wrote:
> The instance of the GPU populated in Freescale i.MX95 is the
> Mali G310, document support for this variant.
> 
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Steven Price <steven.price@arm.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: imx@lists.linux.dev
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Add RB from Frank and Alexander
>     - Make resets: mandatory on i.MX95
>     - Switch from fsl, to nxp, vendor prefix
> ---
>  .../devicetree/bindings/gpu/arm,mali-valhall-csf.yaml    | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


