Return-Path: <devicetree+bounces-86834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3AA937AA9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26CFB1F2238C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 16:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E4E146595;
	Fri, 19 Jul 2024 16:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WZVNhzlS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5240F14601F
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 16:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405946; cv=none; b=ik5rTfO6xwZZG2j6QD39LUCn8irMN4sVtGiwjK6KMkLLcSL31HRV3dn+XUo9E5gczK4ULT5xNAriyFOYP361xYNRR6taxfMdrFZsOaReYHHm1kTLo4A9ilD2cp1V9k0dntobf8ZbixztJeE+zN39bWKtGmWfC7GPrw10OErzrSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405946; c=relaxed/simple;
	bh=ZzH0VgSdYutk/uKY2omj651o9v+E5HP1BijtgXJzAp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kPXVhHttxLScmdL+ZBScGZYRzBRoYpP0VXd/8byEu9LHRY+SeT59haAlRcxHbF/MeRQYgLUmuU5KCIQfIaIg7f3bQ/e6omdFYsrrARpsnxEGoBSxjaE55gf5Y3mwoiS6NJ7iZ+hZXGHwnzFAaJhImmO2OMJVAhdRZG0ihVW5EG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=WZVNhzlS; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-79110d8e459so1487415a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721405944; x=1722010744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GWtR9ZjYZiSKNZtqnpkUxp+qNZzbKrCzo+6HVfyCbsc=;
        b=WZVNhzlS4Lzo53lsdJx4P7dJOUCdyRSemNVGGknJ/eP9LxqONnxE5Nhs6QImGUvqjZ
         5s/yshiDAWjb+5Y5d9seFHq+6HW1sZ0Bx0rlzksR2wG7VLVS5bRCbXPIiv4W4t54JNjo
         0UF4agyr3j73rdVWzRvhp2APKGOetBiCy5LZZCxHCuTj9j6ePBx8FDx53jm5Zn6E3XKr
         hJWmE5SyAYx+pmBL//yOapVpati9Q5/+Ah+y6pxG2NkGCPhGKorL4w38w6vwl3V5QHH3
         NSxZf+DrljdvBtJvqJOcDUeOtalDmY7Se9vvS+AL/gp/Qylan2dV2itfwfz3gfuP74kR
         U8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721405944; x=1722010744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GWtR9ZjYZiSKNZtqnpkUxp+qNZzbKrCzo+6HVfyCbsc=;
        b=Ks+wAQQy8K3bKn+zg0FiedZV/6gZM17O+I0uRgBIeHZL0uBk/nHWaqPHRQJOQbeFYI
         V9JyX4/Cjpkvkopvir6YaC/BdLsbjABo1cxDN2vgR7jPvzecDnRY7IZuR1WmTpbQH5Ow
         qUJCxFXIiHQsGsmAUwvcEXrZQoagmM6gEx7BwR+xKjPboJob+mlT7j8aJZbuli1WrVND
         O9GWpX4v8itcuPKxd2lZgTrITyrVl1RhIO9VAhfhdqLt2e7tgIucrHptXHlig9KE/hBO
         FB6aRV6X0WjYLKeLW6IyE3Tbpv/lgQzo9j0eu1xxdrYaIeD1cY8hFjQJAfghF/o9TbC4
         iQaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEP4ILqsEEELXpGXLGgMWr7oCVWmgdb/9ju1uDPq0t6EWbfsRMAggkTflv+t+vu+naMmBUO54GnKzqRzQU0V1Nuq0GhjRJuvv3hw==
X-Gm-Message-State: AOJu0YzLefSURd84KHW+Fmc5PdXLmbBy8TMw9BBWpDMj+Pb3AJargyqs
	ZFfhyNd9HneWYe1wsmlsEDlMbniz/awTmVZbtnsMImMDqNSiv/pQ/C+cCAjmYUk=
X-Google-Smtp-Source: AGHT+IF+GUycFbxFYTPQ12A0f+u6HHfmC+GBd8iT7cSCSlcQGb4rtoa2bA7r6TUBDPjdWpdM8jx1FA==
X-Received: by 2002:a05:6a20:6a0f:b0:1c0:f648:8571 with SMTP id adf61e73a8af0-1c3fdc5c9b3mr10485350637.4.1721405944499;
        Fri, 19 Jul 2024 09:19:04 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f490dcbsm6461435ad.297.2024.07.19.09.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 09:19:03 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 19 Jul 2024 09:18:56 -0700
Subject: [PATCH v5 01/13] dt-bindings: riscv: Add xtheadvector ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240719-xtheadvector-v5-1-4b485fc7d55f@rivosinc.com>
References: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
In-Reply-To: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721405940; l=1788;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=ZzH0VgSdYutk/uKY2omj651o9v+E5HP1BijtgXJzAp0=;
 b=rsQNwNk/nGw07WypZ0WFD3o9JfwjjscYkiNaMlQ+k6T5GEeUL6lGIKjpeR+owwiCEdCVico/6
 whuYOjwhUL5CLoFlffJhH8svBTCXqBxdop2d5EsODMFY81AqvwP2Mwf
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The xtheadvector ISA extension is described on the T-Head extension spec
Github page [1] at commit 95358cb2cca9.

Link: https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc [1]

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a06dbc6b4928..1a3d01aedde6 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -556,6 +556,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -563,6 +567,12 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation as written in
+            https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
+
     allOf:
       # Zcb depends on Zca
       - if:

-- 
2.44.0


