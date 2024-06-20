Return-Path: <devicetree+bounces-78063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C549C910D3C
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 18:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F8C6283156
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF715174EC1;
	Thu, 20 Jun 2024 16:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnyWUZKE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACFC482D7
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718901531; cv=none; b=L604tXHd0oqCOzFgF9MymUNfu5ugJmYFnu/j2PPjSjeT2MzSjKOdR241bwhAHVlQH8ic+3iN187liNTfndOw8QK6arbQeino0bpYacjXEZovIV/vptFm+wD/fTCzfWBBHsEWdzY/FcQESpGv760Vf51XLOA2PfpFyVfzv1faIDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718901531; c=relaxed/simple;
	bh=fzwqwWemSVE2NweWJKvjoTPNMJPEDFI6TZNbVvd79bQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NIcY4Qi3FK4TZSu+UA7K+LZgTwpIa4yUoZfWfGw3f9Rxeu8f+T4FG6X8U8z+ZmtjFDRmboCkLdcRPgZgbJyoAR2B0Qhyzj/kJnQV5IUzalp/3fChh+Q0fTnYZ9xNN7989qAMKORtFcTsYJQs6kHUdB6ioCmm+hfRjyMzSlThhWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnyWUZKE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20B82C2BD10;
	Thu, 20 Jun 2024 16:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901531;
	bh=fzwqwWemSVE2NweWJKvjoTPNMJPEDFI6TZNbVvd79bQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mnyWUZKEv/lvIe6Ah41q8pRfQK3zNSsIYOlRwNiUwCGqnqVYrt402LUDFgyOukIt9
	 iqb8VSjp05Iu9yMZtZR24Tc3+8MOb8m4t8KW1Nsmaw+ZKJyAQqzTpkqb+BmVdbGn++
	 GJlpkdpnwZ+SaJAq+V5FfUoVyfl1myvbdetFDZCGuFzYgAydQGttBeA4Dh7P97Ah9Q
	 r4t4ha+DugcnenvJxeTnalG2cRd3b+zanLUosIxmd1L44OFMr7Me5xFPykVRZMAU41
	 R0iofwfsgt0zuIbuvxtaXFp2d3KawNHHwUODmnVGEKZdVwug3wa7BlzVe+ezrOXhqh
	 V7l+thSWVxwFQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com, amitsinght@marvell.com
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
Subject: Re: (subset) [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581
 SoC
Message-Id: <171890152570.219744.4184379340358440728.b4-ty@kernel.org>
Date: Thu, 20 Jun 2024 22:08:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Sat, 18 May 2024 13:31:40 +0200, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.
> 
> Changes since v2:
> - introduce registers description in dts binding
> - compile PCIe PHY controller driver as module by default
> - improve code readability
> Changes since v1:
> - add patch 4/4 to enable PCIe PHY driver
> - rename documentation binding in airoha,en7581-pcie-phy.yaml
> - fix kernel doc
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
      (no commit info)
[3/4] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
      commit: d7d2818b93837def4a33f92da2e64c3a2752c47e

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


