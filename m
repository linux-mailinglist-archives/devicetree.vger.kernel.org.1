Return-Path: <devicetree+bounces-215924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3EB5329C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:44:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 593477AA5B1
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8074322DA6;
	Thu, 11 Sep 2025 12:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XM1A9Ec6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAE632275B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757594634; cv=none; b=ZrLA96h6Ten3LaZ7gTyv6v4oT1oNwZgs954Ii8RC+4HSPcKCdupE+Y84GBHpfY8+rn0L8gvLk26duMXgzVaG836VCt3ZD7nDgVh9fSPfQmbtZMKCWsMKgrixhjI26TtMteeD79Z+Wc1PyOhO4g5o2wP8Ln0L+6A4WlaxY+7vocg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757594634; c=relaxed/simple;
	bh=a+1IafQzMkRqd9Hy7+2ryDB7W6wFRG7cDp4dZjBJvkM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G13Sb5y77GE+Y9WlAMpZSL9IzDbxM2tasCJhFhOi/FPDbxjOU0prH1BTVfZdawltpvhuxNZLJmEhESpHM9mBZUe2SP/DZIte93t21HS+t8lk6fBjf9+/jrH423rdo3YFsjJnRuQIVQTiQNxcUxGp1eg2K/aNgqrvYD6hyAR3uWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XM1A9Ec6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45dec026c78so7351875e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757594630; x=1758199430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hoN8KhslkXmRFB53xJxTZys7BqlERNC+NzX0ipuiFjA=;
        b=XM1A9Ec63PIL6dD/4D84TuFrAs1yt7BbgsD9kQGQpLf9tve9uBlsTcOOhMiyufDtkC
         +SCZCAYRbQunKnm8I92kPkmlZ/3aaDTE4QomeQw32b+XCy2U0tGL6kIv+JHS+K/hFM3X
         TEQ64ZP4yo/NZuIrGAYtt8PZ/FgnTaQR50j3h21oFITAwMhTmKr03QOV6lh8Lw2rbVx4
         MBkURDx6eT6LuyWCL+9UYJXFFXTMgpii/hsiz3Asss8BT+L14KcQeFsQqk9Xkl8FS5+y
         MlYI63r/k9TLP+zWw+HG7RKxRVHmf+lUrWmaulbSPyRaxuRi2o/tAAH1k0XfMdYR5V2W
         ULMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757594630; x=1758199430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hoN8KhslkXmRFB53xJxTZys7BqlERNC+NzX0ipuiFjA=;
        b=wKU7Pqurof9+IRll9lkk/1wRau41raHWztYYsf+JFhCpFqavy4kRKepPZrnxasomwy
         U8Ad080QhmGMLJwhmBMUSJQKkWq/eNo7hLn3h35D1B+KA7I+v5H/aJjV3mAK1F79jpbt
         QHA8CDFHhbQKW/Cs0eLMpoRbkXPHQm0qgrkLQTMW+RUf/OfcKLuuHhN911hpGhY3k8sn
         9WVtPlw0bLYuzyUZrLCZsVvtIA1iMgSTPQ3NlvG4KwDvscnNENPYbJD/MHIZP0usS/II
         ldBYRwU8vZY7Xsq+aR1HBTSPncHCrCL55tzjEmFSxYfcUrf3fnHFoh4nOu57NgzH4Uzx
         GwWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkslkBqtb4qO/Sqv6UhFMyEH2fhb78cAptOw2ugEQkYWX+VouPf/OYQRzc7+4SBG7Gx0P28otnjM5U@vger.kernel.org
X-Gm-Message-State: AOJu0YxCUQ3x3fo5QMD2OruOwJl+iUKl1vW9LzOTFlFasr4g7wlFsYCo
	x63v70Fyza2E0TrMPUvS1z9OCYTbvRY/LLbcxcYY1Usp70YhWqEMPwsI
