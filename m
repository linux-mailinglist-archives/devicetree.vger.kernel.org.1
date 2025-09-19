Return-Path: <devicetree+bounces-219195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA75B886B0
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66EF61C86625
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BBB02EDD74;
	Fri, 19 Sep 2025 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="IoBTP1iA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1917029E113
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758270571; cv=none; b=Nxc91zt7DhDCiWIqiALBamDlYes4j89H2eSsN07hTljIRHzCNFs2q6rbOG4S5zrUQ4fzqzV8Sxb8l7F6N5h7FtCht/kRRpR/NN55ZZnNeiX0u6UMLH13eRn6ugVldoiDFEroJjKYnCu3WZS/c3Q4VIrS1GAshVVtwzaLLuCre5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758270571; c=relaxed/simple;
	bh=5GZQAzsBDxmBoNDVxpMz9GYzaZl8SmM/riDG9Ea6u6U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Pdr4Nkv/mLT/jCtPQ3MyX6mMCHTxIdrpltfcItdWL2JUabzIry0twCUhbNdElnrWqX1agH98uI9z1awxnREIZarmM88dUVQaUX/dIFO3FSVhGq9E/u/qtUrWJpGQnzBiJYKXg0k+Hg/yB8pYfuIT8SSzsyFDLc8g17sRNO6ogaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=IoBTP1iA; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ee12807d97so1360721f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 01:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758270567; x=1758875367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+b+SS9EcCBpWrJSOsjaxJ+vMRqJ6poQmZkbdSM8xRQ=;
        b=IoBTP1iAZOMUpE++BvJgAFpzWI3TeqV6rCK2CMYkdmHN8e9978L8/wUGQVmdyJxpvA
         YV80apV6BdhI/uofL1hs6XlHW2HnDDcTCDx1wf+7YPj6h+uKRNBRxdQyE4gna5gm3ec5
         zhlqpALUJsXDxaMyVVD5Y3ADBWb6Mp8oB3Pkdt9hSqk4xnvJOJ8gzqQAUSh7LghwsSxK
         oIOtCuGMhKAqq2mT7jXb85d+Ju5shl52wobATtWy/f8M/nZqu62GhRVPgDFzJ6wQ8jeF
         UCs1EdFU7BiInCJjE9pwxjrENWHZGb5zWyh52RZnk/WV5bi3l4ECmHGb+DBZHFgKKz8+
         eEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758270567; x=1758875367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y+b+SS9EcCBpWrJSOsjaxJ+vMRqJ6poQmZkbdSM8xRQ=;
        b=Rq9aHVjAtShv940207f9QMo+F+KUFlQ4VCX2S4OZrUVmZ3+Y3KJes0yNmYgzTFnTBE
         YvarFNtaUfExHrjQG1YLW2e76JmlXwNyTXHMe25YVl8Wee5ElE+RtvOEdLftUjCBHniZ
         sTdcGxgGNbPO4y6+Jo/ltMpcnWCjwfmFB7QxhRIUdCjwjk/SGD3ClSk8lU1FBN8n4P8m
         dkUcmBdsdZH1GKGSQZE21LuFt1+4dmMn+TcFrO6h2xY2LrwViQJLQnLVhCtK1SuPbN0B
         y4em7Xe4syNz4JtEULLSddnLpP2JKYQcNQI6z4vxqXBuGCCoaBun1EdHvMRYTwleq8V8
         sn/w==
X-Forwarded-Encrypted: i=1; AJvYcCVGmVTCt9nZd3mwnq+0nvQ7R/YPJzlkKX75t5uEoQqvsWRBR5OvDGGSqcdNPHK6dYe+ci7AMEHQjWMO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy6M/IIkG+QFtcWTt3qOQXlMG+6b3bqjZ/eXd3zSTQHmX6yQV+
	EHIwylVTd9DugyOzIBEempWCtVO8mvxhjwRtLzeum7e9gGXtTUorD99Qk8JOcWrgqQI=
X-Gm-Gg: ASbGncufXyCjPbmfeAJMk/Suop3a0/gQYAZOb0wrAGwLv4pPSjj/W8eol3rkRMsvFZE
	IsjsL8q+OJT6YGkr5fbFn+66avCVdV9PfOqSGgAQmvZy9ezGV5CUTgZBPsXiLgXNjCuLLxj6wkZ
	dKa1HK93o9+woRzFiMw3G32k/ThkapTXZ6uhO5FuLrzNpcc+kaaLLf5wnh8e9ri3QqdtAIgvFMz
	KtD/nZkYsfLpgRLXJEaZDuWTz/sQmIVQzT9WJ/EVPdDOgN9O9EqFfmOy9av2XuhDHE1VIMEVqgt
	+TH7yFPMTxpz1wyovKnyIfDbryIcN1ywGTbqHY69qDRUoycmLvQsavE1bsVwWL0oF9JUiscRpkr
	b++j8VbhK2+E7tdJt+/+Z3txQKNoKjAXFlhBe1Xb2RmZQDKlVHIp/rDVXvn0=
X-Google-Smtp-Source: AGHT+IGr6/NZ65WWph91+bm6NKBVnrRuG5VH7akG1kGp6hji/8XJIT/htWHf6blvAVKGFcC3VsZm/A==
X-Received: by 2002:a05:6000:178a:b0:3e9:d54:19a0 with SMTP id ffacd0b85a97d-3ee87f90c16mr1595319f8f.57.1758270567304;
        Fri, 19 Sep 2025 01:29:27 -0700 (PDT)
Received: from fedora (cpe-109-60-83-189.zg3.cable.xnet.hr. [109.60.83.189])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee0740841dsm6771286f8f.23.2025.09.19.01.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 01:29:26 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	steen.hegelund@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 1/2] dt-bindings: reset: microchip: Add LAN969x support
Date: Fri, 19 Sep 2025 10:28:38 +0200
Message-ID: <20250919082919.19864-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x also uses the Microchip reset driver, it reuses the LAN966x
support so use a fallback compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Use a fallback compatible

 .../devicetree/bindings/reset/microchip,rst.yaml      | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/microchip,rst.yaml b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
index f2da0693b05a..12a3b04fc8ed 100644
--- a/Documentation/devicetree/bindings/reset/microchip,rst.yaml
+++ b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
@@ -20,9 +20,14 @@ properties:
     pattern: "^reset-controller@[0-9a-f]+$"
 
   compatible:
-    enum:
-      - microchip,sparx5-switch-reset
-      - microchip,lan966x-switch-reset
+    oneOf:
+      - enum:
+        - microchip,sparx5-switch-reset
+        - microchip,lan966x-switch-reset
+      - items:
+        - enum:
+          - microchip,lan9691-switch-reset
+        - const: microchip,lan966x-switch-reset
 
   reg:
     items:
-- 
2.51.0


