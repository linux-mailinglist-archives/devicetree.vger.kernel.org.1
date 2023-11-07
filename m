Return-Path: <devicetree+bounces-14427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4199D7E4715
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 18:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 727291C2091B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 17:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32533347B8;
	Tue,  7 Nov 2023 17:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dbMNYeqg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810AC31584
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 17:33:25 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1846130;
	Tue,  7 Nov 2023 09:33:24 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1cc30bf9e22so46930825ad.1;
        Tue, 07 Nov 2023 09:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699378404; x=1699983204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oGp6FbeEP7POCZwSa0NT2Hip56pwTK9CjaEazRJljNE=;
        b=dbMNYeqgNzOXNAkIjBP4MZUJzLA1AYKMZmmYx02Nnc1A2az3+KzHoBSeGQWMrmc4NP
         lIsfFZSMAFGfmkVAyYs8ktlenkrZC8XpliRhs68eZWOZKt56P2Pvv86EPBtMj+gy9+qt
         Yx0dsm6lApnLmEwCgR2TPu7lIDVuKp8IqSf0nzr3ANlv6Wq0blOlpd6V+7slpRAv7l5j
         ayOUdV8t5/WKF+UA2c81NIs6ftRkJe2YIRAfpGRJ4gnxib+prKMuVIuyOxtGNRqX9z+1
         tsFwmGJy8/YU54HGHT0spwh5RlqrTBD6TGIov+AsKndrFcbeF5ywjcBBC++vZCbPfqCf
         eTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699378404; x=1699983204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oGp6FbeEP7POCZwSa0NT2Hip56pwTK9CjaEazRJljNE=;
        b=NHRqvhCkXHpY/YjP3HiS/yXz4757zntyWqJtkr+D8Rs4a871oNhd0XHA4NkLUJLu3l
         1m5xcWKy532l8YO6YGF0h91SwkBjfdglfRMadj7SOqXC1Qo9KEqaDpIKJoDx3UchYz0Q
         ovYZGDfzG+SRaFnHsB6kiSIVDeLqmo1L45Sy8LV51jsXRxdGsOhm8UwP95S3O6xoFPzj
         BxU0sWACuync2b7UvOtflXGPe5xkDSMHjjdBRskIoJIDFMNN5QN61BYhBy1c8xouq46a
         jDfM0UI8g21Rd3tSQnsFT/6CFo4KH4sTp7Px0gU18lAdBLt34GxJ1Vuo2DtIGtzES5T6
         4Lew==
X-Gm-Message-State: AOJu0Yw9EIMoxc/DszF+xEgZAqWa59vom0/VUclDap2g9Zk0HJe+oGeA
	nC4wCCHuX7QND6MluWgsupVDPgW9geBGksdX
X-Google-Smtp-Source: AGHT+IFyoTnKAqiGE0RAsKm4+Fdncst5HJn/8IAbSMxXNFVYbS9Z/129XBJLfi3XnKaigy3tNLlVDA==
X-Received: by 2002:a17:903:1ca:b0:1cc:4073:88ad with SMTP id e10-20020a17090301ca00b001cc407388admr4217348plh.29.1699378403652;
        Tue, 07 Nov 2023 09:33:23 -0800 (PST)
Received: from archlinux.srmu.edu.in ([59.152.80.69])
        by smtp.gmail.com with ESMTPSA id a13-20020a170902b58d00b001c9db5e2929sm103116pls.93.2023.11.07.09.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 09:33:23 -0800 (PST)
From: Anshul Dalal <anshulusr@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Anshul Dalal <anshulusr@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: [PATCH 2/3] dt-bindings: trivial-devices: add asair,ags02ma
Date: Tue,  7 Nov 2023 23:00:54 +0530
Message-ID: <20231107173100.62715-2-anshulusr@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107173100.62715-1-anshulusr@gmail.com>
References: <20231107173100.62715-1-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Asair AGS02MA TVOC sensor to trivial devices.

The sensor communicates over i2c with the default address 0x1a.
TVOC values can be read in the units of ppb and ug/m^3 at register 0x00.

Datasheet:
  https://asairsensors.com/wp-content/uploads/2021/09/AGS02MA.pdf
Product-Page:
  http://www.aosong.com/m/en/products-33.html

Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index cd58179ae337..9cd67b758a88 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -47,6 +47,8 @@ properties:
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
+            # TVOC (Total Volatile Organic Compounds) i2c sensor
+          - asair,ags02ma
             # i2c serial eeprom (24cxx)
           - at,24c08
             # i2c trusted platform module (TPM)
-- 
2.42.0


