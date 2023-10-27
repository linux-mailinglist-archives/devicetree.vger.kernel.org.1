Return-Path: <devicetree+bounces-12401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 852137D952F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FAAB2823AA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF95518031;
	Fri, 27 Oct 2023 10:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="BNqnkM7D"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1571E17732
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 10:24:54 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C361DC;
	Fri, 27 Oct 2023 03:24:52 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id 6724CFF813;
	Fri, 27 Oct 2023 10:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698402290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cGPv+pY+P6hcMNmV/AQ4WJAxMTYlBDo9T5+aYFQOgzo=;
	b=BNqnkM7DL8PHAvoJucbsNnzyN67Xqv3vw1XSqrpkP1Wp9YjQY4tN0jdVh2O7osNMJeG5Aw
	HbasXwbwQngKO6KQyOahNUFA2dVEFk8GQj48Uwgg+YoM1jylHXugFjPYuFMSzEVSnktN/L
	I5bNGYZQFOnS6xXdKD1ptxClT2j8f4sGj+Lr6deYmvsznRyiqLwtIVu2QsdfghvB5Rg493
	+8YPecnqp0FJdfUn1sez8dAbku1P06TJxMXwf5EqFd7BtVFqSbYNgI6b4VtYZaLujWuuuj
	8SJPi8ECG2bqwlq+AYAG5XSl+lO2oiBwQ5u5M+mEefUQLaR0VtWysla/9zFDfg==
From: Herve Codina <herve.codina@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Lizhi Hou <lizhi.hou@amd.com>
Cc: Max Zhen <max.zhen@amd.com>,
	Sonal Santan <sonal.santan@amd.com>,
	Stefano Stabellini <stefano.stabellini@xilinx.com>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 1/1] of: unittest: Fix test build on config without CONFIG_OF_ADDRESS
Date: Fri, 27 Oct 2023 12:24:37 +0200
Message-ID: <20231027102440.677773-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

of_address_to_resource() is not defined if !CONFIG_OF_ADDRESS.

Return early in of_unittest_check_addr() to avoid the
of_address_to_resource() usage.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202310271513.8MUErCK4-lkp@intel.com/
Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
Rob,

This fixes a patch you already applied from my series
https://lore.kernel.org/all/20231017110221.189299-1-herve.codina@bootlin.com/

I don't know if it's too late or not but maybe you can squash this fix patch.

My apologies for this issue.

Hervé

 drivers/of/unittest.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index ffbecd349899..e9e90e96600e 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1201,6 +1201,9 @@ static void __init of_unittest_check_addr(const char *node_path,
 	unsigned int count;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_OF_ADDRESS))
+		return;
+
 	np = of_find_node_by_path(node_path);
 	if (!np) {
 		pr_err("missing testcase data (%s)\n", node_path);
-- 
2.41.0


