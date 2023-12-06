Return-Path: <devicetree+bounces-22078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5801806583
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 04:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27DC6281F45
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9D6CA67;
	Wed,  6 Dec 2023 03:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC89yqOB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E465FCA66
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:16:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB2DC433C7;
	Wed,  6 Dec 2023 03:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701832581;
	bh=AvI3HsirczffaxE/Kd4YHOpsJCh6hSno31pCLAgizSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uC89yqOBWuAd0B7Tle/fTd9txdx7PiPTBXgiAzUvztjTrjdAdQaAdyD88k4lXSx7I
	 4jphlRDkJD3Tmy6F0yLNTXpoLvLMCuzDgC+m0K6xxNNEAYEmls45XZpDZSZ2VTMXsk
	 guVz2wllxi1c4DpIQ1ImYepIyP9oSiZar6ywJWc3gTcUtFQ9GIFvrrsdNtEGayixv8
	 ycE/HuICMJlYkOFEZWp03zx+WEhWpSPMEWNQWy3A0kWzcs9QIMLze0+xD/uV5ZIYGx
	 AlGmLf8Hf+bgccVZ9hOWMTurAnjel2ZgMEV6Vtm9NvZsXMPPua+ICrFK+Qkp2VQ6fF
	 D1fIDmqvFWXbA==
Date: Wed, 6 Dec 2023 11:16:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] arm64: dts: imx8mq-phanbell: make dts use
 gpio-fan matrix instead of array
Message-ID: <20231206031616.GR236001@dragon>
References: <20231202222934.137191-1-david@ixit.cz>
 <20231202222934.137191-2-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231202222934.137191-2-david@ixit.cz>

On Sat, Dec 02, 2023 at 11:29:01PM +0100, David Heidelberg wrote:
> No functional changes.
> 
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Applied, thanks!

