Return-Path: <devicetree+bounces-225748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADD7BD0887
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B7D61882530
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BAC2ECD05;
	Sun, 12 Oct 2025 17:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IRZ0NBWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F4927B33B
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290262; cv=none; b=t5XrG3hs23GRdJcxSVeLqSxqqpr4dbeN+Ik6Xr0AXnbXQBRXMFUZWQXVPQOmsFV/bhSjkkkSzYjav6RaoJXhLaF+kUTCNb8UEAlAFarolMcjW2rCQXXBWZJ9VybyWGcCyH+S2pm3AzE89B83JXSY3U9zjkt7Ne/6RrEdT8b04bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290262; c=relaxed/simple;
	bh=ARkCzPQRazCvQ8f08+IPMyTBKBhnxWBajxH9X4PKlgI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T4/N638dM5BzyVGXiVc3Udr19ag+OnBt6Au90kbk+fZ/B/bdzvWpHo8nmSIBz842IyrjX3WXzJhhJoN5D9sA4Qonx/u3Z16H534Y0C0tJ3t0Rrl0rCg4Ux9G1Zdgc01IpMhMWwvmRT6xCXbAd1dPdemqpErIRBzQqJdlq5Q/oPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IRZ0NBWH; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-789fb76b466so3084864b3a.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760290260; x=1760895060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJi/0aYLKJUb+ptER4OpoR5lNkPbRGPGuiPKjV49HE0=;
        b=IRZ0NBWHF/9aknK+mKO5Urw7Sz7TjS31E1tTHlK8OAW7N78aSr0CtDk015tXJ9Ccis
         3T84pkuI8R01pZ2ojn9CoZ0bxF0jEhv4qzo42ouX9bPd8j0Jdmjv0LAodEv7DhjEY205
         uIP34t34MMAKM4gXg7pqRtIv5CP5qA6MNgfqugyf4IAWcqxluY9kqafoR8oiKMW6fP20
         hCyeqvX9quwQ8zZviX+l1FizjHHoL9dtPgNfyIgDphSmuSsf6uYlDjGuNuaxd7qsl66U
         aEeheveowajuzENlQfAxulIx37QHGZlOmeuHBaJtbyNLG5OcWdYlOuv7OgTkF71mYtgH
         W7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760290260; x=1760895060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJi/0aYLKJUb+ptER4OpoR5lNkPbRGPGuiPKjV49HE0=;
        b=L6fJGYjhvnYmmMReaWuk/hWhJk5zKzl10G5lHzcUC2dc2oh3Izh9sMjAJD4Kw4dcmW
         DIFRVIXOLXm2nb4y3SnW39LM6fT8l6I6gHxrQO/9M/wWeHCZVGYmNo2I84zzDNAHdWsn
         y+cePC9vVgZOcxFPzG2Odwex3BufukDXHjkGmaBofHzPBlaZ/BDqVKlg88ZNb1BJvSXZ
         uUZdM357lfQqCEOy2d6ufJmRsmrLAu2Jmd9+pSuxv7H7pqkZnMY/W27U0/68k3vTgXc2
         23qH+xCM28KSUczyhpjaCRHtZUVmain/ezOOVZMGMnl6CJEyAC0MU0c72lzWDMenoQ3w
         vQAw==
X-Forwarded-Encrypted: i=1; AJvYcCVKNlIeNKgoPKHg1zsqp0BJViIe3WKvoshF88C7RWJ4dYyEtGps5hvB9FrXaVOmWTsAWoAB67211CPf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Q6mH0jvG9O+PBT+iuZ5WZa8j+Ax5soN6/GXkQmFPY1bz0fEq
	jtj4FaVWqYAjbQgwcSJLZ9bHWVoiv4muRavQA1t4K/gKWs55m7W3as1T
X-Gm-Gg: ASbGncu1esb0UyaiYsDE7vtQA3lOGfvM4l1AwUzNGwYBsvd0ZKjQqMTDTtb855kYByD
	Go0EcoWf2Km2OxnUdYDZfzVHugYLcRZk0NlPvq8DBZdeb4YCmWq4BO46vhlL7UIvKzGyC/JiQAv
	er9mSbGezlj7pi/q4/Yk44C2VXkhGtYfcvsBnKeYmFEQgY4LpJ2gmpKFkQ4JCIqkqgB4Mdk98vF
	54pLLGvqalSi0Tl7UMAdjMPLV30PuvgFirtVfZbiGiGxmIUS8BOoRpBucifSsC1xecVO+tAqCWL
	/+XUjTHnxGfPTWVFvMo5TcRaSydKXXJCAY4lJUmYmQeGLe7/8zhbMK28OLNv0KXQRAfikx2ep18
	4v+wGQH5hcgeLGqgLBSoOKu25MSmofD2gn9cb7SaDaRtA
X-Google-Smtp-Source: AGHT+IH6WVw6lNFlaFo8leOVXftMalOkuj/RAP/gLjDml0YRSInreJYPwyeM+ctX/cJcQNamB4qqpw==
X-Received: by 2002:a05:6a20:7d8a:b0:263:4717:53d with SMTP id adf61e73a8af0-32da84627d3mr24963297637.48.1760290259711;
        Sun, 12 Oct 2025 10:30:59 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09ace5sm9030616b3a.53.2025.10.12.10.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 10:30:59 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: iio: health: max30100: Add LED pulse-width property
Date: Sun, 12 Oct 2025 23:00:34 +0530
Message-ID: <20251012173035.12536-2-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251012173035.12536-1-raskar.shree97@gmail.com>
References: <20251012173035.12536-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED pulse width on the MAX30100 sensor determines how long the
IR/Red LEDs are driven during each sample, directly affecting the
emitted optical energy and hence the received signal amplitude.

This parameter is highly dependent on the mechanical and optical
integration of the sensor, such as:
- The type and thickness of the optical window or lens covering
  the sensor.
- The distance between the LED and photodiode.
- The reflectivity of the target surface.

For example:
- A smartwatch or wearable ring with a thin glass window can operate
  with shorter pulses (200-400 us) to save power.
- A medical-grade pulse oximeter or sensor mounted behind a thicker
  protective layer may require longer pulses (800-1600 us) for
  reliable signal amplitude.

Because this configuration is determined by hardware design rather than
by runtime conditions, it is appropriate to describe it in the DT.

If not specified, the driver defaults to 1600 us to maintain
existing behavior.

Tested on: Raspberry Pi 3B + MAX30100 breakout board.

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
Changelog:
Changes since v2:
- Fix DT binding schema for maxim,pulse-width-us
- Remove maxItems
- Update description with additional details
- Add default value to specify fallback pulse width when property is omitted
- Remove redundant changelog from commit message

Link to v2:
https://lore.kernel.org/all/20251008031737.7321-2-raskar.shree97@gmail.com/
---
 .../devicetree/bindings/iio/health/maxim,max30100.yaml    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
index 967778fb0ce8..d4753c85ecc3 100644
--- a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
+++ b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
@@ -27,6 +27,14 @@ properties:
       LED current whilst the engine is running. First indexed value is
       the configuration for the RED LED, and second value is for the IR LED.
 
+  maxim,pulse-width-us:
+    description: |
+      LED pulse width in microseconds. Appropriate pulse width depends on
+      factors such as optical window absorption, LED-to-sensor distance,
+      and expected reflectivity of the skin or contact surface.
+    enum: [200, 400, 800, 1600]
+    default: 1600
+
 additionalProperties: false
 
 required:
-- 
2.43.0


