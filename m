Return-Path: <devicetree+bounces-8021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B807C676E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:16:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24C2C28260D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94DD31B287;
	Thu, 12 Oct 2023 08:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="dQLvX2/2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F643168AA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:16:00 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E3691
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697098558; x=1728634558;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5jRuRhvlKxGkDwbnqxCjIY7ZhxF7WYoz4/Dll4QfvJk=;
  b=dQLvX2/2vzdZUaLWvS0vlpxppir3qWeRvRtOcv6KSAgiKwQSLeT/LQ5L
   gxj8zSQYzaNv7qy03f2rbntTP8AkfRrliypBMkTGDuxw/BOYOkgMLTMfC
   qlkaACNzfY7JVSP0cevFc71K7BUD5yhUfIDWLZrudctbDbzlMYqVtwL0n
   wgmvsOaI+tzhGJc8d4zbjo4WlChwyiinOCoM6TkughQt9VTXydx36t8/y
   /pH41tRaRd1rHpvqhI6ur7vUPS42Z2FdyCoqxlZkABsOvaN5lrexUbN9q
   WwLkZiKqq+b7d0zRTt6hmAza0lwIY9fEtIx93Lr3xYYa+XapjKBlwdffo
   g==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33423290"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 10:15:56 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 47C06280082;
	Thu, 12 Oct 2023 10:15:56 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] i.MX7S/D DT fixes
Date: Thu, 12 Oct 2023 10:15:52 +0200
Message-Id: <20231012081556.2723552-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

these patches fixes soc-DT related warnings generated from
$ make CHECK_DTBS=y nxp/imx/imx7d-mba7.dtb

The warning from patch is only visible after applying patch [1].

Best regards,
Alexander

[1] https://lore.kernel.org/linux-arm-kernel/20231012080033.2715241-1-alexander.stein@ew.tq-group.com/T/#m73e5de5eecebc06195911078621e25c74802240d

Alexander Stein (4):
  ARM: dts: imx7d: Fix coresight funnel ports
  ARM: dts: imx7s: Fix lcdif compatible
  ARM: dts: imx7s: Fix nand-controller #size-cells
  ARM: dts: imx7s: Add missing #thermal-sensor-cells

 arch/arm/boot/dts/nxp/imx/imx7d.dtsi |  3 ---
 arch/arm/boot/dts/nxp/imx/imx7s.dtsi | 11 ++++++++---
 2 files changed, 8 insertions(+), 6 deletions(-)

-- 
2.34.1


