Return-Path: <devicetree+bounces-3332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E87AE548
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 07:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F37D82815BC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 05:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF5B2114;
	Tue, 26 Sep 2023 05:55:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921B20F6
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:55:37 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E37D39D;
	Mon, 25 Sep 2023 22:55:35 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Tue, 26 Sep 2023
 13:55:32 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>
CC: <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V2 0/2] Add watchdog support for Amlogic C3 SoCs
Date: Tue, 26 Sep 2023 13:55:10 +0800
Message-ID: <20230926055512.2355390-1-huqiang.qin@amlogic.com>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Amlogic C3 has the same watchdog controller as Amlogic T7.

[PATCH 1/2]: 
  V1 -> V2: Added compatibles.

[PATCH 2/2]:
  V1 -> V2: Increase compatibles of C3 watchdog.

Huqiang Qin (2):
  dt-bindings: watchdog: Add support for Amlogic C3 SoCs
  arm64: dts: Add watchdog node for Amlogic C3 SoCs

 .../bindings/watchdog/amlogic,meson-gxbb-wdt.yaml           | 1 +
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi                 | 6 ++++++
 2 files changed, 7 insertions(+)


base-commit: 8fff9184d1b5810dca5dd1a02726d4f844af88fc
-- 
2.42.0


