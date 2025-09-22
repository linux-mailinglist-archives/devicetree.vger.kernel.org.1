Return-Path: <devicetree+bounces-219960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EF070B8FE97
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E891B18A2088
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1BDB2FF666;
	Mon, 22 Sep 2025 10:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TVgSXbQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A962FE577
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535588; cv=none; b=PvyJvYMalAHyuPvqbGJR4aCJR1w3jLHPpoO0QebAN8vCRdKZ6uwGnElv0WfHsN3/TWwCsRrBf/2sCrRguGj+aX27OQI+cVegaWY15xR/Jq8uYvSRoD7aVbORuaten5+EnvNwIZlNKs7suPNzR0W2SZqwbkcKBqWvPCRuHg2dXjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535588; c=relaxed/simple;
	bh=1ehExbLkMmNgsVXFhI/3vAuhpWWLmzmhuVgV7QDcaGQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FDNYXqt2PTdDQOdZxce449gkh030pmptltenYEhGBDNOv8UOPfwLaCflaV3ehvYU/vIihtC6ouzg8o43pIO90p+wDgXlit5hLRx2LEvxH27gW4S+TfDjDZcVspHaiOp5xLeNsyzplOBg7iMWKADPEXvB1r6KFGyRp612VYAhTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TVgSXbQC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so28080905e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535585; x=1759140385; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=TVgSXbQCa5k0aYm3TJvqmUPfEHAnB1wrN3x7203z3YMM2WBg8CLXVV5DddHNLM9/vQ
         IAEFYF71EkLKp7t+4cydkN43ZiSjMaKzwlSHxUhfa4odg6ZOdVtLhdCarg3AR3RtRT0c
         ZftXQsScdqhXBFYDG/d+bAto9jhjwVkJJDFjoI81G1ju/OsriXn4Tn0q5fPeggKBMM4x
         p5L/MFxnOy4xemgP9PNkw/+6p7WV3HR2HIYyRYqgY0mrIQzCGY0AMjyDf/qULVUStRn1
         UWgzZFgwfs7tHYm4Lsuyn867IyQZTZQXIiy2eQ98SCN+/hm9sfm4XD+0RoObDzvDTObP
         4Eww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535585; x=1759140385;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=YHnxDnK/IsGpUoHFIsOHASogaG4rFHV+of9q0TQWR8W4mptwk2RpsuQej0YS+YDcXG
         N+TmCAgfttSpgzy14O/QLw7zWN5IfGaemuwcNSNTNwPUPV6EbA2WI5dGZT6NC85bt2Kv
         gu+M+GzHB37H/5JCDzlob0NKzlESWVaORW/QYxCrvxAT+6Sv6fS0ZsDviaxfFXC2u7HA
         0PeZaEQ4T8jppbhW3RMN1tUSP0FxHVFG62onWSBnlUFbyTLGPxsfmieh7ZNZ2PEALVhW
         G9AY5scqyf/8jNUQ9EcUCRteUuliOcOXYlo+j05U6KWNnBqHYANHevgbSv1yxM1p5qTc
         OBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTakulz3MUs5kraUfHeIOzf7shTgVTKJDps60OXtj3HL+wV8lIjxUNq20ksXbsSXSCqHwZ6G9RnpZp@vger.kernel.org
X-Gm-Message-State: AOJu0YzyVSX9ogXOOUdUTCcy7wzFJhjiLwSMHjC1+SQT6WlVggpJ+tsS
	iiC9NtCf5KGkcRtAR8hWO5wxtdhl6f3h7pbWASVnj498EtXm2lh2PEKD
X-Gm-Gg: ASbGncs5UTTlO/E4g/pxdqTMDCuL6/+mmjQaUCYkdMwkk+CiRKtY/Am0bu5wlUeXVLg
	2F3B2vUCH9DjBYynhuUz36A+/8qMh1ZGFMr4h75Xw2OnNDoBugter49M2maw8fPiJN+7kyHda4s
	lcllEMpOxBY7DlH1bM14Msl3EwIa/avYuaTlJB8Le5bJ3Lv+wOqq0055cEn4Qu5n+RHM5glvxpt
	SiEkfwbR+lftSsvRL0rSTzQ9Uh/DitZPVTNC4DeTUH2XiPzmC7Yps4NXd1fdSQFn3XGd0tcSVWZ
	N38Z59XxB2vHfcgJpTVBPvY2p1YzoXHFIeTcIR9nuGE1zAaEJVOQwMOGBwVV5zXDs8HOlw2VxQe
	9hlNMIahe5HAwOpdVdS36iOARvDk0mMW4L1mDXuZTxRde4psky4LzTSrGeAMbenh4bLaAp3EMKg
	REBv5+GQwdBgEJwp7hng2v5DwllWI=
X-Google-Smtp-Source: AGHT+IH/nuiP33vxdi6haBkztRav20FFYyckleFU6YyLjEkl9KoqVa24kjV3Z8p0lBzYdX5BRmqpMA==
X-Received: by 2002:a05:600c:3585:b0:459:d451:3364 with SMTP id 5b1f17b1804b1-467efb044a8mr139254985e9.24.1758535585151;
        Mon, 22 Sep 2025 03:06:25 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-461391232e7sm233177835e9.6.2025.09.22.03.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:24 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:17 +0200
Subject: [PATCH v7 4/7] dt-binding: memory: add DDR4 channel compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-4-b3dd20e54db6@gmail.com>
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

Add in the memory channel binding the DDR4 compatible to support DDR4
memory channel.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 9892da520fe4..866af40b654d 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -19,6 +19,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - jedec,ddr4-channel
       - jedec,lpddr2-channel
       - jedec,lpddr3-channel
       - jedec,lpddr4-channel
@@ -61,6 +62,15 @@ patternProperties:
       - reg
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: jedec,ddr4-channel
+    then:
+      patternProperties:
+        "^rank@[0-9]+$":
+          $ref: /schemas/memory-controllers/ddr/jedec,ddr4.yaml#
   - if:
       properties:
         compatible:

-- 
2.43.0


