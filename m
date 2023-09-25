Return-Path: <devicetree+bounces-2935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BA07ACEF3
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4FA70281379
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A976139;
	Mon, 25 Sep 2023 03:59:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F8E7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:59:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 831C8C433C8;
	Mon, 25 Sep 2023 03:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695614392;
	bh=AomZMHu3sQzDwMnFz8qdk1zT3UwLaIScpfXmFlpGZZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a6ilnb9jbAYi5B1/IhRWkjNCQeXfUL0au/B4Xz+CwvuTOFaqdE31Dbfj/7jzpA27s
	 Q3rrT7Djz96BgQmBXeauKiP8/S3Jg+adDBG1qBKJTltTNSGaXfX/eXpYhPC/AxwsUJ
	 UuwemrgjvGS5pYqFKIwFvJoX9TPnK1WXt1bpQcwU5jGkTg33zYcTE7xcLTQM4ntFHt
	 ZwC1yBYbVoUgJfOO6MRJ3FABzATteHQzpsSG/FlRivbx7tT1jHXwEiSpd5gRouH6AF
	 ov7lPwUd/0svVSecyoUdya/+UxLHeyH48RyznPCMFJFDDEPKA6sXZG54II2ZrNsnLQ
	 OsIcYFK7lU5Nw==
Date: Mon, 25 Sep 2023 11:59:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, xu.yang_2@nxp.com,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx7ulp: Fix usbphy1 compatible
Message-ID: <20230925035942.GQ7231@dragon>
References: <20230923185010.584011-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230923185010.584011-1-festevam@gmail.com>

On Sat, Sep 23, 2023 at 03:50:10PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per fsl,mxs-usbphy.yaml, fsl,imx7ulp-usbphy is not compatible
> with fsl,imx6ul-usbphy.
> 
> Remove 'fsl,imx6ul-usbphy' from the compatible string to fix the
> following schema warning:
> 
> imx7ulp-com.dtb: usb-phy@40350000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['fsl,imx7ulp-usbphy', 'fsl,imx6ul-usbphy'] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

