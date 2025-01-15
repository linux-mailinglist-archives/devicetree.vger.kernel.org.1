Return-Path: <devicetree+bounces-138741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3111A11F66
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6815169A88
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A52B241693;
	Wed, 15 Jan 2025 10:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Oco2YgeL"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B00223F282;
	Wed, 15 Jan 2025 10:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936988; cv=none; b=us8hqdkSPNII0hfDgy32G5fZncjCP2LvVv3y9z9cQDRbRFO8CNuhwZ/aQZ18WUEp3PN4Lql2vix75w3gsg1qHfa6Ftr5siAOkTuZWREuNDjTYqzsdtkinc+ua+lgI3Nx4s/Z7Ru+d2y3vzh5S1oQS6fqQVcARdM1skpaHZtFfU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936988; c=relaxed/simple;
	bh=bZB8wY5GPpQ6Ij8HzLPuECw1iQfeE2kH9xQl80QDmWw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d0Uql1Jz/IxPPkswSxyFd1vW0H0T8Kq4C4LxvCg9845ok9h4FCrjh+7E6uqIBtVPEPdXxfL3gzdALjX6O4zwhDOY89ntR5++Ox++pMgRxtSmI/YDW83q2kAzkQB3RiGTqGPcyU4Im7St2HZXhyUshn+rzpfMQMWPVs/PIlMsWeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Oco2YgeL; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736936979;
	bh=bZB8wY5GPpQ6Ij8HzLPuECw1iQfeE2kH9xQl80QDmWw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Oco2YgeL+qWZvjGiMDbeH+vhFy9m+1/KGipT5dMXfldHcfVtUWRxaclBoyOrflVXG
	 hQOrftU4tM2SzgbN66XaooXMN3K2vj0CyHhIGGFB0PUeHDuqT3bj3wpxpoTRlrnc4h
	 mT8IyCYQTVKKIfT8OF3YBO2xTVAOndw0yGyOLLwHbZVMjrDNTulzpKoCMUxwwC0Zt4
	 I/UM4tTmbd9449MKDvw3m7s7vnut2h5Wcx5oM4RHnecTtSQn3hRm82ORKUF+IswmNK
	 5Oz/1ZdLgceOsgj8Xrz9dvyekPnSDhdPQHMtkffzDPAzjnfZqTMxs+wP46LNsunzlf
	 fnHre0P9Fl1Aw==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 936FA17E0DD8;
	Wed, 15 Jan 2025 11:29:37 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 15 Jan 2025 11:29:02 +0100
Subject: [PATCH v2 1/4] dt-bindings: arm: mediatek: add mt8370-evk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-dts_mt8370-genio-510-v2-1-fc9b01d08834@collabora.com>
References: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
In-Reply-To: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736936976; l=1347;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=bZB8wY5GPpQ6Ij8HzLPuECw1iQfeE2kH9xQl80QDmWw=;
 b=k5DqrUoLPzbQjqBNU6/bRAXRTjdcXKgZrSGjgRhO1GbvE8zRVY2LkBtInkEjx2Vn7LZB5LJMO
 f19lst/PGYXChoXB7cjooK45VkwqNElF8/Tr0qo3fpo9F7wCFYvk9ZU
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

1. Add compatible for MT8370.
2. Add bindings for the MediaTek mt8370-evk board, also known
as the "Genio 510-EVK".

The MT8370, MT8390 and MT8188 belong to the same SoC family.
It is a less powerful variant of MT8390 SoC and their main
differences are:
 - Arm Cortex-A55 cores number (4 vs 6)
 - Arm Cortex-A78 core speed (2.0 GHz vs 2.2 Ghz)
 - Arm Mali-G57 GPU core number (2 vs 3)

Like MT8390, MT8370 hardware register maps are identical to MT8188.

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
2.48.0


