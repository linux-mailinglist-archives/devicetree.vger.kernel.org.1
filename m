Return-Path: <devicetree+bounces-252330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C22B6CFD913
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24A983043F27
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11352308F3A;
	Wed,  7 Jan 2026 12:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DCaA+9pw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378B71DA55
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767787558; cv=none; b=hpBPBjCms0AEMTZYvaQzE8ydsjbRDdKtglUJZ7Us4AGl23+kp1pP3anio/8vMPvbgwE2/XMrUSchIyfDkZp3ilZ6ucord2KmRDGWYR6MZHIKS93jfjdQKHdwyJ8nyNDWHbNWxp5Gi41ZF+2XCuRo8lSdjiwJdBkWgRVxVn0QCis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767787558; c=relaxed/simple;
	bh=Eo2jae2+EaOsg4QRLr6rm46ZFCeUQs8342559mK0nzU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=o69pD3jb5c9r6iNHLNKpGLAqN3DkJYF3pODPO+JydD6zNCLBvXb95Pqoyu130lSdpCG2GtaFr3OMja0HUjO6Bw8KXH/Z8v5YdduO6lwyPVdHIS7/ErjZ0JmezC52sMIMttsZXXXST6DerlX5gLEu686+9MUUAokyyI+lYLIH/O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=DCaA+9pw; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1767787544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qIBZpkr3zGOGkYn0Srs3lb3/uwtfOhZkPU6oiwFvGgQ=;
	b=DCaA+9pwAtKAxIIvlt3COCRV0Zbl+tvj00ZDBjI2qcUA9R9dRd5Q9YThMTr+PpfMpML39D
	Lb6HMKHgbWzyD9GzgWUakZ7u6PdZCej9oHjyCUkIgBPXdo93O+cGJ/oYo2X7dO7d9MeHhB
	kgxgwFFrk5PJHv4JpxZF//pqt1VEOHM=
From: Ze Huang <huang.ze@linux.dev>
Subject: [PATCH v2 0/3] riscv: dts: spacemit: Add USB 3.0 support for K1
Date: Wed, 07 Jan 2026 20:05:29 +0800
Message-Id: <20260107-k1-usb3dts-v2-v2-0-e659b0f8fe1a@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAlMXmkC/yXMywqDMBCF4VeRWTcwGdtM9FWKi1zbUNQ2USmI7
 95Ql9+B8+9QQk6hQN/skMOWSpqnCro04J5megSRfDUQkkKJLF5SrMW2filiI0GEDqNhRjJQP+8
 cYvr+e/fhdA6ftWaXcwRrShBuHse09M01Knaa2XSoOqfQRytZMbY6WnOTGq2T5JWG4Th+pRoK2
 KsAAAA=
X-Change-ID: 20260107-k1-usb3dts-v2-220c0fa7702a
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ze Huang <huang.ze@linux.dev>, Aurelien Jarno <aurelien@aurel32.net>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767787540; l=1166;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=Eo2jae2+EaOsg4QRLr6rm46ZFCeUQs8342559mK0nzU=;
 b=L06nVBpo3SmSV4k5dBFhCbzGFMO4igTy7hGMMXmNxyzqsIUm1covIT4CWlJAQ82meoEHMfVqX
 ngIqUxUEU0NDxsDNbWR281VCVDgs7dDOj/qPHOYDUfu6tfHXvMZzqzX
X-Developer-Key: i=huang.ze@linux.dev; a=ed25519;
 pk=Kzc4PMu5PTo8eZZQ5xmTNL9jeXcQ9Wml0cs+vlQpBkg=
X-Migadu-Flow: FLOW_OUT

This patch series enables the DWC3 USB 3.0 host controller on the
Spacemit K1 SoC and enables it for the Banana Pi F3 board.

For testing, the following kernel configurations should be enabled:

CONFIG_PHY_SPACEMIT_K1_USB2=y
CONFIG_PHY_SPACEMIT_K1_PCIE=y
CONFIG_USB_DWC3=y
CONFIG_USB_ONBOARD_DEV=y

This series is based on the spacemit k1/for-next branch.

Link: https://github.com/spacemit-com/linux

Signed-off-by: Ze Huang <huang.ze@linux.dev>
---
Changes in v2:
- rebased on spacemit k1/for-next
- Link to v1: https://lore.kernel.org/all/20251101-k1-usb3dts-v1-0-dd2660e5740b@linux.dev/

---
Ze Huang (3):
      riscv: dts: spacemit: Add USB2 PHY node for K1
      riscv: dts: spacemit: Add DWC3 USB 3.0 controller node for K1
      riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3

 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 48 +++++++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 32 +++++++++++++++++
 2 files changed, 80 insertions(+)
---
base-commit: 4f67c877a9069c60dfb1767038fba5180bc12d68
change-id: 20260107-k1-usb3dts-v2-220c0fa7702a

Best regards,
-- 
Ze Huang <huang.ze@linux.dev>


