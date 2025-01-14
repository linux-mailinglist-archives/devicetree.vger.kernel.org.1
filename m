Return-Path: <devicetree+bounces-138355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E284AA10165
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4FE57A2285
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509E324635B;
	Tue, 14 Jan 2025 07:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="iOZzIagI"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC862451FC;
	Tue, 14 Jan 2025 07:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840343; cv=none; b=tqpo57OGR4pZP2HSvIk/Oe9SzJGJ5bZbbXA6hcKAzxsXcUxLNBkr0jzkrbgJ5p75US0d/6bUirhse9UrrMXInda52DSVOp2sYSFf6zIau0hnPGrW6Sokxaf4jly2bprktdpxdUFPSUH2JBJwQqiePFhLEMOeuJV+wDT23lS9L9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840343; c=relaxed/simple;
	bh=onP3TwVXvky7SmG0oH4gyIJ/metH/fIt2vO6CmeNHU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tRSrU9AD6087uFtZRP/zXO7J7+AXB0W4nFqBDyvj45o+ALLu2PWXA0jaUBt/RgNtxW6inhhnwbcHbe5HevFEDWmVoOmyQ0fl+x3nia4XV1VlVlqShUeLv9z8pZ0McKohEZDrhmw1g/w9mDAyibT7+fuTD3Wva8apGr4ysE+dDOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=iOZzIagI; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736840339;
	bh=onP3TwVXvky7SmG0oH4gyIJ/metH/fIt2vO6CmeNHU0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iOZzIagIPmiWXdK5lnqUP0MVL9aRPb6NOf9A538RgVbV2rhJqNtdYFqPcahOkhOtK
	 B+BExHlp1hP4Hz5qAL+kDskeQRWJxxYbIffzVsLPEI+bifuhX18ySvUIZ0OZgKpNL1
	 Dvejhp9zWMPezAtGqJcbmiPES2L1BXTKM/HePcv4OF/+PkcD0d/KUVLOdYISicT5N1
	 sek0d/+KIfgQ620asVg11DAN1xBMw5e7tju2yjs2rRz2GgEUsqoorPYJsZMNdFO4fm
	 sRmajEW7OxvU94Lr2t7ce1GdouD8ZPWsaYzwTAZOgGuIRh6MBC694xefx/v4QslHN4
	 ylYRlsR0ZvMSQ==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E76EE17E0E6E;
	Tue, 14 Jan 2025 08:38:58 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 14 Jan 2025 08:38:39 +0100
Subject: [PATCH 1/3] dt-bindings: arm: mediatek: add mt8370-evk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
In-Reply-To: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 kernel@collabora.com, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736840337; l=966;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=onP3TwVXvky7SmG0oH4gyIJ/metH/fIt2vO6CmeNHU0=;
 b=0p3TZri7c6j+zhjMD/5h18E52KsVc8ilF5nqLimvDUtDMqdBo1LxmIqgmRjeTTGEhSVWqVR8B
 F2JNyouhAmpA0UiSpQeGXgmn6peOhfQPj/mOfaBdCOH3AgfmbOYsKZY
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add bindings for the MediaTek mt8370-evk board, also known
as the "Genio 510-EVK".

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 3ce34d68c213acae44c27bdee3a9bb0b9dbcd1fd..108ae5e0185d93976556a03768595961961bcc33 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -412,6 +412,11 @@ properties:
           - enum:
               - mediatek,mt8365-evk
           - const: mediatek,mt8365
+      - items:
+          - enum:
+              - mediatek,mt8370-evk
+          - const: mediatek,mt8370
+          - const: mediatek,mt8188
       - items:
           - enum:
               - mediatek,mt8390-evk

-- 
2.47.1


