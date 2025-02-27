Return-Path: <devicetree+bounces-152028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AADDDA47CA0
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 12:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A57553A4FB3
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 11:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA1E22A1D1;
	Thu, 27 Feb 2025 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="RzsR3blO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973173.qiye.163.com (mail-m1973173.qiye.163.com [220.197.31.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB95227B9C;
	Thu, 27 Feb 2025 11:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740657294; cv=none; b=pCyaL/AH9LUO7UX8sFoSGHYrm/Ya7Sv2ytvFK9SEGZz/FMZtWQEOHAwVf2CUZbqDI7lN7ePsTNpqoyQ+Y/dAMtz+d8Q8xf3H4VBdPcP/2f5a7bKp6uFfqvEHvgIYn3dfpfbOPVRHKR+MuCbT9ggmi8Gr0Xa+aVpbQDEz9zNn3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740657294; c=relaxed/simple;
	bh=dhs0V5nmWdNo3Y0T8n5/DBHytdtpe0tD6ouPJ2TeqT4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=diNcBGClnlRwjtYwpNKIZ7JiibdCaZ/7yM7eeNZpb9RSGHv8rORgYyuYicn8VEPE5CSSbojUkvqnTLAhkxQqkRZRQ1sQyBzdZR2sJwIGX3PJG6QU30+Mqxv6pMpPAKKcFQaN+cAJCzxSv+IwjM9TkcE9hJDdcwUjSCqiSwrcMVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=RzsR3blO; arc=none smtp.client-ip=220.197.31.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97d1;
	Thu, 27 Feb 2025 19:19:22 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v3 02/15] dt-bindings: mmc: Add support for rk3562 eMMC
Date: Thu, 27 Feb 2025 19:19:00 +0800
Message-Id: <20250227111913.2344207-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhOTFYYTUpITklPHk5DTRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a954721f69203afkunmc65f97d1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAw6DAw5MjITNw0RAkI4HlYU
	TQgwCRBVSlVKTE9LTU5OSk1PT0hPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSklONwY+
DKIM-Signature:a=rsa-sha256;
	b=RzsR3blOXsXwdI9HOvFzOcLEQVZBRtujcQhvm2zRbJadsYsjAdqa88MYo/taqnfh1GaY0m6Nicn1uKLkOGGjwJlRcWrCUcKd/nvb4c3AoVEhx9goLwFHlvDQ06ya2I3N3N1svmtzCtDbqUgxJHdkP+BcWjZW5V6e3/BhHsuY10E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wng6RPNu0umxr4Kc1/tX7hihuPkkSZn7r6Whp2T9fIM=;
	h=date:mime-version:subject:message-id:from;

The eMMC core on Rockchip's RK3562 is the same as the one already
included in RK3588. Extend the binding accordingly to allow

	compatible = "rockchip,rk3562-dwcmshc", "rockchip,rk3588-dwcmshc";

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- Updae to fix dt_binding_check fail

Changes in v2: None

 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index c3d5e0230af1..2d5c9931f623 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -14,7 +14,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: rockchip,rk3576-dwcmshc
+          - enum:
+              - rockchip,rk3562-dwcmshc
+              - rockchip,rk3576-dwcmshc
           - const: rockchip,rk3588-dwcmshc
       - enum:
           - rockchip,rk3568-dwcmshc
-- 
2.25.1


