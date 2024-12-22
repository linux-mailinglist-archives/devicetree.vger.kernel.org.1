Return-Path: <devicetree+bounces-133396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D051F9FA74B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F151B1886CC5
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65181925BB;
	Sun, 22 Dec 2024 17:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cAQ71+TE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E14191493;
	Sun, 22 Dec 2024 17:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734889094; cv=none; b=XSQvUcY3U3BHPdDo10LQWT5PWBPdeJHi4SHSdLUSZybHgu+2D2TIYUOUTMqrV1xX1pbh/We5Wnt+TkxwWpP6vZpR2dThaZqyQjutw12yfAvIqknw7fw2Fw6Mt2wRC73/GdenNuSbrYFKv75AyaMlK61Jf1RuvE3DVKt/O4wMVws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734889094; c=relaxed/simple;
	bh=99+pLF1VvDcoovFOPcNeSVJ7IG/4gdQK3UKOnT6V4Zc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s+D3edE899mo4cmmsLaNyf/HabjSwKSTkQHt/TMbWTyIurNFKeA2u+sRvDFXCkC75tQisdlOeGLGQWjM52/EmMr12/QiWx7aUj5WKd3G8td7DyjMaubEw2qQGHT0OqmNVwBd2Z+YtpdGemsisRts9ZyfgS0qzSijntQfX4/8Htk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cAQ71+TE; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2163b0c09afso31044735ad.0;
        Sun, 22 Dec 2024 09:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734889092; x=1735493892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eyr6yNUD2cI7FDLN2P5orlGmGipVdT5OT8foTnjmml8=;
        b=cAQ71+TEOiX5kFQHsE1x6Ly52d6bU3iXN4I6GQoXN/xdaV9TCl9jF+sNsRWFrlSH7B
         6LvEwKICm2bINj2jBcm9XPjJNxXkdq6mu2q3eAfJTxthPcn94OpMRLfQ6PSfOxfcS2DT
         fKpy0Ad1TJKetYdBpj5Vo2QLs9DPVI0QIsXEVfZIn47zpjt/TUCop8AxYe7s/dxYYALm
         WLHp7zL/9bnxhQVfeSBAk1MO2OgwfCt0umMwbT/RAKGBPlGEFyJdgJRl7md2j6Caucm2
         b5PXlpT0c8b5wFPkHkjWYy+caPPqDcMZmaPPrKJy0Hrgz0FWaglFMwJCKJPeHb3aGHE7
         NonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734889092; x=1735493892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eyr6yNUD2cI7FDLN2P5orlGmGipVdT5OT8foTnjmml8=;
        b=I1/7FcztvZobw2xkpvyhBidW2R0V6NibqNErMtIhkXwW3tAxiYhmzXakp+tjDmlEOB
         dauHDwXW1h/HQtZqzPvB/8CxDeHr81cklQIt3DJBlRj6fgyCDCZhT2JtUa1zz3vEEwKm
         m1g6pA4Fn0YqoU5od8dMuubaqf0/XWVtIJljE/VPwyrFcXAErrh0S/jSNGTNP7nfKukF
         YpBq+ITz0vTLiL3WZWyDASzrsTHqH5Uf5Jse5byXYhCwrgc9WtpEPOp1OGfMTcQByl4O
         kySSQCmKB5r6JQm5mHbuaDjuy6g3JclNmls1y/kdJ7O8zrVDQnFLoHe8IMGSJ96K42fC
         uosQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkeBZG0cB+6U3biQYmkR45eFDyicYvhDRBmi2GotnMRfeq0R1RJvVAEgbTZgppLyWsL2NTDMRDnzX+@vger.kernel.org, AJvYcCVpk4ciDewHiqmQKlPfp8zftnLfBbe1cWg4Q/e2ORAWR4KY6+tnKiWllK6ypH+a/omsVF0D0IgEzIMhV1PI@vger.kernel.org
X-Gm-Message-State: AOJu0YwGCaRFybzm5R2yYguxkX6NukMr+d9ry8P9qQBgn5FZ9Pfi+qY0
	yrDQnXn0m2WU9T6HuKwTrEauPG5QDXIXoMdh+QxwJldqFfIGi9g9
X-Gm-Gg: ASbGncviFokUsC2uq096MxtfSmS5lBU34FEOX6Dz3QujyW0pgyFT3hQhhxDt2HiuHai
	ySQQjB7HfHZ3qp6rOGVYGn6x175UVxFAtdlu4WV1Bl+KPiaymZlHz/3jZrjd+pWJ7+h4L6cJQyV
	dRzr2b1UTMLX7TEQzMXQ+9j4POZi1awKbVCUJEMkQuk96Pkk3oI2N8hmAD3eOrAI3XvwRplCuBM
	FRw5Dx5r7hXXxHs2FkTjL/w9tlmpBxvlKDkX5yTNFC+JqYoaCZPf1aDFw==
X-Google-Smtp-Source: AGHT+IGg3A9VtGHmKoL3I6uc1+KXYnk62Tn0Sq2QNU+0LcqVq2zEWgfuaUVJiejhoF41amkKc4KnEA==
X-Received: by 2002:a17:902:d582:b0:216:282d:c68c with SMTP id d9443c01a7336-219e6e9dff9mr154141555ad.23.1734889092510;
        Sun, 22 Dec 2024 09:38:12 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dc964a73sm59328175ad.45.2024.12.22.09.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:38:12 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neal Gompa <neal@gompa.dev>
Subject: [PATCH v6 01/11] dt-bindings: arm: apple: apple,pmgr: Add A7-A11, T2 compatibles
Date: Mon, 23 Dec 2024 01:34:51 +0800
Message-ID: <20241222173750.148071-2-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241222173750.148071-1-towinchenmi@gmail.com>
References: <20241222173750.148071-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The blocks found on Apple A7-A11 SoCs are compatible with the existing
driver so add their per-SoC compatibles.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Hector Martin <marcan@marcan.st>
Acked-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
index 673277a7a224..5001f4d5a0dc 100644
--- a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
+++ b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
@@ -22,6 +22,11 @@ properties:
   compatible:
     items:
       - enum:
+          - apple,s5l8960x-pmgr
+          - apple,t7000-pmgr
+          - apple,s8000-pmgr
+          - apple,t8010-pmgr
+          - apple,t8015-pmgr
           - apple,t8103-pmgr
           - apple,t8112-pmgr
           - apple,t6000-pmgr
-- 
2.47.1


