Return-Path: <devicetree+bounces-275095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPE9NSTjs2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:12:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD362813B8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C0873262849
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850AF36998B;
	Fri, 13 Mar 2026 10:08:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967F236C9E4;
	Fri, 13 Mar 2026 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396495; cv=none; b=rmj2Q/DnZpWIXpSSpDdC7A9vLwlP07eUtyZdetpc6NhkE2+SsOgzeEg0jICy/uWvkxuGsrM3LwfYOSpGU8vgoVGQlbzrgVoTlBBa/j59yNs0/6i8NdpTIOVO52basCUIIjvhNUzfE3bnizJ6G8+DLC9wExDD0u0RPUqXQMFj0JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396495; c=relaxed/simple;
	bh=dv5zwPulTbWutjwEBbvd8aN2CQwO1vLki17npHgF3/4=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=BdGAoVYcB7AzhAJWx5lU7s5EMWpgBpKic/Zu3PPpg04inynLFULlxFI2piHPkk4ABXUqTrrHoc1u8MSufDCmhfj+bCcntjWbWii9+mVNCYutgG2ZV6R5ahSf2NBGhfCCnGYuMIfmCNcCfOD83OJ9B6ddGq9p+nH7J1BXcOXUOf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 13 Mar
 2026 18:08:12 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 13 Mar 2026 18:08:12 +0800
From: aspeedyh <yh_chung@aspeedtech.com>
Subject: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Date: Fri, 13 Mar 2026 18:07:35 +0800
Message-ID: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOjhs2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0Nj3dKC4pKi1MTc+NTigkzdFMu01EQzsxRDc3MjJaCegqLUtMwKsHn
 RsbW1AP7qydNfAAAA
X-Change-ID: 20260313-upstream_espi-d9fea66d1772
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>, <maciej.lawniczak@intel.com>, aspeedyh
	<yh_chung@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396491; l=2464;
 i=yh_chung@aspeedtech.com; s=20260313; h=from:subject:message-id;
 bh=dv5zwPulTbWutjwEBbvd8aN2CQwO1vLki17npHgF3/4=;
 b=nUOuJPbhuALmHWWELdAretyV2JAWTCsPDyW/E3eLvLC97y+ASQ1g235rMs0BGU4fJxvyKdVgL
 cwCz7v+X4mJCXLF8vRruR+wjYb9b/KSTnmlsNy2EvAUjaSWkG6Uk8LW
X-Developer-Key: i=yh_chung@aspeedtech.com; a=ed25519;
 pk=o71dz0J8lpN+v0f3Mk4gT9PfVngADPC1Pex4aK6VigM=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275095-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:email,aspeedtech.com:mid]
X-Rspamd-Queue-Id: 3DD362813B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds initial support for the eSPI controller found on ASPEED
AST2600 BMC SoCs.

The series introduces a eSPI controller framework for ASPEED SoCs under
drivers/soc/aspeed/, adds AST2600-specific controller support for
peripheral and flash channels, defines the corresponding devicetree 
binding, and adds the AST2600 eSPI controller node to the SoC dtsi.

The driver is intended to support host-BMC communication over the BMC-side
eSPI slave controller present on AST2600 systems.

Patch summary:
1. dt-bindings: soc: aspeed: Add AST2600 eSPI controller
2. soc: aspeed: Introduce core eSPI controller support
3. soc: aspeed: Add AST2600 peripheral channel port I/O support
4. soc: aspeed: Add eSPI TAFS backend support
5. soc: aspeed: Add espi flash channel support
6. soc: aspeed: Add sysfs controls for flash LUN selection
7. arm: dts: aspeed: Add eSPI node for AST2600

This series has been tested on AST2600 platform with Intel's host eSPI
controller.

Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
---
aspeedyh (7):
      dt-bindings: soc: aspeed: Add AST2600 eSPI controller
      soc: aspeed: Introduce core eSPI controller support
      soc: aspeed: Add AST2600 peripheral channel port I/O support
      soc: aspeed: Add eSPI TAFS backend support
      soc: aspeed: Add eSPI flash channel support
      soc: aspeed: Add sysfs controls for flash backend selection
      arm: dts: aspeed: Add eSPI node for AST2600

 .../bindings/soc/aspeed/aspeed,ast2600-espi.yaml   |  74 +++
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi            |  11 +
 drivers/soc/aspeed/Kconfig                         |   7 +
 drivers/soc/aspeed/Makefile                        |   1 +
 drivers/soc/aspeed/espi/Makefile                   |   1 +
 drivers/soc/aspeed/espi/aspeed-espi-comm.h         |  62 +++
 drivers/soc/aspeed/espi/aspeed-espi.c              | 618 +++++++++++++++++++++
 drivers/soc/aspeed/espi/aspeed-espi.h              |  63 +++
 drivers/soc/aspeed/espi/ast2600-espi.c             | 304 ++++++++++
 drivers/soc/aspeed/espi/ast2600-espi.h             | 302 ++++++++++
 drivers/soc/aspeed/espi/espi_storage.c             | 322 +++++++++++
 drivers/soc/aspeed/espi/espi_storage.h             |  32 ++
 12 files changed, 1797 insertions(+)
---
base-commit: 0257f64bdac7fdca30fa3cae0df8b9ecbec7733a
change-id: 20260313-upstream_espi-d9fea66d1772

Best regards,
-- 
aspeedyh <yh_chung@aspeedtech.com>


