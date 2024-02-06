Return-Path: <devicetree+bounces-39085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0285B84B5DC
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB0721F24C43
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59664130AE2;
	Tue,  6 Feb 2024 13:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="hw9soaxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B6312F5B4
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707224474; cv=none; b=JhCTISUKfTSZnIO8H9hwZtKffh8ZB9zczooftKMqsdoxagmg5IuUklJo4xfNdxG2TFP2ZEIYLK1dl1hfPlDrx9YD2xf4Pg3sR2+IEVASsuwNn9VZHnF3q1mqrUCPAbXlCWIW171rJsfY9MRgxMiH1YA6TDXJujky+loazL5gCfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707224474; c=relaxed/simple;
	bh=aawuMyukjj0YpRojPDYrBslIzCRMBRERw3xI0sOxA7Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VJqrdhnxhB4t4d76YrgOILdR1Tdf9ie8kIOC1ZbSGpyE/RkEo57+uPJCZCHELNr9F9HgBFH+i+2oFhyxCk+V2bI4xfRj0z8RgExC46apVFUbJG7VcAS0dygauafQuLuHXEB+Tjc4YFr/xfLmFbHpye851V0k/6zNtFE8bMh85EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=hw9soaxJ; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d958e0d73dso4769175ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1707224472; x=1707829272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UGyYRwZb4uYlUhkrM8sxO3WieWp5k3xG/Ao/UAKVBss=;
        b=hw9soaxJEsWwW7hSuYrwpETiHLN6rM4tXniuFgR/0e60z/Zt4M4qOr77GaO2PkWFlC
         g4fEuZNLiQuxNcR3kL4Q8JgBFPGJVlHJnWkwdP+8MH+uJXnuvXCEIx/tD/Azgq6TrcBe
         uNCicsdLUfdHH4QzVkTy6jEWtKzpuC3EgG0eNLjDIlBdhXUYhAAffpq3ss4qEgfwAhFh
         Sjzw+ZPPRn0qiebpe4JtulnOz90BQSXZlBZcCqt6ZPBsXOkz0jdPIEP2ItCfDLS/46PF
         sB7k8ikyZFsbi9+rGfG5KppqWQL9cEyzDR++AK2MCBaNAN2dZhNj1gg4dpAxKSGMXkGS
         DPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707224472; x=1707829272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UGyYRwZb4uYlUhkrM8sxO3WieWp5k3xG/Ao/UAKVBss=;
        b=xA4h0yrb1TLUptPsRacM05EhCmLrU7lSfz97qC4HZuKshPLpBRuS7EdqOl7Mrn0Lv7
         LmZjilt7sehMiDVT3cqWZhYczNmgcTeiQf0QRI996CLRvIOf7qrgsBSawoUh9W+1Jg/k
         M2KBS9dvv9nc6yooIrlnjldnPok3R4IDfWgClo3B4n5t4xDsqm8B3bldQlENSsv9+Yo6
         kRxwaZjnVBsQujiLVb4RuJGBchRkUDi4Q+WUNjcPmXB68mWDH6Oms9BMA/20e8uXFSor
         629/BWNtcgiKmOVscmBspCAD6m+ASIyKe4bmMQLIeu7JWFC/oFGXfjgBOWodzmEWEESG
         42Hg==
X-Gm-Message-State: AOJu0Ywdq5pPYTKH9guTl/X6CRzbzyP5AZlGDZISGBG63Lop5yN6vQVB
	blHlFfhd+K58He2QXldB66vA6KolSpky12wO1wZ4tY6KoK9IrTCTgdwDaElmTmU=
X-Google-Smtp-Source: AGHT+IFV2GIbmK67YXMIabvxQyhJKqvHRTHxdSuKqhISRoap+nJXsL1nYNnEk0bq/vpAafvHzntYjw==
X-Received: by 2002:a17:902:ea0b:b0:1d9:5ef2:a562 with SMTP id s11-20020a170902ea0b00b001d95ef2a562mr2446636plg.10.1707224472111;
        Tue, 06 Feb 2024 05:01:12 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVG+XQHxqYrCWjw89JDVgcd56/2Bzy/Am/Sg4SKgSw4OfWFAT+X//NIxlCYZ80r6k1WQepqBmqOGrBn4QycRo1LwVpepj4WTd5stOLenoT8sDdYQIj+muocASHI36ZQczzBReSuOsOHFkYBOKjg+1oviJxfm9mS1PR9cwayj/ocDbtocMJx/GG/DXl4VOE+myO6QiiBGBE26GIAH4xFykkNzsMyGTnLdPqJUcIwU3gHK9AKxw1hgPVJPBHSXxH3BnfJsxklQVu/LxAE2BRndU/sBxTl7ZGDcO+9XtLORDnrb7gnAo4/nBPi3+FtvKI0gY3plyKXxJFv0EY+csK97t5K9Av4+ey01G/NERTuPTdiBH/6ZUVN79TBQ3U8+6KHWSryYaKbC2WN5CACOG/jKnTX2AXlihXeqp7sHjht9kjSQBo1fSaaVIGVv7U76eLyVjxAayD2kQ/YFOJLELs//Ok9yLKEg9UjHY9hpP5ukAFaB5hvfzh/FoXCCuJJGBjywIu1vjgDcJqA49GT9edQZROB1cmteQ==
Received: from localhost.localdomain ([180.150.113.62])
        by smtp.gmail.com with ESMTPSA id s1-20020a170902ea0100b001d958f8ab2bsm1782167plg.107.2024.02.06.05.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 05:01:11 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/5] dt-bindings: iio: light: adps9300: Update interrupt definitions
Date: Tue,  6 Feb 2024 23:30:15 +1030
Message-Id: <20240206130017.7839-4-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206130017.7839-1-subhajit.ghosh@tweaklogic.com>
References: <20240206130017.7839-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Include irq.h and irq level macro in the example for readability

this patch depends on patch:
"dt-bindings: iio: light: Add property vdd-supply"

Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
v5 -> v6:
 - Separate commit for individual change as per below review:
   Link: https://lore.kernel.org/all/20240121153655.5f734180@jic23-huawei/
---
 .../devicetree/bindings/iio/light/avago,apds9300.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index a328c8a1daef..e07a074f6acf 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -35,6 +35,8 @@ required:
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -43,7 +45,7 @@ examples:
             compatible = "avago,apds9300";
             reg = <0x39>;
             interrupt-parent = <&gpio2>;
-            interrupts = <29 8>;
+            interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
             vdd-supply = <&regulator_3v3>;
         };
     };
-- 
2.34.1


