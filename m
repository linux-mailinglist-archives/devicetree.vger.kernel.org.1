Return-Path: <devicetree+bounces-1969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 063EC7A9539
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3772D1C2091B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38050BA34;
	Thu, 21 Sep 2023 14:29:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28695BA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E36C4E75B;
	Thu, 21 Sep 2023 14:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306560;
	bh=3KLcy3EQJ1puV3dzsk0w22+qc/0ywWz1dFJWwZrszw0=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=ZgN2pHpaTAJywaqK3L2xHTEt38W3XyjPeK6GHDRQUF05hLwTBcXgmV4+tnzV8nRn4
	 sgUxL7hA0SkOSJEh786iIP01Da9ywW645pkyx9mS2uEPNHNYAqFJ7j1godAfJh5U5p
	 EM5WqjyCeOPb0wuvNrbftYywu72dh3CXaD+EoXVccOOfcQsnVi0AD9GjoSzirNX7nO
	 RoDIOT0Fvp1XA9D2MVhiIaphWcKxUkaZboNg9emaGKCYHG4RtGExTbxPkGKM8M3gEp
	 tJNM4GNgAYKLCcCvVDovR+WhqCNAelh6sVaOxA3D4BLh8OYDO+N8nU2DXfNvrWHOt7
	 8oZc8PsnCmtiw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 catalin.marinas@arm.com, will@kernel.org, kishon@kernel.org, arnd@arndb.de, 
 geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
 peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <cover.1693468292.git.quic_varada@quicinc.com>
References: <cover.1693468292.git.quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v12 0/4] Enable IPQ5332 USB2
Message-Id: <169530655544.106263.15705008242028949711.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 31 Aug 2023 14:47:42 +0530, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling USB2 on IPQ5332
> 
> v12:
> 	DTS:	usb2_0_dwc -> usb_dwc
> v11:
> 	Driver: Rebased to accommodate https://lore.kernel.org/linux-arm-msm/20230824091345.1072650-1-yangyingliang@huawei.com/
> 	DTS:	Sort nodes in alphanumeric order
> v10:
> 	Driver: Restore register success print per Dmitry's comment
> 	DTS:	usb@8a00000 -> usb@8af8800
> 		regulator_s0500 -> regulator-s0500
> v9:
> 	Driver: Since the driver code has been picked up for merge,
> 		(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
> 		adding the coding style fixes alone in this patch.
> 
> [...]

Applied, thanks!

[1/4] phy: qcom: m31: Fix indentation issues
      commit: 90f7af497a78bf920a63119f2c7e9dcd98d028fe

Best regards,
-- 
~Vinod



