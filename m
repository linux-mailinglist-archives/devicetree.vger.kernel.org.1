Return-Path: <devicetree+bounces-193608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE29AFB04D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:52:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD1473B48E4
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19972951C6;
	Mon,  7 Jul 2025 09:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JcF9Vt/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDCF292B23
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881830; cv=none; b=bNPQnot2WasZ1pQoU8VPaz/PYnY1FFS7O40fzZG3Y4/INdUwBiNIFAv56b+yQj0PVbG6ZklLAa+xK6/D4qZNYw1qSqGuKc6ytpAEmRZ29hoUJ+2gPeiHR3ZJ3cxJzOSR2kRtoe6hxO02ILY3YFekI9anmRm0WdbIcurMD2V+2Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881830; c=relaxed/simple;
	bh=eR+aotf08ZKo3ENcb9NMOWYQ6FjUZReWaE6ey2wYvgE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Msdu42R389aqW0st4gRj7+S7hp9Jp9Jz7bddQx0CsB80fWSdwi8f8lAc0nCk7+gd8m1XErcEQ+EeyhyxDINRdqMWlrezMO0YoxK3ZibYeYvlN9JlnIINTn07NTOQFNVwO9rIv+BVHGHbMmq9x8y0ey4VX1Sgpqtwn7Vn1ubxU+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JcF9Vt/J; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a4e57d018cso424516f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751881827; x=1752486627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5E5JEZIFWta2ABLoW1ZBfOW72t+e9t8O25cQ75yOw6Q=;
        b=JcF9Vt/JWTv5EDiDlCOibNL4Pz+Glt2QMT0T/mGKCoS4lLXGmugH1F9Efus4pbvML9
         k3rYvxinoVDFzzOJAjIryKf7fEr/VPDm91tm1/6ljMf71wK8+ndtaiBLAx6Y61F+t07Q
         jEcY9+nmxvAueYkVKSIXej4JZbPzb2FYkRpkjiVL+o6Y1+zfhurffTHojZP2lRlWzHWq
         KQZcjJQBq+/TsJlAXLS7KZSJEOCdRpM92cQ9aa2GyhCm6SgNtyvd4Mb4XkQYRwet5Vih
         zPHQb/XpNA0zkCDUACH0htsvpudYUeFemMWEANE0+Qtc+S+RpXGLRzWP7w0xNXJlWTAn
         pPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751881827; x=1752486627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5E5JEZIFWta2ABLoW1ZBfOW72t+e9t8O25cQ75yOw6Q=;
        b=pUWJtAfWfRzBBlBjoxVx+q4Ld0AJSqL0QcQNc+dcAuJ1pqXyC+tvU+3rhiA5/RdDkw
         XrQ1sA64ZWzD/0DiOVkuwnmpOPpaL+hdK/Oz9gvqEkCXapWDUffSg3JbJEKZv0Bz9s/T
         X8mEex28336pgFBd7hB/tRcVXUMkPf1u6xIk8Xv0K4Zto2FcqxBALbwKKQ8eA7cu8Jng
         gOlMwbSnFeJdkyQnWD+JvjCSOxqShJIxUtTo49tlP2FGDdAh4W7wLa7hn1plx+iSdK5S
         /EJQFRkrAj2hVtaI+qkqSO/ONbgraSqt1uSE3bVfJITwG4sFOmPO3gsZzMNZ0r/tvBrv
         y0MQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/OdMli+8NZ2m269zwI7WZTjFrlManGG05GaYivX5Uern3RIT0iwnZfvHT3/44Zl4AshK1Wpaia4Yi@vger.kernel.org
X-Gm-Message-State: AOJu0YwwbKOtZjKqolorUP1Sb/Tg1kqs4JIHXREPcrazOcXX5e5TL+Ut
	OUum3FD9pgXNqpqawZclgGHnoKqFKNYbWNWO8r4tFMzcrEK18rSA0lWw+wWxuXzKx0g=
X-Gm-Gg: ASbGnctd4E+v+hEZJVUfxBrUGu3je1IZG23rlkibauqW3o6ZbqKJFTIX4MLHTEN7pvo
	vM3eHRV+D2ZDAmpDTxYMILA9HTSkw6of04bOxS4Dgc2JVtjtjCjJlnCsis5exQ8ZEdOEcKqssnM
	mMIo+M6WM0iVokiccVkazgA0jdbetSZaRSZc8EQOaNp8IQYcLzBUehnntj5uLRl1tbesLslQhTZ
	UgI7M0w4BS+YgJlAnD703V2xGjUlUx4uY/N6U9KSY7cTv40KSJ9Q9fd3hjS7xXgs5OzdvMs52Vr
	hrYGDzUvBtt7iRdsofIE5JbBP+7dzLp2z5DQ99knJjh+JZ5dC5Jv0B/s0hIDw9azEq1JOeCH82w
	=
