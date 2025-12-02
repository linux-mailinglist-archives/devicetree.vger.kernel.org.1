Return-Path: <devicetree+bounces-243810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53668C9D27A
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4632F4E04EA
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C802FBDE7;
	Tue,  2 Dec 2025 22:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NLO1X0p0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FCF2FB094
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713356; cv=none; b=o7EVXLX2/u0FO2tYpOgT7I/ViN2XHvCpLcsy1lHgWZ7lRjbij9G6WBw8Nzwp1sfnWtDPQyboEzrlBf0/qkwcArHGAoCbICjGRCcirShGTkrVJHgN4B7wd+tLS5pnf20bMhpbW625maUH7NZxPaFYeui2MOMYdqE0EJKt6qb6d3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713356; c=relaxed/simple;
	bh=VZCofeu/bIsFeris3Pk/WudmT01MguyTXO5GJSCwC3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BUmbq+0oQosOlDtbVdU5g5qXoIto0wOgXPBHtE/5l3a8Sd7C3gUYb+ZfUe876xOyF+wx6WRkQFRCPTt6cq9K40AU+g5tsRGKLwmjF4hNRU0Xm2nKFt6+hyd2s1/DJtmGY7lEreiD72U/pEmSyq5q9xjV2toVXRC0mkj75aICx1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NLO1X0p0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a1c28778so69590825e9.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764713353; x=1765318153; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QZdHyWWmApsjjCDn2e8QMrGzmJIItWsHx3ihQ/sGLI4=;
        b=NLO1X0p0g4swQR4H02maniHGpwEgxcFesWcxz+gBGDq0AL93M5EhLMA7r0uGaEYwCZ
         UIK/PSYbJmRaAXFoVjJOaxSGBOV5/R1dVq5n/0wktoZW6TJIRixW1VVadGHKj3DI+5HH
         rieDWfxDjplAXRuM7m5UA8cBmrwgDdChgjg8PwFz/i6jkVOf5BPzAwu47vn+JpT21XE8
         bamGs60QMHxqhMG4Deq9m5naNR7sTor+IZVbKONxxI6gNpljqt1+qGzyqXTMp0GnRIz7
         8VB7Ta0mAdZyJermE5T5E+stAZ7GG2rXl+E5hzXmyj1y8rZ/CIlnJdmcwFEHofY/drv9
         Rv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713353; x=1765318153;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QZdHyWWmApsjjCDn2e8QMrGzmJIItWsHx3ihQ/sGLI4=;
        b=G0+JjqDfuwPDeeoBRokzWOq2C3kSeLsvfc9oAa9S61gjbGza3NnXUz+Nl04vCq2pBg
         4iH0AWzYnPkUxCL3lMBDuqvtD0nEEy5tQVFFK/nqIAnn4zuZjpksY4j41gUf8mEvttXq
         D1jGHYxT41kncyCd9ATnJom0xzyVfygYUQGqhJklrjI327ImQj6mYmdAgEHZgEn7PY5I
         13Wb8zxRZDjXbv9CVs0ug4AtK4ffgX2BCMYrkcvxGrGO29tDxvLKkoEQfA6jR/5Dm99n
         yr0b+LONud+4TGsSOkPOSWUAXb89gbAfN+uUPmzGMGfrv3S/9NftqdKDw/CTh2eOR7/E
         O7xA==
X-Gm-Message-State: AOJu0YzJxjHVX0x4QGJBRPlJ8isanKTkxZwtUiLRiVvP9SlHjbV6wjMe
	Csor6Msx+GlpIPCwhq1gup08PG6uvOftAQYr3zMO/CLHew5lGg3GjYOv
X-Gm-Gg: ASbGncsGodVRIckGM1lpc9rW9Nm6AkBw+X/Irg5jlMH+7Q5BKn2nIBwI79J5Flxb45y
	2ohGpbzsKYg/vMhwFf3xF+mQrSUf7LngHHyQlGW3XRITLfI5N2TvHcb+zQ65xXWc0xmDb0PDG3E
	3d/Yy9DnWo1KxM9F63kT6dwBd9pksEkN4DxUtMfhxaspyWZ93gmXPf/9yvq5L6xT/RuqC6dRocj
	mTY/UWp6/9mvD0iAm2EPDvDwAwOl66Ng/pVaGqjY6gyQCJqBzmH7g1ujeH1k3p67oIqsiP9aySY
	PXKTpH0pd5Qh5Q4/tDAtY+pEY2PKw5GQdpyixBygZpmQMYItNL7DwoR2SBexlypBsu4K+ANJgWA
	upqaxnyUiPlRK+gG9U73qhJ5a05byVgeYpkwF5JONvG3Hk90ZhXwVr72obcN6OsxSaJGUUTv5F9
	pPV92b1UImg1M2RubqDwQiOEVdcg==
X-Google-Smtp-Source: AGHT+IH8+pWAJ529KWsWa9mRTXD17PRvLsD3mqdf9/QSEPuN1xXBNVe4cD4mvy6/Yn5E/kVLRNx8yQ==
X-Received: by 2002:a05:600c:198a:b0:477:7b9a:bb07 with SMTP id 5b1f17b1804b1-4792af44c59mr1574985e9.35.1764713353327;
        Tue, 02 Dec 2025 14:09:13 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:d253:f5eb:2f9c:dde7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a79760esm11534795e9.3.2025.12.02.14.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 14:09:12 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Tue, 02 Dec 2025 23:08:47 +0100
Subject: [PATCH v4 2/4] dt-bindings: arm: mediatek: Add Ezurio Tungsten
 entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-review-v4-2-93f5cd2a0d4a@gmail.com>
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
In-Reply-To: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764713347; l=1415;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=VZCofeu/bIsFeris3Pk/WudmT01MguyTXO5GJSCwC3w=;
 b=cEnXOlidRKO+M7EF/WbGPTKdPdjb8GEsg9zvd1HITzDbTlHAiki3fvcee5exQg1ZMD//SqtQ5
 sDYaWYu3Ev8D987v6dW0KDhUp0eNnwGlY4z9EEeAwo/o38O4K3brYzv
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
SMARC [1] / Ezurio Tungsten 700 (MT8390) SMARC [2] + Universal SMARC
carrier board [3].

[1] https://www.ezurio.com/product/tungsten510-smarc
[2] https://www.ezurio.com/product/tungsten700-smarc
[3] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- Squashed both entries into 1 commit
Changed in v3:
- None
Changes in v4:
- None
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index f04277873694..cffb0f6ac690 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -431,12 +431,14 @@ properties:
           - const: mediatek,mt8365
       - items:
           - enum:
+              - ezurio,mt8370-tungsten-smarc
               - grinn,genio-510-sbc
               - mediatek,mt8370-evk
           - const: mediatek,mt8370
           - const: mediatek,mt8188
       - items:
           - enum:
+              - ezurio,mt8390-tungsten-smarc
               - grinn,genio-700-sbc
               - mediatek,mt8390-evk
           - const: mediatek,mt8390

-- 
2.43.0


