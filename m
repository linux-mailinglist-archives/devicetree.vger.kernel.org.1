Return-Path: <devicetree+bounces-264342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPlzEPQMi2lXPQAAu9opvQ
	(envelope-from <devicetree+bounces-264342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:48:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC06119CC0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FE67302D0A5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0ED34A78C;
	Tue, 10 Feb 2026 10:48:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696C02E7637;
	Tue, 10 Feb 2026 10:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770720496; cv=none; b=SMuvx+IP6rkn2LtK1DkWd8GiQko5WiAPU2tjb3vRXMDDr95gGrW9FN5t4bSrDfi28v4COf9mge+fqzF8QcWUMU93yJRoouNI4bRfvj1164BeRx7yqbqRYek0Va20GzvxjJ+JyLfqloeMXwSq2+fyK5tj8E/nFMFHvNxDJP9xxG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770720496; c=relaxed/simple;
	bh=WyoME0rioc0iFzgHeDWs0U5WkwpS1Sz1cMkqrrvJbyg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IYELaSyokksGgWKnWNsTTDDNyuuJXWAMMZA4OpVvmZaNQWf+uix8lmSQhc0ea+vo2OlntRu2GICY07kGNDs0tVoqNmmCHxBJc9kwdLU5ryIQT3Kj2rFBiw/uX3ECovvvLnf3ERMZ9dRmPd6qcyTfn376m4YxS4topHutjkN5q5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B40F91A0AD5;
	Tue, 10 Feb 2026 11:48:06 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BFF11A0CDD;
	Tue, 10 Feb 2026 11:48:06 +0100 (CET)
Received: from lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com [10.52.9.11])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 0A5DE180007B;
	Tue, 10 Feb 2026 18:48:03 +0800 (+08)
From: Yanan Yang <yanan.yang@nxp.com>
Subject: [PATCH v5 0/2] Add NXP FRDM-IMX91S board support
Date: Tue, 10 Feb 2026 19:47:53 +0900
Message-Id: <20260210-imx91s-frdm-v5-0-b3e9a67d2285@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANkMi2kC/23OTQrCMBCG4atI1kYykyZ2XHkPcZHmR7NoK4mUi
 vTupgWhFZffwPMyb5Z9ij6z0+7Nkh9ijn1XhtrvmL2b7uZ5dGUzFKgAheKxHQkyD8m1HK2U1Fi
 LQQdWxCP5EMeldrmWfY/52afXEh9gvv7vDMAFN8Fp6wRYJDp34+Ng+5bNlQFXEn4kFlkfiXTjj
 FFkt1J+pRYAeitlkVTrIzivK0K1ldVKotzKqkhoTCNkHYz3q2+nafoAx8tfp1IBAAA=
X-Change-ID: 20251205-imx91s-frdm-2c339bcc2f6f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 yanan.yang@nxp.com, qijian.guo@nxp.com, justin.jiang@nxp.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Daniel Baluta <daniel.baluta@nxp.com>, Lei Xu <lei.xu@nxp.com>, 
 Xiaofeng Wei <xiaofeng.wei@nxp.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770720483; l=2646;
 i=yanan.yang@nxp.com; s=20251205; h=from:subject:message-id;
 bh=WyoME0rioc0iFzgHeDWs0U5WkwpS1Sz1cMkqrrvJbyg=;
 b=KKTvisPO/K4q/KoXFmsJsxmsxL5b6Sy1Epf2gMirbPvj5N9Nqmvj4eNwWtItpEC/ftMpli1eM
 1z56eaHfwDrDFTiHUeLa0dZJrjgxd53Ni8RPF7Ge3qi48YyLhowo/FF
X-Developer-Key: i=yanan.yang@nxp.com; a=ed25519;
 pk=d4hHTp5SW/PyyxexLEo/3c2RAaQDwym0zuYlifH95PI=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-264342-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yanan.yang@nxp.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8CC06119CC0
X-Rspamd-Action: no action

This patch set introduces DeviceTree support for the NXP FRDM-IMX91S
development board based on the i.MX91 SoC. FRDM-IMX91S is a cost-optimized
variant of FRDM-IMX91 and differs in several hardware aspects:

- 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
- 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
- Single GbE port (FRDM-IMX91 has dual GbE)
- PMIC PF9453 (FRDM-IMX91 uses PCA9451A)

This patch has been tested on FRDM-IMX91S board and verified for basic
functionality.

For more details about the FRDM-IMX91S board, see:
https://www.nxp.com/design/design-center/development-boards-and-designs/FRDM-IMX91S

Signed-off-by: Yanan Yang <yanan.yang@nxp.com>
---
Changes in v5:
- Replace space with tabs in IOMUX
- Rebase to latest linux-next tree
- Link to v4: https://lore.kernel.org/r/20260123-imx91s-frdm-v4-0-1bab038faee9@nxp.com

Changes in v4:
- Remove the board-specific "fsl,imx6sx-sdb-mqs" compatible from the sound-mqs node
- Remove redundant address and size cells from lpi2c2 node
- Link to v3: https://lore.kernel.org/r/20260116-imx91s-frdm-v3-0-98671de64925@nxp.com

Changes in v3:
- add bootph- property for nodes should be kept in bootloader phase
- add code-review trailers
- Link to v2: https://lore.kernel.org/r/20251215-imx91s-frdm-v2-0-87996bdaa59c@nxp.com

Changes in v2:
- Correct author name: removed extra period in "Yanan.Yang"
- Removed aliases pointing to disabled nodes from DTS
- Add "rtc0 = &pcf2131;" in aliases to make external RTC the primary device
- Fix DT node name: change
  "usdhc1_pwrseq: usdhc1_pwrseq" to "usdhc1_pwrseq: usdhc1-pwrseq"
- Renamed LED node from 'status' to 'led-0' to comply with gpio-leds binding
- Replace regulator-based transceiver (reg_can_stby) with CAN PHY (nxp,tja1051)
- Replaced 'xceiver-supply' property with 'phys' in flexcan1 node
- Adjusted alignment in fsl,pins property: used spaces between pin names and values for proper DTS style.
- Refined commit message in dt binding patch to clarify board differences
- Link to v1: https://lore.kernel.org/r/20251205-imx91s-frdm-v1-0-afd6cd01c299@nxp.com

---
Yanan Yang (2):
      dt-bindings: arm: fsl: Add FRDM-IMX91S board
      arm64: dts: freescale: add NXP FRDM-IMX91S board support

 Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 .../boot/dts/freescale/imx91-11x11-frdm-s.dts      | 769 +++++++++++++++++++++
 3 files changed, 771 insertions(+)
---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20251205-imx91s-frdm-2c339bcc2f6f

Best regards,
-- 
Yanan Yang <yanan.yang@nxp.com>


