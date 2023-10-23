Return-Path: <devicetree+bounces-10768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 402D97D2A68
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7141B1C208A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58EA46AB0;
	Mon, 23 Oct 2023 06:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edZHsRJI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29A6AA5
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:29:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B6D4C433C7;
	Mon, 23 Oct 2023 06:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042541;
	bh=9FFTyA/IN+1usMt39XOMXypfgiatVLpJUUWPvSRYpQE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=edZHsRJIbpx8t6abh7Ur86OpCFb8ExmK5+NSkbA4yoXq+dJq56GoOzZIiZEjuG1iu
	 MT9K0GntLc9aE1J6gKd8/h2Ylg3xe3vKeQbrnZi61NSP5BOw9aRT6OCksEbqTSgEPW
	 JmJVNRbJWSNpcyr9rfHkHU9IeD+9p+PHrnGvFCdxO/ykoBfcUORvwj663F2VP1AAYE
	 N0wcPoua109WYEElsHfTNnjCV0PjXLrkfk8UnPhelNzrhWQUCXomsw7JlgmES1krC2
	 be9ERESrE9SSO9GYQ9mEMZfMhDRHdUitmIdEm/7873Hm1xtpT12nXpTau7eIACl175
	 4HKBx3vlOQGzA==
From: Vinod Koul <vkoul@kernel.org>
To: devicetree@vger.kernel.org, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20231022163006.803800-1-sergio.paracuellos@gmail.com>
References: <20231022163006.803800-1-sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: ralink-usb-phy: convert to
 dtschema
Message-Id: <169804253768.383714.5625853416046934960.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:58:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sun, 22 Oct 2023 18:30:06 +0200, Sergio Paracuellos wrote:
> Convert the ralink-usb-phy bindings to DT schema.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: ralink-usb-phy: convert to dtschema
      commit: f5d5a0b5553aa1a4e165e6fc6c582db487768846

Best regards,
-- 
~Vinod



