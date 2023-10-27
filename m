Return-Path: <devicetree+bounces-12405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6D7D95D1
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4D031F235B9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A169017756;
	Fri, 27 Oct 2023 10:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F728BF9
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 10:59:33 +0000 (UTC)
X-Greylist: delayed 902 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 27 Oct 2023 03:59:30 PDT
Received: from mail-sh.amlogic.com (unknown [58.32.228.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BBF9C;
	Fri, 27 Oct 2023 03:59:30 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Fri, 27 Oct 2023
 18:44:25 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>
CC: <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V3 0/3] Add watchdog support for Amlogic C3 and S4 SoCs
Date: Fri, 27 Oct 2023 18:43:55 +0800
Message-ID: <20231027104358.342861-1-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]

Amlogic C3 and S4 has the same watchdog controller as Amlogic T7.

Changes since V2 [2]:
- Modified yaml document to ensure that dtbs_check passes.
- Added a patch for watchdog support for S4.

Changes since V1 [1]:
- Added C3 compatibles, with T7 compatibles list as fallback.

[1]: https://lore.kernel.org/all/20230925090641.1185942-1-huqiang.qin@amlogic.com/
[2]: https://lore.kernel.org/all/20230926055512.2355390-1-huqiang.qin@amlogic.com/

Huqiang Qin (3):
  dt-bindings: watchdog: Add support for Amlogic C3 and S4 SoCs
  arm64: dts: Add watchdog node for Amlogic C3 SoCs
  arm64: dts: Add watchdog node for Amlogic S4 SoCs

 .../bindings/watchdog/amlogic,meson-gxbb-wdt.yaml    | 12 +++++++++---
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi          |  6 ++++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi            |  6 ++++++
 3 files changed, 21 insertions(+), 3 deletions(-)

-- 
2.42.0


