Return-Path: <devicetree+bounces-2890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF07ACD51
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 3706AB208FB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21070807;
	Mon, 25 Sep 2023 00:52:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54C7F6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F118C433C7;
	Mon, 25 Sep 2023 00:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695603126;
	bh=onvI1Fm9he2xc7lcLVjPo1DMVfrsnVpk+nVaTkzpS2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lvv04zhCLtXR70ozqhgwEHI5reyK99WoeKEJAF4eoLui/LTkmIGRGKXgmLjXOF8ZI
	 oBUWgfediUspCEZHecw8HzajpEsCA+SeaGKSzJKhQoja5cKz3uFz7J9jMVakaed6vV
	 1Zp4CsMKDlLMw2AEHAgT+3jwPlVbBOpTLPwijNWd/Fx9y96ga/Ap95MSzWWj3Ep0MM
	 hCH1QdmsFMmGPipYKNYN/BuvDz79he5jEeH/XTtBCMIo6RvyjNnYY0WWofQCkyoRqX
	 eyqGyr31c7yjnUamuegZe9fmP7liUi+NhLSXR37gjdawRXKzfjmh7aSHIRRsiT0x1l
	 tDdA/KWfLMOGQ==
Date: Mon, 25 Sep 2023 08:51:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm64: dts: freescale: imx8m*-venice: remove label =
 "cpu" from DSA dt-binding
Message-ID: <20230925005155.GZ7231@dragon>
References: <20230828192741.1202218-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828192741.1202218-1-tharvey@gateworks.com>

On Mon, Aug 28, 2023 at 12:27:41PM -0700, Tim Harvey wrote:
> This is not used by the DSA dt-binding, so remove it from the devicetrees.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

