Return-Path: <devicetree+bounces-249403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEBFCDB97F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2F0D303D8A3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32074314D28;
	Wed, 24 Dec 2025 07:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M13JZqVB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846C23EA83;
	Wed, 24 Dec 2025 07:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766561559; cv=none; b=Af+Onj2R0Tlul6VrpDkv9lGkum8yozUe7b31xNsmKKk8xA9wV6XmRT/G2n1Z4O36qWYrJUMqFE4SlwlLdZfntWE4spV4BjHFE/fZZ+woOuBqDg7cAe6Qi2Gqd/sfDYs0n4j8am5xW6skxGHjUD6gLQjLAxJYXZjj8yWffIHL/bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766561559; c=relaxed/simple;
	bh=1U9c3moXP2dPUwYGsCY/RrhE8RLjaqkkRdOTw+azNek=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Irg5CfIyGJvz/fL+QflxGkYCooSes1BcUVzni7D4A1spX4L2xgta8YN+pVTU3rtFMI/Bcjiz6kmpjOFxdjn9XLGBiInCCYYuLI5Pbef+mM5eSOhaHnS0k2E9ezOLUCD7ZJ9VcuKu1yTc2j9lH1s9Q4NRVaI/R/gv71ujt8lN7dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M13JZqVB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01910C4CEFB;
	Wed, 24 Dec 2025 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561558;
	bh=1U9c3moXP2dPUwYGsCY/RrhE8RLjaqkkRdOTw+azNek=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M13JZqVB5nGtTPVb9qryeY+/HTGE3O29FVcUL9ia2kH0WA7YII9FGJoiHAioXCCEE
	 8T2JXzUO9PqWZCoqwIZCK1Az/T0T2uJIJUEzUBaThcHbxlAqg55J9KXbA1c7U4hXcM
	 WbY5+e2UItQ//iRBAL5KisXUfrWGsNR+aiblmy+Czsz9bXZt0erkRiKT9vqwgb4GGo
	 1exoGkGxp2XjSvIGFlWsOJ1FZOWP0nJNdlOTgkxdfqYz/ReTOOfl7PWMyuXqnkJWaP
	 6c3k2CqPpYPAYtZM7V45+0flbY5wiuACMyk+iBqm6ByxipP62cLqFaKe+67arZboV4
	 MjN4lCdGuR1Fg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
References: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
Subject: Re: [PATCH v2 0/2] dt-bindings: phy: add power-domains to samsung
 UFS and USB phys
Message-Id: <176656155361.817806.4683882680311594709.b4-ty@kernel.org>
Date: Wed, 24 Dec 2025 13:02:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Wed, 24 Dec 2025 06:28:16 +0000, André Draszik wrote:
> The samsung UFS and USB phys can be part of a power domain, so we need
> to allow the relevant property 'power-domains'.
> 
> This v2 is essentially just a resend as the patches still haven't been
> queued.
> 
> Note that in v1 the patches were sent individually, while here I've
> folded them into one series as they go via the same tree anyway.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: samsung,ufs-phy: add power-domains
      commit: 14fd381b632881a8e33108614e71ec253048629b
[2/2] dt-bindings: phy: samsung,usb3-drd-phy: add power-domains
      commit: 652a5a9c3f5333fe9f0c43bfd562494464bbc74e

Best regards,
-- 
~Vinod



