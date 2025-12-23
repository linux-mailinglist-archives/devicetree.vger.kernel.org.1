Return-Path: <devicetree+bounces-249224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F8FCD9F9B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1DF530AF596
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8B0344046;
	Tue, 23 Dec 2025 16:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="S2anlDl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197F133A9D7;
	Tue, 23 Dec 2025 16:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766507329; cv=none; b=hq2EBez9CP/OFj+wvGkym7LXnzxfcc2yGttKzjp1kfoWMddWr23/B4XBaL3fGbfZibCb3DNykVLw8JuITSTpQIaV+oaSGH7y+GOKzlmgtA7R0ACgpOyAzQqnshxzMucUKSJU83BqgQ1tETsIPF/s+O8tPvS5qjrXp7q3KnjKXyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766507329; c=relaxed/simple;
	bh=hyau1PCbq35CfU2gKLl0cZE5KAGycWiD9MwmSCBDVUU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DU8kMGGnAjBpjC37drvYgUCRo5Jqb8/xPVm5IzcNB3A8zbvlry/oUNBATZX24FOUSt77amwYWUz6bDcaJ33p3IbFcNgmyY2PaxI9sUm/xSyp3G/05dl1uJVv3VlnT5mRKiyYoORRu+6etP5l+PKwQl7t92TFhBK0V0b1ZV6g3kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=S2anlDl2; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from localhost.localdomain (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 9FF411FE0C;
	Tue, 23 Dec 2025 17:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1766507323;
	bh=jnFb/IX3ljIxWsMngTBtcXekODzwjzg+jILeoqFZb7A=; h=From:To:Subject;
	b=S2anlDl21dcTQau6eVPjl9xfm98B/lT5hXIhlsNDw+YCmSzVqh/82dBzXtuiRpek0
	 gxxG7kCCG2MMFLpVrb0PvH79UaSokk3e3OwPDeXPi85rMqaofOdScXk8Fmcq//uzYH
	 EoODPGEwmFHmKR28fGMo/esPiE7QUN4HFOTQvzAN3WfHI7rd9Rjwm3A9n9S1PvSNXn
	 20OzctLHbbRyOsBw/aEcRh8dwoge05h5KAmnbmCIhoulTXix7pbv4hwXSFq+eMOjzb
	 qFK9vUakDsxxSwz9S7eVBjm477JXAjq6JxsqODgUAoFss7KJ/CKWjSTFAvsILzgQXR
	 /uYp667RrzdCA==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 2/4] arm64: dts: imx8qm: Add CPU cluster labels
Date: Tue, 23 Dec 2025 17:28:28 +0100
Message-ID: <20251223162833.138286-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251223162833.138286-1-francesco@dolcini.it>
References: <20251223162833.138286-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add labels to the cpu cluster nodes to prepare for the addition of the
i.MX8QP SoC in which these nodes would need to be adjusted from another
DT file.

Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index cb66853b1cd3..e0046f798eca 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -38,7 +38,7 @@ cpus {
 		#size-cells = <0>;
 
 		cpu-map {
-			cluster0 {
+			cluster0: cluster0 {
 				core0 {
 					cpu = <&A53_0>;
 				};
@@ -53,7 +53,7 @@ core3 {
 				};
 			};
 
-			cluster1 {
+			cluster1: cluster1 {
 				core0 {
 					cpu = <&A72_0>;
 				};
-- 
2.47.3


