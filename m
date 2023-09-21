Return-Path: <devicetree+bounces-1967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F0F7A9532
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A79901F21088
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738ADBA2B;
	Thu, 21 Sep 2023 14:26:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64323BA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:26:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A58EC4E75A;
	Thu, 21 Sep 2023 14:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306369;
	bh=BBqfjUsfJ3kQ/EhGxEAQtBhKlPx/meeJnKHZzqCeh5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kv6/ltG7KlBF+RvsYEM0RBt+gr4S3JYK6t+QyY7jLcqWayRyREwkguwyfVsLmSPyn
	 21I3sydRTVME+oU5qN7j2ZUyDRT+lV2WOjVLFqupyCv6to4jgLJn2f8EDO+NYkIfFY
	 IJR+eUxIgg3FU6ALEHKyZ4wlMh2nmTROyr7alUtRiApj6yDewtNac0Sht84N1kZMoq
	 189QoqPxJW7Si35SN9SqAyjUEPte4+pJQgqGqvw6DmWc0uC9anPST/xDBFCOdR5k1x
	 9IvwWoDRvbHN5RykV7PhwMB6xMveSYB2iWxSJfMPWNArpUO/Gnqn+Ury3OsPZ3gFUG
	 NqR2cGr1tpdtw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
References: <20230823181728.3082946-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning
 regarding reg size
Message-Id: <169530636593.106093.1059911135057813024.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 23 Aug 2023 21:17:28 +0300, Dmitry Baryshkov wrote:
> Fix the 'reg is too long' warning caused by me adding 64-bit address and
> size to the example, while default being 32-bit (cell size equal to 1).
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,ipq8074-qmp-pcie: fix warning regarding reg size
      commit: 211de9681195b92709b5d68e07af948b01c8bb9a

Best regards,
-- 
~Vinod



