Return-Path: <devicetree+bounces-230464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24449C02D12
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 19:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18C533AC0ED
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60D134B68F;
	Thu, 23 Oct 2025 17:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XJzclnrq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DE634AAE5
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 17:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242370; cv=none; b=MWbMVuJVa8cOZzNz+v3LfbqLcWbKFS+CIFz9AOWoiwz266/jTZ36iC4umpEmeNfsnuiGd1nN13Z3RwpP5O0Oa/v6xLiU5ty795irAhVcl6baajPP0H189naBxOncv5zclW6GQuZbN0AXhEEAK0mnbA9seAON+NikylrmVsPXtwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242370; c=relaxed/simple;
	bh=49BNiaivaAVSLxOrAbQ3jcqUXbd5xtLUlvJhC8tkIpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q2R4yNlTrRpY0s8NDwF8OblozyhIUqD6Q6+g+8ZP6330UBqvnxSPatNKKL9uVLXnJ7JJ3KGplYtfpndFOToMXBpZqsUyqOHebCdpwT62c2WfZ9P/qMWdbXOgaZG/CytQXkqa5tykQQfDSPg58fucusmN4ykjNEiljHwScJob+Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XJzclnrq; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-29292eca5dbso15518275ad.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 10:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761242367; x=1761847167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aSMHyHNn/1vbJ7NUSylLHrrY4cYCxvOBtERxkVz+doQ=;
        b=XJzclnrqV7jGv9NL8CGEXvyXRZwMNOOUee6XOX5SuOp7iSBUPgPPiZxiUOw3hqTGxT
         qSphCrNRNFlLeiAMT0FOWlVUlRoLAAlkzIOEIjP8gzsVeaJ6AiBb74R1Vjc9tWx6qqOh
         UQ0qjPv+CNzgDKmV7sCSHS7JiAEd96JeFASioMhVjvGftgXcv8nvwLJwI5ygQQoG6EsY
         OjZjxhEef5WHZqJ7i3nn6tBD5uBQqvVhVm2N1ZdTWbs6+d02XqD+lpt4z0Prq1trV90e
         3HRqbD9X9zYm9NindCDJB6ps0DfsdY5dfRLznrAxvtJ55qGiPZStWAoedwvNDeXmbnkr
         NjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761242368; x=1761847168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aSMHyHNn/1vbJ7NUSylLHrrY4cYCxvOBtERxkVz+doQ=;
        b=G/lfdIS6EGXk1rMZVFlqWh3XggfEmgIomVcG+YShvhOKn+zakqOlwaIVXNPg6IPWhL
         uSll/rKXxHqhfJ66Q4FVS4l3qxDt+iKwRUK67L0s/Hdw71QdqcL45aJnlpCx/Pf1f7Vs
         SAwdVsCxhO7GdmSgFb7hzwRa0JkKb9z8VyD7L16bxxNBspohrD/dXctwjGL8c0hRHeOe
         WjroPfNUrQdtbqEev828ZZopFQNJmDKyjmsy0D0EyJGJIaD/NlSbg0pqm3cIfdGkrQNf
         Qb9z8dQQWQk0MMgtutNgLGpQ0rCP22YBjVMFJzAyYQMj0sK2SiQwUTlWqO6siFabrH0k
         af8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbbzThIng5DTlIc9+jqNxRmgWmM9c0nfweLfF1nsormv4ru9ImrihFbquhHWuqmpj3buysEcpZSuXF@vger.kernel.org
X-Gm-Message-State: AOJu0YwWss8/MWs0tROxnfwrA+gokvaHcqmeuG7XgVtVEwRBIsHkeC3F
	uSIUzTAVL8DbaF1G6LXAn88F9E+caETM8a0s0FTokFgv/WAaFkPu5b57mX0qs2HHeaE=
X-Gm-Gg: ASbGncuqKGlihLlAhohwKbQmgrCXA2tHSinC1z2jKLqMx9J3/qQNiAdBXKQCNvZVEQJ
	N/PCEeMWEi5FbyTEVy64r5cVOZf8o5drtBQCceGCK01XnA6rr0lJW7xm1a75NACRtunTMXTex6s
	R62UWRks9KbqsxhbhbEDc2WVrjRbUACHKxFJmm2q6QW0amfFov0GMNL9tc8UAQQ5S7gvZCGcdNF
	289iAgqIwRAtKB9FW/WuZwIAE4XtCJDJYLCuxl5LXMZqDbJzycasQgUbEWPE2ebXOz6zQJXEFEQ
	2UG/gkYIC22tECSQw0FmyoaruN9Qe3kDOm76eFEtmztsjKJWuN5D1jfVttXs+bU5cIkGCgV4B9A
	W7pV611A/0XO2fyTK5bp+t7UkwlpyYUk/nXoeNX9zIlh/RQ2UTUcwnO1Z2xg39XurYitVB5YT4v
	nZeUcHmCRhdV5ct780JYsNNEulmXCBRVUcKg==
X-Google-Smtp-Source: AGHT+IG5ODtZ8NpgnPdL8N4UrnSSIWOWkDsOvPyVBDaaByRktns1SQuJqvUf+UP737qEBLe07B5fFg==
X-Received: by 2002:a17:903:440c:b0:264:8a8d:92dd with SMTP id d9443c01a7336-290c9cb8b95mr329120295ad.20.1761242367696;
        Thu, 23 Oct 2025 10:59:27 -0700 (PDT)
Received: from zoltan.localdomain ([208.115.86.150])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223d1265sm6447431a91.3.2025.10.23.10.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 10:59:27 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	Frank.li@nxp.com,
	guodong@riscstar.com,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] dt-bindings: spi: fsl-qspi: add optional resets
Date: Thu, 23 Oct 2025 12:59:14 -0500
Message-ID: <20251023175922.528868-3-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023175922.528868-1-elder@riscstar.com>
References: <20251023175922.528868-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow two resets to be defined to support the SpacemiT K1 SoC QSPI IP.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - The "reset" property now only applies to spacemit,k1-qspi compatible

 .../devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index 5e6aff1bc2ed3..edd3158a6f2e8 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -55,6 +55,21 @@ properties:
       - const: qspi_en
       - const: qspi
 
+  resets:
+    items:
+      - description: SoC QSPI reset
+      - description: SoC QSPI bus reset
+
+if:
+  properties:
+    compatible:
+      not:
+        contains:
+          const: spacemit,k1-qspi
+then:
+  properties:
+    resets: false
+
 required:
   - compatible
   - reg
-- 
2.43.0


