Return-Path: <devicetree+bounces-135299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 887F2A006D8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54445163755
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71C71C5F10;
	Fri,  3 Jan 2025 09:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="ZhCL8nMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA211C1F29
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735896205; cv=none; b=byGCm+i2kNZyeYO9WGiGbF9OKPezRs41ZIe1KOr92TXr8PsutUvFG5b+94FhKfczuBpnlj1zMIPF+f/47QK59iIuMS2LmDgKro1dq2Gc7Gwj3zq+b8E0wSIy9luUlLYGmH5YIyKnSGnju2OSXl/HQSsjDKHe4NIif65Uwkomw9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735896205; c=relaxed/simple;
	bh=HzsCZIYPQLN3rAhPo+FvZIU1phcYLS/kN+/o6gpGYeQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Ep92NJJNe204wYBAVeiV4sYYuPGD2A+fE4Y7dxoFZ4BdZpcAxnO9wfplw3wLSIw9H36niv4xxflZS4z0ApBJx5dlErm0f/xK3EHyI8oGvJAs6uQhjZcw4gn7vEaTWZ6yJRSgCznACQnJ6pHjJV/8m6noAjc8dKWomO2VnzvbRJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=ZhCL8nMm; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2161eb95317so171679365ad.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 01:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1735896202; x=1736501002; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VFkSGyCgykSC5OiEZAY9YZlDtzKCaFVTljqXIH3rhhQ=;
        b=ZhCL8nMmAF7ZsQXj2dE7sTMgUWI4Yi4Jr5c95w4CQ3zx1/mR5qwT+QqkL8PEkc8L7H
         vbKN9W6WLUjrgtdeSmc2iwYywoMuHOZLBaGxvvF8TREZqJx7Jx/i+UN+upO2KJCzq5/C
         nld5VPPSEiXomZ0Erkig7PQzT1Ok05dUQ9QGHwKL7faA0mpR1SIRpZHSrEyyziBRgaLF
         bwzBbwe7+hQfBOCyMmaNazFRGFCkwKNAjniHeQwrdDfmRZ97cSr05PQPLTIaf3T4BZiz
         bnAQ4qsZwSQAKt1Clx8EyGj4xrqTagHF08vpTY+aaEeiUOHqkrPMl23CkNjZZSgauT/d
         UqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735896202; x=1736501002;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VFkSGyCgykSC5OiEZAY9YZlDtzKCaFVTljqXIH3rhhQ=;
        b=jEiPMdAn8pcB1KMD5BbYWtowtjbCQHTT6I/CmBT4E8JrNDVQC8GZlyORKOAcBsNt+6
         x+S4rlLmHf1uF0vfvyJ4gcbcfzZWbil1QAOkk9A06ceddsw5EfpWZlEuSnVVVZ9A6yUy
         QrDCkWs0fVwy7qnmkjGGXEb51/ETehPy89PIeZfmKZ/X9a6ngOy3syOSXxyZJfSlEwHt
         iLPowh31UH5GXc8L/C7+yGldO3nOhQ758XwNnqTJKXy10QKMPioKya9vDsxqFr3VlPwy
         vcUSi0Rg3XYbjC+11T9f7DDev4yb7+tUNXi7WhrOvYBKE1GmX5wWoDUNmDMy0CgaWJiU
         suSg==
X-Gm-Message-State: AOJu0YxY0kE7vMupTDk3jctQlUJFEvGlecemm+5Dd94+U7S+MEZ4nJki
	ejCMD1Z7pTBpj3kgcFHUP+noWDArMXMRYDJ9ErdAYTlAmMQ4j2WK8Alb4RgT9YA=
