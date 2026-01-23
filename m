Return-Path: <devicetree+bounces-258694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC+LOazhcmkyrAAAu9opvQ
	(envelope-from <devicetree+bounces-258694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:49:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 154BE6FCDD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B147F30008AB
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29004349B00;
	Fri, 23 Jan 2026 02:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmtyylji0my4xnjeumjiw.icoremail.net (zg8tmtyylji0my4xnjeumjiw.icoremail.net [162.243.161.220])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2EF23EA90;
	Fri, 23 Jan 2026 02:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.161.220
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769136549; cv=none; b=IS4bavupVJvXuX+9IiKdwvM6+meTS0HgyN7z3e8s2EMH3ftkxs/3MGeC9/Df9lvdhJ33GkWAFENxWTRgnyWZ7JmmMnYlBNE7tLhqIGSnmmwa0YjR68Yzdh6vDS2Q7Fm5bfs4A5LxeRqOwnEP9GLlWL7+kub0Jg0S0oY4hPcN79o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769136549; c=relaxed/simple;
	bh=w9mWKykQJ4yzKvptosDynxF/J3CNLYQ1jqPeKT1VyAw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=j+cNAHceB+iwjeS5n63MhvvC/+N4k8RI45h8Wxvm2voXDbZ+cwwWjSU7rE8x3ywkk6y5fYX1a2KZB8ulVZ9exM1eGjV0IVFJMcHDZ4HkTr3QDc+AhlmqIvko0ld4cgugsTJxcbNXy1n8e8UqV2wX4Kio4DPl/+U8047rhdy6mVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=162.243.161.220
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgAnmy154XJpZ+4EAA--.20110S2;
	Fri, 23 Jan 2026 10:48:27 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	fenglin@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>
Subject: [PATCH v8 0/2] Add driver support for Eswin EIC7700 SoC SATA PHY
Date: Fri, 23 Jan 2026 10:48:23 +0800
Message-Id: <20260123024823.1612-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgAnmy154XJpZ+4EAA--.20110S2
X-Coremail-Antispam: 1UD129KBjvJXoW3GrW8XryrAw1Utw1xurykXwb_yoWxurW8pa
	ykGryUGr1vqryIqan7Aa109FyIvan7JFW3ur4fJw17Zws8ZFnYyrsaka1Y9F9rA3ykK34Y
	qF4aqF98CFWUAFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9l14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
	JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I
	8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AK
	xVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcV
	AFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8I
	cIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
	4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUonmRUUUUU
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258694-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luyulin@eswincomputing.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[eswincomputing.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 154BE6FCDD
X-Rspamd-Action: no action

Updates:
  v8 -> v7:
    - eswin,eic7700-sata-phy.yaml
      - Add "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
        properties, because these parameters may vary across different
        circuit boards.
      - Delete reviewed-by tag of Krzysztof Kozlowski, because the tuning
        properties are introduced.
    - phy-eic7700-sata.c
      - Try to get SATA PHY transmitter amplitude and pre-emphasis signal
        eye diagram tuning parameters from dts instead of hardcoded values
        in the code. Because, these parameters may vary across different
        circuit boards. Define default tuning parameters and use it when
        these properties are not declared in dts.
      - Add a comment to explain the reason for mapping I/O resources with
        platform_get_resource and devm_ioremap instead of using the
        devm_platform_ioremap_resource API.
    - Link to v7: https://lore.kernel.org/lkml/20260106062944.1529-1-luyulin@eswincomputing.com/

  v7 -> v6:
    - phy-eic7700-sata.c
      - Rename PHY_READY_TIMEOUT to PLL_LOCK_TIMEOUT_US with value 1000.
      - Add macro PLL_LOCK_SLEEP_US set to 10.
      - Add "goto disable_clk" in the eic7700_sata_phy_init function.
      - Modify Copyright year from 2024 to 2026.
    - Link to v6: https://lore.kernel.org/lkml/20251201060737.868-1-luyulin@eswincomputing.com/

  v6 -> v5:
    - eswin,eic7700-ahci.yaml
      - Delete this file and it has already been applied in reply[1].
    - eswin,eic7700-sata-phy.yaml
      - Add clock and reset related properties.
    - phy-eic7700-sata.c
      - Map the io resource with platform_get_resource and devm_ioremap
        instead of devm_platform_ioremap_resource API. Because the address
        region of sata-phy falls into the region of hsp clock&reset which
        has been got by hsp clock&reset driver.
      - Use regmap_read_poll_timeout in wait_for_phy_ready to replace the
        while loop check.
      - Use devm_regmap_init_mmio and regmap_write to replace writel.
      - Adapt to the clock and reset driver framework, replacing the
        original readl and writel.
        Because we are implementing the HSP layer clock and reset drivers,
        the corresponding clock and reset registers can be registered into
        the driver framework. And I have tested on the Sifive HiFive
        Premier P550 board.
    - Link to v5: https://lore.kernel.org/lkml/20250930083754.15-1-luyulin@eswincomputing.com/

  v5 -> v4:
    - eswin,eic7700-ahci.yaml
      - Add "dt-bindings: ata:" prefix to the subject.
      - Wrap at 80 characters in the YAML description field.
    - Link to v4: https://lore.kernel.org/lkml/20250915125902.375-1-luyulin@eswincomputing.com/

  v4 -> v3:
    - eswin,eic7700-ahci.yaml
      - Fix grammatical errors in patch subject and commit message
      - Add an explanation in the commit message of patch 1 for retaining
        the "ports-implemented" field, which Rob Herring suggested to
        remove in the review comments on v2.
        Link to Rob Herring's review:
        https://lore.kernel.org/lkml/CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com/
        Link to my question and Niklas Cassel's reply:
        https://lore.kernel.org/lkml/aLBUC116MdJqDGIJ@flawful.org/
        In this reply, Niklas Cassel mentioned his view:
        If the ports-implemented register gets reset from
        ahci_platform_assert_rsts(), then it seems acceptable to
        retain the ports-implemented property in the device tree.
        This aligns with our design.
        Link to my reply:
        https://lore.kernel.org/lkml/4ab70c6a.8be.198f47da494.Coremail.luyulin@eswincomputing.com/
        Link to Niklas Cassel's question and my further explanation:
        https://lore.kernel.org/lkml/aLlYkZWBaI5Yz6fo@ryzen/
        https://lore.kernel.org/lkml/7206383a.d98.19918c22570.Coremail.luyulin@eswincomputing.com/
    - eswin,eic7700-sata-phy.yaml
      - Fix grammatical errors in patch subject and commit message
      - Adjust the position of reg in the properties and required arrays
      - Add reviewed-by tag of Krzysztof Kozlowski
    - phy-eic7700-sata.c
      - Correct the loop condition in wait_for_phy_ready() to use the
        current jiffies instead of the fixed start time.
      - Change the return value from -EFAULT to -ETIMEDOUT to correctly
        indicate a timeout condition.
      - Remove redundant clock disable handling in probe error path, as
        SATA_SYS_CLK_EN is managed in phy_init() and phy_exit().
      - Use dev_err_probe return in probe.
      - Reorder local variables to follow reverse Xmas tree order.
      - Wrap each line in the extended comments to 80 columns before
        splitting lines.
      - Adjust the position of `#include <linux/io.h>` for proper ordering.
    - Link to v3: https://lore.kernel.org/lkml/20250904063427.1954-1-luyulin@eswincomputing.com/

  v2 -> v3:
    - Use full name in "From" and "Signed-off-by" fields information
    - eswin,eic7700-ahci.yaml
      - Remove the introduction to the reg, interrupts, phys, and
        phy-names fields.
      - Modify the usage of the clocks field in the examples.
      - Correct the order of dt properties.
    - phy-eic7700-sata.c
      - Register operations use the GENMASK macro and FIELD_PREP instead
        of the original bit offset method, and add
        "#include <linux/bitfield.h>".
      - Modify some macro definition names.
      - Remove the redundant initialization assignments for "ret" and
        "val".
      - Delete ".suppress_bind_attrs = true".
      - Modify the driver name.
      - Add "#include <linux/io.h>" to fix the robot test issue.
    - Link to v2: https://lore.kernel.org/lkml/20250819134722.220-1-luyulin@eswincomputing.com/

  v2 -> v1:
    - Delete the original controller driver and use ahci_dwc.c instead.
    - Add eswin,eic7700-ahci.yaml
      - Correct the descriptions of reset, interrupt and other hardware
        resources for the sata controller on EIC7700 SoC.
      - The clocks for both sata controller and sata PHY are controlled
        via a register bit in the HSP bus and are not registered in the
        clock tree. Clock are managed within the PHY driver, therefore it
        is not described in this document.
      - Add $ref: snps,dwc-ahci-common.yaml#.
    - Add eswin,eic7700-sata-phy.yaml
      - Add this file to include the description of the PHY on EIC7700 SoC.
    - Add an eswin directory under the PHY driver path, and include the
      SATA PHY driver code for EIC7700 SoC.
    - Link to v1: https://lore.kernel.org/all/20250515085114.1692-1-hehuan1@eswincomputing.com/

Yulin Lu (2):
  dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
  phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver

 .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  96 ++++++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/eswin/Kconfig                     |  14 +
 drivers/phy/eswin/Makefile                    |   2 +
 drivers/phy/eswin/phy-eic7700-sata.c          | 273 ++++++++++++++++++
 6 files changed, 387 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
 create mode 100644 drivers/phy/eswin/Kconfig
 create mode 100644 drivers/phy/eswin/Makefile
 create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c

-- 
2.25.1


