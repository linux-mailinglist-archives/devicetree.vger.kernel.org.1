Return-Path: <devicetree+bounces-6798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC357BCE85
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 694672818EA
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87CDC2D0;
	Sun,  8 Oct 2023 13:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="RB6a8AY9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1F9C158
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:12:40 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0094BCA
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770367; bh=iFJPDtUKoP37vIhXRBmqRJjQU1Msnq0cruFbwd9+vtk=;
	h=From:To:Cc:Subject:Date:From;
	b=RB6a8AY9b8cRboJA4kccUHp03BjJII6czvTikm1mJBlGvnyhnpUkfHzlMBKsfFs3W
	 Z2btkDMsP0yTHBlT5UMPnsGZAn+olUZC1M6wSFXA2/Q5ZnLSgL7LDBDZI02Rxl5Esx
	 GYomKpORSYIILZ8Bp10pdrbnEgpkeVb0h3OQWUDo=
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for Orange Pi 5 Plus
Date: Sun,  8 Oct 2023 15:04:58 +0200
Message-ID: <20231008130515.1155664-1-megi@xff.cz>
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
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

This series adds an initial support for Orange Pi 5 Plus. The only
thing missing that can be readily added is USB 3.0 support, because
required patches were not yet merged. Support for USB 3.0 is available
at https://xff.cz/git/linux/log/?h=opi5-6.6

The series depends on SFC patch from:

  https://lore.kernel.org/lkml/70557b7843994a57c6d3422e00643cb75a698d0b.1692632346.git.efectn@6tel.net/

The series was tested against Linux 6.6-rc4.

Please take a look.

Thank you,
	Ondřej Jirman

Ondrej Jirman (4):
  arm64: dts: rockchip: rk3588s-pinctrl: Add I2S2 M0 pin definitions
  arm64: dts: rockchip: rk3588s-pinctrl: Add UART9 M0 pin definitions
  dt-bindings: arm: rockchip: Add Orange Pi 5 Plus
  arm64: dts: rk3588-orangepi-5-plus: Add board device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 857 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    |  44 +
 4 files changed, 907 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts

-- 
2.42.0


