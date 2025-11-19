Return-Path: <devicetree+bounces-240030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 997FDC6C7A9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6833B4ED45F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92732D5937;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1yoA/py"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9273C288C24;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520746; cv=none; b=GxXEOxQbR1fmOkWv9h4GLTFQeZphkcE1pYrimNIcYk0Cf7Lj3tHO+0cTiAlahNBK8pBfzQh52km+yx8x27ggKOMqH66fsfZ8LR+tldugqQ4fVixsLXsIwSnmsngzeQE7payiQFFlywJbQcM1T1ck0TQNHoSqQDZkDuyPlJ1li6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520746; c=relaxed/simple;
	bh=yGGQ82tynU/Cs1FoQ40nLIWp5JIbe9V7Pi5kfcfRrgs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EwBUj6kF3/FQ9pGzVb7lb+OCyG6eJUFlmT2VI16ba9bCrIvQDXF/1HAM1JQlx3Gupy9bAwVynfwAHt/gwRm+bcuu7Ix3iCvYD1KDLhpA0ILTdwM+42kXjcpv80/oqizDr3OK9QP0pjaZl6tvRAawCg1nbfWHAPkSzcTxcu7U3Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1yoA/py; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C335FC19422;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=yGGQ82tynU/Cs1FoQ40nLIWp5JIbe9V7Pi5kfcfRrgs=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Q1yoA/py3ZooYjbabzJ76j5SCOpLsvpaJSbhAuFr6t/a0OtAgOhr0xrZxoJKDlXiV
	 QVyU1s0V93JCOeNLQag7nbJuXuEGhF4Q/nn+WrTqrqsCt05Ni1ixBydISiWj7IKHP7
	 8UoNVF0BQM5fqhKDej5GJRFrpE37ZOnlLSmEDP4NMTZDvoBAtbC/tDK1+Rgm4bWIO3
	 JudQ2AlWVtajR/i0cUAzJHNXyURWJB0WwSZpXoULNiT5J2JrxVtoz5tqpOKlTn7dsX
	 SMIsTXArHV265YEgk/Iln2xZmddR6Ylifvt9Df5nSDWpRrSKDNMeIHpKF7gIQK9Uck
	 eRSAlMyYRcOBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F07CF256C;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH v3 0/5] soc: amlogic: Add new Amlogic SoCs info defines
Date: Wed, 19 Nov 2025 10:52:21 +0800
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOYwHWkC/23NwQqDMAyA4VeRnpfRtJvWnfYeY4faVg1MK+0oG
 +K7rwqDDYRc/kC+zCy6QC6ySzGz4BJF8mMOeSiY6fXYOSCbmwkuzogoIHoDNLYeYgmxymOBo1F
 ljWjEqWb5cAqupdeG3u65e4pPH97bj4Tr9stVe1xC4FDqRmndcGmNu+rh4TsyR+MHtoJJ/CJqF
 xEZkcqJRqJWyuI/sizLB//1zP77AAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763520742; l=1361;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=yGGQ82tynU/Cs1FoQ40nLIWp5JIbe9V7Pi5kfcfRrgs=;
 b=wLxX3Cp5piFHCG506GA5M5KyuVVL2l6yIS3U/E4ZXAwPWoBvmuxVQ8RNUjDCVjiFcpdjbfvXb
 M9qZKNzL1OfCetJ8p4xOwzCW5G/v9trDHPc3j5bZcR6khXkC8NuBAza
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

Add more Amlogic SoCs info defines, include S6, S7, S7D.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Changes in v3:
- s/Amlogi/Amlogic/ for patch [2/5].
- Link to v2: https://lore.kernel.org/r/20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com

Changes in v2:
- Restore the previous accidental deletion of A4.
- Link to v1: https://lore.kernel.org/r/20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com

---
Xianwei Zhao (5):
      dt-bindings: arm: amlogic: meson-gx-ao-secure: support more SoCs
      soc: amlogic: meson-gx-socinfo: add new SoCs id
      arm64: dts: amlogic: s6: add ao secure node
      arm64: dts: amlogic: s7: add ao secure node
      arm64: dts: amlogic: s7d: add ao secure node

 .../bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml          | 3 +++
 arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi                       | 8 ++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi                       | 8 ++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi                      | 8 ++++++++
 drivers/soc/amlogic/meson-gx-socinfo.c                            | 6 ++++++
 5 files changed, 33 insertions(+)
---
base-commit: 8d5b965a53bf6a4e2a2a028b75b2c7067cde5397
change-id: 20251112-soc-info-s6-s7-s7d-01c86911c249

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



