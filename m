Return-Path: <devicetree+bounces-1975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 202A57A9544
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5F841F21093
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE548BA37;
	Thu, 21 Sep 2023 14:29:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9C6BE50
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA81BC4E76F;
	Thu, 21 Sep 2023 14:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306583;
	bh=TLvaJrIvbE3wSBgqozLTIG4l1mfwrfkwlcmiyZgo5cc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Yc8QPaUquEBjB1CSrc05c0riWprQKnlPs6h00lgeuRtRfYvx8vs5so2GFIzgYL933
	 Ahhve/aeGebRnovdYJ8vhUpOGSzIgnGmNNeGeUB6FFgLD+pnWzEI5NUK3RP0OjQ2Qt
	 3MqNy7R4bouj3AJJaLHcoufSFvzT2ENRMe8j5kDZhihTYKrsshU9hrctKcIpdw6ToK
	 8Sr9dB256taMmBdgCC5Cs2OHx7gcNdi/6f3xvb3/sb9H9kEY0yLpCVFQOzuuC4kSQ8
	 Z64XumVNjvBjmalpmWsSa8D6G+yu5zFsOaghT3UZ2Z60ocESMGcFxJm5I/WFkPMn5z
	 /hgWUohSjMpGA==
From: Vinod Koul <vkoul@kernel.org>
To: chunfeng.yun@mediatek.com, kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
 Shuijing Li <shuijing.li@mediatek.com>
Cc: linux-phy@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, jitao.shi@mediatek.com
In-Reply-To: <20230908075310.17825-1-shuijing.li@mediatek.com>
References: <20230908075310.17825-1-shuijing.li@mediatek.com>
Subject: Re: [PATCH v3] dt-bindings: phy: Add compatible for Mediatek
 MT8188
Message-Id: <169530657939.106263.17269838650335090138.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 08 Sep 2023 15:53:10 +0800, Shuijing Li wrote:
> Add dt-binding documentation of dsi-phy for MediaTek MT8188 SoC.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Add compatible for Mediatek MT8188
      commit: be5747285ea0774501c5c9d25cbff43e6b0b53b9

Best regards,
-- 
~Vinod



