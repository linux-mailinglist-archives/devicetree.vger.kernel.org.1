Return-Path: <devicetree+bounces-168899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B48B6A94DB0
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71E471891E07
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 115C520E33D;
	Mon, 21 Apr 2025 08:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eZiA2ggq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A8020C460
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223071; cv=none; b=bcSPQGrqxuG7jn/34bNOUwTYy1MRc8qfOFAtjdjBmCLDryMoLas/33n9zpAgo95sgIBe4IUSOMAreIq1I//wAM0SeUn7cGpRpu3cQNGYsefIZCLByPQPjSHljRWC8GbivgrQy0IV3fea6AQREcLW81ycsk9Enm+jw8KTqsdgmtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223071; c=relaxed/simple;
	bh=8cnbqnEIT2SapONFBAoVoxc2fqVmncyHVScTK2PoKRo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMLch8WSoG6Q/G/3RrMvWQ+nLuUYGepIObIIOcHPFfagJi/js9S9E4pZ+rO0AHqMkY6GY3Ag4Ik/s62fp/NzMORPuDuqYzEandtiQgsYMX2lc9PZca9tk4F83Ra34DTY+ncEiJwe6Vs7zS4JvRvs5BXpqEmYqfRx4i1Di8sPmjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eZiA2ggq; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac25d2b2354so548640366b.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223067; x=1745827867; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXgQQbKgfnh8/TwrQq0CXBZDridfnrlUyigTFtKkpUk=;
        b=eZiA2ggqNIM6uoGrV/3/+E6nv64g+gGn4PxAuujLludy356xZMUFTDn6oELoRziZ8j
         dDk9QSuPBgf5HaY6S6DaAUswjUQr26VLdTeF66fg1Zjs4O9bKvvB17KfnRDuzI+5zkrr
         xlLgz9fujv4uGfm8Ad26pYIRSfcVCXmSCH/NDHk53aCFtJ8h/Ab5laGPcy8Aj4XBhc6m
         qy6lNydz6js+7QLMy4WPKCpqpcpQYidOSINv5D9nMXrU5lL1c6Yzh0XHcHV8sLpQxYBr
         IhM0zx7BtVJXHHzEM2T5yAGfBpXzRu3/pZ9HUSAknNGiWgPM6yzMnN2A0uImMFWwsHDJ
         lkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223067; x=1745827867;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xXgQQbKgfnh8/TwrQq0CXBZDridfnrlUyigTFtKkpUk=;
        b=lhckjKVjLsvqLqHXSW3bsIWDEgBqwqBQLGL6zrQGCoEsheFA+qviT1e/qO3RL82T90
         ufp7PXZSx9mXkNtnxsU18FdGzZtiWvhbBphmfVjCyHA0A7wJ6mqPWWSzjPN1z2YpDgjf
         Yn5W1E16pMKR/L3DCDGFMXsaIOjdha8zFcyfjUADazZ5O9jNeduumPME6BtHnZewJfO3
         yn+KET5OpIC0d7VTQaAUvSsSAWgurMo9lftpmaD2wNjw/fc1i7HBCmAKKAT9pxylM9zQ
         5YoJi9JV86PnJChTo19YmWvVVEkZt9xAc9fXvJ5O4Vu+e8MGlA6bSXinKR02Cl/a9mY7
         CQ0g==
X-Forwarded-Encrypted: i=1; AJvYcCXWguXYfsfstlk/7Fi/bIlw7321pDQQXwfuoCb8j/BpBLQY+W3gQoXISIWKNDfexlJ4/UlQhJlzo3o9@vger.kernel.org
X-Gm-Message-State: AOJu0YyPHQeyWjq/my33PqdkXmYvz78qxgcuMi7Vw8DJh44hp4Lfy3gq
	K2yB4HTlTFXTI8TKtwDet69ZcN8O+G6aj7Gj0l1Tp+VhTIZ7b0RjiaWqJGkFetc=
X-Gm-Gg: ASbGncsHNyAOqmjc0mOCgJelUjO8KUdjJjeEiX43bwugI0tBMF9Xwwek0dPS4spqCYz
	IDEn4c768Ylgh3Bz3I0++73nkryzkJZ6wgf4Ylv6QP7G+e7OFZv8ovwlPlGaeUrt0iRYP4Sk5I7
	RS7YzOVtBqCliFG/saTofHMfhYwdAk/oCwUSIkCMOTbmmzToz1xIXbKs6KczmahAGlXlyT52Quf
	Y0V2JO6z8C4RCx511ivzSVG+Mqy9Xu8zocEzni3NXCmsqbIf7xfm5VuRoP2nrvgHYC1v+yrNzeY
	tdvdf3d/gm3a8pA/rdyzkzo0wHOQpLB+Cj4=
X-Google-Smtp-Source: AGHT+IFm/Skz537wfTeoh2KozrNOOTUDzhipX6Al/MEzRYRXMbJwDdJHpyUOgxUlClgZmtUma/F09A==
X-Received: by 2002:a17:907:7288:b0:aca:a383:b0c9 with SMTP id a640c23a62f3a-acb74afba44mr971434066b.13.1745223067279;
        Mon, 21 Apr 2025 01:11:07 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ec0b389sm475749866b.20.2025.04.21.01.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:11:06 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:10:37 +0200
Subject: [PATCH v7 1/4] dt-bindings: can: m_can: Add wakeup properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-mcan-wakeup-source-v6-12-v7-1-1b7b916c9832@baylibre.com>
References: <20250421-topic-mcan-wakeup-source-v6-12-v7-0-1b7b916c9832@baylibre.com>
In-Reply-To: <20250421-topic-mcan-wakeup-source-v6-12-v7-0-1b7b916c9832@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, linux-can@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1809; i=msp@baylibre.com;
 h=from:subject:message-id; bh=8cnbqnEIT2SapONFBAoVoxc2fqVmncyHVScTK2PoKRo=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWvy17Oeq+FiudfrvfStt+jk7OAqn0iEtnJDZY7Fpj+
 aZYaF1xRykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAEzkUh3D/4A/8Wf3Ls5cuNSN
 +U+ejch+9V2mvRM6C/tExV0UHL//VWX4X61XbtC8ccPa36Xr2330dz/fKPW6iqVtfs7zgKeXWL5
 NZQUA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The pins associated with m_can have to have a special configuration to
be able to wakeup the SoC from some system states. This configuration is
described in the wakeup pinctrl state while the default state describes
the default configuration.

Also m_can can be a wakeup-source if capable of wakeup.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 .../devicetree/bindings/net/can/bosch,m_can.yaml   | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index c4887522e8fe97c3947357b4dbd4ecf20ee8100a..ecba8783198fc1658fcc236d8aa3c89d8c90abbd 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -106,6 +106,22 @@ properties:
         maximum: 32
     minItems: 1
 
+  pinctrl-0:
+    description: Default pinctrl state
+
+  pinctrl-1:
+    description: Wakeup pinctrl state
+
+  pinctrl-names:
+    description:
+      When present should contain at least "default" describing the default pin
+      states. The second state called "wakeup" describes the pins in their
+      wakeup configuration required to exit sleep states.
+    minItems: 1
+    items:
+      - const: default
+      - const: wakeup
+
   power-domains:
     description:
       Power domain provider node and an args specifier containing
@@ -122,6 +138,12 @@ properties:
     minItems: 1
     maxItems: 2
 
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandles to system idle states in which mcan can wakeup the system.
+
+
 required:
   - compatible
   - reg

-- 
2.49.0


