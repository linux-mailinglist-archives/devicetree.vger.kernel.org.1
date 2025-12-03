Return-Path: <devicetree+bounces-244142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54810CA1A83
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5487300AC58
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EACF2C159C;
	Wed,  3 Dec 2025 21:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RubDu0bQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EF5258EDA
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796876; cv=none; b=UbdJmJZfHfnewiC7EBEsv2JPoApJtzybjjGUvuUjJbdn7bgY+wKdnFvwgBx8qo3wRI6K8GaQ4K2ibAJq1t/08HRFaA/swOeo4POoNUyAoPi42SZSr8VI+LasZUoer9b0rcgnIZ2LJPangCd7OAhyRetUB+vTeYNaNCGMDhCIhjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796876; c=relaxed/simple;
	bh=7iOFyKXGUyWDuEZAjVc/M9a+gWMr/52/ubq0TALoCug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bIMKg44v3ETYxvBbcSAKih3a53gSPbwbjhi+6cHpX1CT/saK3zF6Xz9NpaCrGQrGXmf64giqPbpK5/QPCHwuomHSgzKQYE8KFnfOlbFGP6+4tmxWbos4/CZX3t57+z3/fbhH/oOH8ajHGSaka5ogdPyzUPSQ7aBQ3FHjzlL788g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RubDu0bQ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47755de027eso1668155e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764796873; x=1765401673; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7VCnqPhJAv91oFzV5RkUJqtr3PFZFRnM/qBGQTZCSK4=;
        b=RubDu0bQSfbGw15Y7qlBCCJFE9K8zDnM9Z83xunoOiRIqhogqCncMOO9/G47DA8JNs
         OlHFuLtsdUmbgij5YKlki9WiOj6f99M+svVWeLftLelf4O/jxttDHkDT4M9DZ/MUbhNU
         y5iHbaboBPASHbb0NY5bxfdxxTs5txlrRminn18RJ0iV90JArRv0uVNrhvHpA80Wq4ve
         bv5xpf32gDhrgpkK00AgkQyDYNGDy+Ai/glZOJc6yoX+PqfOmcpkP8WgxyUSwwoxBRMr
         JD32swL8+dz1w2JKAWtyOHXFX0JhNkHs2iJQ66+VBC30Xk3RKQ3y4Gcud2uafCvGl4of
         KlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764796873; x=1765401673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7VCnqPhJAv91oFzV5RkUJqtr3PFZFRnM/qBGQTZCSK4=;
        b=gYFOYuKC/v4UCrWhWx4krPJKvXJtKdrcA6nM+E+O1E7U8fXp9BW+QQQTn3Csw6wed7
         PlXBsqtnezeKeUVzWI+2xwQdFAJ/fby1HyOSs3IX9IQKgbnS8VdH1cQmlUkKAV5jr+uF
         kEJ+umcz2/2VXKTSSOrkch2XzG+RrQ71YV5nONyQmP06PiKvWHy7eiwox6pVbNxhtm2p
         OMolZxVS2xI7mQ20UStGsy6ay7E0eUx+jkKrLWjrwXwaNDiX5OMZB0SBf9IgZLUydtkE
         3Ojj4B9z3h/hmkZlhekW+gKqUSPMt/38pR9SESHV4CvJcw+Xs6olTSBjdH8vTSwXBBcF
         ylJw==
X-Gm-Message-State: AOJu0YyoNdZTcOzKRsaCQCAO3e+izZmCkofUsc3dJK7rrThlpqF/JPp5
	0UhfQKKHi2C7L2LyzoILjOLC/lie+FinldFRxzFu3n3XC0CERpisICO4
X-Gm-Gg: ASbGncvGB7UV9T0MOMQeVF7fTuqRxTqHZWmEskUjDRSf/YVZXQ7xsCUIiknT696qAZU
	g/kmtSIqnTJz5Wn1WPbEoDOzQEexCAv9Ze3U7BDuCBLdqwZFaDiVDJGIVlKKYimAK98Ukm63N/v
	g3uFbuhj0rc8y08NCjVIiVS7RI7SOAs/gGsA6GGY2WILZ1Ocu/M/Ry2RjDObdkSRawXBYLddG4k
	z315aAGSgw54ogeyP9Gs3ICOVqvPakD/ZdhjbTTTvJ5sJMDTX0AiJaPq1UcI0uctvKWKc+H7Pug
	GSqXYknySXq5iNkGQ6W7s2bpYCfCm3AP8JTbc8654IhqmJujtphUS2G7aInFASZrhVqrFmT6hrS
	WKb1q5a4Q8INnif1sK68/nRKHkvp/LWY0HAyPnRt6l0WCC19FF/gycWl8AI6pfagoeI8RNPmr0A
	EFhcEvY6557pCRCXoOR4IpFXgq3Q==
X-Google-Smtp-Source: AGHT+IEQb2k2djGAaaOrrubAL8cotaaXzpmwb9ywB3fXqMoQMIkGIZ7M8ouSlDgCOvzXCCNljCajAw==
X-Received: by 2002:a05:6000:2c13:b0:42b:3ad7:fdd3 with SMTP id ffacd0b85a97d-42f79800ecfmr412479f8f.18.1764796872870;
        Wed, 03 Dec 2025 13:21:12 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:2034:6883:1f40:e708])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm41648667f8f.3.2025.12.03.13.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 13:21:12 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Wed, 03 Dec 2025 22:20:37 +0100
Subject: [PATCH v5 1/5] dt-bindings: vendor-prefixes: Add Ezurio LLC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-review-v5-1-b26d5512c6af@gmail.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764796869; l=1097;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=7iOFyKXGUyWDuEZAjVc/M9a+gWMr/52/ubq0TALoCug=;
 b=EiXO0OVlGDQSkgB5iAR24vdHCk5tvHK4Sh+BbG9kE/1Vb7BXNxstMgDeSrK6FsTEZjHGxwPNP
 Oq1znoRWbzOAtvQwbCfnM1h7ByNlw5g15qlRF25OC/yBI7Dff0/uNI6
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Ezurio is the new name of Laird Connectivity after it acquired Boundary
Devices.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Changes in v2:
- None
Changes in v3:
- Added missing Acked-by from Krzysztof
Changes in v4:
- None
Changes in v5:
- None
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..e76e6c5be726 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -547,6 +547,8 @@ patternProperties:
     description: Exegin Technologies Limited
   "^ezchip,.*":
     description: EZchip Semiconductor
+  "^ezurio,.*":
+    description: Ezurio LLC
   "^facebook,.*":
     description: Facebook
   "^fairchild,.*":

-- 
2.43.0


