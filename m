Return-Path: <devicetree+bounces-313094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HbqpE0nFMmow5QUAu9opvQ
	(envelope-from <devicetree+bounces-313094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 18:03:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD40F69B373
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 18:03:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="XXe/tlVL";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313094-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313094-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1E8030CF3B2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B544968F2;
	Wed, 17 Jun 2026 16:02:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605C4481642;
	Wed, 17 Jun 2026 16:02:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781712157; cv=none; b=hZgW9wbMox0Ui6W+hl+LGrbh94FARImvokGK218vtOv3ezftDjA8wYHXYtbPKlfefUphpcY75Wdy3TN3zJAfFmp3EpqYjRsgfvOjgtI61MC/Ii30pZHTvuOxquR2EJcS1YmgnySW/vqHSehIa2Q6Gv1V7M43t7ZoMM0aoRpWhCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781712157; c=relaxed/simple;
	bh=v8HDwt+n7/b/jRVoPHxCigecNb5QSzrJ40vrmsyP7II=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jBHzdouTmvancZzym7nHFbKo1uw53ye5R7L3cwRSyIY6YXh2ud/5tBeZ6+fP36FrGDY+ZB7Xe7642uGAaqgjPW8oGxmH/+z3r8FIlFaYA3IziMCXl8yfuVQ5lf1Onu7mU2gqk/NA8kcHtUBIeiGwlOd5mtHIJZUIJwaIDe9qrC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXe/tlVL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 104221F00A3A;
	Wed, 17 Jun 2026 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781712143;
	bh=/LoVxtRj0R52dH4uIgoFPmFgovVaGxwYo6wbRTBUqMY=;
	h=From:Subject:Date:To:Cc;
	b=XXe/tlVLGN5R4COOiN6tKPFOC+eXChWcr5VVkPRyxH3H09bWnMWEld4fdaI9frQWO
	 R+uGHwWlV5AOoxfDyXtjUGIkR/OPEwQb5PiWB08+4tnea6LpUxu5BvFd7zmW42iFAm
	 eJ6Fy8KjlrOZIm5dJwoFJ84j2Bz3rBGCIdRQKMRpze9p1ns1/RLlQegC72dVlW4YRg
	 M5GvQz/qE35vvdDSpQAuvWNoQ+ZO5ezkKtdtyxx4/nUqen6LPJt9u25zHgOL89uVD9
	 D+ftTA/Q4XcoQdYfrAexepDjFySqTGm/YXTCGHKNpWrxdIDb5byRudMFC0lvcZTsL3
	 qckSJrYo/XKBw==
From: Thierry Reding <thierry.reding@kernel.org>
Subject: [PATCH v7 0/4] PCI: tegra: Add Tegra264 support
Date: Wed, 17 Jun 2026 18:01:27 +0200
Message-Id: <20260617-tegra264-pcie-v7-0-eae7ae964629@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4XQTW6DMBAF4KtEXtfIM/7DXeUeVRcGD8RtA5Ghq
 FHE3WvCgrQssrH8pPneSHNjA6VIA3s93FiiKQ6x73KwLwdWn3zXEo8hZ4YCjVAC+Uht8mgUv9S
 ROEnhK0IZvLAsm0uiJv7c+97e1zx8Vx9Uj0vJMnGKw9in633hBMvc2i3BgREAokDIf6048PEUK
 aVrkSjErj1+Uuroq+hTy5buCR90flErJQvUFhyK51o+agNSl1oXaJ0G5Z5rten9VSbFBUcgJHC
 utFQeuymG6Iu6P69cb1yj+c915qXyJcjKWRfsjpuNm/12kzmFqm689bZs6A+f5/kX+oSZRfUBA
 AA=
X-Change-ID: 20260402-tegra264-pcie-e30abe23da07
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, 
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 Michal Simek <michal.simek@amd.com>, Kevin Xie <kevin.xie@starfivetech.com>, 
 Thierry Reding <thierry.reding@kernel.org>, Aksh Garg <a-garg7@ti.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Thierry Reding <treding@nvidia.com>, 
 Manikanta Maddireddy <mmaddireddy@nvidia.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3378; i=treding@nvidia.com;
 h=from:subject:message-id; bh=v8HDwt+n7/b/jRVoPHxCigecNb5QSzrJ40vrmsyP7II=;
 b=owEBbQKS/ZANAwAKAd0jrNd/PrOhAcsmYgBqMsUHM/q1k2bU6WAMeyf09xac1kKbw4GNkUjZ9
 vCax0zGR52JAjMEAAEKAB0WIQSI6sMIAUnM98CNyJ/dI6zXfz6zoQUCajLFBwAKCRDdI6zXfz6z
 obIVD/9ZgYXZfy+uYDPoZiuookvsphjG36+pVXEU3A4nlOcUkn2mHC2e9XtI44H/41WXOAhOGs2
 NozQa97aQY+gGFoi4U4BraVhkKA/ezmsDK4vYSp0fXbBbGSaRyGqRfLrb8lw+Bqz6t3ekBuPVxS
 DSQspt1rMz0jpsTJ3DFBV1ag5ZBhCNqb3Y1w1n6dQSbQa1TL/9aq53xW1txYxx7L8rlWxvkJYey
 pvPyFMckNRKvIfFxR7grQwQQ1gdZjZ9t9/t+MpXwiuXRkRttrad+qgFP9DvCMxW8oW+3E1AkmtQ
 YO8BIJmf9HpdmF6xNfUurQg5ZRCtmsLHiuh/smDkQdAoqIFtKoPbO+6wn4qTxFAkIYNjOMjfk2t
 OhmhV2cz1HXw+JrcZpuD31XGPGn8gIdNhj1cYtkAVx8EO5VR+RoiTsVxsAMb4ip5SKAZcemKMC0
 f6kN2bmKVzSNRPR47x1dLmUhXNYneVLsLJsUGvKsuBxsEUZ6Z7w2JKVIHX3JdY2dJHnk4X0o9Q1
 4QHoPVXsBXsWkLUV7Qm2A6db5JdYDpQ8fEFdUQ+x3pnEkwplrngKoYVFXuOU7eYaJqQUrFcXtaq
 FDP4sSBK1mitCIIoDow38JLNbjYZttaerldSJ4QFLGtPfRLHEH1fN6i/8cb8xT9dH7Ebk7/Gyhy
 jfUdxN8KSX1PdZQ==
X-Developer-Key: i=treding@nvidia.com; a=openpgp;
 fpr=88EAC3080149CCF7C08DC89FDD23ACD77F3EB3A1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:jonathanh@nvidia.com,m:m.karthikeyan@mobiveil.co.in,m:Zhiqiang.Hou@nxp.com,m:thomas.petazzoni@bootlin.com,m:pali@kernel.org,m:michal.simek@amd.com,m:kevin.xie@starfivetech.com,m:thierry.reding@kernel.org,m:a-garg7@ti.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:treding@nvidia.com,m:mmaddireddy@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[google.com,kernel.org,gmail.com,nvidia.com,mobiveil.co.in,nxp.com,bootlin.com,amd.com,starfivetech.com,ti.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313094-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,msgid.link:url,vger.kernel.org:from_smtp,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD40F69B373

Hi,

this series adds support for the PCIe controllers found on the Tegra264
SoC. There are six instances, one of which is for internal purposes only
and the other five are general purpose.

The first patch tweaks the DT bindings slightly to avoid new DT compiler
warnings that slipped through because they are now disabled by default
(-Wno-unit_address_vs_reg).

Before adding the driver in patch 3, patch 2 introduces some new common
wait times for PCIe and unifies the way that drivers use them. Finally,
patch 4 reorders the reg and reg-names property entries to match the
bindings changes from patch 1.

All of the prerequisites were merged in v7.1-rc1, so this can be applied
to the PCI tree directly. Optionally I can also pick up patch 4 into the
Tegra tree, but there should be no conflicts, so feel free to pick this
up with the rest.

Thanks,
Thierry

Changes in v7:
- fix build dependency on PCI_ECAM
- remove pre-silicon support code
- Link to v6: https://patch.msgid.link/20260602-tegra264-pcie-v6-0-edbcfa7a78fe@nvidia.com

Changes in v6:
- address review comments from Sashiko
- rebase onto v7.1-rc1, adjust DT bindings patch accordingly
- Link to v5: https://patch.msgid.link/20260526-tegra264-pcie-v5-0-84a813b979d7@nvidia.com

Changes in v5:
- address review comments for the PCI driver patch
- Link to v4: https://patch.msgid.link/20260402-tegra264-pcie-v4-0-21e2e19987e8@nvidia.com

Changes in v4:
- strip out dependencies that are going in through the ARM SoC tree
- revert bindings to oneOf construct so that we don't produce new DTC
  warnings
- Link to v3: https://patch.msgid.link/20260326135855.2795149-1-thierry.reding@kernel.org

Changes in v3:
- integrate PCI standard wait times patch into the series to maintain
  bisectability
- fix review comments from Mikko
- Link to v2: https://patch.msgid.link/20260320225443.2571920-1-thierry.reding@kernel.org

Changes in v2:
- fix an issue with sanity-checking disabled BARs
- address review comments
- Link to v1: https://patch.msgid.link/20260319160110.2131954-1-thierry.reding@kernel.org

Thanks,
Thierry

---
Thierry Reding (4):
      dt-bindings: pci: Strictly distinguish C0 from C1-C5
      PCI: Use standard wait times for PCIe link monitoring
      PCI: tegra: Add Tegra264 support
      arm64: tegra: Reorder reg and reg-names to match bindings

 .../bindings/pci/nvidia,tegra264-pcie.yaml         |  75 ++-
 arch/arm64/boot/dts/nvidia/tegra264.dtsi           |  48 +-
 drivers/pci/controller/Kconfig                     |  10 +-
 drivers/pci/controller/Makefile                    |   1 +
 .../controller/cadence/pcie-cadence-host-common.c  |   6 +-
 .../pci/controller/cadence/pcie-cadence-lga-regs.h |   5 -
 drivers/pci/controller/mobiveil/pcie-mobiveil.c    |   4 +-
 drivers/pci/controller/mobiveil/pcie-mobiveil.h    |   5 -
 drivers/pci/controller/pci-aardvark.c              |   7 +-
 drivers/pci/controller/pcie-tegra264.c             | 538 +++++++++++++++++++++
 drivers/pci/controller/pcie-xilinx-nwl.c           |   9 +-
 drivers/pci/controller/plda/pcie-starfive.c        |   9 +-
 12 files changed, 634 insertions(+), 83 deletions(-)
---
base-commit: 8f5b04d01f6fbbb5537a0979182acf820766660d
change-id: 20260402-tegra264-pcie-e30abe23da07

Best regards,
--  
Thierry Reding <treding@nvidia.com>


