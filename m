Return-Path: <devicetree+bounces-233233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF883C20162
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:51:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF2BA1A23466
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03022354AC2;
	Thu, 30 Oct 2025 12:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NaEUqv6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay16-hz2.antispameurope.com (mx-relay16-hz2.antispameurope.com [83.246.65.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B424340D93
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.158
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828667; cv=pass; b=NK0hu6YAlfWF/Yb0PGPKIymlX2w7dTxo2fAxj3ZEjILswZuZnCA16VwIZbsEsV/ZC+KFQl0KdyzKM7ko1Rp+dvZjO8pDAHMX5N0W/RhlmeYs/Py+kwSjZjMFPlUV+e7FQ/jDUhBmq4JJbPNqfKaB33Dq3stHgHW4rRTR67CK6/s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828667; c=relaxed/simple;
	bh=f+RxHNX/PkgtqpUObsVvi3CaeeKjaEaIpLrIKPlMWiA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dMmAc8hv4zRRePx/ZUT20MeSbXQDPaI2x0aTs1Y2X3GnbaRgnss8ojhOcj9u0RyHekSBFTFnI+TbsvEruiHC8UC/NtnnKt9H1QEnN1ZIPI13yLB2D90TZ7JeTzZMktWO+p+UTWkD9xVjPuLcL6YKTiPd6OEhMo7r6mt//tpZC+M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NaEUqv6n; arc=pass smtp.client-ip=83.246.65.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate16-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=hEveejQ5LezW2cXHJne2TGfo1ZNO0O+jmUKcv/3d1g8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828597;
 b=U9XPP0hEUAQ9D5Mo74M9cYaveYEGoLrP1HQXYkd5cD9BdnfJiN8REFj/ckjbQTesc3Y8Wmlw
 m4SuKgj588nR2zDp5hQP8Js7sklMHQ0mvN4JRmF1RpWSNa1LZyATIh2fraHSX7kfIhbh/jaiDoC
 MHvKbcQhmN4NYQF3Vf04vw9btJn9KzOfOTb73vMnrtuD5monBqRHDDwWRw0Q6NO6P0/UKqpNZOU
 dnNXGbGslOZf7As1FWGl1Nf/xI9FAHeRc2ZzCTDm5g7zZ249/tjDZ45DnPoabI5m59zNr75o7kg
 OO+9ljuU1sNt3JS8iMQcrUSqTU2KHSHnQ0N9RjWaucOTQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828597;
 b=lJA9t4Lysfj02YhUR2yyNY6sYvwstFmtkGX2AZqc1VQfjRkkEmxkIGpzSXnBGcDRSsUC4H6p
 VsrarfP5LqXH1gHzcBZHnzpkls6w98Gw4cIcjF/782Wl5fG/aM0/ghTxXAONad/t1/GgCXk0Exu
 3+4RuXFSuiFPVtrzFBoj06Q2pkeotfUM0YtX3s/afuugozBwIoKAMsMp1Wl4vhbBieEWjD1kcAE
 U0XB+LRfuAjVB9Tomgc2th31ZJKbXcvYlLhU7d0OnX0RluO7oQlXKjwpEPbikrlzgNpGlM5GSE/
 tlwIgyWyI2N8a63MMuZC/+tw2i0wKGxDVYijtQLW/Djag==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay16-hz2.antispameurope.com;
 Thu, 30 Oct 2025 13:49:57 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 1D6A7220C5A;
	Thu, 30 Oct 2025 13:49:50 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 00/19] TQMa95xxSA DT fixes and cleanup
Date: Thu, 30 Oct 2025 13:49:07 +0100
Message-ID: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay16-hz2.antispameurope.com with 4cy3q25g17z29yQ2
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4af8d990a1c9f7c4fdb1574041f6d9a2
X-cloud-security:scantime:1.686
DKIM-Signature: a=rsa-sha256;
 bh=hEveejQ5LezW2cXHJne2TGfo1ZNO0O+jmUKcv/3d1g8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828596; v=1;
 b=NaEUqv6nSwgxCPxTzR6xL0OyX6mfM4AiQpvq0+f3idOmnfPoTV03K4eqUXqzZi4p7fiFvGI8
 0K0zOouyb32sHqlN6JLCxPQlitSolXfL3STN857D2QkqpNUsSnSNQDXRoHHr1CP1zv/CPNvfAqM
 O99babQK4jZ/VdINqPxdmkwoAsIxlgW71p4YEmpHOqt8l+lCwIGoQ2AMyqcGdftdtlWiMKf5ipk
 OHE1KafzEcA5DgWCdUoAj+SofARvKsnoUH+RXkVfGCb1shuxY7mz7eI400DsuzHD4ZRmnmZb49n
 h+Kx1om1xB+lmLZLc0KYo/vPiSOA5ezFzNDfp1G4vbcsA==

Hi everyone,

this series includes two fixes for TQMa95xxSA. Having a Fixes-tag I put them
at the beginning. Following patches are DT cleanups:
* move pinctrl/config to module .dtsi as SMARC-2 already defines the pinout
  the mux is fixed already.
* Remove 'sleep' pinctrl settings as they are identical to 'default'
* Add I2C bus recovery
* EERPOM page size is increased to 32
* Whitespace fix
* Add MicIn routing
* Mark LPUART1 reserved. Unique control of syste manager (SM)

Best regards,
Alexander

Alexander Stein (14):
  arm64: dts: imx95-tqma9596sa: reduce maximum FlexSPI frequency to
    66MHz
  arm64: dts: imx95-tqma9596sa: increase flexspi slew rate
  arm64: dts: imx95-tqma9596sa: move flexcan pinctrl to SOM
  arm64: dts: imx95-tqma9596sa: move lpspi3 pinctrl to SOM
  arm64: dts: imx95-tqma9596sa: move sai config to SOM
  arm64: dts: imx95-tqma9596sa: move pcie config to SOM
  arm64: dts: imx95-tqma9596sa: update pcie config
  arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for flexspi
  arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for i2c
  arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for usdhci
  arm64: dts: imx95-tqma9596sa: add gpio bus recovery for i2c
  arm64: dts: imx95-tqma9596sa: whitespace fixes
  arm64: dts: imx95-tqma9596sa-mb-smarc-2: Add MicIn routing
  arm64: dts: imx95-tqma9596sa-mb-smarc-2: mark LPUART1 as reserved

Markus Niebel (5):
  arm64: dts: imx95-tqma9596sa: fix TPM5 pinctrl node name
  arm64: dts: imx95-tqma9596sa: move USDHC2 config to SOM
  arm64: dts: imx95-tqma9596sa: add EEPROM pagesize
  arm64: dts: imx95-tqma9596sa-mb-smarc-2: remove superfluous line
  arm64: dts: imx95-tqma9596sa-mb-smarc-2: add aliases for SPI

 .../freescale/imx95-tqma9596sa-mb-smarc-2.dts |  75 ++-------
 .../boot/dts/freescale/imx95-tqma9596sa.dtsi  | 153 +++++++++++++++---
 2 files changed, 139 insertions(+), 89 deletions(-)

-- 
2.43.0


