Return-Path: <devicetree+bounces-134349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7A09FD479
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FCDE164E2D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13B51F4E55;
	Fri, 27 Dec 2024 13:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="Yzi1ziXf"
X-Original-To: devicetree@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B811F4E24
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304526; cv=none; b=aElwTI7HsiRUh9O/ReR9yAeS2wRusuTc2IlBZJuq8/a//m8NYvNzcT+Tzif6kfevQs6ynGeg5PCAf080fVA15Qqdw16xeNMtiJalqyIEpMS4/ZRYOmmSHZuyX5XO3FQ7B1GdtOLl4g2619j1VqkuDR+zzWGy7d9g01rDWNH1H2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304526; c=relaxed/simple;
	bh=jEGKbLhjRFmr2GAicFc1z+s3hUCh595jXAXzn9My3y0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B/OZ2iX2Zto8mknWHU7NP/xpq5r1qE0XHycaXw59OGI7XJdcNgOdRSvW0FUbMeqLo4VcK8jzAVg+2WvOw325zd6Iw4bFuWxUUgcr36srtjc6uHBU7MLV2RKdSJbpPZq1llqpkbYwBJKlTRVN9zjT6WqWNToDwz9GnQiUDsWL744=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=Yzi1ziXf; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id QrDRtyosYrKrbR9yftXKWI; Fri, 27 Dec 2024 13:02:05 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yctTR0PCgT6R9ydtkl1x; Fri, 27 Dec 2024 13:02:04 +0000
X-Authority-Analysis: v=2.4 cv=XvwxOkF9 c=1 sm=1 tr=0 ts=676ea54c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=wzO6rqTgGfghY9OkdcwA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tQ0brnuopVNUKDJwJH0/VSRDFgILtmVRCbF+TM2fmxQ=; b=Yzi1ziXfJy8NL8AebiULmP7Ils
	K/4BYc0CWzvLLrM9lheBvesS+BPX6v96fudiSI12J94Tt4kTdMitRwBFJKdp7huOOndtYMzTO85P7
	3Rl7IX3hilPz1ycdx2AT4a4+yB1mGNaS8Kr/Z/Se7LTKA6JNIxMrbIkzDETpBz6Sir/fQNgcNfWMZ
	uO2wGayElu4Ox0VbeIU0zNr5JrjDqESMKPEKqdjPH3YmCOSzHPRF2DSqL++DjkXDW67mHnPT92CxU
	UJT5Bb+v9rwyt8UzVCCg9KQPhIJHtTWqLR+gb1xDQwPdbRJvwsKc3DJYjsoRsGnTAem1Aw1zUpblA
	os5S+V8A==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yX-002EaQ-24;
	Fri, 27 Dec 2024 18:31:57 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:57 +0530
Subject: [PATCH RESEND 08/22] dt-bindings: arm: sunxi: document Szbaijie
 A133 helper board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-8-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1029;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=jEGKbLhjRFmr2GAicFc1z+s3hUCh595jXAXzn9My3y0=;
 b=qYvrnOVWt4oHHLK8nYnervSC9ncB1eBiBn0gsifoaS6OCJ3yH0CyQnoxhFjNqN1chhmeIFcKP
 15WL92YNfCGDGsIqnj2CjgFF4NvJeP5HsxzVvk4W5wtbGjcA+ivZxRW
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yX-002EaQ-24
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 258
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEKWGQ6u9z8WkO2Y9ar0xWhXoJgT8jfZgvdZqa8RSXqljtxmg0OVCffwEiSN9ByLedZimrQmQNON4vIXLAP6MgKpmKMrfkrQY0diKgRFPyx0dZqn5s/c
 KfjeKw3cIaACGJK/7W32j3OfWvldn/ONmnGPOoMkbS55H/1J7BHNohFmklEXrKT477k0HLmqX6WxCaxfrSJ60BcfqsBV2fhiSDQ=

Szbaijie Baijie Technology A133 helper board is an evaluation
board of their A133-Core SoM. Add its compatible (with the
SoM compatible) to the sunxi board DT binding file.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 046536d02706..eb19f8b1fe68 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -891,6 +891,12 @@ properties:
           - const: allwinner,sl631
           - const: allwinner,sun8i-v3
 
+      - description: Szbaijie A133 Helper board
+        items:
+          - const: szbaijie,helper-a133
+          - const: szbaijie,helper-a133-core
+          - const: allwinner,sun50i-a133
+
       - description: Tanix TX1
         items:
           - const: oranth,tanix-tx1

-- 
2.39.5


