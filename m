Return-Path: <devicetree+bounces-228374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A88BECF39
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:13:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41123586C8E
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8248B2EBDDE;
	Sat, 18 Oct 2025 12:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CJ2MQRYL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CFB2D7D2E
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789529; cv=none; b=WF91JvNjYCL4Q558SMz5UeuTz8+YFb8TlJAJ/KX+eolY2DXtLHNVWwmK/6WLGJU5Rffuyb+LYTDbtoiNI2jhxMqgWQJp2BQkA39dTw9ielZnjvk1d00w/oMwJdKT3GoYbSihODTLmefuX0/JNyOQZmb55KIsX4b6PPnqMH3oCQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789529; c=relaxed/simple;
	bh=icm+qgwvmlaIKVA0+LDLw72vpjzysCjTHSxFdDTSB1U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c0KA9wCOMEMQmcFZnYHdMA+iqRUrn91nzogYJMhOQDTaTX9lhAiQraMasoC4VATF0w7FHtbyg75AFC2GKsWselatHOAkpcDgebEJRnTNAvr5m59aqmZfG+oQKcwWmbNPoUFCtaFabEvl3MHLkchpprkJOPJ7D+WtVivOKIcl5Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CJ2MQRYL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4270900c887so188628f8f.1
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789526; x=1761394326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gTxzj/ZNzMCl2AVIVbzHV200aF3vcZBw8Pj3HONtytU=;
        b=CJ2MQRYLLMsPJq9nsKjEIO5lHAqJ7/rocDB/FyyLd2Fy2O81wMwQIru8UzO9teiFQi
         7/iqOCXCVJLkGhm+eh8w0CZ2RqkN3ZNYwyxILLFmbTK5NC4rhowgFRpGdH09QMYZctC8
         0ASVCB64mq3fmZSJLZ32zxdcT758r0ImPpyKu/vpWa54ic0sepzpr/5mFwOqmfrWh8CH
         YcI/Ff0yO660N/bDyOD2ltkkvVbfkPpQ0MHi1Vgde2QnOdQgUcUUhORXoYP5Kmz2g2Jo
         UdT8Z8aCwWLw7jkbVyQR545cisxqlINY9gi64zZcyO9Gf14/aVjRbN5lvCYll5XSSpsQ
         FMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789526; x=1761394326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gTxzj/ZNzMCl2AVIVbzHV200aF3vcZBw8Pj3HONtytU=;
        b=AIM00+qsRxe2/xPJCviqPAQ1R9WrR3v/k21U8AkXSsa3TEHk+UeBnJ0xl2dVhDFj4r
         bmeuHpxRRS+99OGng7zbVxDGnrqNPgmVp4QHyuatzK8+4fUyLb4Gc0P4jduV3qQWRR4r
         qMAugw1Zbztm8Crt3RaThlcqEQw6k/uRNRsDbPVkfsPL4a90Aze0iK2BMmAp2SIZo6vf
         y5zS++9x5pbxLyAdp6R1fcaiOzsIgz7YOCjEcy7inY3kkUi6Cu+J9v17doZrT9/kNqfo
         j04+5RhECUk/k/c7JMEacjUiAUEZWhtDbYmuu4Cg9KDRlR8xN27UtK0Tnahzs0YQbkdC
         QP7w==
X-Forwarded-Encrypted: i=1; AJvYcCXx33xWTGJOubhOQdBveY5Jdfr9XuvhxlmI4V4eoBCg8cbwOKqGb1I5Z3x/S9ACr1fiI9XzX4goWo9+@vger.kernel.org
X-Gm-Message-State: AOJu0YzIPefjSwKtz73F7nJpTptCo97XxUCQqfVsrtATJkrxWPi4cQXo
	OPq8FYuH+pPM54IQAvFLt31T2u/bVsYBN0DFeDZUI67FO8DGr9leiwN1
X-Gm-Gg: ASbGncvK/BOsUQyhmv+WAd2MRldZFJ3C51FjgqW5DsZkBh7YehdQ2mRkyHVTTeMdGjd
	otnkr/rmU2EQxTTotFfwlXMDfFM1CTAN/9Gkh1nT9QlyBbY+AjPSdJsOcPxiL7Y8CSV3idia411
	ppgj7q3puocZSiFXFZJsc50zKv/dSwX0wzpwceU5xMlc8AhS98QLmRruX1k6REHTOb4wi9Do1cw
	/mGP+4EYt+48j3OnrEUgVWbYTIVt7YLIH0tMhrdWdnFP7hWlAck2/ZL5DA5H4CH2atmBP2wO8G7
	yPdmgPiWdRIpZshLB1u5IYaHveh/uHpDSS8y+y1LMyzvOJdeqf1tQr6sfMcXVMgK33jAOXgn1yY
	eETd2NwxnmvreF/Z8nTKsNO09YFu9bDPB/CxMQRSrBncahryEl2yajdleRTrqQjD3jauJA1Y3by
	mgpfdusnRrObxZAXkmSqzxVQfRqvF8MDPRyj5303Ag5fVNhV2gcxI=
X-Google-Smtp-Source: AGHT+IE9WrMpGHlOtq7pCFaMxpNHBwkBQgyPgdXD8PMj1DfIilZHD1dWISX0v2wrGK83GpPxksi21w==
X-Received: by 2002:adf:a3d7:0:b0:427:7a9:97ab with SMTP id ffacd0b85a97d-42707a99873mr1610059f8f.10.1760789526007;
        Sat, 18 Oct 2025 05:12:06 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:05 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 06/11] dt-bindings: altera: add binding for Mercury+ SA2
Date: Sat, 18 Oct 2025 12:11:50 +0000
Message-Id: <20251018121155.7743-7-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the device-tree binding for the Enclustra Mercury+ SA2 SoM.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 30ef03c53d73..72cf04b22a08 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -62,6 +62,16 @@ properties:
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
 
+      - description: Mercury+ SA2 boards
+        items:
+          - enum:
+              - enclustra,mercury-sa2-pe1
+              - enclustra,mercury-sa2-pe3
+              - enclustra,mercury-sa2-st1
+          - const: enclustra,mercury-sa2
+          - const: altr,socfpga-cyclone5
+          - const: altr,socfpga
+
       - description: Stratix 10 boards
         items:
           - enum:
-- 
2.39.5