X-Gm-Gg: ASbGncvU1FzCuhVe5acnnBOrKycXZkZXMhXezYrkqdcw0e1qpm/Nc4Hss0Yr/7hPl1J
	R+Vnjh8Gg7AKkfS7zWKwdVM9qlL2WgmgozxjC75a/Ch0o8Id1qAB/aFZe+2zBrY68jvFNkle4a4
	h7uD7Fc6m/Pn+O/zDXv7EzFOsJYRFevPZy4GU0SWSUp0M9k+ErtGsNl+p5Xyl0vYc0gEbQcFkM/
	zvVIbqjhYGEYs3pksrGNHJU583YZhLt6BSo07Q/7EmUJ5IBsIzPDk1N0E/B/BE6oLd5ggEPDxtV
	M/7I8hfbPTHRSTU9MfqFECLxt4vsTL8zTPlCllLVDWykFnfSwMX6ePGrGoKw2eyamwMBlRTezGJ
	AgJBpzdjEBnv7imkC
X-Google-Smtp-Source: AGHT+IEnZKKebuabwrL995yGg4GRRyQw7Q+1H1NtZOkoQn4B6vDV5xv+vAG3ASFFqKYXfzHyLA+94Q==
X-Received: by 2002:a05:6a20:2443:b0:1e1:ace6:c98 with SMTP id adf61e73a8af0-1e5e081cb7dmr79088381637.43.1735896202223;
        Fri, 03 Jan 2025 01:23:22 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e203-a4ff-54cb-33de-dc32-ee26.emome-ip6.hinet.net. [2001:b400:e203:a4ff:54cb:33de:dc32:ee26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad836b90sm25920870b3a.72.2025.01.03.01.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 01:23:21 -0800 (PST)
From: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
Date: Fri, 03 Jan 2025 17:23:06 +0800
Subject: [PATCH] dt-bindings: arm: mediatek: Add MT8186 Skitty Chromebooks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-b4-add_mt8186_skitty-v1-1-96ac770842d8@pegatron.corp-partner.google.com>
X-B4-Tracking: v=1; b=H4sIAHmsd2cC/x3MTQqAIBBA4avErBPUSqyrRITlWEP0g0oU0d2Tl
 t/ivQcCesIATfaAx5MC7VuCyDMYZ7NNyMgmg+Sy4oIXbCiZsbZfoxZa9WGhGG/mkJdWq6KqpYO
 UHh4dXf+27d73AwitZc5mAAAA
X-Change-ID: 20250103-b4-add_mt8186_skitty-fe04d863592f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 herbert1_wu@pegatron.corp-partner.google.com, 
 Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735896197; l=1486;
 i=geoffrey_chien@pegatron.corp-partner.google.com; s=20241216;
 h=from:subject:message-id; bh=HzsCZIYPQLN3rAhPo+FvZIU1phcYLS/kN+/o6gpGYeQ=;
 b=olJZOewFQWoF5LLhRDRPvCLVP7JbvxWk4SLZyYu089uODsS9kNuNclDZO33vFQwZaccBb7JiI
 qGNpn2GSqEUAGzjFGhoXCtnD6NTGgPOJmd9TIfubjivajy+K/hyoElK
X-Developer-Key: i=geoffrey_chien@pegatron.corp-partner.google.com; a=ed25519;
 pk=P8X+ifKsuR9w8T8cIa35nudXKmZX6qk0iS+5EcuwtrU=

Add an entry for the MT8186 based Skitty Chromebooks, also known as the
HP Chromebook G1m 11 inch. The device is a clamshell laptop with an
optional touchscreen or keyboard.

Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d9aadb7b77e144a474b79da005056..b57e86946d7565720fdee31b2bbef288b0508769 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,14 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Skitty (HP Chromebook G1m 11 inch)
+        items:
+          - const: google,skitty-sku1
+          - const: google,skitty-sku2
+          - const: google,skitty-sku3
+          - const: google,skitty-sku4
+          - const: google,skitty
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:

---
base-commit: 0bc21e701a6ffacfdde7f04f87d664d82e8a13bf
change-id: 20250103-b4-add_mt8186_skitty-fe04d863592f

Best regards,
-- 
Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>


