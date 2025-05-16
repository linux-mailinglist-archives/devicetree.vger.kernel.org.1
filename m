Return-Path: <devicetree+bounces-177816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E418EAB945A
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9DAE17A7948
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DB82367D7;
	Fri, 16 May 2025 03:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="C00lH8L6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE61230BC6
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364741; cv=none; b=BTvieOkOrfKewDFUi5gmYkhsBKUTY/benBa9bYFY7Gv35NO2yer060mRfTlHRI27oXADTDxTYCFHhM0o3gXhGzK4Nk//DHW/m9ORAxV2H/n2QP8Xefrx5NF0kLnjnTwIWRUZRzQRNy1xOuO+u8h8qCzP1VnL/nlWIiC3tx1kFF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364741; c=relaxed/simple;
	bh=rGgZRpxBVOFQLMc4IbKbxX0j+8pNOxLzfGBnh6hfkdE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BLNdmBJuJqRkEIGPqvZmQ7+Lv83zj8xX3gBhsMr1+8EAlEDbh8CZYri+w4ztMY45H5PGI5BKTESj2s2xdFX1H74TBuo0liVHE1Q4UWfqebVCslRnZObtd2rv4pJanV0ZbDSt5VRlWTuLoKqX8aNfBCq8/uC+6JAXYZfknkLmktU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=C00lH8L6; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-231e21d3b63so1656795ad.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364739; x=1747969539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zkq5aqcqgDyI2pIygo5ON8Kqr2pvfOAQO6NeyUgej+M=;
        b=C00lH8L6fcInmV+ejalOPXNC0FNHPNdv0iMtVHNKBkXBALyyp9ohmY2NpMt/RYCKrr
         hfPiD/PoWGctFFwkQvo34pKWuwOMMqMs+yDKsoazyb9kmzoIxm3ycX0MryIseJmXXNSk
         9MZnCLGYund/T6vdd0NHxRJVVPDgeAPIpBjWEOJP6VKXpPwHzfiaY3/CdCHcvD0SOwJp
         5QvJBOmYlIcuSCXB/N+0Mzi5Du2HJBcmjC6P2AlExtQdFf30qWBpFUHCrxDTNNZwgbXd
         FSq1oNIRnNvjBCcyeRyKlQ9MjKSpt3PCEUxg2+oRclOgd6n68IBkoylEXGF4TLxOpsoY
         cswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364739; x=1747969539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zkq5aqcqgDyI2pIygo5ON8Kqr2pvfOAQO6NeyUgej+M=;
        b=X/envp1tN1ZV89WXreOK3QqTDIKuhiEC3s4pvwlJrCYB4vHiZQaKFxRKDtEapkK81S
         ZCmxvo+F4uRv2U/OeX0a6NO1MfQCV832H4MhdboZ/RUQ4HrXTwzBWSmlZu59AsdDm2M1
         mjBlDk8vayj6/4cTNvUYYsm1pvSeewtXbndabx362ZwF1xVfoGHLuMi/n6orsB356ohz
         O+ooHzhLteQ4KoNavR4+ZoZZjunpqbhUQDPSdiSTFQTWvOQHnqEz1h9daJWocDR7+D+f
         vpiZF7vYAGoOZ1h8SCgAyJMidSCwGIep7E/477h9VdSZfEfEkqAvoyPRnRzLgSmQcEB1
         KDIw==
X-Forwarded-Encrypted: i=1; AJvYcCVfNX/N6D+7XUzmchAMaOQom+vC6RWHfFitzifL2k4D8zO6772WGXtKGXt2+Kjk3peyp3YCsScczgGl@vger.kernel.org
X-Gm-Message-State: AOJu0YyyBADz2dVOgIyk90baetllhckOJfqp92lr378AOHwy1Q4BKdJt
	+SH9lF8zqVlN4wHCK9r74vjB81a+YxqSfp3zy8yZr2un8olhkEkm//PDpsj75AGpizU=
X-Gm-Gg: ASbGncubvrmIqtaiNN+JIryenFOO24QW95QlaAqLQuwBHs6d9wwG4YUI4oS6VRRhZ6R
	Xez9wB1rzwkaz7lkuSAGVcZLXorgmOREdUb/64TJU7G9b12FxXHhkRPSGZBr/mYP1s4J9hYDzTU
	JE+wdTkeiGqRl4d6z+LaWtTFZgaBvX4P07J5JAaPI2ucYLTnFxe9auv6DYnsHAIMlm69t6GTuF0
	FGFaYferUNIE28RYraq5X8d6TnRNQEq5GqXamC2eTmPTX4nXqpUkvQr4GVWCnVPm+Vy6FUFjYg4
	RgqnSah5FHhQNQrhH2dwDwSje8kS8BNfuP129hXDRDSAsM4SNDFdoq7zlam81UWrelb1CDL3OYY
	GDP+6pPUOzdcsgn6BpNS24w==
X-Google-Smtp-Source: AGHT+IGhn8VCzQ+upEiABqh6yMLEnwbq/fKp8JleBYzALUrKxgEFyJXQdx0bVgVT74oP9BQ13kZiGg==
X-Received: by 2002:a17:902:d543:b0:231:b7e1:c977 with SMTP id d9443c01a7336-231de3763abmr12204855ad.29.1747364739403;
        Thu, 15 May 2025 20:05:39 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.36
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:38 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 01/12] dt-bindings: riscv: Add xsfvqmaccdod and xsfvqmaccqoq ISA extension description
Date: Fri, 16 May 2025 11:02:59 +0800
Message-Id: <20250516030310.16950-2-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "xsfvqmaccdod" and "xsfvqmaccqoq" ISA extensions which are provided by
SiFive for int8 matrix multiplication instructions support.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index bcab59e0cc2e..d36e7c68d69a 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -662,6 +662,19 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # SiFive
+        - const: xsfvqmaccdod
+          description:
+            SiFive Int8 Matrix Multiplication Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/sifive-int8-matrix-multiplication-extensions-specification
+
+        - const: xsfvqmaccqoq
+          description:
+            SiFive Int8 Matrix Multiplication Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/sifive-int8-matrix-multiplication-extensions-specification
+
         # T-HEAD
         - const: xtheadvector
           description:
-- 
2.39.5 (Apple Git-154)


