Return-Path: <devicetree+bounces-178943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8E1ABE1FD
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF4434C3386
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 17:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE383280001;
	Tue, 20 May 2025 17:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="gzgYHOwh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1506A27FD50
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 17:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747763035; cv=none; b=JbjMW50D0755SI7KOOmZDMphD98aqZcf4BdbMjl2nUBgI5o1a4if45EeAYjuLazd28qwHoxZyc2zT4j/IApxOpIb95llGlLHhQNG9xrHk7W2dMUwCbRmJCC08RK6P28GFMTfTyhN0hpETH3Q4KBMisNdviHVp7Bla+aucLntooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747763035; c=relaxed/simple;
	bh=Q1K+0jMx0UjyYkfsNH7TEf2S1jEKaulvPrwaokxGtoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RhzivsFFVHbUFz6gEtLO0V6y/6UA9hc6T07bbM89G0OP84UNPcX0jJjIjiLdN4Yul/7sxMXd6zdazZk/OcLSb+ldlciSuzcueMZ1sqjv0GHOsuYVKZSgDtfDW16pSu7Kio5iiLde5Zhl6mguJ48l0X4DvDxaY8XE1K8jexamn3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=gzgYHOwh; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4775ccf3e56so80943331cf.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1747763033; x=1748367833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0lQJBYdXFzKA6mwA9Ft2YWtuYeF7vxw0GtRIZO59n8=;
        b=gzgYHOwhT1cwQgi1H03ChxCgiHcuVaCyeBZkxYDtIdxAs9UyTW4VgFEhPLeb6ztK5h
         v3jrFL5//nHv8Ho65X990+9fa8e511afmRyQHFb7oj0UgwxyIij4lD1hz91X5TQ09jIE
         WB6lkCIh6VLjz6BiOwYnxY4eB8VS431xl+/uAL0Viz9giVCeFL8m72OWS8aFaBBikKKi
         9koUePqXzKdO8MAkm+RuOIflWDzI5+qPZFEOFHd+rKwXlLYenjEuyKWOM4owLy/sdqhA
         kFEWpldqR6GQGI9H3rhounm+qGtAO2D/ULzcP1ZiQk7KLk4pW9dchN2hFT3XJ7/l8d4u
         e/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747763033; x=1748367833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I0lQJBYdXFzKA6mwA9Ft2YWtuYeF7vxw0GtRIZO59n8=;
        b=NSYnKkW+qb2h2SzHLYVJZcT10HADwE+Nz3ujJm1qwFQp2cLyWuD7TKK2lb/6MzA2Bn
         F/By9MOozQ1GAnn1EY/N7LfH2PWHrU70B0vtzNWl5oxyvHXimeJzVpoLifCHmCsfH1gF
         PZ9wv7yCmpwWW8zXoYmLnrwn/uPIUAY6eNCF2yUWCALMU35wHqfmfMYzBGBZfr3tflX+
         WqWij6E1gnghDOnDAfKtQDjc2H3YuhXB/cUaXPfcwtAdIgjybYoTkteW+RQR/OOymysV
         SvCO72IEMVCP43fRk9u6zEbqVjGJen1a7R8RFHEL6weQEqb4R+47yR+Y6Aqsq5Wg/elh
         BDmw==
X-Gm-Message-State: AOJu0Yzi++vyzVmCIyz9YBLOPQR4c3aNs0LOBgwFgc5cIz/PYOusEjuP
	6NZdgKQLup/Mg3g7z/qLXEqO2pSThr9NebmxOQa3dOdeo+8Ih04txUHFb4s+uuDKL4yR9Ju5lg/
	hRcwooQ==
X-Gm-Gg: ASbGncsbq5990EGLdgWySvudGrFgFmsaIoAwjjozR1RP5/KjJ0aHQ3HcljSW4E/cvag
	UGO5iesKe/3HU/hiBDheEQsOS8A+RU2iGqzVvnOwQbu1TfeU2MmgdfRzXo8Df80pqaDjpi6Obfu
	p9c7qxkffGnlR7MWzqq3FG9CiUfJ7avyORV8h+WuNA3v0x/BqZcGh8Snf/NDhhFAcgGA1SoFaza
	4M03MqPP5zOni29PA97pIRKrKO8twNRN0j5tihoJrGmI1aAYYeiXHMGQA870C6yjb3JYu/nkApP
	ZZ8P9NUlsGHXWyZCbkPpkOjrVanrW/+LIfD7O+2mJ7vdOgGkp2ahEIy71TWHsqTqASgZG8ozIwj
	QWHrcZFt+UpVtb7OEf0qStM19VQ==
X-Google-Smtp-Source: AGHT+IGAi8kWe5r5B1Heu2KqVwZaLyvrKsfG81lqbpt6rONA3YcORqB2DJHGQvw1uvz0AmqBHBxXcw==
X-Received: by 2002:a05:622a:1b25:b0:49a:6859:1c10 with SMTP id d75a77b69052e-49a685925acmr67596501cf.24.1747763022579;
        Tue, 20 May 2025 10:43:42 -0700 (PDT)
Received: from [127.0.1.1] (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494ae528553sm72660101cf.68.2025.05.20.10.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 10:43:42 -0700 (PDT)
From: Job Sava <jsava@criticallink.com>
Date: Tue, 20 May 2025 13:43:36 -0400
Subject: [PATCH 1/3] dt-bindings: mfd: Add power-button option for TI
 TPS6594 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250520-linux-stable-tps6594-pwrbutton-v1-1-0cc5c6e0415c@criticallink.com>
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
In-Reply-To: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julien Panis <jpanis@baylibre.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, jcormier@criticallink.com, 
 Job Sava <jsava@criticallink.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747763020; l=1451;
 i=jsava@criticallink.com; s=20250404; h=from:subject:message-id;
 bh=Q1K+0jMx0UjyYkfsNH7TEf2S1jEKaulvPrwaokxGtoY=;
 b=KTjUE5gwIQzTIMVIiurhE2xXmVXJrc5zDX+vRuSTBi9O/nnOiiTroRjJu7k0JN4mF0DuyZH5u
 +iDfu6zuPDYAEjJJBNul49VwJ5b0fpyq2Q9QpwaBe2RRARfKZJXE8aa
X-Developer-Key: i=jsava@criticallink.com; a=ed25519;
 pk=DPPriJ+pziqtCZ0EIomf/hKU23s5T1u4WOQaT8BpQSw=

The TPS6594 power-button option permits users to enter STANDBY or
ACTIVE state by a push, release, or short push button request.

Signed-off-by: Job Sava <jsava@criticallink.com>
---
 Documentation/devicetree/bindings/mfd/ti,tps6594.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
index 6341b6070366..a40808fd2747 100644
--- a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
@@ -37,6 +37,21 @@ properties:
       device on the SPMI bus, and the secondary PMICs are the target devices
       on the SPMI bus.
 
+  ti,power-button:
+    type: boolean
+    description: |
+      Optional property that sets the EN/PB/VSENSE pin to be a
+      power-button.
+      TPS6594 has a multipurpose pin called EN/PB/VSENSE that can be either
+      1. EN in which case it functions as an enable pin.
+      2. VSENSE which compares the voltages and triggers an automatic
+      on/off request.
+      3. PB in which case it can be configured to trigger an interrupt
+      to the SoC.
+      ti,power-button reflects the last one of those options
+      where the board has a button wired to the pin and triggers
+      an interrupt on pressing it.
+
   system-power-controller: true
 
   gpio-controller: true

-- 
2.43.0


