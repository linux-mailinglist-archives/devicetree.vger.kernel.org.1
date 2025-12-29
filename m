Return-Path: <devicetree+bounces-250242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDF7CE729D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFEEC301A1A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82F3328B5C;
	Mon, 29 Dec 2025 15:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MsFcBA5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5041329376
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767020698; cv=none; b=DqNmY8mBi9gDtiVMspBEjVdNHu2p88gksFMLVGl1M7RUuqlPH9TASeoyFQ4gKKwIYf7+TrtJaMl6BJvSwr2iqxQ6JVyDuxWQn3ST4bG94iyA8cX/8ewhrM7uZoas2OOJ9VP6mtrUzIeuh4W+e6V36BUqp9sKfgf1lQk8QMg4UTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767020698; c=relaxed/simple;
	bh=9ZMhYWvGA48//ElPB1w7XwWDNmtPnQojjM7SQ+np5lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uyEerlq/dLYpZq9McHpv7zWyJeBy+RxUkdDsFPcPUvnJhavW3E8GXM/RalUGlb3xSSjDfDREe3JrT7oltinqET+O3m9s5v358EAON9y3AkMJL9QUNoAsJ4W2CaDGBM9HjIFWT30MJSs1KtzEOFgdRHITZ4vbotHfu+21JOd/CUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MsFcBA5k; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3d7c1321so5419415f8f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767020695; x=1767625495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uEMVDwEDv+HPhVXY2LXDlZKQau7yTOfmnEyR/lVD/RA=;
        b=MsFcBA5kdTNUFSxmfHrg4v47PyDaDj6lQBhlvkF0kAVxEo8bTKqeZG/1s8RqMj2/xw
         3u2jTwl6ARzzWHHSXkEH1Vv33bD0abPTTcfoRy9vJfwkoYv5p6L6Hj7eFZhuYmTatdfj
         0hZtc7BnmM2lYFwtVl0Ncg3Mh2nBmOxjP4aUlj7iLBAsVV1xoGk/ibQahe6sMUXug4cs
         indVgnx8Ie4HuFG926A6r7QLW/bxRVBV8N0Xm22JKho1ZvkxP+8QiR06ZQgTj/dhV8bc
         pdcafyNxfb0wB1ZbxMI4mLAXC5Dw+vHBqiCtnT9zJp3efvBqL9QSmnlFkj/nXY6ZNmrg
         ovBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767020695; x=1767625495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uEMVDwEDv+HPhVXY2LXDlZKQau7yTOfmnEyR/lVD/RA=;
        b=ISDsXOBop7w/9XSURVdqxCzFSWUKwa6DqMUzsB7yV92Bfw0Hod/7HsTAoI0U0mx9IA
         No1apzwYdJnEJcPsTOwG0O46YtB3GyB9+pCtMSCEOxed7IQMo2NgS4xyZWqZzdC8EF3S
         zYy/LsMebIDzIgX1xYnyBSp5O71VtHqrXtR2xk9ScUp9hB0Ihfy4qzat46WnT435+/20
         XphwPbgSQOB0HO9vC0hb8/q2FUEyv1DBJxJoE89ECBRjvuQHfYNP2ztZ8ZHd4tXgsy9T
         kryxQ4hOkvIpeu1ST8zLFlcIQjktZ1SdFJiq9I5lL9M57pYEh5ufcHwqhrJHSYr0ikvF
         Lbyw==
X-Gm-Message-State: AOJu0YwdVdOkzOe4o0lD/J2W3iSXF+2rVa4a8Xz93vERzjecdPVWxK2O
	duT/NjvXFbV5Qznry7j6kzQaP4ux8H0TFG22d8R5zFV/CnoaQOqjP5g3haXSF+v4
X-Gm-Gg: AY/fxX42Y2fuTS8xaBmpPxcXG6j1nC1niPEjpgXffPS8HxMHzuNVf5eTh6GcA+jK6eV
	l7iV9+nhDx4F7bWC55gXA5aE2TS4v61rFy7HT+blHp+EIukKZrvOJ7VVGuC6u1nhQN2WYOF5Z1T
	c8hRnhyY352R2Tp2rT1ZMQE/9rIn1RJ1oYYJTTqFHKZvVtTnhz7YtwnToDxOw0azoCV/KJ4ec4k
	PeZLBwnRMGlfNTGwYFg5T0XsiZjrcjTGuYlZ1MqDGKcwv3KfI/yOwj9cv+CMRmPjwPNDzPH2zX3
	u1P/7ekM9C/O61A7V96f5NMG06+HdhOgye6/HzVymDxLRaqrq0FUq6pzhFat+A62WQ0EEUfuxWP
	X0GDjOzmYv5wMMa88aacQUOYVsPn+w4jxnwgzDMbQnHwzU1swpjzOl2XvtFJ7lSm3EWW/qiNZcf
	t8r5DjwWI/L3W3TfFFm6SeGBQwRabYFC2xlSg1Ra/AnUl38SmsRb48+FH7CLUaqkN0tIjTtYpOW
	gG6y7VbYcj/cfZPq5Fu
X-Google-Smtp-Source: AGHT+IHQvAPLxhpI/fIrtRdA0CEG8n5wHY5t2lV2gupren/JOtxs3WLlDRopxfjEnT3s0+fhv7N8JQ==
X-Received: by 2002:a05:6000:40ce:b0:42f:bab5:953b with SMTP id ffacd0b85a97d-4324e4cbf86mr29308961f8f.16.1767020694920;
        Mon, 29 Dec 2025 07:04:54 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-220.cust.vodafonedsl.it. [5.94.28.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4325d10cc48sm52899902f8f.16.2025.12.29.07.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 07:04:54 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Yannic Moog <y.moog@phytec.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Mon, 29 Dec 2025 16:04:09 +0100
Message-ID: <20251229150421.57616-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251229150421.57616-1-stefano.r@variscite.com>
References: <20251229150421.57616-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX95 SoM and Variscite
development carrier Board.

Link: https://variscite.com/system-on-module-som/i-mx-9/dart-mx95/
Link: https://variscite.com/carrier-boards/sonata-board/
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..2a957a593abe 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1449,6 +1449,12 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Variscite DART-MX95 based Boards
+        items:
+          - const: variscite,var-dart-mx95-sonata # Variscite DART-MX95 SOM on Sonata Development Board
+          - const: variscite,var-dart-mx95 # Variscite DART-MX95 SOM
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.47.3


