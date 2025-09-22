Return-Path: <devicetree+bounces-219959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3ADB8FE94
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B90342247B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6A32FF142;
	Mon, 22 Sep 2025 10:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XsdPRcM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23D82FDC27
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535587; cv=none; b=EQK1ON6VC+y3q6nPawhmZpHiiU1g3Iik7cCUa2ORwjjFRodJ/ZKdNY4y16NlxDUezS4upXeRQVcxJ6Tj7dUOuRR7CH722wrAVkvDPTJTkRTZXWa053gELdOcWvMWmIeBLcEngAdrl5TV7xiOtrDcNOmLveXWpxZaQJyZ6kayIFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535587; c=relaxed/simple;
	bh=1Mdzq/652LBGyytQuIr/+WYxsQX1eeyePN4MTPuKWTU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AnEbZfdNIbdb1cy9RFrAuRIHvcWQQfwj9oVUVQdXFJwCWEg3MDz39vrVmB1hsvMvyTKLjYzD2rM0wZaf9ZREr8VusBQY4BQZBsNlUgSuVyjhkEZziC6BQ//7s8jGlcAqMYlEYaRJX4Mx8GKjkjYGCbuTIr+N16GXTxlQKFLsTa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XsdPRcM7; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46b303f755aso15041325e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535584; x=1759140384; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFM4fgZANGXRwrvQV4wSC81b8D8h+yUyMHAkucbMQWo=;
        b=XsdPRcM7Oz+l6bULMQydhvOMNFPaLGYqv5T99iqAk9aHtESbu0oUTFz3XAImWzjm08
         VoP3xeT8B/lgHJ2gcJQsXaXM8pSbCA6MREunhRerV2Oa/+2qQ008gFXFVcQSVoQ3oOiz
         IWHL5Zwb5MKuy1oCoVBqB2GTuTnDfGuDCQGrtFdyN4XMhdMDbzUA/kp6Xtoi7xa2LKK8
         p6h+DrDDi/Rq7KSuFU4AEdwH4Lfj8OL/KLv3hs44i9gT5B5JTExcuA70sF4Yv077huic
         TNpjTms9epXkdS3XgNtkqszjmlSVgB57t6eh58Sb5MxQiUVXMoVIrE7WAzEUzY1DlUVo
         Tolw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535584; x=1759140384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFM4fgZANGXRwrvQV4wSC81b8D8h+yUyMHAkucbMQWo=;
        b=rs2beoRYlJ/Gsj5T/A8v46i2T6sFvQ7FZFsELp7gVPo+lg8OfVuq5u5fYIGqxnrxkg
         FJH2Kge+kaZF9K5qkzNcF+FICTD0bdZ9UKFofvoqJy9gylveIM6OnOxU00aISFqnhYaz
         ZI6NjH5VwnU7Zdz74KChMEkFvHFLtQc2C7mRtMUyaFd7yWLt11GBAwv/KsJlbyHgI6Tf
         NNaryKx/3TDAoZPxYFj+jdvmiBKVVarXk1myWh/X9+F+EDbA4qfXOYBDn6ZwGHdREfya
         7YdNJMF69i6wobtVmIiYupTDGaKxeg92wq6lmp2V1N4zVLeHXdaas+AI9Qg2ehftPI8t
         /Y/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUWWAx+BPvm+Vdgw1KHnOl2NGlfpi8yUA2ODhg2XEF9cPn8HKUBnYWpvf7APThzCn8/w1O7Mtdf/Lq6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb1RIi7tUSAfLzScLVWcdMqru6y1b1vAeZHtievD5ylTHP4YGz
	X+7xwsZCHKHP9twX2t8pCamQO/KHFJE67Ag+O1AGb8WCFL/mSGvdArDz
