Return-Path: <devicetree+bounces-2489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED587AAFE8
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 279901C20934
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9788618C24;
	Fri, 22 Sep 2023 10:49:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE28179BD
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:49:02 +0000 (UTC)
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A78D3AC
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 03:49:01 -0700 (PDT)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 6859F71B;
	Fri, 22 Sep 2023 03:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1695379370;
	bh=38Kbb7gGkyqodA4KPBC9VNUY13Zo33fOgrid7RcPgZk=;
	h=From:To:Cc:Subject:Date:From;
	b=HYc56Al+GgE8ZqC0VehhO511PydhQ4g4f5KY6ViILEw0QgrT2tblOlRIzu0eUZHGa
	 7fraUyodeYrjrGDHc6K/tF7pQyj6TifG6UbfnIi3QllNLMaCNKGia/7HQAtQrmuYF4
	 0/JyPoFfJ92u+7u5RNG7qbRzDTYPrlEOouyh66Oo=
From: Zev Weiss <zev@bewilderbeest.net>
To: Andrew Jeffery <andrew@aj.id.au>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Joel Stanley <joel@jms.id.au>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"Milton D. Miller II" <mdmii@outlook.com>,
	Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	openbmc@lists.ozlabs.org
Cc: Zev Weiss <zev@bewilderbeest.net>,
	Eddie James <eajames@linux.ibm.com>,
	Ivan Mikhaylov <i.mikhaylov@yadro.com>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
Subject: [PATCH 0/2] watchdog: aspeed: Add aspeed,reset-mask property
Date: Fri, 22 Sep 2023 03:42:32 -0700
Message-ID: <20230922104231.1434-4-zev@bewilderbeest.net>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

These patches add a new aspeed,reset-mask DT property for the Aspeed
watchdog timer, which specifies exactly which peripherals should be
reset by the watchdog timer.

This series is a replacement for a patch I sent earlier [0], though
using an entirely different (DT-based) approach and hence not exactly
a v2.

I've tested these patches on ast2500 hardware and a qemu ast2600
model; test results on actual ast2600 hardware would be welcome.


Thanks,
Zev


[0] https://lore.kernel.org/linux-watchdog/20230922013542.29136-2-zev@bewilderbeest.net/

Zev Weiss (2):
  dt-bindings: watchdog: aspeed-wdt: Add aspeed,reset-mask property
  watchdog: aspeed: Add support for aspeed,reset-mask DT property

 .../bindings/watchdog/aspeed-wdt.txt          | 18 +++-
 drivers/watchdog/aspeed_wdt.c                 | 11 +++
 include/dt-bindings/watchdog/aspeed-wdt.h     | 92 +++++++++++++++++++
 3 files changed, 120 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/watchdog/aspeed-wdt.h

-- 
2.40.0.5.gf6e3b97ba6d2.dirty


