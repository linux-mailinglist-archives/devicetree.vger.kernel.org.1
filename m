Return-Path: <devicetree+bounces-105086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FE498514D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 05:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCDDC284B17
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 03:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D9C14E2DA;
	Wed, 25 Sep 2024 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tfUq7CDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D894514AD32
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 03:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727233913; cv=none; b=e/0MO56YXVff2HG3JotZnaQ7gASeoeYjhTe6v6pBHbeo2tBxVRSjHJKzG4pw4/BVfjYMI8oruJvjTv+pgs8pjDIMlV+ml6kKtWlwJ+wnpMhjZUXA1Kuc0WTBOJdI6lerQuhHik69eL6Z1xsn7c7o/LH8j1fB8BrkZ6wRaK9qx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727233913; c=relaxed/simple;
	bh=ESF4B1n3zhN4p/BUG4O63hIkzMP2aE+/kcxZPliqe4I=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Oj+EYv/k7n79MVq5NkQLvqBRwXFmnoL1t8EhKI6/kHFlSpKhvBwH4t1CMP6hGEdUp4mXJf6JlHQpxWT3/WIw+1fKa1mLtQDdAOF5Z7rLO3H49vtRYNT+KiYEkocJHpVIKs552l6YL1Z064l6O615i5T7Iut7q4w5wat3llxWGqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tfUq7CDt; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e1da662315aso9325502276.3
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 20:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727233910; x=1727838710; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UVr7KqF146l104fxhnzgYW/+yda6qz1wr5zQxAmCh5I=;
        b=tfUq7CDtGKqbtj/Sou/3BrluOSWnW0Srp1K5kpYYTzBz3JDRdThtS2VWv64nappodw
         p3oiCTSvXwPwBR0ua+BS8wJe3TtumLqjOtom076cAW/ZDSCZIrKhVxCwTpY46F1n6bIO
         9hbD0751IflfAt9c1FWuC1u8qkb/SFES2P+fVjQJkFghOAFD2CpvsJxagC8flFeoflSB
         wRGQvFYk4u9Mec2ESM2pl82LOyymFI27XhalE+Qu8dTtFlNOoR1XrVL/XG2ckY6FKTyK
         8QBj0Oj3xBWisZEl1eFN1NLgXUqdKP9Fd48ycQCTV3hkA8xCmRxkHh6Lth9dT9c080d7
         AeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727233910; x=1727838710;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UVr7KqF146l104fxhnzgYW/+yda6qz1wr5zQxAmCh5I=;
        b=uk1fLTgMZ5/7hBniKUWYuWlh0uIJF79TPn8afI0bgIwJ62bkahF51BV3XhjUc8f2ON
         /k/HVXdvAJsbdsagIlF+wCZ8Ll0TXbjxSOx9fB9wFU/pKb+HI8i9DHcf3LR/AdnPAlNG
         WdiBUH1sHLvKi4df+ApMn8TfIn5XvzNlhgYsxav4VBTq6rGSTpYQ8Uq7jFKqWSAkiP0i
         GiG+/j0/HF7dVOiE18zjs7t9HnbkyUO7HoMCvE6otKtB3jNaTnUFIDCjLsU7SYG+orPc
         Cw9erTxmrcALPO1s7+6Zoy6qpxxlbo3PAP2Vvh8McKdk+3OXrHRui1dwN9Sk029IAU7e
         CEbw==
X-Forwarded-Encrypted: i=1; AJvYcCUWXA7S3qt21UDTbsH6omLrOXOt0CIpBb9/9S+AEyyyeyAZCYH8lASoQbo0S7yq5KLXJ9F7TFq+QUtx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/R3uPTs6uvCu5Zf6cdbOLBaqg2Yv5iK8AhWhEOuKvGjt5N9GL
	ho1tz/BcBWbt4vl5ETkmGldc+eovQp4rd/sx4kWjj82fEAW0cDA9zDY4fruP+glZSRuuBa6ymWY
	qew==
X-Google-Smtp-Source: AGHT+IHuFr2TP3OPoA/rgoO/fTssCQNMhFEhC2Y3DqU4KKzglS1lQ/ALChp7Rea/E+qP6aK0Rh7jS8LnH6Q=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a25:b120:0:b0:e22:624b:aea2 with SMTP id
 3f1490d57ef6-e24d46b5e11mr1316276.0.1727233909726; Tue, 24 Sep 2024 20:11:49
 -0700 (PDT)
Date: Tue, 24 Sep 2024 20:11:30 -0700
In-Reply-To: <20240925031135.1101048-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240925031135.1101048-1-amitsd@google.com>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Message-ID: <20240925031135.1101048-2-amitsd@google.com>
Subject: [RFC v4 1/2] dt-bindings: connector: Add properties to define time values
From: Amit Sunil Dhamne <amitsd@google.com>
To: gregkh@linuxfoundation.org, robh@kernel.org, dmitry.baryshkov@linaro.org, 
	heikki.krogerus@linux.intel.com
Cc: badhri@google.com, kyletso@google.com, rdbabiera@google.com, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, Amit Sunil Dhamne <amitsd@google.com>
Content-Type: text/plain; charset="UTF-8"

This commit adds the following properties:
  * sink-wait-cap-time-ms
  * ps-source-off-time-ms
  * cc-debounce-time-ms

This is to enable setting of platform/board specific timer values as
these timers have a range of acceptable values.

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/connector/usb-connector.yaml     | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index fb216ce68bb3..21a0c58c65cd 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -253,6 +253,36 @@ properties:
 
     additionalProperties: false
 
+  sink-wait-cap-time-ms:
+    description: Represents the max time in ms that USB Type-C port (in sink
+      role) should wait for the port partner (source role) to send source caps.
+      SinkWaitCap timer starts when port in sink role attaches to the source.
+      This timer will stop when sink receives PD source cap advertisement before
+      timeout in which case it'll move to capability negotiation stage. A
+      timeout leads to a hard reset message by the port.
+    minimum: 310
+    maximum: 620
+    default: 310
+
+  ps-source-off-time-ms:
+    description: Represents the max time in ms that a DRP in source role should
+      take to turn off power after the PsSourceOff timer starts. PsSourceOff
+      timer starts when a sink's PHY layer receives EOP of the GoodCRC message
+      (corresponding to an Accept message sent in response to a PR_Swap or a
+      FR_Swap request). This timer stops when last bit of GoodCRC EOP
+      corresponding to the received PS_RDY message is transmitted by the PHY
+      layer. A timeout shall lead to error recovery in the type-c port.
+    minimum: 750
+    maximum: 920
+    default: 920
+
+  cc-debounce-time-ms:
+    description: Represents the max time in ms that a port shall wait to
+      determine if it's attached to a partner.
+    minimum: 100
+    maximum: 200
+    default: 200
+
 dependencies:
   sink-vdos-v1: [ sink-vdos ]
   sink-vdos: [ sink-vdos-v1 ]
@@ -380,7 +410,7 @@ examples:
     };
 
   # USB-C connector attached to a typec port controller(ptn5110), which has
-  # power delivery support and enables drp.
+  # power delivery support, explicitly defines time properties and enables drp.
   - |
     #include <dt-bindings/usb/pd.h>
     typec: ptn5110 {
@@ -393,6 +423,9 @@ examples:
             sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
                          PDO_VAR(5000, 12000, 2000)>;
             op-sink-microwatt = <10000000>;
+            sink-wait-cap-time-ms = <465>;
+            ps-source-off-time-ms = <835>;
+            cc-debounce-time-ms = <101>;
         };
     };
 
-- 
2.46.0.792.g87dc391469-goog


