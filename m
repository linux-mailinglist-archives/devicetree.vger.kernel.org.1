Return-Path: <devicetree+bounces-285086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNLIEilv1Gn6twcAu9opvQ
	(envelope-from <devicetree+bounces-285086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 04:42:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C9A3A92E1
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 04:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E9EF03005A87
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 02:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4937372EE3;
	Tue,  7 Apr 2026 02:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b="jJZY4Y0H"
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B25270540;
	Tue,  7 Apr 2026 02:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=218.76.62.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775529765; cv=none; b=T7lsjFfZM4Ou3Osafpo1reRbgQmdlMxo2pdyXiQ6NMaHX3QeY0MikGy7Vj6ikmMwza0nBE4VpRwLC+pwvxe3C1LrGMNJFCpSCqeqJwkqmxteA8zpnLYRczzxV5O8f0ku2e8MAERLoqZR/rfguglE+7JXXsOSeuSRX+NZ3ISUusw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775529765; c=relaxed/simple;
	bh=jgmH9MAIlGW+9LY5/UyxKfDb5yg/DiWH0mwXq8sOR7k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=if4czE9TUHMh6wJdM3g5kWJDhdjF/2afE/8qHtR/3Bc7129Mnatu1/BuiNdGwZI+DJMw04IomcAeKegMuux4h3YfI58mNI0WcbAK+TP6u/5umoMG/CeXaANPfUeZoXyH4mqPW2Ex6Lt3ceZtVxE/8Nkwo4idQadOH0rfy9Ouimc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=jJZY4Y0H; arc=none smtp.client-ip=218.76.62.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ultrarisc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:From:Subject:Date:Message-Id:
	MIME-Version:Content-Type:Content-Transfer-Encoding:To:Cc; bh=Pi
	OD5if298dAjR7lffL2+OuB1JlVL5oKWZXOfPZmCgc=; b=jJZY4Y0HDm0rC+3bVZ
	2wRrYDL5B7lIJTj8yNQjqUGzGNF064A4QCee52nomh2CTSchlpNfO6wqKnOc40dG
	gxkdCcXiSChW1bO9jXSkV/99X6zfL3JiY1o8TzBtksZ0ciRbj5FPMcrzRdBuHh8l
	/vJRoyRKMohLENNu2LuhGtBa0=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwDXEELwbtRpBZsBAA--.862S2;
	Tue, 07 Apr 2026 10:41:52 +0800 (CST)
From: Jia Wang <wangjia@ultrarisc.com>
Subject: [PATCH v2 0/4] riscv: Add PCIe support for UltraRISC DP1000 SoC
Date: Tue, 07 Apr 2026 10:40:51 +0800
Message-Id: <20260407-ultrarisc-pcie-v2-0-2aa2a19a7fb3@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALNu1GkC/12NQQ6CMBBFr0JmbU1pm8q48h6GBZZBxiiQFoiG9
 O4WjC5cvuT99xcI5JkCHLMFPM0cuO8SqF0Grq26KwmuE4OSykqdSzHdR195Dk4MjkkYNIjFwWq
 NCGk0eGr4uQXP5YfDdLmRG9fKarQcxt6/tsc5X71v3P7H51xIQY1CY6kmi8XpJ+xd/4AyxvgGw
 AGN58IAAAA=
X-Change-ID: 20260310-ultrarisc-pcie-494998763399
To: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
 Xincheng Zhang <zhangxincheng@ultrarisc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 Jia Wang <wangjia@ultrarisc.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775529665; l=2940;
 i=wangjia@ultrarisc.com; s=20260309; h=from:subject:message-id;
 bh=jgmH9MAIlGW+9LY5/UyxKfDb5yg/DiWH0mwXq8sOR7k=;
 b=c7R4gnETYMwOBI4tuFurKaz9H7e06t5LrCuuF5MBE7fCvOL9rBMtI3BTrLVrSrxhHzg4r3FNL
 iGRuZtRu2eGD9M8n85HDsm9ez2zPX+4eUWEW/rkUtwYwpqy25Z062P8
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=XvYkrelqJIIzobY7j+nIg8rsfv5kzaOzuc1UPhd087U=
X-CM-TRANSID:AQAAfwDXEELwbtRpBZsBAA--.862S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWw1ftr1rur47tr43JF1rCrg_yoW5Xw4Dpa
	98WF4fAF97Kr43GF4ft3WxuFySqF4kArW2gFsFgw17tF9xuryUX3sFga1avasrArn5Xw12
	kFWY9w1rGw47Za7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9l14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
	4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY1x0262kKe7AKxVW8ZVWrXwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I
	8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AK
	xVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcV
	AFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8I
	cIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
	4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjTRRBT5DUUUU
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQADEWnJ8zoANQAQsf
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,google.com,gmail.com,ultrarisc.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285086-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ultrarisc.com:dkim,ultrarisc.com:email,ultrarisc.com:mid]
X-Rspamd-Queue-Id: E9C9A3A92E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds PCIe controller support for the UltraRISC DP1000 SoC.
The DP1000 is an 8-core 64-bit RISC-V SoC based on UltraRISC CP100 cores,
supporting RV64GCBHX ISA with Hardware Virtualization and RISC-V H(v1.0)
Extension.

