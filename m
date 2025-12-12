Return-Path: <devicetree+bounces-246203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E78CB9DF7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 642B7300645A
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30552550DD;
	Fri, 12 Dec 2025 21:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="KCWinTeD"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3ED20E005;
	Fri, 12 Dec 2025 21:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765574450; cv=none; b=gK9OSQZiox4yPCjELZW/kIUWALqJOdmqRjrL98VaKgonmHqzgR7ptvHmuVoNRiRa7pzCvyrdpUjb13+6GJCMgsfYT/pmMi6yBkKgKBddksgm7H0XyHjRXkQsGP7TwOycv4GIL5/p9mD2zPAoL5bckWjGU4hOvcV54CfW5luyni4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765574450; c=relaxed/simple;
	bh=iyG1frtzWpNnmYITd4bc+SfdwI9pBuvCnks24U8AKUM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ODg0aXDKwT73RkGBV96vGZmswjLN1nb+GpaxPB+3XKSivoxj/vgVKBSC8cgR1dnhOHaJdsV5ckzXLHptnxttZcfKV9PMtzmW0VNDCpIibr1rSTh3MSvN6ihmo7GzrzA5P4H6hvA5utrieFQRagpie2rJnZyip79gdSbBvmtxJ2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=KCWinTeD; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765574405;
	bh=WQDdYwNv2snvRGevd9vz/rtNBkJTH/PSOizUMnJriB8=;
	h=From:To:Cc:Subject:Date:From;
	b=KCWinTeDqTI5SGpmD6CRi0NDayJtht3TxcIEYSUZEbWnPAUeL+NUbR6eHHxAfC2o8
	 5hMAyH+WNrwhyyNiPlNn0rRV7YOiKzz7BfR1JfAuqR+SamZhfhQlfM5kOqcsSVOhid
	 eY5QLN9ARapYNOLNVi3743vAm4A/i6d4pHMC/jU8cBDlhr7iBXd9Do399KK9FVrBsm
	 AvOvIRHvhEb+tDU0lQodK8DGjXd3bGRfSpX4AkTh3qaB9BReJNtoVLj3NNzGaPL3zB
	 z37yOAn5Mqk89yTsCY+Ya3HiaUIaYKda6EZVfUursQOZg/dJ/xZOZncktND4DFWTRs
	 PTMfx60wCqNVA==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id C96F0B2213EF;
	Fri, 12 Dec 2025 22:20:03 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>
Subject: [PATCH v2 0/3] riscv: dts: starfive: Append starfive,jh7110 compatible to VisionFive 2 Lite
Date: Fri, 12 Dec 2025 13:19:17 -0800
Message-ID: <20251212211934.135602-1-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Append "starfive,jh7110" compatible to VisionFive 2 Lite and VisionFive 2
Lite eMMC in the least-compatible end of the list.

Appending "starfive,jh7110" reduces the number of compatible strings to
check in the OpenSBI platform driver. JH-7110S SoC on these boards is the same
as JH-7110 SoC however rated for thermal, voltage, and frequency
characteristics for a maximum of 1.25GHz operation.

Link to previous discussion suggesting this change:
https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Changes since v1:
- add "starfive,jh7110" to dt-binding
- revise commit message
- split dts patch to patch-per-fix
- add cover letter

E Shattow (3):
  dt-bindings: riscv: starfive: Append JH-7110 SoC compatible to
    VisionFive 2 Lite board
  riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2
    Lite board
  riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2
    Lite eMMC board

 Documentation/devicetree/bindings/riscv/starfive.yaml           | 1 +
 .../dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts     | 2 +-
 .../boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts     | 2 +-
 3 files changed, 3 insertions(+), 2 deletions(-)


base-commit: 187d0801404f415f22c0b31531982c7ea97fa341
-- 
2.50.0


