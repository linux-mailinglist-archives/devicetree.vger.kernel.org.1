Return-Path: <devicetree+bounces-149875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A60A40AAB
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67D3E17C2C0
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A17220A5DF;
	Sat, 22 Feb 2025 17:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WPsr/XMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA581FF7DA
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245330; cv=none; b=blCgrqXDHZbh7sh0sPFeU4LIXvZ+qfV5J5CkazqcthWTKYswyTnZPuItV2fY8XzTSc+cY6j3xSpufHT15S/mMsAW61opr0syIloQdBINSaqeAWXu7vTJG64UOYoxcT149/RZYr5PiY9uSBdYH1SVKZ7kCiwj4Ugw9WUf6mwD6BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245330; c=relaxed/simple;
	bh=zvmp7N8tL1zoPpfYDixqa/3EzhUslHblS6hVDEzmodk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YrpRWF3F+WbAgD2tcHiqZbhmoqkXqsyS3e+oXKSVNZ6qBwkW/h9vqnPiX4Fo22YiVYCBDwWJaQ3mmYYTUtaQkiZlGrsrYx2C1bQcMn+IoBWJ17xyRGsJIQPLFs87GHdskJWqZh14aTXXtfU5jQNj9VcTcyXhqdl1cHTc6l/+hQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WPsr/XMC; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5fc01d3faefso859452eaf.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245328; x=1740850128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPcfkurtbMpldzDsTGUmb4ViHTY8bVGf8RoBJkJSMuc=;
        b=WPsr/XMCLscEZDSJ0N62dWr3kpF7oTGei+UbsGfcE96IxSwxzktB4CViGRtnb99w1L
         A30pX65QlhymPXOAbeRDSo99YMviDA6t9NqGeAZzeoW82QlpZpx77Zv0Zk16Xqhrq1yH
         BCN2pg9OhDzLaGag/49wjnWEgasqYO7zxfXCe3z8P4jPbywT9UsyR29z82CJW8XJsCLq
         4GKCeavB3qAp5mJfdowLlbxOmJDMcwISMKLTBvHV5XG/vMzRDZBRLJP2xbOgqZATrSrp
         ugXNezfPIenhKL3CSXDxNXQ+v9Ji3cUvqDM58JYt8+eaalKqyxyRrCtGvdo13nSaCusO
         IeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245328; x=1740850128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPcfkurtbMpldzDsTGUmb4ViHTY8bVGf8RoBJkJSMuc=;
        b=IigW5FKXB3TKyYX+78X12EymgTRaR7zPbCJVgcYFM2Gg94CqR3HsFnAWUhW31pKmif
         InzdAvPLPKB9xShXmafw3LtgLm8C1IMN9s5op+wQx9Z6a51XQu5lnvUVavOeGLgyAWTp
         iNVUJTwouknwbsxrcVVVzeavNisF5C8Ja+rHLljgM0wuANBP1rThkNWCo1kAO7yYaRlH
         RRD0PpPAqhaJeQStCcxIt3zGxuQx7TfoSvAwm/k+mTPBQFB+Cju7dV/yet4vpfwAsiBV
         HUAord0tNE6DybIm1TEg8mfcacCeZ5M/7q0jw7XQjR8LJuER2A61fN3+dinyTr02FaUL
         I8Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUZK0g2geShAJ2Zja549u4/pqWi4O4Q8ZVfPmWrEMRXgn7CvE+h0D1wkB8Vllx5PuR9XgfBIaCbvUSu@vger.kernel.org
X-Gm-Message-State: AOJu0YxqCc3RWpdmQOSoonoqMplCqLieDoGZSPPVC+yTwQc8pTZIuTMA
	WdtPQo8W3PlEdarBOAFb3+iftyxLtz0CiAf4RWepN/tr7LyyWARK
X-Gm-Gg: ASbGncsmnR9MwxBOHwd0lUk9+iukZy6PY2gj8mwZj5n4iLm8KoU8qDaN6HM05CHoQBo
	FIraqQB0BhiX5JF5Tp6r/S3baf160bCzh1bRj12JgpbfLPeojwk9enLnomcMKjtPqQZTbhKKpBM
	oo57HZUPN8muO7NHBJ3UZx9H0/y/prrdATJRAdDX2P/42Yc46nxIkUfsCutkOSNgwDBRTFx7xWT
	fqw9HGsdvMxhDX4fsS58dkLTdglvOIE03GFnuzjjwZC92hHz2EbFqU4ttuTLVn85nmZ0+R0DuSu
	ppu0qURDv23IuDT/OGMhzsI3DpbwQN7opUY=
X-Google-Smtp-Source: AGHT+IE5vkPsaaulzdFkWGm4Q5tVKjSsDlLUDZVTraSy9IbqB1tgml5CpkXqxPPTBT4De/+93snqRg==
X-Received: by 2002:a05:6871:7b02:b0:29e:6bdb:e362 with SMTP id 586e51a60fabf-2bd50d6bca5mr5576474fac.17.1740245328373;
        Sat, 22 Feb 2025 09:28:48 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:47 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v6 2/5] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 11:27:49 -0600
Message-ID: <20250222172752.6254-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222172752.6254-1-honyuenkwun@gmail.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 23293344d8eb..c9914725264a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1141,11 +1141,12 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Max/Plus
+      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
         items:
           - enum:
               - xunlong,orangepi-5-max
               - xunlong,orangepi-5-plus
+              - xunlong,orangepi-5-ultra
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.48.1


