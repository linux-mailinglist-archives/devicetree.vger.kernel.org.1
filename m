Return-Path: <devicetree+bounces-223073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E52ADBB0B45
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:31:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E7524A61F8
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C17258ED9;
	Wed,  1 Oct 2025 14:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LREd/2vq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376D021D596
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329077; cv=none; b=k0MJudTiK6i6edw2Mz1/nz9vImI0vVHfayT6yPtEi8nPD9xw5QTq97JD95G8IkmbngyOd5mOTDe/8lT1h1kRj85Asl2jHyq8VXsX022gjzamYJ1bqZQkEtQ7fiCqAzV4T5odBALQQm4zAcCOnkNzdfv6obJuJzYrPQv/Auy53jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329077; c=relaxed/simple;
	bh=XWZPUaaF3htAs1jXMpQkvVgHfFhx17l90EvgzHPAih4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ItyTfZQUXpoDezgT6S9/XwTeQisxho3RLl21bEuig2w0PcXWNM4Ah0N7OhXfM2avy4zXVqHavKLDHfa4kkLVAvFT6NPfGkXnKptzurIzA154msAuLknp296VLxbKO7J225nsOY1jNey2IT9+EYHnpogM8r3lUzOMgxBrBgkxGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LREd/2vq; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6366d48d8ccso2203423a12.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329073; x=1759933873; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hm8p+oRUJotaddP1TSvfnFNBE3k3mXNPqR5Ais0Uds8=;
        b=LREd/2vq9Zl5L/W7CLQYyAd4EVHfcKh+/YsVy+8bHyp0yO5Q6BEjT3YgDUNylJo2JD
         QbUgqHxFo2GyyzOK9zaem5LTzxD6+h3YhrNh1bO1DKWPyJ66wDoRAxRR4t4Z8wJAl/Xk
         dC91hwP1T7Igm1eEgRG640dlKJPBrk+zR18BmYdFFlf7gcn5QKK6BU8eOnHbYJXtgaJ9
         VEf1pjkIUXILdN0PxX2Q1Z8A84awE1zPz6acfvWWA35Z64BzH6QJKZxoN7NSz5/xFXkh
         e78g2ESvVZiURDMpqg0m/FC3+BRb7zlU7Eml2ac0a0uOZgtkBYNbT1E1/hbdEyh6GNjU
         O31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329073; x=1759933873;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hm8p+oRUJotaddP1TSvfnFNBE3k3mXNPqR5Ais0Uds8=;
        b=V8Hot2uAlq/8s/moksp4ZiDtdleWHHOlVzG5h0gg6kvwUL3DdDK6DwyHu71xAyECAn
         1hoYR3WidGLTHAk8nv79nMklB/sjhCMZbqh2zCrS86S+4fobLTYv4BoA413708CcG1jm
         xZHXFb+xB+9e2KSFmdhVpQN8fWW4OL2imJuGVrXJH+st0He99ucXVjeFFb/wOhy054FI
         JAOuYwsxyghOVWzbTS6LU+O7/N63KNKEOHS+gue3IwFMDHXGmuTKk/9Mkr7mbBheGCf6
         SJO0BrlZ2j7GJKtFG5VJqrjAlpUBGYMs7SyRACBdN9QE5ZjuDX4ZMlDDWu6rdwcY+dYk
         +uWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBEMgsB2swpWLIkkYYs3QIB0WS2+WmN2wqA7iKeKpsoe3cHNQADQt4QCHrIF2IsY3EKhanEaWTpucz@vger.kernel.org
X-Gm-Message-State: AOJu0YxIkpehQA3vq6VPKPpe1Hs6mNQZ8ELEANm+nPXMGsSt825VuEUo
	sqQl5BWZGVWz0TDleDy5v4Ig39UU2E8KEIkuKdQM3fBiVVWH1z8HJlScuo9NdTYLiBw=
