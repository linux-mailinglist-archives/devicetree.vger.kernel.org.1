Return-Path: <devicetree+bounces-66322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1188C2698
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 16:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27F3CB2470A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9966616FF5B;
	Fri, 10 May 2024 14:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iFwnDgVD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18D615F3EA
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715350761; cv=none; b=DmR1MZa4tyYxGgEflomIr0tXMFFef2W5s30tOF/bmDzOfnk6/7WfHWdkiYMRxGKWwBccKxsungPTFlcsBvpIB/usI4u2iKjCRGHjOKGTz7anbrDJnI7pVE6Q16HJ/ZNOOHmhGYETh4dvZdEJ8TnUjdZTeldVRBCZj9/BRoJdJYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715350761; c=relaxed/simple;
	bh=i4G7aoZtuOLQ6v/EAbm/87VL6HJuAkCoK1F6wDmVAoA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ETtVLMrv4whgwtB8b60AksAfiuCh4y6fPHEYgCdLKo+GYvV2OUwD/M6AJVekdoPXaBrKyhnXtwrvBzsDPKzA1JM2Wn90lqS60BNzv9zH1MozczMCdi34krW9Hb8rcc6KaOz7EDvHBpyJG3whpi4ljPnLxHMs14XV10rPws0PNGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iFwnDgVD; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e0933d3b5fso29480331fa.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715350758; x=1715955558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ygxOQC15SUv3c6gwY3JPpSRcLSnmMYCDwnNrBTw5+2g=;
        b=iFwnDgVDMpE5HBR8sOAoQ76o7hp7BSvjOms/HGF2HJnJvHhi5AOLEqSKQYxUNbsfnJ
         C3iCuFyKktF45RLOTC7odHlEdBKuNc6pGYjU8El7Z6h901A9gTgeizRp+MdzVZ9Jk+BG
         j1UsYkuCuh7rvr9TxvV+N3AkpW5A736Y/LQq4nS6TwiNawXQ/N2/+KOU7o39ibEWpaM+
         BHplazxLWcyPuZC7Ty6nhrBF1iFaP7J0KrR1NM56PduTxJLc0H0MoRhFnn4A0LsagJc9
         zs8wQg6W0xnO+8mU66pcY22KHVZbZxr4SePjJiHCYXZdH8X6t76gKvCpJNzfdY2PHp7v
         08lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715350758; x=1715955558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ygxOQC15SUv3c6gwY3JPpSRcLSnmMYCDwnNrBTw5+2g=;
        b=uY9dJ6dx/DKAERpbM26KK0aAzahPoucqwIJEDnJmpkOVac5gUxG+1afnJyMeR/MwUx
         BagUtIoyTQ1DfXuqnD9+VU/fxomvv1OBj/rGxKO2ydhtCcxJzawBglHaJCQ8ERkVmISo
         t4OXRAul4EWNDBaKkeSYfZlUk1zMNKLbcwlVdWmB5I2l3BWnnvx7+wXy8d8nfmtCPhSN
         2WOBRjiboFEYCrOXtnqBCt4QCXYjSN9f3d5v3D+cbH90HWj6APVY3QAU67nZCMqIgb1M
         VD4xo5EUp67b3S/gVMpRM0R8Y6XYyisVbZs4ywcWdCor5I/0+5VV+meTFFMquJAr+5bq
         X4nQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJCeJta1l/fAQM1VGil/Ej6wi7Iiezc7luNNBUBiBJGfeep1pfrhUGZLy6OTNXMAI4YkBgZVEX5qmDoi4yDJuxoXIicm6a1S/0XQ==
X-Gm-Message-State: AOJu0Yy3WjaTbqI247kQyoj56XO14M0UTe1eHs+ecI/nrZp/7p3XbDAF
	aJqYxVgcI5rU8ACxrjFhddbsW3rxIOVRQJEN83HGJ6yjEiyDv23YoibfIsR6QDg=
X-Google-Smtp-Source: AGHT+IFaPZglaNJ8HKYesz9qBPTuNdjcWZFbOKI1g7KqEHhS5dnFETMdXxI9xWKnlCo8gdgjLKGLtw==
X-Received: by 2002:a2e:b16e:0:b0:2e2:1e87:bbc7 with SMTP id 38308e7fff4ca-2e51fe53fbcmr17337851fa.18.1715350758289;
        Fri, 10 May 2024 07:19:18 -0700 (PDT)
Received: from localhost.localdomain (host-79-47-39-74.retail.telecomitalia.it. [79.47.39.74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fd97e842csm56111875e9.24.2024.05.10.07.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 07:19:17 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: nuno.sa@analog.com,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Angelo Dureghello <adureghello@baylibre.com>
Subject: [PATCH 3/3] dt-bindings: iio: dac: fix ad3552r gain parameter names
Date: Fri, 10 May 2024 16:18:36 +0200
Message-ID: <20240510141836.1624009-3-adureghello@baylibre.org>
X-Mailer: git-send-email 2.45.0.rc1
In-Reply-To: <20240510141836.1624009-1-adureghello@baylibre.org>
References: <20240510141836.1624009-1-adureghello@baylibre.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Angelo Dureghello <adureghello@baylibre.com>

The adi,gain-scaling-p/n values are an inverted log2,
so initial naiming was set correct, but the driver uses just
adi,gain-scaling-p/n, so uniforming documentation, that seems
a less-risk fix for future rebases, and still conformant to datasheet.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 .../devicetree/bindings/iio/dac/adi,ad3552r.yaml | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
index 17442cdfbe27..9e3dbf890bfa 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
@@ -94,13 +94,13 @@ patternProperties:
             maximum: 511
             minimum: -511
 
-          adi,gain-scaling-p-inv-log2:
-            description: GainP = 1 / ( 2 ^ adi,gain-scaling-p-inv-log2)
+          adi,gain-scaling-p:
+            description: GainP = 1 / ( 2 ^ adi,gain-scaling-p)
             $ref: /schemas/types.yaml#/definitions/uint32
             enum: [0, 1, 2, 3]
 
-          adi,gain-scaling-n-inv-log2:
-            description: GainN = 1 / ( 2 ^ adi,gain-scaling-n-inv-log2)
+          adi,gain-scaling-n:
+            description: GainN = 1 / ( 2 ^ adi,gain-scaling-n)
             $ref: /schemas/types.yaml#/definitions/uint32
             enum: [0, 1, 2, 3]
 
@@ -109,8 +109,8 @@ patternProperties:
 
         required:
           - adi,gain-offset
-          - adi,gain-scaling-p-inv-log2
-          - adi,gain-scaling-n-inv-log2
+          - adi,gain-scaling-p
+          - adi,gain-scaling-n
           - adi,rfb-ohms
 
     required:
@@ -214,8 +214,8 @@ examples:
                 reg = <1>;
                 custom-output-range-config {
                     adi,gain-offset = <5>;
-                    adi,gain-scaling-p-inv-log2 = <1>;
-                    adi,gain-scaling-n-inv-log2 = <2>;
+                    adi,gain-scaling-p = <1>;
+                    adi,gain-scaling-n = <2>;
                     adi,rfb-ohms = <1>;
                 };
             };
-- 
2.45.0.rc1


