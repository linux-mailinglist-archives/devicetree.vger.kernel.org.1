Return-Path: <devicetree+bounces-239878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A7C6A3AD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id B64822BCBB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C668F363C69;
	Tue, 18 Nov 2025 15:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="COAeTMCo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7978E364E90
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478543; cv=none; b=alw6f/DCGrdRw+tALGFNTA2HVN439NG4IQFddVn4DPeV26N7tUzl+hnit1sdDjFPGcGLApBtVxlW25TijEWHto/ORdj5VEdQvMYIRQUuOKqiX7OBt7KfVl6K1l0mPB6P+OaWu+d35RblPXhFKZ593I0Jm4PyN1hSWxP1ik16YxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478543; c=relaxed/simple;
	bh=1Mdzq/652LBGyytQuIr/+WYxsQX1eeyePN4MTPuKWTU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O4AH3el9I3SqxmSwIn9dKLkvHUxC75+JXvixxUf+nVYoiLRFriHi8QFQgB+NB/Ytpi/lZfYoiRGec9gJi0y5Uvv1OT8s1+ks6Qr6Sz4G3l2P1UJDzPI+J8QP6jHquMIH5mThCoYyRoONmXJsj+cPljmoF/4mNbAtxdsTuMrN5h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=COAeTMCo; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47118259fd8so42299005e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478540; x=1764083340; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFM4fgZANGXRwrvQV4wSC81b8D8h+yUyMHAkucbMQWo=;
        b=COAeTMCo0QQg4+HYlSgGaurHcZQD+KsDieQNiJFQsPwvi8oqSCFV8JFYLK14lHkzWS
         qwDaBTN0Rdes7+I7CUnM2WT1y7lUQJgT6NEUV7DdgNAVMUhsaZuNL9U8kMFfaD0K2elJ
         i3M4ekEBYpY9pCqDccnZVyGGQXCsm45mP2kl/1SQHP3xY4eFhUGCQlYsKyM/2wu2c3VW
         EEutLvnMExzFYCXoTDiObvHFwXlxejk9X3FbwdI7Ue/5gXX11u0n1QxtZ08Alr4euCl0
         MWbCDaVM8opsCIwwfXzhZpf0dOKb8S1Yzpxq1GAbW13K/jcSHckOescGOrMOQgkgVCVb
         WUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478540; x=1764083340;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PFM4fgZANGXRwrvQV4wSC81b8D8h+yUyMHAkucbMQWo=;
        b=ksOUqp18aZKE3XqNqfVSTV2adXBBvys2wLzYUjEPgTyL/q1DxOrnRASaA1joXbDiEn
         H10b2xbDwPJDKL0ncB/wUb9o4APiYL3RG6Q3VibnRpS0wAVNbl9PkMw5A2uMzW2wExWK
         gZ5m0j4EdAdBaTGn4y7ASduUyEJx3KXglqkieyyNv2jbRzJ8UXjRTVJyoWbUrRsHMXlL
         LycTT10xCGyY67ewDebBBUhRITcbxmc15MOkk8SmVHe0cfhNDVF5VSwfdmS2I5ewEyLz
         xBzb0I0P2QJXzzMKSHYOESroBxW4SpeTlMTm6VyFNsdM36h/9gyArnt+m4cvmCmAdIMA
         96Gw==
X-Forwarded-Encrypted: i=1; AJvYcCUguNPjlRkJuF4dPSH88rHGxtPAC0a6yRVEHtTdrJ2F4QSCmYa8aYpgekS4fk9I5KvNC28OZ86hpXz9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv6QkAohDkvvijI0nN+2KPqXWeEBMmSil/rxyYh3Q/ngzicTZj
	pvDcyXwoJxlbveCqnd4xqJCeI+kIfkoMvGPcRJytppKnC5DPC3KC0wKI
X-Gm-Gg: ASbGncu4GgemDv61Iy17MgGnI0rNJFBCPsvqqFy7jqZyGhIfcrSlxwWXl4xxZKnQOSQ
	oyp04w0pWEBecifiXfVKe6/yyWcUh0RlhM+Pzp6EFjWLFvNgQvaaF8g2KcOOU638VrSVssFTB6b
	+Pz2m4NbHkZR4/1Hh5FUimtZtSrusap9XCsNCD5N3uY7hI2APYhEMO34MYrtoirSYXs+p2gcFpq
	3tQpfOQOuvm0lBTVcWD2CjSq9CkfU2X8KQeMbl5wgchq0VwnEafQmrla3QKfcjE6XQo8MFe3Nba
	x2SfmzbRRzfaPIcKwVEokqt9TU96w93wHw+dmYc87Zkbi356ihppEi6CA5TdQAebQ4P5XuvZwK3
	CEY81IA448dxKKeNxtBAfcbwpkkyTpvz7LLijVq3e+x/JNLatWbcbKvJxPPE7NyckLQabtsvbIJ
	FlPgQORNm8WdrU6MF6fs1c+XpGHL2RXLuC1cKXkno9339ccvxj1qRbO4L/A6F27cUE5mSfw1JxZ
	f+5WD8N5elacNuh
X-Google-Smtp-Source: AGHT+IFLl4dTul/hQUjz6znuPzdhl9FsYr/3lANR6xEisIy2fBHrkJclICxFWj3/Vuc18YtPkkQIbw==
X-Received: by 2002:a05:600c:8b4c:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-4778fe67aeamr162299715e9.10.1763478539426;
        Tue, 18 Nov 2025 07:08:59 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e442c2sm382320455e9.7.2025.11.18.07.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:08:59 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:07:59 +0100
Subject: [PATCH v9 3/7] dt-bindings: memory: factorise LPDDR channel
 binding into SDRAM channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-3-a033ac5144da@gmail.com>
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


