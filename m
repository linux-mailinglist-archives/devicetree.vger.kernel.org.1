Return-Path: <devicetree+bounces-2796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F9F7ACA01
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 16:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0B869281440
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A323CD262;
	Sun, 24 Sep 2023 14:30:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9407AED4
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 14:30:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F823C433C7;
	Sun, 24 Sep 2023 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695565859;
	bh=lCkXBJveD4459VWs+UbergDqVNvk5hCEryi1nJFwlZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tSQSMlMnKCadjZ5nidZL7oicH5JcDePXNwHmFvXywNotAHGHOWHhUfuYuG9aNgN4P
	 YLMf5TNReK+u9Coj86QaCWU/Wdu8rS8qa8lkVvALXkHoorvwurM3TK3MQqvr0/iRCL
	 5ieYiZ2Bf0Ofx8IoXDWDyiqKgze69nbDj9t8vqx12k7PEpfVD/xrUuQBmP1fPAodBy
	 ABHY1Z/6SVPPjvIzaGoFpPts0o4NXqI/23HQG35YH/6xwwKWCcTkx7A75PqXGOJpej
	 7cUuQ9O0wOgc4RqhU1thbNLhoZUEiuYak4G4xr17Mg05ce9Wj/37rO9uRAVgfNyTUi
	 gqMt3E4gRxu0g==
Date: Sun, 24 Sep 2023 22:30:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: nxp: imx6qdl-nitrogen6: correct regulator node
 name
Message-ID: <20230924143043.GR7231@dragon>
References: <20230906084625.29491-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906084625.29491-1-krzysztof.kozlowski@linaro.org>

On Wed, Sep 06, 2023 at 10:46:25AM +0200, Krzysztof Kozlowski wrote:
> Root node is not a bus, thus top-level nodes do not have unit addresses.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied, thanks!

