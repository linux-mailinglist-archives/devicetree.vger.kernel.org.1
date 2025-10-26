Return-Path: <devicetree+bounces-231077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBC3C0A3C3
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 07:30:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2E0434E311C
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 06:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443FC272E43;
	Sun, 26 Oct 2025 06:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XRMTOAyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90839194137
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 06:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761460218; cv=none; b=ofikPWbFpL4G1d8DKRgMplbdnKCX0x5odBzCm1b1A/qs8gTixtr84As1hWq+jO2uxw0iLJ8nJHwZYxm5eDm5gl4LNGjKWs/a3SLDQ9Kjfb9U6+FSfF9foN1DsHmdvxHkFlQeglOTyu1PiFDCon/h/oB8SXF7C3wNYoNNvFId/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761460218; c=relaxed/simple;
	bh=l0UrZPDuQ1VP+DFF+jGn52ZaZbAfAyacMnA05GnYi00=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oViBFLJL7oHJiQaK0WqNGkETREpIBZ2f2Eks8B79C33XVOHPIltpY8WUtn4msRKT16akuhmCzZJFlKGScz9I5E06PLUUTYFHQ2uBl5tOGWaLx1NKb5eGvPX82EJjp4usNcikwV8d++DxzYEX+2l2aezr45QabuoMZdE1E98JMmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XRMTOAyV; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-269af38418aso42069995ad.1
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 23:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761460215; x=1762065015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IRxFuvKApk33BC3d8xXXeSMvlG/sWU//suNyfzB/QNw=;
        b=XRMTOAyVMp2ygdpEI9R9Okv0/+F6ELqOPmSDg20bwwDUAklPItxI4edr19Ic6ykqTg
         Efl3kAW2KTL63ICsFU321J1I6yqcH4reUUnUZFEX5A52oTvm5l9ccdcr28sBC//AWnf/
         G/x0GUFZt7wOxxBdpIBVJO74XGPMAcHe0FFwkQVko+Zu1bn5xiln+Iv83oCQjz6wkWbw
         099mLJSe8IkyGuQksiwub1XhbtE9CzHNSK1GBIixbfCDy+r3+xzU1zfIDawGw2TkkVTB
         CNbDgMAU5PT5zec86juiJNx3K+T1Lidtn4Wyj9aWOyvpRtzKS7IKDCEqkryVfebCsk8M
         wwrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761460215; x=1762065015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IRxFuvKApk33BC3d8xXXeSMvlG/sWU//suNyfzB/QNw=;
        b=UtCddMVUI4gPDSfG876O8ArK0rYgP0oLz12N4f+tlhGngVKum/HqogYOqrM6fRx2et
         3l33E0QyAkj0XupsZW67NaCTL3C1HJ3RlFZ3UCFhENgelbZy2r1mnSK+auqPrtIVc/d9
         hn6x9KM6chQ3h3T5yDfd0AE1atHLpQxzGHYhbEV7/Yq5lnIokKDTvg/Wstt7VfNTyR0y
         h47BE+L1rXGmYikzOBbOTbe1qt1zJYmHr0whQQ/KlfDKQhy2nRQ9Nkjir8vXYTSJCRcc
         dXqQzhfH7r3d8L18GyE8jjNltIZZFc6R8c0DUvhaBch9dt1UMwWeg9hHhsPk8/YrE7sI
         xxPA==
X-Gm-Message-State: AOJu0Yw1Yrttc4n2dPOvxhOVbxgzn59T13SC14ooayfdkE74c9fMyt+3
	37cm49WnQVXz/rSFrqEGYssQ9s07M75jNGf91YzxgM0qLTHF3F6vs9AZKso73ZqOtjA5Fg==
X-Gm-Gg: ASbGncs8dSdd//KbTTrNOBhERHinvMbqlbn3LaGh6N6s1l3H9RZFRte0N8wq9S2OYIa
	CqXbKBIESWRvyyej1Zt9AbNt/+uikxlslCgfRRxZw2O8nZAk6eBjPtEcc4aml8mbsJ8KF6aZq/4
	cp1IFH24eGCWCY4rDSPNaWwYNMZo5If387lKUU1SqXws10e8qwmiSB/Ku4tXf6tmAVdn1cuweoB
	m0Dj5xHRNhdfLiSr9UA86RCsKhIG/o0b+TsuuzjLsSx+Cajjqn8UaJ+WxPzFtG98mLSSTWC+WOv
	9pawEVoHk5I5e2SYN6Y7dTYrDQqfWNWfZ7JUSX3uecOdBLmiQLYDxGptyK2skuaLydercUCah7B
	OEz/LhR6D22co8hT+0tFBfUC1sXm0tHiOXJ1zzWCZlH0FlJiNXIwvZqwG34Cz+MCpMjjMUg9rYp
	0=
X-Google-Smtp-Source: AGHT+IH7PDnopz1QlhAta2BSK/2CCRB91dAXRXofbVcqthVpmjY2bJvJp6m9EQhBul9G/8U3I0lZNQ==
X-Received: by 2002:a17:902:cecb:b0:290:c94b:8381 with SMTP id d9443c01a7336-290c9c89dbbmr456083105ad.7.1761460214815;
        Sat, 25 Oct 2025 23:30:14 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0a60fsm41583865ad.39.2025.10.25.23.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:30:14 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 14:28:31 +0800
Message-ID: <20251026062831.4045083-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add NineTripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Cc: stable@vger.kernel.org
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..37687737e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1124,6 +1124,8 @@ patternProperties:
     description: National Instruments
   "^nicera,.*":
     description: Nippon Ceramic Co., Ltd.
+  "^ninetripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^nintendo,.*":
     description: Nintendo
   "^nlt,.*":
-- 
2.47.3


