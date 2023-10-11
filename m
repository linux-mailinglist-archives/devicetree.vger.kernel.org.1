Return-Path: <devicetree+bounces-7894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170D7C5FC2
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1F541C20978
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1F23E493;
	Wed, 11 Oct 2023 21:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="AJArDmKA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376653E47B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:59:06 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BBA1B8;
	Wed, 11 Oct 2023 14:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697061541; bh=KbH2UqL5Mw2DaM0t8hbR9+M4YCGdx1V6vRdWjgihY6U=;
	h=From:To:Cc:Subject:Date:From;
	b=AJArDmKAuk2M5SJOFYHjrqFmvosIDKD3ckQD0LyGpYCgpWbpX9ydCFYSL0ZnxWeHM
	 +dLEH+deWk+ZOLCLGE5n9J1EXl6wqCwZl1aik0v0ptnBjR9JTJx0PAQpWLL4rmMh1k
	 ePUwqvqhBwmBz3iPx5ivEDBy0yHZhvGg1rBB1Ryc=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Date: Wed, 11 Oct 2023 23:58:43 +0200
Message-ID: <20231011215856.2082241-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

This series adds an initial support for Pine64 QuartzPro64 SBC.

The series was tested against Linux 6.6-rc4.

Please take a look.

For v2, I proactively went through changes made by Heiko when merging my
other patchset for Orange Pi 5 Plus, and made the same changes to this
patchset, which had some similar issues:

- order regulator-name inside pmic nodes as the first property
- re-oreder some other properties alphabetically (in rtc node and in
  some regulators under /)
- drop rockchip,system-power-controller (will re-add later without prefix once
  https://lore.kernel.org/lkml/20231010174138.1888396-1-megi@xff.cz/ gets merged)
- drop mem-supply from cpu nodes (this will also be re-added later
  once cpufreq support is upstreamed)
- sort nodes under pinctrl alphabetically
- added acked-by tag for DT bindings patch

Thank you,
	Ondřej Jirman

Ondrej Jirman (2):
  dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
  arm64: dts: rk3588-quartzpro64: Add QuartzPro64 SBC device tree

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-quartzpro64.dts  | 1137 +++++++++++++++++
 3 files changed, 1143 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts

-- 
2.42.0


