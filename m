Return-Path: <devicetree+bounces-253261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7166BD09026
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39529302B76A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5992350A12;
	Fri,  9 Jan 2026 11:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AITNui0c"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FCE33290A;
	Fri,  9 Jan 2026 11:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959280; cv=none; b=Xo2kEwO1gZAoqxwkmWiwH1v81UnvChU0TskN9wFEpvK2batLts/sTro66pgI1/l0K3jvflGMQxJp7nENVzNDRIWd2a3Gp2liUzRIwesmGxuTfCiTh1oonWJYpt25YZKkfpgWXXb6ADTMfnswHyx9tceynSi/JSBPMJa+5wYHgA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959280; c=relaxed/simple;
	bh=AVFWBiwKCm/jZQoJ113urftXHpU+cSUYCfQDg7/mJEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AcdwH5I/Rpz3yXuLPnZwWpURNcnkOTcz3znQFL+ANpRCBjevrMHBkPlApPElugEOqvVcJe8LGYD3S2mujhX82GnB/nUd9qDfDI9sor0pfxkrwKzwPsur97IbwrrTQK1JopVxPJJW40uBg+UepcqNEt4MPGJI7V8+zK8cW4l5M/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AITNui0c; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959277;
	bh=AVFWBiwKCm/jZQoJ113urftXHpU+cSUYCfQDg7/mJEQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AITNui0cJxabFuy9PzATJ5qODmy+Cth07zX772tiMKwxYTvpl0py0wjahLV2aW9sK
	 eq4ly0QogJRmkzMl388A0RDU8/8ax8m4JOUY+otgMpsIrPmIs0URou7slIS3BBDTVM
	 ve0nH/3MaG5+kQEesE2EJE0byiiNmQQJ7Wa7sdxKYIu+5JirhL3Yw7FIg8YxY/nwoS
	 io4b9EggLG7bU6uK9B1pDIFVqVzZjtugaENtZ0lOIyZGjpSrsZXpwpOBrOsmZ8IEy7
	 CY9XkQtPI9OzD3wQzn5B1BFrwhMgIhl1Qjkc7TMLOwfZJVPVAFZ/YTGOurV01EjRcw
	 XewxfX3o87bEQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6937517E13D3;
	Fri,  9 Jan 2026 12:47:56 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 02/11] arm64: dts: mediatek: mt8183: Fix dtb warnings in display graph
Date: Fri,  9 Jan 2026 12:47:38 +0100
Message-ID: <20260109114747.37189-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 119 +++++------------------
 1 file changed, 23 insertions(+), 96 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index db86e2bd0c7b..676f8ecd89e2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1755,22 +1755,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ovl0_in: endpoint@0 {
-						reg = <0>;
+					ovl0_in: endpoint {
 						remote-endpoint = <&mmsys_ep_main>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ovl0_out: endpoint@0 {
-						reg = <0>;
+					ovl0_out: endpoint {
 						remote-endpoint = <&ovl_2l0_in>;
 					};
 				};
@@ -1792,22 +1784,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ovl_2l0_in: endpoint@0 {
-						reg = <0>;
+					ovl_2l0_in: endpoint {
 						remote-endpoint = <&ovl0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ovl_2l0_out: endpoint@0 {
-						reg = <0>;
+					ovl_2l0_out: endpoint {
 						remote-endpoint = <&rdma0_in>;
 					};
 				};
@@ -1867,22 +1851,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					rdma0_in: endpoint@0 {
-						reg = <0>;
+					rdma0_in: endpoint {
 						remote-endpoint = <&ovl_2l0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					rdma0_out: endpoint@0 {
-						reg = <0>;
+					rdma0_out: endpoint {
 						remote-endpoint = <&color0_in>;
 					};
 				};
@@ -1904,9 +1880,9 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
-					reg = <0>;
 					#address-cells = <1>;
 					#size-cells = <0>;
+					reg = <0>;
 
 					rdma1_in: endpoint@1 {
 						reg = <1>;
@@ -1915,9 +1891,9 @@ rdma1_in: endpoint@1 {
 				};
 
 				port@1 {
-					reg = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
+					reg = <1>;
 
 					rdma1_out: endpoint@1 {
 						reg = <1>;
@@ -1942,22 +1918,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					color0_in: endpoint@0 {
-						reg = <0>;
+					color0_in: endpoint {
 						remote-endpoint = <&rdma0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					color0_out: endpoint@0 {
-						reg = <0>;
+					color0_out: endpoint {
 						remote-endpoint = <&ccorr0_in>;
 					};
 				};
@@ -1978,22 +1946,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ccorr0_in: endpoint@0 {
-						reg = <0>;
+					ccorr0_in: endpoint {
 						remote-endpoint = <&color0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ccorr0_out: endpoint@0 {
-						reg = <0>;
+					ccorr0_out: endpoint {
 						remote-endpoint = <&aal0_in>;
 					};
 				};
@@ -2014,22 +1974,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					aal0_in: endpoint@0 {
-						reg = <0>;
+					aal0_in: endpoint {
 						remote-endpoint = <&ccorr0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					aal0_out: endpoint@0 {
-						reg = <0>;
+					aal0_out: endpoint {
 						remote-endpoint = <&gamma0_in>;
 					};
 				};
@@ -2050,22 +2002,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					gamma0_in: endpoint@0 {
-						reg = <0>;
+					gamma0_in: endpoint {
 						remote-endpoint = <&aal0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					gamma0_out: endpoint@0 {
-						reg = <0>;
+					gamma0_out: endpoint {
 						remote-endpoint = <&dither0_in>;
 					};
 				};
@@ -2086,22 +2030,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					dither0_in: endpoint@0 {
-						reg = <0>;
+					dither0_in: endpoint {
 						remote-endpoint = <&gamma0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					dither0_out: endpoint@0 {
-						reg = <0>;
+					dither0_out: endpoint {
 						remote-endpoint = <&dsi_in>;
 					};
 				};
@@ -2128,23 +2064,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					dsi_in: endpoint@0 {
-						reg = <0>;
+					dsi_in: endpoint {
 						remote-endpoint = <&dither0_out>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					dsi_out: endpoint@0 {
-						reg = <0>;
-					};
+					dsi_out: endpoint { };
 				};
 			};
 		};
@@ -2165,9 +2092,9 @@ ports {
 				#size-cells = <0>;
 
 				port@0 {
-					reg = <0>;
 					#address-cells = <1>;
 					#size-cells = <0>;
+					reg = <0>;
 
 					dpi_in: endpoint@1 {
 						reg = <1>;
@@ -2176,11 +2103,11 @@ dpi_in: endpoint@1 {
 				};
 
 				port@1 {
-					reg = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
+					reg = <1>;
 
-					dpi_out: endpoint@1 {
+					dpi_out: endpoint@1  {
 						reg = <1>;
 					};
 				};
-- 
2.52.0


