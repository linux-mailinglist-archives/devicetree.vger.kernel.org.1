Return-Path: <devicetree+bounces-95827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D3595B6D9
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7B19B254B1
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 13:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88FB61CB30B;
	Thu, 22 Aug 2024 13:32:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4921C9DC6
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 13:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333553; cv=none; b=V2Mt/GjyHtu5/mhjOZY7Up5VVpZZvmTPOKdG42rEHaB7BRTPDNexoM7QSc9Q/w4fFkOeWzRmU5CnBgbYjuy+B+q+Bpuo9tzFSTLJ59xmia39VLDZUKGzKUHimU/HpOw5fFglU0QJKhGS6TIFTi971my5YNcKFMhy+ZQV1lMaov8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333553; c=relaxed/simple;
	bh=T6zBpNngbSptJI3YAcqQUUP/MNzWMbP+8GYLKei6XkE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VsJWaEixXRVL2tLxt3NqJWxL1Sv6RcUwoFU6dCGLl4QQeRfH7a1k0kgxTrpzGD8vcnYCmFRELLQzCCTk3JlHJ22gM+suci7BwLLRX1PmjsGMOHOMcmLLEL275V5S/r2rBPW5cpNQ1gomy+vr+uET/Sm2qZHv6ADuw8NZbjc+g50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 07F1B2602F0;
	Thu, 22 Aug 2024 15:32:24 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id xmkMRkxh2gQE; Thu, 22 Aug 2024 15:32:21 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id A899726018D;
	Thu, 22 Aug 2024 15:32:20 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v4 0/8] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 22 Aug 2024 15:32:04 +0200
Message-Id: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANQ9x2YC/43OTW7DIBAF4KtErDvWAJbtdJV7VF3AeJzQUnDAc
 f7ku5cki7abKsv3NPreXEXm5DiL19VVJJ5ddjGUUL+sBO1M2DK4vmShUNXYKYShnIfen9kzQTA
 hjgRTA37KgEht03akbd+KAoyJB3e642/vj5x4fygb00+5c3mK6Xx/YJa39qmtWYKE3kjVatKMH
 W8+Dvny6fjo6FJR/KpGL27+rH6b8l9TAQKj1J21ErFWG++CSbGKafuw9POWLpZmGsx63VjL+Md
 aluUbBM8IgnoBAAA=
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0

This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
(2301) version of a board and LTS (2310) version.

This series creates common DTSI for both boards and then separate
NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
and T6-LTS gets USB20 section.

Then set of changes for both versions are done:

- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (not tested)
- enable SPI flash (present on LTS, optional on non-LTS)
- enable Mask Rom button as input device

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
Changes in v4:
- added Acked-by to dt-bindings patch
- create common dtsi for both board versions
- nanopc-t6.dts has minipcie items
- nanopc-t6-lts.dts has usb 2.0 host enablement
- Link to v3: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org

Changes in v3:
- create separate NanoPC-T6 LTS devicetree as suggested
- Link to v2: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org

Changes in v2:
- merged changes into NanoPC-T6 dts file
- add SPI flash pinctl for SPI M1
- enable SPI on NanoPC-T6 LTS
- enable USB-C port (one orientation only)
- enable Mali GPI
- enable IR receiver (not tested)
- Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl

---
Marcin Juszkiewicz (8):
      arm64: dts: rockchip: define pinctl for SPI M1
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6
      arm64: dts: rockchip: add Mask Rom key on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-base-pinctrl.dtsi     |  17 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
 ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 136 ++-
 6 files changed, 206 insertions(+), 925 deletions(-)
---
base-commit: 6e4436539ae182dc86d57d13849862bcafaa4709
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


