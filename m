Return-Path: <devicetree+bounces-235374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C57C3791E
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 20:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C609F4E4B34
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 19:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE5F3451C4;
	Wed,  5 Nov 2025 19:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RR3M6Nur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECE03446CF
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 19:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372430; cv=none; b=hVfknyh8THysMkfKjKIf7Wywl98ZkFuFXSI6qgeWgzR+TuoaEnSXARq+RqsxzHr0qH65qSN0e5vYEDW+2+ED9B0A27SGqoKATuJxy7WVkX3QHcoNX4H2InS8ETliHGC2IGF0DKdUnTQEoqQyp1foyf9ysS5UivtmnDoI2m6c0G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372430; c=relaxed/simple;
	bh=nDSXbEA14YH8y/oPR/w0Ky3IfyZb62yKNCJf6xw3JVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DIK2dIkb7YIY7KlbHpmbxMCTtCOIw03AXh0aTxCQ0y80rkta5CR2g5+Xhj91qtmes+T3hni0HHBdQVh+RfOaYK8W54K4ZNV/q5FDRA4K6Iao69Tf+O2xqMxNiYwC9q5ssVxHw6gYPsh0v19tQgA0ZWMJJ9z57s6+Vzb2Oy+hi0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RR3M6Nur; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b726997b121so171352866b.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372426; x=1762977226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Pd56Sg3/Jvfa3vDkf3Vd7se9qoe1VrMEgMi9vGUT6M=;
        b=RR3M6NurjgLhsFewFKWAqIkvuVfGfK20BGPpZ86YwooXUgMOdWXUCn//tujrn1QfxE
         UmAvE06IglcYdlGm23HQzlhoOnCMLin8fz25W+Uz90U4zAeEu0PfMMpKKAeX9PaS5oCy
         VOoKBnFtRVivSr7n81/07xX0jVRpyK+iMr/6y3m+ZXH7wTaLu9htKfvNGBqW1+8anc8L
         oXBKyLHIr9xK033HI1GH3AxVVsrTVrdtEW6ak9plM+d07xFahCTB/X72uNpDQMJeNK/O
         zZGwAfxcTZs+zU0K5w8hr+jGKm/3VLcL5bIiH6fo6/KlhmYhPYwDOiiQh7gk9j6Yev/8
         4GFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372426; x=1762977226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Pd56Sg3/Jvfa3vDkf3Vd7se9qoe1VrMEgMi9vGUT6M=;
        b=Refi2ICusPTzONlRUImXOYz5BnTonQd/2hwlOyl0+yqgEz4STc2DJylHm1boiAEQNh
         3lrBOJ6n8kDyn2JFzX5SRRrLRVYQYr57VrZ/CR+Ujiqu7lFIKlzCdcWjy1QKEGiDTQOp
         Dnk/CjP8egofUiwgITfiOKOOAsgLP/xDrNWtOeTCQ57vaP/30hJC5mrAHhvOaSkBpXkK
         cNl6d0Yg1d5+GW19IJHuaaeYQfIl3OkrImukmG2oslZ0m8eudaYSwhzXd6Wp+M8VUk+/
         qmxZPMl/09R44Uo088ZZfZ7zB3buH2Wz8QAQ+yzL2uU+pBHHoFjUsTxxM4RLjxZrojNT
         Febg==
X-Forwarded-Encrypted: i=1; AJvYcCVafYpk1OP9meUUDxVUhwV0GkNMjtltZFMqmzuXkfSpkWWB5/HVr4tbd0rnZRYYo1VGmR6rpASwMKrv@vger.kernel.org
X-Gm-Message-State: AOJu0YybfVW96rMZ+zWC5vbPVV/5yFafFNIWudBlX4/cgVsF2DrzuYpq
	XjSIcJVOZn2X2rDaoZ03T6H0W7KImK1OwpjYxtPrtgJrj3vIg6vDsDxb
X-Gm-Gg: ASbGnctG/S4ANGFKzkNch97JiWzH6HVyUYVwfIAsE4HTZXCp4HIFfR1BlSNkFEcxf4e
	CN0HPucULR+6i8fEg23s3qdQxwznarWwutAPX6aDg6m+ds6kMjqvPzUOH4sVRh8JJm3CaIrJdCb
	87kdmbif71vn5JL6Hpp5w5RZHC5aCINUxT2NpBZcjeVrQv0WBfXJelJA+mXmvu/Ht8KN5Agf/ay
	of1tBfOB77fFfTypaR4C8kTYc4C4neh+m/lwYOUFd5T/RofWyBXzlwCFOy+f9YBQJfizBwpJ69y
	NtnaLUdyWwi2IxIC1AcxsdHK20mi20Yp+nTpUj0TQcYZsfEIL5QUX3LJglr/fXb2qbxFejmNs5T
	kYfMZWV6Uy8QAlAi3yQPojPVhJGCqFa4xZTZmYO39PvejBs1/JoUesZz/+u24ykBE5ubBUzB6y1
	YfxP+7Zk1/LN8KtWQbfNRPFtE2YGAggycXE/aAzsv8qFFWZlISlVL9O9PNWfVjK//zT4He
X-Google-Smtp-Source: AGHT+IHl2DGJNFaE2Dcgq/4tbc2DNROR6L8XvbkyXGCf9Y61motHSEnIlgJIQXhK9ts2eFpVF9FWNA==
X-Received: by 2002:a17:907:7254:b0:b4b:dd7e:65eb with SMTP id a640c23a62f3a-b72895a01a7mr77632766b.25.1762372426246;
        Wed, 05 Nov 2025 11:53:46 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b728937cc82sm39812566b.21.2025.11.05.11.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 11:53:44 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: memory: tegra: Document DBB clock for Tegra264
Date: Wed,  5 Nov 2025 20:53:40 +0100
Message-ID: <20251105195342.2705855-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105195342.2705855-1-thierry.reding@gmail.com>
References: <20251105195342.2705855-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

Accesses to external memory are routed through the data backbone (DBB)
on Tegra264. A separate clock feeds this path and needs to be enabled
whenever an IP block makes an access to external memory. The external
memory controller driver is the best place to control this clock since
it knows how many devices are actively accessing memory.

Document the presence of this clock on Tegra264 only.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- add minItems to clocks and clock-names properties

 .../memory-controllers/nvidia,tegra186-mc.yaml      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
index b901f1b3e0fc..7b03b589168b 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
@@ -92,10 +92,14 @@ patternProperties:
       clocks:
         items:
           - description: external memory clock
+          - description: data backbone clock
+        minItems: 1
 
       clock-names:
         items:
           - const: emc
+          - const: dbb
+        minItems: 1
 
       "#interconnect-cells":
         const: 0
@@ -115,6 +119,9 @@ patternProperties:
             reg:
               maxItems: 1
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
@@ -124,6 +131,9 @@ patternProperties:
             reg:
               minItems: 2
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
@@ -133,6 +143,9 @@ patternProperties:
             reg:
               minItems: 2
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
-- 
2.51.2