The PCIe controller is based on Synopsys DesignWare PCIe IP.
This series adds:
- Patch 1 adds the basic SoC family Kconfig support for UltraRISC platforms.
- Patch 2 adds the MAINTAINERS entry for the new driver.
- Patch 3 adds the device tree bindings documentation for the PCIe controller.
- Patch 4 introduces the PCIe host controller driver.

The patches have been tested on UltraRISC DP1000 development board with
various PCIe devices including NVMe SSDs and network cards, verifying
link establishment, enumeration, and basic data transfer.

Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
---
Changes in v2:
- Rebased onto v7.0-rc7.
- Patch 1:
   * Removed unnecessary 'depends' line.
   * Fixed help text indentation.
- Patch 2:
   * No changes.
- Patch 3:
   * Updated $ref to use 'snps,dw-pcie.yaml' as the base schema.
   * Add interrupts/interrupt-names (MSI + INTx).
   * Drop properties covered by generic DWC/PCI host bindings;
     update example accordingly.
   * Verified the schema passes 'make dt_binding_check' and 'yamllint'.
- Patch 4:
   * Update commit message.
   * Kconfig: switch PCIE_ULTRARISC to tristate; simplify help text.
   * Convert suspend/resume to dev_pm_ops and called
      `dw_pcie_suspend_noirq()` / `dw_pcie_resume_noirq()`.
   * Use FIELD_MODIFY(); adjust DWC header macros/comments.
   * Added empty `.pme_turn_off()` callback for DP1000 limitation.
   * Renamed link callback to `start_link`.
   * Switched to `module_platform_driver()`.
   * Formatting cleanups (headers order, spacing, variable naming,
     function names)
- Link to v1: https://patch.msgid.link/20260316-ultrarisc-pcie-v1-0-ef2946ede698@ultrarisc.com

---
Jia Wang (3):
      riscv: add UltraRISC SoC family Kconfig support
      MAINTAINERS: Add entry for the UltraRISC DP1000 PCIe controller driver and its DT binding
      dt-bindings: PCI: Add UltraRISC DP1000 PCIe controller

Xincheng Zhang (1):
      PCI: ultrarisc: Add UltraRISC DP1000 PCIe Root Complex driver

 .../bindings/pci/ultrarisc,dp1000-pcie.yaml        | 103 +++++++++++
 MAINTAINERS                                        |   8 +
 arch/riscv/Kconfig.socs                            |   9 +
 drivers/pci/controller/dwc/Kconfig                 |  12 ++
 drivers/pci/controller/dwc/Makefile                |   1 +
 drivers/pci/controller/dwc/pcie-designware.h       |  22 +++
 drivers/pci/controller/dwc/pcie-ultrarisc.c        | 188 +++++++++++++++++++++
 7 files changed, 343 insertions(+)
---
base-commit: bfe62a454542cfad3379f6ef5680b125f41e20f4
change-id: 20260310-ultrarisc-pcie-494998763399

Best regards,
--  
Jia Wang <wangjia@ultrarisc.com>


