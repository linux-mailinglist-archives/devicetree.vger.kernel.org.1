Return-Path: <devicetree+bounces-150948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7B2A43FA8
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 360347A301E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D501DD874;
	Tue, 25 Feb 2025 12:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv07zunh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B572923A9
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740487658; cv=none; b=okMmcI2XiziLjRpgNPhqNGhHauPMTvxOyMWWCwNLD7AxXjxhJEtPUEZQfz6Ur2IJAs6LK8YmgihCYQVwIioIldHUcg9FonO2xO8IS4jkBXc3+9IQySsyFt4VU2jbK4YrmWucFe8ImNV6ayTEIpPgkfGk8HfFGFcTTqmUewRFnCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740487658; c=relaxed/simple;
	bh=hnEGBgMiJircNCvnzwAqAxPPcC0ueWOeICOFe+xro64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=AwbmHjhT/WCOZGfHh5RehOH+WIfrh0J0O6+paLwwZLHYN/qhYkCWhpL9yBA0BLFKm04HAkUOsWAi+JekonBJjQgs3JUlFwLKSWa+ClV2heJIlu7/208q0QBsn+5b+/8f+KJXI4rCSSfYDG7/iKAY+85YkavGNlt/YiAtddlX2dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv07zunh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D040BC4CEDD;
	Tue, 25 Feb 2025 12:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740487658;
	bh=hnEGBgMiJircNCvnzwAqAxPPcC0ueWOeICOFe+xro64=;
	h=From:Date:Subject:To:Cc:From;
	b=Mv07zunhJd2gjkpAIVUYhM6hGGtxyxFwa73+hcl//2z8K+56pwMAx8GTMEMX3iNUK
	 +0DxuvL0kTSIFOQqIwsNYE6mXteYAtA6M9uYwGJ2q7RkuH8AQEDIlYj8BWU0ftGiYK
	 3I4s52E1a6/lz6ZYTDC8F8/1PIAUbXtBTAYE0ZGk4Z8/FSPJv9E42esmSfFkW+aQeH
	 uvdDMUX79M1hjjl24qZ8Y4ngtn8khXTE+Z/vcyfkjx7QAIGf/gKiKmjBPFmvpcFViQ
	 matqmhQ+7sKl+EPhbcNABxpewkSu3efY/vMGKjGW3k8jGL0lkoVvD8DIw9t8xHjawJ
	 KjsB9cdTkdbdQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 25 Feb 2025 13:47:26 +0100
Subject: [PATCH] arm64: dts: airoha: en7581: Enable spi controller for
 EN7581 evaluation board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-en7581-snfi-probe-fix-v1-1-77e4769574e4@kernel.org>
X-B4-Tracking: v=1; b=H4sIAN27vWcC/x2MSwqAMBDFriKzdsCOFD9XERe2fepsqrQggnh3i
 8sEkocykiLTWD2UcGnWIxYwdUV+X+IG1lCYpBHbiFhG7GxvOMdV+UyHA696s2/FOoSAMIBKeyY
 U/X+n+X0/G6bfrmcAAAA=
X-Change-ID: 20250225-en7581-snfi-probe-fix-c325bedded9e
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Enable spi controller used for snand memory device for EN7581 SoC
evaluation board.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
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