X-Gm-Gg: ASbGncsYmXN1+MlN0kaN71f/TI8m3lnMVWlytaGDaZmnasOLQb7tcg/Ph2F0QkZrfot
	fTOFlt7GSEv0THI1t2ToHCJi7UDvpMP9gyMjBkctcU0sXiA08NovF8GNLq6nqe370ln+M1Qjb9H
	SFwHAajD6QtwaSzfcDJ1U7oLuH/MWhFEGJOEOOfF20D2d6r5oGFSPz29EyPLHjQ06/GhqRLSCdf
	mfeSV3odZbfMb8IQU4tCkW9YQbwXwUQY3Jo/Jd8EiWHwiEXiukHHx6aCRXlFa2jlvlimZoUFhqE
	GQ6eo5ni4XwrZ0K4QY5Kr3PLhs80uUJJKjA+6YCmCy9gHprJT0GETZm9xnFUNzpJDwB8OfPTas+
	7heTG9qQ3UsIbhR2BUVMHA3+HLUXDpc9+mGcUAcAa6JdLy7n3QbfsZkOUp1USrZQc4W+qLB/KzI
	C3
X-Google-Smtp-Source: AGHT+IGe1XpReT0Pizyuk+QKSriouplCWFhyveLmKS0j9Z8nPLjbNJUdn7tPUVc9o8qqTN1eAfqofQ==
X-Received: by 2002:a05:600c:3b1a:b0:45b:9291:320d with SMTP id 5b1f17b1804b1-45ddded3454mr190632425e9.31.1757594629743;
        Thu, 11 Sep 2025 05:43:49 -0700 (PDT)
Received: from Radijator.localdomain (93-143-13-188.adsl.net.t-com.hr. [93.143.13.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e03729c76sm22591495e9.6.2025.09.11.05.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:43:49 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Thu, 11 Sep 2025 14:43:44 +0200
Subject: [PATCH v4 1/3] dt-bindings: mfd: 88pm886: Add #io-channel-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250911-88pm886-gpadc-v4-1-60452710d3a0@dujemihanovic.xyz>
References: <20250911-88pm886-gpadc-v4-0-60452710d3a0@dujemihanovic.xyz>
In-Reply-To: <20250911-88pm886-gpadc-v4-0-60452710d3a0@dujemihanovic.xyz>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Karel Balej <balejk@matfyz.cz>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: David Wronek <david@mainlining.org>, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1291;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=8lO4nr828tWQwLxmjjV752k5xLRe27/oDan4m5yXVVA=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBmHjjA+mxQe8XOnYVTbmVm3Gx2atTRdJabx75wyq3Zf6
 aVbtmzzOkpZGMS4GGTFFFly/zte4/0ssnV79jIDmDmsTCBDGLg4BWAiB00YGd48eV8Wb/rMZhvX
 7OxNz3zvl31c9OLnza+ZZaYe2tIWLd8YGT5wprVvncL8rHe6ZNFE1fLQGbG54esFlARtBF83uCz
 ZzwgA
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

Add an #io-channel-cells property to the Marvell 88PM886 PMIC binding to
allow referencing the IO channels exposed by its GPADC.

Acked-by: Karel Balej <balejk@matfyz.cz> # for the PMIC
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
v3:
- Update trailers

v2:
- New patch
---
 Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml b/Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml
index d6a71c912b76f7d24787d346d4b4cd51919b1cf6..92a72a99fd790805e775727e39d457608fa1795d 100644
--- a/Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml
+++ b/Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml
@@ -35,6 +35,9 @@ properties:
         description: LDO or buck regulator.
         unevaluatedProperties: false
 
+  '#io-channel-cells':
+    const: 1
+
 required:
   - compatible
   - reg
@@ -53,6 +56,7 @@ examples:
         reg = <0x30>;
         interrupts = <0 4 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-parent = <&gic>;
+        #io-channel-cells = <1>;
         wakeup-source;
 
         regulators {

-- 
2.51.0