X-Gm-Gg: ASbGnctRsZUj+i6n4wr6Cvy5bwAga4GGlfcOJyeEfgHZBrPtiFvILCuQdTnFw+TyAQ0
	AeMXnjhJBQ0OoZbG4h0ROoG9RYLCqMzzRPPO92SQlKZkCcqStNJ4ndZSYCs6ZyJlROkHqw3Sm70
	0V0AVU917GjYFpAJOJamaUkRVXBLxVoPA2KC+PmTRIO+E3z6JS+3/BhxqemwZQNAAaWWK2zYK6t
	jocQQgTHKir9Y6x0CJ+a8UO0SC3RiYrOJIvDnvLRCIoQNX0mZwfPgpEUK+9wyPaCVm9Gf8++/H4
	ooU/4NLz1vmZZqne/9SooROg5CFzzN2IbQ804fWt8yCHGK6WIlumB7ffeDsv6IEZQmUH618GAvs
	M0ndQSYzZnMr8JIbMlVaz/RhcPqkUkPo7DBoZyFy8fGmC
X-Google-Smtp-Source: AGHT+IHFmCw9M7RXCZRtcPimiE3xYGWmiFdckmISU5XdmOOsx8oWJtSKmAidkIoaUD91Rq4E5XkMwQ==
X-Received: by 2002:a17:907:3d42:b0:b3d:9c3c:9ab6 with SMTP id a640c23a62f3a-b46e6afd22fmr373738766b.29.1759329072722;
        Wed, 01 Oct 2025 07:31:12 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b3fb818fb90sm607739266b.63.2025.10.01.07.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:31:12 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:30:19 +0200
Subject: [PATCH v10 1/4] dt-bindings: can: m_can: Add wakeup properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-mcan-wakeup-source-v6-12-v10-1-4ab508ac5d1e@baylibre.com>
References: <20251001-topic-mcan-wakeup-source-v6-12-v10-0-4ab508ac5d1e@baylibre.com>
In-Reply-To: <20251001-topic-mcan-wakeup-source-v6-12-v10-0-4ab508ac5d1e@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vincent Mailhol <mailhol@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>, 
 Vincent Mailhol <mailhol@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2028; i=msp@baylibre.com;
 h=from:subject:message-id; bh=XWZPUaaF3htAs1jXMpQkvVgHfFhx17l90EvgzHPAih4=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy71sI/mqZEXFbZ5rHrr8krW/aez89esqRFKG92/HjN8
 kSkq314RykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAEzknDYjw0abY2oqP/J+sIfH
 rNbffP4Bg+cyCx9Xy+Ai5p/PS5/ufsHI8P/Li83dL9pSlytNdG22VxX9+IwrJVTlurDx1t9v/7x
 8zgQA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The pins associated with m_can have to have a special configuration to
be able to wakeup the SoC from some system states. This configuration is
described in the wakeup pinctrl state while the default state describes
the default configuration. Also add the sleep state which is already in
use by some devicetrees.

Also m_can can be a wakeup-source if capable of wakeup.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 .../devicetree/bindings/net/can/bosch,m_can.yaml   | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index 61ef60d8f1c78c40a6c8458ed30b940b1121d83f..2c9d37975bedd652b3060ab11ba75c37565edaad 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -109,6 +109,26 @@ properties:
         maximum: 32
     minItems: 1
 
+  pinctrl-0:
+    description: Default pinctrl state
+
+  pinctrl-1:
+    description: Can be "sleep" or "wakeup" pinctrl state
+
+  pinctrl-2:
+    description: Can be "sleep" or "wakeup" pinctrl state
+
+  pinctrl-names:
+    description:
+      When present should contain at least "default" describing the default pin
+      states. Other states are "sleep" which describes the pinstate when
+      sleeping and "wakeup" describing the pins if wakeup is enabled.
+    minItems: 1
+    items:
+      - const: default
+      - enum: [ sleep, wakeup ]
+      - const: wakeup
+
   power-domains:
     description:
       Power domain provider node and an args specifier containing
@@ -125,6 +145,11 @@ properties:
     minItems: 1
     maxItems: 2
 
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandles to system idle states in which mcan can wakeup the system.
+
 required:
   - compatible
   - reg

-- 
2.51.0