X-Gm-Gg: ASbGnctePLJBLMesxARR028qUIOF30CprR3lU+TaAN+VBBCbB67tsYKQ5kWbLRXOEDR
	qDvM9W+sQRsu3gT++zgYzThomZQsvE6u6uOuuskZgDTNqcPT/x3dAHUmQSL5ftlztdVMwkVaP+S
	V+ZIZPlodoY2nrhCWSjtEKb05uI5xpFVN7aZ6yNHB/hAP7cMkmqm6TDhp2zMCEGOtEw3pg6NbZU
	KbRShazhfQeNuP1kjVUtMj2Vcy4hAhuUFXixj1Hv/Dacqo3H50SccUd/gp0/KH+Bq4CnEnGmyvy
	QJmqkJp9j+dODSKoTsiEsC/V878ZEMgn0JUHsSr06vcceI62mXdHVgV0eMkZljgoiCa5OvK78eD
	ddH4UwL9RLsSxrd5EzNqER2P4Yk7yK9C2cfyL5zBiVPr2t7TKR01Ct68e3dn0fck6P58mEOFo4K
	mqnBobTwYYKOifpENw
X-Google-Smtp-Source: AGHT+IEFVop5uEIutiUZvrQjHA2X2brCgz/PV5Qh38EHo3qZHsNUBeotqexzMz7/cMiX8mPo7ObqSg==
X-Received: by 2002:a05:600c:4686:b0:45b:73be:c707 with SMTP id 5b1f17b1804b1-467ea00475amr104406865e9.22.1758535583703;
        Mon, 22 Sep 2025 03:06:23 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3f3c118cd47sm10016624f8f.29.2025.09.22.03.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:23 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:16 +0200
Subject: [PATCH v7 3/7] dt-bindings: memory: factorise LPDDR channel
 binding into SDRAM channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-3-b3dd20e54db6@gmail.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
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
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

LPDDR, DDR and so SDRAM channels exist and share the same properties, they
have a compatible, ranks, and an io-width.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 ...lpddr-channel.yaml => jedec,sdram-channel.yaml} | 23 +++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
similarity index 83%
rename from Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml
rename to Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 34b5bd153f63..9892da520fe4 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -1,16 +1,17 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr-channel.yaml#
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,sdram-channel.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: LPDDR channel with chip/rank topology description
+title: SDRAM channel with chip/rank topology description
 
 description:
-  An LPDDR channel is a completely independent set of LPDDR pins (DQ, CA, CS,
-  CK, etc.) that connect one or more LPDDR chips to a host system. The main
-  purpose of this node is to overall LPDDR topology of the system, including the
-  amount of individual LPDDR chips and the ranks per chip.
+  A memory channel of SDRAM memory like DDR SDRAM or LPDDR SDRAM is a completely
+  independent set of pins (DQ, CA, CS, CK, etc.) that connect one or more memory
+  chips to a host system. The main purpose of this node is to overall memory
+  topology of the system, including the amount of individual memory chips and
+  the ranks per chip.
 
 maintainers:
   - Julius Werner <jwerner@chromium.org>
@@ -26,14 +27,14 @@ properties:
   io-width:
     description:
       The number of DQ pins in the channel. If this number is different
-      from (a multiple of) the io-width of the LPDDR chip, that means that
+      from (a multiple of) the io-width of the SDRAM chip, that means that
       multiple instances of that type of chip are wired in parallel on this
       channel (with the channel's DQ pins split up between the different
       chips, and the CA, CS, etc. pins of the different chips all shorted
       together).  This means that the total physical memory controlled by a
       channel is equal to the sum of the densities of each rank on the
-      connected LPDDR chip, times the io-width of the channel divided by
-      the io-width of the LPDDR chip.
+      connected SDRAM chip, times the io-width of the channel divided by
+      the io-width of the SDRAM chip.
     enum:
       - 8
       - 16
@@ -51,8 +52,8 @@ patternProperties:
   "^rank@[0-9]+$":
     type: object
     description:
-      Each physical LPDDR chip may have one or more ranks. Ranks are
-      internal but fully independent sub-units of the chip. Each LPDDR bus
+      Each physical SDRAM chip may have one or more ranks. Ranks are
+      internal but fully independent sub-units of the chip. Each SDRAM bus
       transaction on the channel targets exactly one rank, based on the
       state of the CS pins. Different ranks may have different densities and
       timing requirements.

-- 
2.43.0


