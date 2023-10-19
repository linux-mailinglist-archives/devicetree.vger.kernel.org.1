Return-Path: <devicetree+bounces-10186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 870AB7D0010
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 18:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34DE0282274
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298EC32197;
	Thu, 19 Oct 2023 16:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="HF8lErKW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80A12FE39
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 16:57:39 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B1E3131;
	Thu, 19 Oct 2023 09:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697734655; bh=Bvmn+V+8oX7B+tSkrf+0B+Kh8dg+ZztWnQG5X3x9Bh8=;
	h=From:To:Cc:Subject:Date:From;
	b=HF8lErKW9uN+o4opO7QVbialjnmDJMKxwdCdZUjC5ytgd6tmuW+2GcUOcHBloyzMU
	 xQ/6/SlGUhthjcppvwfJVy5QtxxS319V/+foPhHQ9+fq34PKO7KxpeuEtkdXCNCTjS
	 vuJCaU/gHw3VyKsBzV/VZJ2WMY49RfqwKPWhlJ/s=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Add support for poweroff via RK806 PMIC
Date: Thu, 19 Oct 2023 18:57:22 +0200
Message-ID: <20231019165732.3818789-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Ondrej Jirman <megi@xff.cz>

The PMIC supports powering off by twiddling some bits in a register. Add support
for it via pre-existing rockchip,system-power-controller DT property.

The series was tested against Linux 6.6-rc4.

Please take a look.

Thank you,
	Ondřej Jirman

v3 resend:
- add tags
v3:
- use system-power-controller
- deprecate rockchip,system-power-controller
v2:
- add a missing driver patch

Ondrej Jirman (4):
  dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller
  dt-bindings: mfd: rk806: Allow system-power-controller property
  mfd: rk8xx: Add support for standard system-power-controller property
  mfd: rk8xx: Add support for RK806 power off

 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 2 ++
 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
 drivers/mfd/rk8xx-core.c                                  | 7 ++++++-
 7 files changed, 23 insertions(+), 1 deletion(-)

-- 
2.42.0


