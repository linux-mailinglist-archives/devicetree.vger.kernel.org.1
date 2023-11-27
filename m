Return-Path: <devicetree+bounces-19218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E6E7FA0DC
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:22:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1D921F20EC6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5807B2E632;
	Mon, 27 Nov 2023 13:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW4paEx2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D172E40B
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 13:22:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC5ABC433C9;
	Mon, 27 Nov 2023 13:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091350;
	bh=ctK+hzgQC+MSLrY/zdUFkWtbnB6zds12J32HcsBK/zc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KW4paEx2pGcLIuM4lm1CrNXkrBmaG29is/BxD8BmmmBf08D3aRpeIoHwj9Cx/p3nY
	 yN3ued0C1c2b2nPPBj7GzF3TypElCj4WVr5cGj05Pf5tW3TEnX/yopo3t0nnL8fjjs
	 LMJtrqatLKh9MQBU2fj9FxaQZ35X+1zJ2Kd1uExiDcp6SDdjIQlDsKkiENi407uHV4
	 8OSxtmkavJ0zKHJkIW5N6bMYY+TC1Z9SLOrJ0+SaF1HIsI3JCpyYFueYc+gQjc4HGX
	 BuBY01a1n5vZfHwOCmEaSjCUEqL8iqZn0GPVKED08Pl9FQiuEVZwpJHTBhSGikcguG
	 ewtcHT030MBFA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230830133623.83075-2-knaerzche@gmail.com>
References: <20230830133623.83075-2-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH v2 0/5] Add USB support for RK3128
Message-Id: <170109134730.42627.8256424679982843015.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 30 Aug 2023 15:36:19 +0200, Alex Bee wrote:
> While interestingly the dt-binding for the Innosilicon usb phy found in
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



