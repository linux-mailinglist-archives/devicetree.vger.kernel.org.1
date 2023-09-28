Return-Path: <devicetree+bounces-4298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 531FB7B1F00
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:53:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0091928197D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DCF33C692;
	Thu, 28 Sep 2023 13:53:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9983C686
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 749F9C433C7;
	Thu, 28 Sep 2023 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695909222;
	bh=iSo3Vv83opeDiMziiEr9meXPXAR2jmotAhidSIfYl6w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PqnkxzaG+HrT5zGQTiwMcCeLp7HVQWUgvpP+JNa+GImZP+vSiQ6/YdVZCnkWr6pdo
	 CkKk9dcvct1QPopVq/V5gAFiOfjnLLr+kDpu+cM9gejtIaC1TG8ssKutPr1OdqCD7M
	 4OgBzFnnrKWOpgZ39TOvPRlMuaAxENgP5Tk4l1iLqXx3iTAM90j7LGZhHqwEc+oYHa
	 OaGLotqMvA6Wa+TbZnIRno5Tx2OXdaMhHwNlT2+eO/Zrtovq7KisCD0uv5VC9qBNSg
	 fr399/rR8vboIG6uNxQ/35Giy7c6fNGdpJbV4QBgPztLYVXDFWLiTXk8/aTrm0llZH
	 SCcckzyFs6aag==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Patrick Rudolph <patrick.rudolph@9elements.com>, 
 Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 - Keerthy <j-keerthy@ti.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230925212729.1976117-1-robh@kernel.org>
References: <20230925212729.1976117-1-robh@kernel.org>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: Add missing
 unevaluatedProperties on child node schemas
Message-Id: <169590921918.1613753.10940861151886567899.b4-ty@kernel.org>
Date: Thu, 28 Sep 2023 14:53:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 25 Sep 2023 16:27:24 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Add unevaluatedProperties as needed, and then add any missing properties
> flagged by the addition.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: Add missing unevaluatedProperties on child node schemas
      commit: c7d1263be9396582f86024dc33f336d974496b83

--
Lee Jones [李琼斯]


