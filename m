Return-Path: <devicetree+bounces-281246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEiQJuY9xWn88gQAu9opvQ
	(envelope-from <devicetree+bounces-281246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 15:08:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 667653368D1
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 15:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE15230CCC62
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 14:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9243254BB;
	Thu, 26 Mar 2026 13:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frxCpEaj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67362309EE7;
	Thu, 26 Mar 2026 13:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774533538; cv=none; b=YejZzIcNleUciiI6mL+IrY+PPbW7WjLRIkfkLadNp5NXlalvYeFns8rQb1aVGPNPRIblFRz0grPJZDMb5hnM5IpLp8eVkFToLJ8euPV1EXVxENPVROvAXnFLvhi428ugsvsYg1tHKjDvBuWecBVj1T8GDmwQrHHSIxS+NRulwis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774533538; c=relaxed/simple;
	bh=3mcsVN7hQFeM4+9MxyY9r/WxHjo4nsRmsn1UCwDypGU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sbVVf69jjAcaUAxc44DF4x+0OQ0oNHzzti8mhOqOspgh/PpI9u3/9/k5R1rxL+88Inpj9PvrDTtz1bl1q9Tx3aUj5O46MXK1tTOAdY3ZYEZr7B4IFn2zui5sO3k+/qHgk3tfuaTtuorquoQ0vlGq9Z1PvdwWYS9RvSF4Nxmm7Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frxCpEaj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF32C116C6;
	Thu, 26 Mar 2026 13:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774533538;
	bh=3mcsVN7hQFeM4+9MxyY9r/WxHjo4nsRmsn1UCwDypGU=;
	h=From:To:Cc:Subject:Date:From;
	b=frxCpEajzDvRHsjz79Ytt/M+zQz0cMTWofCWcAnHEqapKf+466vaPbCh9SJ7lhLqN
	 F9rpxDdPYEflsxf9Vyn1Drjyx1cVesBwhGmFEK4K9/mfNUBnUmYzPQ6H2IUWq85OlU
	 799TM7IUoeRZhbMVKTwEvPzdp8jZqJObTGLSAb5GVRr6OjG17HX5FwbcZHRUTNRxYk
	 P2r1pYVLvULS7qYRlO1DEKvBnJpGiBJGifHIe4jDV3TOKJ+1Pg6qQUqQVnPIPbnRBj
	 a/FSH5DBX/CDVLFuwyAABbb/PdgCAF52wyiLY7HKJBqpkLZ2PDFAPUUw2l0MsAVyBg
	 xOXEeQPUzclTQ==
From: Thierry Reding <thierry.reding@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jon Hunter <jonathanh@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3 0/6] PCI: tegra: Add Tegra264 support
Date: Thu, 26 Mar 2026 14:58:47 +0100
Message-ID: <20260326135855.2795149-1-thierry.reding@kernel.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281246-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 667653368D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Thierry Reding <treding@nvidia.com>

Hi,

this series adds support for the PCIe controllers found on the Tegra264
SoC. There are six instances, one of which is for internal purposes only
and the other five are general purpose.

The first two patches in the series add the BPMP support needed to power
up/down the PCI link. Patch 3 contains the device tree bindings for the
PCIe controller. Before adding the driver in patch 5, patch 4 introduces
some new common wait times for PCIe and unifies the way that drivers use
them. Finally, patch 6 adds DT nodes for the controllers found on the
Tegra264 SoC.

Regarding merging these patches, I think ideally I'd pick up the PCI
driver patch into the Tegra tree because there is a build dependency on
patches 1 and 2. Furthermore, patch 1 depends on another patch that's
already in the Tegra tree, and there will be conflicts if it is merged
in another tree. Alternatively I can provide a stable branch with
patches 1 and 2 for the PCI maintainers to pull in.

Let me know how you'd like to handle this.

Changes in v3:
- integrate PCI standard wait times patch into the series to maintain
  bisectability
- fix review comments from Mikko

Changes in v2:
- fix an issue with sanity-checking disabled BARs
- address review comments

Thanks,
Thierry

Thierry Reding (6):
  soc/tegra: Update BPMP ABI header
  firmware: tegra: bpmp: Add tegra_bpmp_get_with_id() function
  dt-bindings: pci: Document the NVIDIA Tegra264 PCIe controller
  PCI: Use standard wait times for PCIe link monitoring
  PCI: tegra: Add Tegra264 support
  arm64: tegra: Add PCI controllers on Tegra264

 .../bindings/pci/nvidia,tegra264-pcie.yaml    |  149 +
 arch/arm64/boot/dts/nvidia/tegra264.dtsi      |  248 +-
 drivers/firmware/tegra/bpmp.c                 |   34 +
 drivers/pci/controller/Kconfig                |   10 +-
 drivers/pci/controller/Makefile               |    1 +
 .../cadence/pcie-cadence-host-common.c        |    6 +-
 .../cadence/pcie-cadence-lga-regs.h           |    5 -
 .../pci/controller/mobiveil/pcie-mobiveil.c   |    4 +-
 .../pci/controller/mobiveil/pcie-mobiveil.h   |    5 -
 drivers/pci/controller/pci-aardvark.c         |    7 +-
 drivers/pci/controller/pcie-tegra264.c        |  522 ++
 drivers/pci/controller/pcie-xilinx-nwl.c      |    9 +-
 drivers/pci/controller/plda/pcie-starfive.c   |    9 +-
 drivers/pci/pci.h                             |    2 +
 include/soc/tegra/bpmp-abi.h                  | 4565 +++++++++++++----
 include/soc/tegra/bpmp.h                      |    8 +
 16 files changed, 4629 insertions(+), 955 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-tegra264.c

-- 
2.52.0


