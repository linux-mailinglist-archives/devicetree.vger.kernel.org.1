Return-Path: <devicetree+bounces-243275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E4EC9638A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E46213A3114
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E4F2FA0EE;
	Mon,  1 Dec 2025 08:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OTnM/j3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EB22C2366
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578509; cv=none; b=FJwuAhQh1rhtISlqCLf7EeKoMYAGihE+1X91zdjtV5exgNYv1ZJxS58E1ioTOzpza+RSseE1b6GEw2dCc9rfLSV2CKrLi8FzJHYkThHYYgJD9ckypBxSRQyc/wuNBlFlRygPqzpxls73xO57TKV6QJ0wQE+ez3/3eb5L5zyCrpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578509; c=relaxed/simple;
	bh=Z64vc+PH5218xi1icQZOA43jLOwOpUFrKJWdxhWwMZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UnklVom7nblFG5n/HApB2qVSYWdxTbc3ruI//a0QK1KbbXaYAUpudWh2afJDSjeZo2Gu3kCRHe2mT7YLdptcW4o7vwDVTZfgO/4DGCVfNYCHI9a82mriiHjNJ25oF8jOp5xiDnjyXP5iyEdNLptGaHLy37UDBDxAM3vCFA+v+94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OTnM/j3d; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso26608765e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764578506; x=1765183306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/TsDHFpJoTghU0e6gzw66+wowdVuqKszPma+r/MdGc=;
        b=OTnM/j3dPeXai7b3Ad5V+azIbBzakN2mOQx++FvXRpLTMNkxdEnNZK8Z6wIDEl/pVu
         sSrD5IJPRbIj0uAuFf2qISiF/2m967Dq+p88l8nCCbHuWxhQALbXote0fPYrr3swXJeA
         5hk9AgS7gW1UR0YD40CZD40eOL9wPFfEeDevjviU0/bwrmU20qvPQ1040+gAYeJkdUVA
         +7EMbiQQ4PEx76tC6UvNaHC4rPf4QgDLGsdkXjSqD/fT1IwVIyoCDleYqClOIR+ocAJ6
         U9cEW9Ix1VugVgTgwDN6qj3njxDLkESppBtYpIj+SZ2As6EP94rPE45HKrrpEM7T9EsS
         ML8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578506; x=1765183306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6/TsDHFpJoTghU0e6gzw66+wowdVuqKszPma+r/MdGc=;
        b=RjCsrlPM9hX8NA08IcAwMWxUuL4idN2yyBU8mkP8kVmXq9OaqIR0ehyunvljN/QEzM
         T+nqsZpUCp/rjkMfF74CVY6UjabJy61iOPbbC+FVy9edrZ8IIgMuj8IGI6HVVUppqvSM
         doFBDN5wnsBSjZqPaLerKBNAtOwDYx6zFWJGRmuDkyEtud51ZSzV0aukFPEHWl7F+nVz
         KmAsDRu1APmvw4suQXG9la/w6WGfNlR6aCLxdRmhuWCh4TTGfmN20JWeFZmHGyUgzFCs
         e68jZxC1SSRd1msWuLzZ30Dr8E9QNAz801l7QTFfPt3CfpVB9HFl6K/xGsVStqNExjb4
         ckjQ==
X-Gm-Message-State: AOJu0Yxptmgkleahxs0SdHWR+KZP9ABKTZm/w+PX33GcGUea/G9aDrwy
	f+IrEeqBcdm8vO7vgn/mLMYsMFQglBJk53ThWtyNXXbZruZc3VBf64AXJk92VQ==
X-Gm-Gg: ASbGncvaYd1WvYE7RK102+Fxwc1bRlW4HHS404t3ISgId+CM6y7bWoXIxk2nPgkcnYg
	fHFR9rS5wDCsVkcPH4CHfzIDtjeXabJYs5jVnbN0kETKOwn2UhTbMpwdd2OavD9/BMKTUX+yBHR
	3VDDVHo1/Y6eKAkhivG0865uTyeNA/lUjcgAIXU7xCXyZNdVxz7mizemoMfsG6tJdIxSyhMNeAP
	9jMkUZWSyYRiGogGsOontI+HrLhDUqX0OC6sdAvhF0cV3QPSTmjdAJ/5wr1htt9tqzUAvivMhAH
	PA3nW4AeWaXt0epzLlJZCPRdMI/7mcVPdO7tdKydbnkdHFZz0FPlAC1t/8tuT7BuEiAzM22gAM4
	4URIloVvVNFKbxHwF/i0ZvQsrl3MgHxpFXhxsBFDfKD/Yiii4sfTZOFBb0W76dMs5AO/SvxifRA
	bil8UgxLdcMABFhEtHPMjx9MqH8drSlw==
X-Google-Smtp-Source: AGHT+IEYuCTv935vGmlcGX3etHdHZbqBXh/TzCfPUEc0jsmHA4A4/uxPZ70+glSBPUk5gb6AjXKx3Q==
X-Received: by 2002:a05:600c:3541:b0:477:9650:3184 with SMTP id 5b1f17b1804b1-477c0165bc3mr380794285e9.2.1764578505868;
        Mon, 01 Dec 2025 00:41:45 -0800 (PST)
Received: from owl5.. ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm24186087f8f.21.2025.12.01.00.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:41:45 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Gary Bisson <bisson.gary@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 2/5] dt-bindings: arm: mediatek: Add ezurio,mt8370-tungsten-smarc
Date: Mon,  1 Dec 2025 09:41:37 +0100
Message-ID: <20251201084140.376058-3-bisson.gary@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201084140.376058-1-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
SMARC SOM [1] + Universal SMARC carrier board [2].

[1] https://www.ezurio.com/product/tungsten510-smarc
[2]
https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Cc: robh@kernel.org
Cc: krzk+dt@kernel.org
Cc: conor+dt@kernel.org
Cc: matthias.bgg@gmail.com
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index f04277873694..301f9a1e041c 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -431,6 +431,7 @@ properties:
           - const: mediatek,mt8365
       - items:
           - enum:
+              - ezurio,mt8370-tungsten-smarc
               - grinn,genio-510-sbc
               - mediatek,mt8370-evk
           - const: mediatek,mt8370
-- 
2.43.0


