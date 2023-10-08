Return-Path: <devicetree+bounces-6813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DCF7BCF11
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 17:27:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 804E31C20A47
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C387811706;
	Sun,  8 Oct 2023 15:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="xv2tyj44"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE45EEAD1
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 15:27:12 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A8D8B6;
	Sun,  8 Oct 2023 08:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696778828; bh=0jajswhxJ2xstyOKf9U5EODA+wWJ81yMdH1vbZSVs8g=;
	h=From:To:Cc:Subject:Date:From;
	b=xv2tyj44BnKRtlSXZ4Cnt+HgiVP8JQoubtuE9gILpf4GHYTz2jFwSfHWscjEIF6IA
	 n+hjDCdDMGtonkQ+OIph5eZdqBGisMoWbYS5/EHscMLs7bOCTaZVDrzD7RtXqPXTRM
	 KfdYWJvVv81M5TloOqjREqrdB4OtFuNyE4dIDOLI=
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
Subject: [PATCH 0/2] Add support for Pine64 QuartzPro64
Date: Sun,  8 Oct 2023 17:26:55 +0200
Message-ID: <20231008152703.1196370-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

This series adds an initial support for Pine64 QuartzPro64 SBC.

The series was tested against Linux 6.6-rc4.

Please take a look.

Thank you,
	Ondřej Jirman

(Support for a few extra things, notably USB 3.0 is available at
 https://xff.cz/git/linux/log/?h=opi5-6.6)

Ondrej Jirman (2):
  dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
  arm64: dts: rk3588-quartzpro64: Add QuartzPro64 SBC device tree

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-quartzpro64.dts  | 1146 +++++++++++++++++
 3 files changed, 1152 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts

-- 
2.42.0


