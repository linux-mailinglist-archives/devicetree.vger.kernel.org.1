Return-Path: <devicetree+bounces-139574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A07A1639C
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 19:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC1E6164838
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 18:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEA441DFDA1;
	Sun, 19 Jan 2025 18:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="zhSPcrLM"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D401898EA
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 18:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737312269; cv=none; b=h8wuSfSWh5TFbYIINdTtEVZ/qzvKwsJxvRCjmYtKSjK41v7MZzIPLjMJQYS+/3N6JOaPBSq0tnW463yOm9Gh/E+DC0eMbPUVJygUuC26ek+Sqod1hbo7iMrFeLVSiRNwmXEN/QxLtjJL5FZ+k0ahP4C20dTE3Jd6vWYi7Rpj3jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737312269; c=relaxed/simple;
	bh=3Nx1x4rUhn0BOxrHWPI6gpRdJieVXNq6pV5/weJboic=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Sb3JwbWc5A5U4mN/P6//DGPVrxz37i3qVRbyZqYmYzodd3GXuDToIMdW1Qky1K8NaYrVZU2xlz8dZojlqp5r/dJWAnDkxiWGvwwZglCvmE6abi7wsP+f7HedsxdYvj6i1gwPtj7UQn23plR/+OaiW2ro5sX+RfUcdfyEx3idU8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=zhSPcrLM; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from terra.vega.svanheule.net (unknown [94.110.49.146])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 5FCF55A7E4B;
	Sun, 19 Jan 2025 19:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1737311689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=y/knckwelaT8aNo57HPLVZlLUD3WsgqE49L3o3AzMPI=;
	b=zhSPcrLMYzylIrZkXHSwRWnPUx29u3/+QNcxZ6P1yxpoNPrqMUyLzCuLGfPA6F3x4rqrj+
	7PJ1RyMM5sC3tykzXqFaEkh2vq8u/EviU1z+UQBZXxhutgUcV6DOAdfKjtzI4fQLB5X0Qs
	iHRpduGOdBo6OfmOT5c4Cr7uvCHbGJgrc3+BXj/74AzhLOqyyVzOcfmkBTgx55Y+5ojyPn
	AJiYzC9vq0ueexikpkZcMaATp1RJ5stTZmRkw7HnDkqdfmxL6Z1Rw7zAlqAMH2FcX0m/Hv
	iYAgv5LMxnXwII17+7Op1aCzC4XJ4aDUsQJD9bJbLQh6crcwiTCWBoIuUENRBQ==
From: Sander Vanheule <sander@svanheule.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Subject: [PATCH 0/9] mips: dts: Split Realtek devicetrees
Date: Sun, 19 Jan 2025 19:34:15 +0100
Message-ID: <20250119183424.259353-1-sander@svanheule.net>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series intends to clean up the base includes, shared between
hardware devicetrees. To get rid of some dtbs_check warnings, some cpu
clock prorerties are also modified.

To indicate why the split-up is required, the series concludes with
adding some CPU peripherals to rtl838x.dtsi, which are then used to add
a gpio-restart for the Cisco SG220-26P.

Sander Vanheule (9):
  mips: dts: realtek: Decouple RTL930x base DTSI
  mips: dts: realtek: Clean up CPU clocks
  mips: dts: realtek: Add address to SoC node name
  mips: dts: realtek: Fold rtl83xx into rtl838x
  mips: dts: realtek: Add SoC IRQ node for RTL838x
  mips: dts: realtek: Correct uart interrupt-parent
  mips: dts: realtek: Replace uart clock property
  mips: dts: realtek: Add RTL838x SoC peripherals
  mips: dts: realtek: Add restart to Cisco SG220-26P

 arch/mips/boot/dts/realtek/cisco_sg220-26.dts |  10 +-
 arch/mips/boot/dts/realtek/rtl838x.dtsi       | 111 +++++++++++++-
 arch/mips/boot/dts/realtek/rtl83xx.dtsi       |  59 --------
 arch/mips/boot/dts/realtek/rtl930x.dtsi       | 136 +++++++++++-------
 4 files changed, 202 insertions(+), 114 deletions(-)
 delete mode 100644 arch/mips/boot/dts/realtek/rtl83xx.dtsi

-- 
2.48.1


