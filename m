Return-Path: <devicetree+bounces-220528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9349BB973F3
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 20:53:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B46416D8C5
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 18:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF972BE644;
	Tue, 23 Sep 2025 18:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eTAgFoc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED70D27CCE7
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758653632; cv=none; b=l2OciZK/dHTbjMI92efPENxAGusasbgozYLQy/dBRQQs+A0DTtO3Bn7XKpZgh5TWg/OZNL91nGAdUN8KsFb67ggIY+Vpt4bY9nC81bx8BCyWW2EAw9sjtoyanpEXSOs8iq2Q+BTraSMZ59QDo+QwX5FhI12UVLELYf1wmMpkzak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758653632; c=relaxed/simple;
	bh=oRUBVfO2d3MoKM1jD4VAKRUkm+iozi0HUHHMy5T2wc0=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=GNkg4sbis11mf1v8VeT44HB9wX6vjWL0NnHN1t4E/4T8yWH4PzZCdbvhQXT2gjqXBwIaPoyblQ1YT6vJ/mulBJj6A6iejS1xWCvOlU85qk/ALtxw2ca0VL8mEwVvPU72Bgl3LEpjrMbTjRrAR6LLz4qET+6v8kDZYrMVhUQ2ing=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eTAgFoc+; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45ed646b656so52166145e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758653629; x=1759258429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=nWcLtw2qXrDtFeNiHTtrGneV08EOKIFUjDj5SrfHC4s=;
        b=eTAgFoc+IfauKpWV+Cy25xTn7xLFkB6jZ1zSdnt8H1bGXbwUxQYpsd4rUOhonayU9G
         P4HH7KoVAvpmjqN1YcJca+Kue7ItUK2Qk4pTfnsMe8uqb2bx+Q2MrPeQSTmbLtrQtdfk
         3Bd0HWvJNU97Ogj/NL7Fie7HQrjG6S75x9b0BY4SvXKJ0awSYHWdQ0WZfinnI/VcEWey
         0vg7e/C5EqL70Mni5L7EmV0jAhA6ooCCT4GWTBkBdMnoHnekb3hHrrnrWQJZl3K9gdLM
         QgblPjNUcfplQY+W+WvwnjAmDCExznuiGNxJI04GA7a2TH30PuNWCQ57LpJlYW4/Ss3k
         kv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758653629; x=1759258429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWcLtw2qXrDtFeNiHTtrGneV08EOKIFUjDj5SrfHC4s=;
        b=iv/c4r4+O98dz8pStrVgogePcQxcQrKYgp1pXdHX1qE9pWUy3l8z/ZJp+c52dU0zbQ
         kz9Np51Gl8hv5LoB0hu1uoWOsBIoNvQIfVnL+ZjunbSHIag8FzTf9IkjlofB4izCInPT
         gKh3sKfmu2cg6WL1xK9RbXCoqBNkmqsmP+z0DEKltjqKjuDUmGlf67HBT1rAqec2lqAJ
         89vImDR9vh0iDgpoPxGt6iT02o7YzDRlsaUkRHw42vgJ0P8rgldGc+pXG+uFBMylW1dF
         gBr3P78UF7+tFYb/iB8DhuWYdfmbE/x5piTen6xL9BQJdnUD60hdp7fX/qDtrUGYHHoq
         Jzag==
X-Forwarded-Encrypted: i=1; AJvYcCXZQyFEykNJADhtev6IbgSRd1yOMWdzgRBOAxQqmbcjdjxMcWZ7gM/OoE3kqyq/RjO+5MsClN6ZUUm+@vger.kernel.org
X-Gm-Message-State: AOJu0YzO8mlBJR5VWzIy1Lg0rTNurrudEPQkrp45ilRzmSeG90/nFvMD
	dfGabaCiBftxHriwJqmc71IXLZk6EgIKvrllrCRYB1nxqleUQv69Ef/V
X-Gm-Gg: ASbGncvsdkqwx1QWnPxHai1YSJuGygXQfA3aRoPYwQ0zW5C+Xz3mAWJULJfxY+vTmKH
	OFVZcmS5VslMhej8uBDRh4Nt6qrogPfVbgp6nifMsg6oBNBpFHdGnPyglq/sHuWP9XihgWqe7iT
	wfPKUOYFff0zxYV7FGNDuPXXX4733ElzUwfFkuwsXY+Ad9QNn/zawJ4ust4yRgeLHLKhX8gq/GG
	nLCQ+b7MnneTabfBhv9eIxpF5EPEKG5BDjwCSZPUkotcyZVBCqOxOXYSD+91WJn3VJ1xlISQSJs
	kzI8MHw9mkH4l4pFV5Wd6ZvRWTzw1+P+YmvHO+2M7aqWNa4/KXwMFRg/GAUv0ARO4JlOFWqN9cz
	UBg99mG0i4r7GSSmokJQFGbNVfrZmE5ntMNp2NQa/PKwV1YMVHTq/hRm+eL0u6tZQelOzT84j6c
	+lNIkwxw==
X-Google-Smtp-Source: AGHT+IGKjgQQvlEa+A94efi/b5b4nbfk7G0qwnMnOukLmIKhoBHDXNsNeAGIWOJr8BOP+8/JH7HY5A==
X-Received: by 2002:a05:600c:4fcb:b0:458:bf0a:6061 with SMTP id 5b1f17b1804b1-46e1dab51fdmr45625665e9.24.1758653629107;
        Tue, 23 Sep 2025 11:53:49 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-464f64ad30csm295014655e9.23.2025.09.23.11.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 11:53:48 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm64: dts: airoha: Add AN7583 compatible
Date: Tue, 23 Sep 2025 20:53:34 +0200
Message-ID: <20250923185340.21526-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Airoha AN7583 compatible to the list of enum for Airoha Supported
SoCs.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v2:
- Follow alphabetical order

 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 7c38c08dbf3f..df897227b870 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -18,6 +18,10 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - airoha,an7583-evb
+          - const: airoha,an7583
       - items:
           - enum:
               - airoha,en7523-evb
-- 
2.51.0


