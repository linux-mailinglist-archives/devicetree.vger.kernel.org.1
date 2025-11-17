Return-Path: <devicetree+bounces-239473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E640C6546E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 27DBA4EE457
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1FF2FFDE6;
	Mon, 17 Nov 2025 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFfOQCL0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746DC2F3C3D;
	Mon, 17 Nov 2025 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398412; cv=none; b=nVEpuaxhbVAGz66Gq+MJUrnqsdKqnatIAUTHNjMQfJ2bUXJ5Ijk58vmmKoHywzk9eURy0Ole3vUUwVBbWtuYpgQPPg0VAlsuzPTgi5FAtYeW74juxF1moXe8xKSy6BAje8ZiuUtQGxDvZx04rJeKviLvMWEyNSABDPlMGcRvSPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398412; c=relaxed/simple;
	bh=jirAepMGk643XDOW71/E/gpSvFkccHqAf75JsWUDiac=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SfFtVhaRdITEhtzv3eGP6S1QPuyKjR5CnWdZoK2fTcfiu78HmPoV+jtJwssD2xLiJOCUWLWIAVjA7/1VAi9XEDs9lAm0XODeV7dQ67q7pqzncC17HLptJh+TwFFZ1HA1H0LR0eJvzqJMU7/l0OS1L2K9tHR5dygLua7+JGWEpHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFfOQCL0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34ECFC19421;
	Mon, 17 Nov 2025 16:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763398411;
	bh=jirAepMGk643XDOW71/E/gpSvFkccHqAf75JsWUDiac=;
	h=From:To:Cc:Subject:Date:From;
	b=CFfOQCL0ZDcspG5JmJEPOLVtzFV1InfM+3qpaLc7ctTfsqsL+32Y0gQaip6AUruGu
	 rwsMlciHbWX8oVdn/N5ceXKpT1q5HaatAHyS5AtLk35yIcujVuPs5Apm9a4sUZI5hR
	 sdzqUMl6ILpZzz6BOWqPq+cTpQm5m7h+ZGzHIgs61ZBBTxwF5QvKu+Xe1nm+qit6A+
	 c1pXsiqJ3YFRLJ8qYQ0eRdGxPd5cVU0HNzvl+2BubvtjFHZumf5hiPGvHRVuipBts2
	 F4Z519Xa4mwpDjwMqFab0E/TWFOpDaDXHeB0xAJz7cUR1sQVCII3ICc0M17nsePPS9
	 TX1TJksIu5PSA==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/3] Add support for Microchip PIC64GX Curiosity Kit
Date: Mon, 17 Nov 2025 16:53:21 +0000
Message-ID: <20251117-paprika-tipping-e7bb3e211d6f@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=pwCT9CaX9KdSL1R9EJYAgsxDoGAzi1p14elOWIrNg0E=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSQf83aKnZGr7cMfesi7CDwPT2PbmGi2ou3N8z6z/vz 3XHvxw53VHKwiDGxSArpsiSeLuvRWr9H5cdzj1vYeawMoEMYeDiFICJvDvHyND4hIWveYLtH8s3 Xksdtp9+cpo5e8vTg4Gx+50YzYN7i1cyMlyxUIhP5Ntrsqzuy2Px7lK3eyu4t0reUS/9zv5Y6OZ Bd1YA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

v3 of Pierre-Henry's stuff from over a year ago:
https://lore.kernel.org/all/20240930095449.1813195-1-pierre-henry.moussay@microchip.com/
In it he said "This will be fix in a V3 coming in due time", and I guess
that due time was ~14 months.

I've cut out all the binding patches, to hopefully make their
application process more obvious to subsystem maintainers.
The only real difference in these patches is that I went off and implemented
the clock rework that I was asked for on v3, because it ended up being a
requirement for hwmon and pinctrl work on the platform, as well as
blocking this series (although it was obviously not a technical problem
with the v2 of this series).

CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org

Pierre-Henry Moussay (3):
  dt-bindings: riscv: microchip: document the PIC64GX curiosity kit
  riscv: dts: microchip: add pic64gx and its curiosity kit
  riscv: dts: microchip: remove POLARFIRE mention in Makefile

 .../devicetree/bindings/riscv/microchip.yaml  |   7 +-
 arch/riscv/boot/dts/microchip/Makefile        |  17 +-
 .../dts/microchip/pic64gx-curiosity-kit.dts   | 165 +++++
 .../boot/dts/microchip/pic64gx-pinctrl.dtsi   | 178 +++++
 arch/riscv/boot/dts/microchip/pic64gx.dtsi    | 630 ++++++++++++++++++
 5 files changed, 987 insertions(+), 10 deletions(-)
 create mode 100644 arch/riscv/boot/dts/microchip/pic64gx-curiosity-kit.dts
 create mode 100644 arch/riscv/boot/dts/microchip/pic64gx-pinctrl.dtsi
 create mode 100644 arch/riscv/boot/dts/microchip/pic64gx.dtsi

-- 
2.51.0