X-Google-Smtp-Source: AGHT+IHmH/DyFNcbf80DPOuO573nop0oPiYq3Gswn5SFnUPNhAXHk0oG5QkRljLLczy60tJ1PQ40IQ==
X-Received: by 2002:a05:6000:40ce:b0:3a4:f744:e019 with SMTP id ffacd0b85a97d-3b496617ce5mr3045249f8f.16.1751881827190;
        Mon, 07 Jul 2025 02:50:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b49cb46c61sm5670871f8f.63.2025.07.07.02.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:50:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] docs: dt: writing-bindings: Express better expectations of "specific"
Date: Mon,  7 Jul 2025 11:50:21 +0200
Message-ID: <20250707095019.66792-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
References: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3289; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=eR+aotf08ZKo3ENcb9NMOWYQ6FjUZReWaE6ey2wYvgE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoa5hc6ZQ1D/vUBkjCuaUES5iiDXcMF2BA8XGj2
 FSx5Yf1SFCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaGuYXAAKCRDBN2bmhouD
 17ltD/9+CswJTTzrANQC0bmBnGUOrAqba7jb45DwipJZ/GCDE2d58SRp0e6WfXvu1btWNCbI99r
 sVHeAt0n2xA2RUL+nfjnR4EAkRarMIAX27xGaxXYryFAklKW7xDloIlSy3Y/uk6PaYbEB+U3c+6
 Uu8n3Ic1wVT93iMNmTcxcpfSOAu+SH8DWZ5yGwsDwrX0SYZoCrl/26qNc+iQRAj1t/Zq3H3wupO
 F/Gj/f9Z7RkCpOX4PRN7U30SmyJ5w8AEe3vlqdGamMuH4ifnBLZSvQNqCIwrubWkKLEDjHxzdpZ
 +x2x8Nb1E2/ZaFMj6su0DdQ6qhJru6wcKAnmHjSZeCMYwiuIx/AUNyMSe5acydXCY19VACuvEKu
 R+W7F7lVjmcX2oOLGpADcx3k3sX+SHGpCZbGBajxilVKrhJyQlJBwDOBGk1QuOOnnkgxgYKfYPe
 +dimrWTad02rY4rOTbmPiQy2Knk7rhXrJIcmEZWyeGDpclZPBKJ99BAcX+/LsvhtgPTNfJx2bup
 qdXfmbKvy0mw4H9vo5f/3X07Z3qAZurxC7w4dHmAy22EhBly+hAGnNxYL4zP5ET65PeYJFySKnR
 DdbTOAAHoq1mY7TA0V+owg76rNgxZZo6O2bh6a/C2a9Fc1UrKiQKGAyE70ptRvJOVWp2g+kZwQR WdkhCkMWdbmwn0Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Devicetree bindings are supposed to be specific in terms of compatibles
and other properties.  Short "specific" has many implications, so extend
the description to cover them:

1. Mention no family names and avoid generic SoC fallbacks in
   compatible.  The list grew, mixing DO's and DON'T's, so split it into
   multiple items.

2. No properties implied by the compatible.

3. Document desired lack of ABI impact and acceptable solution if such
   needs arises: clearly marking it in commit msg.

All above follows established Devicetree bindings maintainers review
practice, so no new rules in practice are introduced here.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
Implement entire Conor's feedback:
1. Grammar
2. Split DO/DON'T in compatible section
3. Rephrase the ABI break
---
 .../devicetree/bindings/writing-bindings.rst  | 27 +++++++++++++++----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
index 66c94b5adc87..962e38a1751a 100644
--- a/Documentation/devicetree/bindings/writing-bindings.rst
+++ b/Documentation/devicetree/bindings/writing-bindings.rst
@@ -39,10 +39,18 @@ Overall design
 Properties
 ==========
 
-- DO make 'compatible' properties specific. DON'T use wildcards in compatible
-  strings. DO use fallback compatibles when devices are the same as or a
-  superset of prior implementations. DO add new compatibles in case there are
-  new features or bugs.
+- DO make 'compatible' properties specific.
+
+   - DON'T use wildcards or device-family names in compatible strings.
+
+   - DO use fallback compatibles when devices are the same as or a superset of
+     prior implementations.
+
+   - DO add new compatibles in case there are new features or bugs.
+
+   - DO use a SoC-specific compatible for all SoC devices, followed by a
+     fallback if appropriate. SoC-specific compatibles are also preferred for
+     the fallbacks.
 
 - DO use a vendor prefix on device-specific property names. Consider if
   properties could be common among devices of the same class. Check other
@@ -51,12 +59,21 @@ Properties
 - DON'T redefine common properties. Just reference the definition and define
   constraints specific to the device.
 
+- DON'T add properties to avoid a specific compatible. DON'T add properties if
+  they are implied by (deducible from) the compatible.
+
 - DO use common property unit suffixes for properties with scientific units.
   Recommended suffixes are listed at
   https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml
 
 - DO define properties in terms of constraints. How many entries? What are
-  possible values? What is the order?
+  possible values? What is the order? All these constraints represent the ABI
+  as well.
+
+- DON'T make changes that break the ABI without explicit and detailed rationale
+  for why the changes have to be made and their impact. ABI impact goes beyond
+  the Linux kernel, because it also covers other open-source upstream projects.
+
 
 Typical cases and caveats
 =========================
-- 
2.43.0


