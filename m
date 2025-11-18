Return-Path: <devicetree+bounces-239879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 877E3C6A41F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 641982D7ED
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEB03659F4;
	Tue, 18 Nov 2025 15:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tn3tOXj3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EDB364EA1
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478544; cv=none; b=mr03nXfrQJD8/rRFoywz5UiO/joQ/ncVi2YyeARXOv+hY+tGTUSMgw6nASXid8GRbwnL8ijrbneMr5cWZbmRvsOcB+2gZGyVTIIr1mJD8klkPvHjGWsmf35F4zveO1ApL7Nbo9CQNmZdwNHdPXNi2odP9h85GyzIbqcOY/NPm4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478544; c=relaxed/simple;
	bh=1ehExbLkMmNgsVXFhI/3vAuhpWWLmzmhuVgV7QDcaGQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Trp5FHv6sLaobvDZoElyPuXatJ4+YqElov2/8vUay/8XO4VeKvIVuKLqhaO+nmAaVhwNKgj/4PnY8E4bHgjYnspx/WucMGxk6b+g6InqJNK1+1uF7y1TSDBgteP0edFFvCq+CuGJnlsYpDyxEHI3Pj+CuJjqcPpJnzlaegJCiTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tn3tOXj3; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-429c82bf86bso3271247f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478541; x=1764083341; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=Tn3tOXj3n1wKPSz/QuesbZCY8Maf7QFZ+rwoCzxIvg4DdKkIopg4DPBpOmxtJtQSsx
         X7mqTgzQXIbAJlU/UXrPli/qNGypG622FZ/meZZJqGo7P6+Uz4hX2tqrFtXVq497HA4w
         3dB9rQ1Lsn2DU7JVHtq7sJGeZoEM0Qcxe7UgXNFQP7v+lDeY6j9PrHiCjH902bAYvhru
         Kh+U/cQ9I30211qBbdKGbOPSbaJ0ekvv/VQGKeqz2ohrqZ2lW+oFU2HresMEJ4VlYGWC
         znmk+WRJKRwwjCbE3s531uahIS61+KeqI5ikKYJNykPViBMqiUmuMY14QkNJ9qJJdwOf
         0VaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478541; x=1764083341;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=IZuzZProZkvUHQiY2ToWmSTq2lkRHoKB1BMnisnmGuKu3XSAkps6YzCqLc4nFGf1fm
         /vj68RCHIS7/1vlDuot+4hFuwrOvO2MDV/YKwt+JN+GPCLMwbaGX5se220/zt2i2o0R0
         7sIlbmOlC0hFiC3UA05+AUogfdNhirGbrks2gqJCEUjKj/DVVCf6HtGvEl17nkRG5Ph9
         HrmZBOAmhTuW5aPfndB5XJ3PJdiaDxn/5vpqjtvoLvSYa7jsLtcvi3YrNKfwGECUZ7o2
         RNPzQ8S1h82FLSr4FtP5AihxMaK/leqizCQ7EZxoTF+XrR0Gs6jWhgdvk2gWXlFa/OhU
         lBdg==
X-Forwarded-Encrypted: i=1; AJvYcCW3eCMK98/6zlDmT6DSyytbozTHB+fPt7LCpqFcEZwEs1eqsh5O7lU0/bp6jvdsR/ZxE+58y3ARYagk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+pNCSNzVAL9WqiSpaica14Ex9D48dPkxCeV+0ssZcZRDO0Yzk
	TqULg8w/eRsQfMMpwLx/bsG614Zlb9Y7aT+cLjS1RCsXViB3Lgbqf2xA
X-Gm-Gg: ASbGncsiQuXMoD+UKIuWYdlJNRq+vNkr44N1ftNJ++AUDvcZgKONqKYsbQ0LxL05STO
	0oxV0LpC0ZP7dABEG+PR5un2TaENL0mdA9DK/Bf0QpBYTjma0MJcpayzijIioWoq2Nj+Yr66Lqv
	0h5NTljjhwYGtcFSOVqamZrP3LVNynIrGsNsGLQ+hlEKsHOSjoYylDYE3TCuG7SuVcHuAhbU2b6
	lr6a8VsxFZdnkf4U/97O2XjSbBhRxpR7c8T9vKSdvaZRdl16zdr1LZUDAQ1o8tvu2+j7nASv6Bn
	MZQ+x5AlaSePMlEW4UGGORhpgX0cfXlqCl4LOmfAsGnsZ56fsaUvnnzEl0xyqPpcYfsz9zdyzDg
	alqyjL3ZSjyZ8P7JDO5wsqj2GuDROvCwFeBcHG2uIfPMws/Y0ShYOlVcWYAqAEUiNoQnj6BpjDH
	5VBgWGBHGnjn2kngL2Gi7x1Uo8xgXsme3oCLATmMiv7WRAYeS0TB/hwKSgGVUduEIQ3to=
X-Google-Smtp-Source: AGHT+IEav3zLRv8xfizJMoA6AzANIil30gdXqV2ruo4JHsyCzceH+zoUGEb+0IQGqWiBDCnkBR0TuA==
X-Received: by 2002:a05:6000:2083:b0:42b:3867:b39c with SMTP id ffacd0b85a97d-42b593745c4mr15995888f8f.34.1763478540535;
        Tue, 18 Nov 2025 07:09:00 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f174afsm31825235f8f.33.2025.11.18.07.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:09:00 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:08:00 +0100
Subject: [PATCH v9 4/7] dt-binding: memory: add DDR4 channel compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-4-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-86b30

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add in the memory channel binding the DDR4 compatible to support DDR4
memory channel.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 9892da520fe4..866af40b654d 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -19,6 +19,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - jedec,ddr4-channel
       - jedec,lpddr2-channel
       - jedec,lpddr3-channel
       - jedec,lpddr4-channel
@@ -61,6 +62,15 @@ patternProperties:
       - reg
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: jedec,ddr4-channel
+    then:
+      patternProperties:
+        "^rank@[0-9]+$":
+          $ref: /schemas/memory-controllers/ddr/jedec,ddr4.yaml#
   - if:
       properties:
         compatible:

-- 
2.43.0


