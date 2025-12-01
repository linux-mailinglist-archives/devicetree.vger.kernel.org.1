Return-Path: <devicetree+bounces-243229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD93C95C03
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 07:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D538A4E0FEF
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 06:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFECE233721;
	Mon,  1 Dec 2025 06:08:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0457A229B2A;
	Mon,  1 Dec 2025 06:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=206.189.21.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764569304; cv=none; b=fHDx0gbzr2KkZX6wwuVNwR58f8RPMYTu4rPBjdwA8zaCT7FYAzaAYO/tbi4U45D75lOnISQR+dm08+HLfhZLjVgmv/L/XVI6JLHtX0TqOcYEVcHRvm3YdPCClzb9UCKRBClR2Qz3PkD1DA9+TOSNvnm1KqjLB1mAhKt7C2vXRtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764569304; c=relaxed/simple;
	bh=53+1MZJBGn2PF7HMiXBUNqJUlWfCO65nDuD4NLl4F/M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=C4CVkYWyGN8gFE9m2Ixj31G4kVKMLr96AIS5j01snPmnDUIc93QFTPN+fNA0Rsvx+4EKYQ/Ey0Ub/cz5CQLtEPHy4W/9N+ySbYodtcg/UDtKHkSrq86Ll10AW9l4zyfrKwJBAtTjSzr9opznoRwbshfC4OXBCXX6BM3eaIymtH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=206.189.21.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgCX2q28MC1pASKAAA--.43009S2;
	Mon, 01 Dec 2025 14:08:01 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	p.zabel@pengutronix.de,
	neil.armstrong@linaro.org
Cc: ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com,
	linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v6 0/2] Add driver support for Eswin EIC7700 SoC SATA PHY
Date: Mon,  1 Dec 2025 14:07:37 +0800
Message-Id: <20251201060737.868-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgCX2q28MC1pASKAAA--.43009S2
X-Coremail-Antispam: 1UD129KBjvJXoW7trWkCF1rtw47GrWrAw43Wrg_yoW8Aw4Upa
	ykGFyrWr1ktr12qws3J3W09Fy3J3Z7JFWa9r4xX3W5WF15Zr95Za1fCa4YqFyxArZ7J345
	tFn09Fy7CFyUAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wrylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7sRidbbtUUUUU==
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/

Updates:
  v6 -> v5:
    - eswin,eic7700-ahci.yaml
      - Delete this file and it has already been applied in reply[1].
    - eswin,eic7700-sata-phy.yaml
      - Add clock and reset related properties.
    - phy-eic7700-sata.c
      - Map the io resource with platform_get_resource and devm_ioremap instead of
        devm_platform_ioremap_resource API. Because the address region of sata-phy falls
        into the region of hsp clock&reset which has been got by hsp clock&reset driver.
      - Use regmap_read_poll_timeout in wait_for_phy_ready to replace the while loop check.
      - Use devm_regmap_init_mmio and regmap_write to replace writel.
      - Adapt to the clock and reset driver framework, replacing the original readl and writel.
        Because we are implementing the HSP layer clock and reset drivers, the corresponding
        clock and reset registers can be registered into the driver framework. And I have tested
        on the Sifive HiFive Premier P550 board.
    - Link to v5: https://lore.kernel.org/lkml/20250930083754.15-1-luyulin@eswincomputing.com/

[1] https://lore.kernel.org/lkml/aOUCU28Jjfnk2bYm@ryzen/

Yulin Lu (2):
  dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  58 +++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 ++
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 211 ++++++++++++++++++
 6 files changed, 287 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
 create mode 100644 drivers/phy/eswin/Kconfig
 create mode 100644 drivers/phy/eswin/Makefile
 create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c

-- 
2.25.1


