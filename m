Return-Path: <devicetree+bounces-150965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 076BDA4402E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 14:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F06C119C7CFC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DE0268C40;
	Tue, 25 Feb 2025 13:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coLausKW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAA81E485
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740488825; cv=none; b=KSL5cAfOW+fImfifquCJYhgZtb4ddecnmQtrjiTLm3xx2kJl84ufefd8OWyZy0zGj5fS9VdpqnMtM1qPygejCQIsLAZNxrCuevG9nCqAWVwo4X6F2TI/9NPWjnh8NocqiXfdxDfHIjXUoqACWY7tQPR2bfqj/E0aRq1lQPsv3F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740488825; c=relaxed/simple;
	bh=NmQ9nWH8XrnjebLyNSQHDNt1Aovq1Uzq7YSBPo1HXwI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=sKxyHI+VB/AheTPDgjGnirJd9/VGSWHqT6vxVEhsBt1R95eBnvakHcbgf7uLTdLH9+ObMpWzvK7J5WgTuIdjJkDpKs7P9hVr+5TH8SrlrN9fQbAhaVMP6/Xp1b9MgSHePUgdpjPsrvbRh7qd4kmfNjNKXtzgHbmRGX44VhbWYDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coLausKW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C95AC4CEDD;
	Tue, 25 Feb 2025 13:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740488824;
	bh=NmQ9nWH8XrnjebLyNSQHDNt1Aovq1Uzq7YSBPo1HXwI=;
	h=From:Date:Subject:To:Cc:From;
	b=coLausKWPcqpdqi5p+N8gT30FJzaSSwnHbZYR4g9yuD6kv/R9KzzYPnhEAywIeOEx
	 OVwj3sYc3G2tJqz+M91M1WPUlbQ5C8XnIYuDStxULNZUqoddEoD7DW2J7Ag49oMDZe
	 mzz6ugjplEw2VFiF08Q5Ll5mh44uhOkmFnlhBm0hjaiqxUd9rTi6dO3jXGWywo6OSn
	 FwVlcTTxLop9BqYI7ir+ajgVOUN/KA5XaS5mzuLHlVgVz0DDumiXjkB53DgBVpPLjy
	 0n1bI1hbwShguvYrt0uyXXSpOCgvyNQTuw6rFDcwhSo869HrX2lnK5bvqovZSg5X2N
	 q3PGJ31F7ajmQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 25 Feb 2025 14:07:02 +0100
Subject: [PATCH v2] arm64: dts: airoha: en7581: Enable spi nand controller
 for EN7581 EVB
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-en7581-snfi-probe-fix-v2-1-92e35add701b@kernel.org>
X-B4-Tracking: v=1; b=H4sIAHXAvWcC/4WNQQ6CMBBFr0K6dgyt1Aor72FYCP3ARNOSqSEaw
 t2tXMDle8l/f1UJwkiqKVYlWDhxDBnMoVD9dA8jiH1mZUpjS2MsITh70ZTCwDRL7EADv6k/Gdv
 Be/gaKm9nQdZ799Zmnji9onz2m0X/7L/iokmTc6jcubauQnV9QAKexyijardt+wLJ1yKGuwAAA
 A==
X-Change-ID: 20250225-en7581-snfi-probe-fix-c325bedded9e
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Enable spi controller used for snand memory device for EN7581 evaluation
board.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
Changes in v2:
- Clarify the commit title
- Link to v1: https://lore.kernel.org/r/20250225-en7581-snfi-probe-fix-v1-1-77e4769574e4@kernel.org
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 4 ++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index d53b72d18242e3cee8b37c7b1b719d662fd6db8d..cc69f698c27b804953b1bb671e128d4401744bf5 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -25,6 +25,10 @@ memory@80000000 {
 	};
 };
 
+&snfi {
+	status = "okay";
+};
+
 &spi_nand {
 	partitions {
 		compatible = "fixed-partitions";
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 26b13694091735da7af977e42f8f546d7d5cb078..49c061d38d7860b3b416610723791a7a91edcb69 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -150,7 +150,7 @@ gic: interrupt-controller@9000000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
 
-		spi@1fa10000 {
+		snfi: spi@1fa10000 {
 			compatible = "airoha,en7581-snand";
 			reg = <0x0 0x1fa10000 0x0 0x140>,
 			      <0x0 0x1fa11000 0x0 0x160>;

---
base-commit: 0092294492fafe79a537915e486576a3d69c9a7c
change-id: 20250225-en7581-snfi-probe-fix-c325bedded9e

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


