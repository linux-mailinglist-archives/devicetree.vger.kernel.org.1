Return-Path: <devicetree+bounces-47095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558E86C362
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 709611C211F6
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D734779E;
	Thu, 29 Feb 2024 08:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="IBY8fre6"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AE138397
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709195056; cv=none; b=A+63E9y/AEyzU3Az59vS2pVMLqMgKD3xBxhEOMNrBI2DnGr4yFVRKocCsfFH4SaUdGJo4Bh95ZhfFSIhCFugK6UPx1liQidT2e6lvU4SkQp5F6jO7wAwjq8fucC7stEU4hFrX35kcRBO1t7jMgS6pUxtKcNhHmAooZBruD5CG6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709195056; c=relaxed/simple;
	bh=Xrr2pQvNjK9HqdjZU0yutLs3+7x9Uaikc+0/N+mc4Nw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Np6dAltKMJF0FfxCIzN2PSWkJejDx3sor8PnvnbtXK5BDqgpo/+OaJnn/15X5DWWwenSqn5rjx2vHvBVMuRld3u235Txa7E8htNM6qYDrcKfHy+oL4l5lW3d8EWuYtLrUpnO+/24QQ+zFTw67jZS7nF5m+sNYO7Gg37A3oJyPPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=IBY8fre6; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6005a.ext.cloudfilter.net ([10.0.30.201])
	by cmsmtp with ESMTPS
	id fZa5rGA7zHXmAfbi7rVOFb; Thu, 29 Feb 2024 08:24:11 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id fbi4rg2h05Eaefbi6rFnp1; Thu, 29 Feb 2024 08:24:10 +0000
X-Authority-Analysis: v=2.4 cv=GIYOEPNK c=1 sm=1 tr=0 ts=65e03f2a
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=k7vzHIieQBIA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8 a=SsdV6KCYXRRehQAGIlkA:9
 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=M3fw+Np3S1U8MDlGpthERJ0UDarHWeHDvVRuxtYOYKU=; b=IBY8fre6bEtwsygBfag88/QM7V
	CBMahsiAY0kO6Cy5W9zDGIVFmrnuirpAVx/cdwQXntE3K0G3vK75XwojqYzyhb/RJwQpOKtiH2UcN
	YtlFU7ys/sPQyF351tCVdy8AZi4tmQbLQGYQYbYy+OdHRmPBT785HVq7oaxKvvTUPL6F1sK+bkggh
	iZYHLjy/OkHYVf+qYIY8FxJXaBmCYhoNDTgdocfuCNtFt9X1W4d1NNOsgChlNr2VEUpXL1SmJ6xXn
	eR4vwSKxogc0ThmKOOOek8EICpVQJciegbjZzKaGrCezAL+tVuJAtvDnOYq8vzSZ9pr1Y14a3L7UY
	3L+4ReHg==;
Received: from [122.165.245.213] (port=55676 helo=kural..)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1rfbi1-0013bQ-37;
	Thu, 29 Feb 2024 13:54:06 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Parthiban Nallathambi <parthiban@linumiz.com>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add Seeed studio NPi based boards
Date: Thu, 29 Feb 2024 13:53:36 +0530
Message-Id: <20240229082337.3090778-1-parthiban@linumiz.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1rfbi1-0013bQ-37
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (kural..) [122.165.245.213]:55676
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOXKnvGh2w1tIjQ+c9vkuNRQj5/wCp9F1XsPG0ieEqiA38G+dSNqE1jEKEL4ZIh70eBbQ7NCXNvOgEGQqD8i5NRWqte3sMAFBZ0vEIaNTABZd7l3M2LU
 JCsfNMc/GHharpDxk1KUrYmP0BB9ectgVB5fR1Em1FtHFmrbSbFPIhd8nzEK/qCPOiu49UnHC59g03GtOEWRXaq6WtT5y41VVxU=

NPi i.MX6ULL eMMC/NAND is Seed Studios SoM using i.MX6ULL.
Development baords can be either based on NAND or eMMC
SoM.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 228dcc5c7d6f..dfe9ddd0872b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -810,6 +810,14 @@ properties:
           - const: tq,imx6ull-tqma6ull2l      # MCIMX6Y2, LGA SoM variant
           - const: fsl,imx6ull
 
+      - description: Seeed Stuido i.MX6ULL SoM on dev boards
+        items:
+          - enum:
+              - seeed,imx6ull-seeed-npi-emmc
+              - seeed,imx6ull-seeed-npi-nand
+          - const: seeed,imx6ull-seeed-npi
+          - const: fsl,imx6ull
+
       - description: i.MX6ULZ based Boards
         items:
           - enum:
-- 
2.34.1


