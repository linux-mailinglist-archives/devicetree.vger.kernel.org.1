Return-Path: <devicetree+bounces-19224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3827FA0ED
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDC301C20A6F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796552DF9E;
	Mon, 27 Nov 2023 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGvd5vcG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8501A725
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 13:22:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C29BC43395;
	Mon, 27 Nov 2023 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091376;
	bh=QwSBdJ/YKv2G0wND49Ay9xZy3Z92H53HIWkYc1/ISxQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BGvd5vcG9H8ZCuQOfQzYPFnWcZqkc/t3oZVgxdS48Unv8LLEsChHioLVaXoJaV3le
	 zsWTbQKCaGOAEWldbJ1GoBq680KZ3ws/DIu5/sReU1yHOG4pK5JisVHsSAxp6ootNc
	 Bt2sCu01dxBxhnpwc7vE4uz7KdwF9A46rgItnp0HYWGj3CgWIhwsR9Ivv6DQXs/uO6
	 HMlCF4WAp57KsxI4jwOKa9/pjnitSW8HAkSys8jB9m6aXMVlhPs+7eYC6dEFW1Y+aS
	 IBmCjRhBGd6Mjoopstmdadc4zbizpY9qsjdciMcVN7LflH1ejujnGHbszfGlBvxikQ
	 6KWokK75hW4Zg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH v3 0/5] Add USB support for RK3128
Message-Id: <170109137310.42627.13364867198507933834.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sun, 19 Nov 2023 13:13:35 +0100, Alex Bee wrote:
> While interestingly the DT-binding for the Innosilicon usb phy found in
> RK3128 SoC exists already and it is exposed in the SoC DT, it has never
> been added to the driver.
> This patch-set adds support for this early version of the phy and does
> some DT-fixups in order to make the 2-port host/otg phy and the respective
> controllers work.
> 
> [...]

Applied, thanks!

[1/5] phy: rockchip-inno-usb2: Split ID interrupt phy registers
      commit: 2fda59099462ee700e424ba3ac928d13ad6389a8
[2/5] phy: phy-rockchip-inno-usb2: Add RK3128 support
      commit: 62ff41017e147472b07de6125c3be82ce02a8dd7

Best regards,
-- 
~Vinod



