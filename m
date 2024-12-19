Return-Path: <devicetree+bounces-132860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B21A89F857B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F266718902F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8DE1EE7CF;
	Thu, 19 Dec 2024 20:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KEC9w+pN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD701DC989
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638630; cv=none; b=OFGSTo22DqyVh4ISK9oeeTfpD83OLVquziw880O1mfzLjVqGqk5OBv+m53cxuqgtVoIKSeXXlzJq2xU0sICzOkF2QTnOB+DJI1Z03GgmP001Gi/BS3ZKA/AB+tvWfsM8R2xbFHFCfZ7et1nnpSQTg/m182MsbHsccor8+a7kVX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638630; c=relaxed/simple;
	bh=raNMV7XctJIbSEmg1aR+IsRod9wfbi2q0jEtotc1h3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PO9tW5kkN7uWz5/rUdQGIJP6Rs3voCx6c2bVcXIpVmYGOHIjSR0zL218PajVeY40Znw9SCrF2F0FhM23Rdx+QT/d3v/O3/IZ9WaI63YdJQQLdSFf5fCHcCtovj298z4bmO6PQoCiW8S61v6eGbRbNk25uZKznMD5nxny5o3x7GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KEC9w+pN; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5d647d5df90so1946907a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638627; x=1735243427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ULCkiQ8VoXo6ciE6Elqk4HCN1p6ytUWA5waL2W1UArY=;
        b=KEC9w+pNPflsbLr1fIpADZhDKaxb8d9C9ss/qv7qyZMEcbLtoj4w785vJ11kPzqzBW
         MIy0XQbo9z9s7fqsBeF/vhXSiLEvp57fj0Fd5XkR7wD0RnUDZcR6Rom2BdkjDeNPzubH
         ppL7jd8oaQ078M9ARjSyDxdt2dxY34xIhcFYntReickPipP8GPMXXASy6svGOnJZjjnw
         XN76F+bA1SuUkJ0stMk/cgDH9fqZgJxDpcDzxIRkaiQY9FTBx6LDSISLAfOoyq9MsEY+
         mPMPIklXhApK2QHUct/oo3a0m3QX8caN/pbvr5skJbE3MvuLKGibDABUG5pRUOBRSYpn
         3LUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638627; x=1735243427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULCkiQ8VoXo6ciE6Elqk4HCN1p6ytUWA5waL2W1UArY=;
        b=vjJ5Vk0nNAntMAT+1CH1q7t301N0Kh+9QIx4/1kPuJbfq/qeao0DNTQ8mqtYePPX/Z
         xwsksER3HFJg8Oh2NgB0eBf/WVzvW+B2MdFiaMXMyN0YIz1JX8oGwyOHlEe6n2oy+m1b
         7tI5uleHpA3Uxv8c/96zAIBaSjg7xRxmQ6xALxwlog4J9lqTAwWci0x5AlWj0zbi/zpY
         7sqlw1jKt1TRjFtSefTU2CNTpar6r3DLvGTv2P47hHa+xxeOxUiqVSoJPdLKdowDMQWq
         oWvzYpmHOyL3AGE8rTFQ2/sbEAwPrT2FtNCuw45I2Vahz2MxHtaIFWML6jfUv9T3usBb
         HxOQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8tadY4DGlBvMSSYlxn6FyCGZGwwJkIDbe/8X0MzKBpVu1x1O+8hqE8f0sGVc8BlSZJnl9n6v8B+dD@vger.kernel.org
X-Gm-Message-State: AOJu0YzuOkAl9/8TG/GoSm1VMtN7Esh5OD8YGWY0r74CipZJUWfL6Pnj
	xuzCjwMbIoJ/QQYA/m3QI8zv8nZn7NYtxYCTWz9xlpwL2TKvuOlEZr/3nlEhtks=
X-Gm-Gg: ASbGncsFyYLBC+kq7dybU3b1nsNodfU5TUSJJDkpJvKcdGefoRxvjtFMDLAeDUr5buu
	V2o2E8AKc6ZmURJEHPBLc9i+nWj9hZRkJwMai08tErxmrdnRtTjyJKUynTVC46RGXOdueR6Ziob
	fBdxftxNqJ3vp4sn3Ncxp/TOXx5fwTo2PnooR36rpvkERJvHplYdItYl+KLZM+YQASOnlGnf827
	0keCr82jaiAY1kaoyrbiGqNuRrTew57TTXIsUvsdB2ZOR8H/g==
X-Google-Smtp-Source: AGHT+IELH0oCu4fjW7oZX27SBjII/M71jzzcfKoxPHZ++4GSGWA7IXgMSzFoeG+SeCLv2JVdSNynlA==
X-Received: by 2002:a17:907:944d:b0:aa6:c266:97cc with SMTP id a640c23a62f3a-aac2ad8e1c2mr8332966b.23.1734638627209;
        Thu, 19 Dec 2024 12:03:47 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830ae6sm99991566b.22.2024.12.19.12.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 12:03:46 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 21:02:14 +0100
Subject: [PATCH v4 3/4] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-am62-partialio-v6-12-b4-v4-3-1cb8eabd407e@baylibre.com>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=msp@baylibre.com;
 h=from:subject:message-id; bh=raNMV7XctJIbSEmg1aR+IsRod9wfbi2q0jEtotc1h3A=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTakRWuOsJ1L8p1NALuSEx9UrfAfFqxypZpe5/mybfe
 H/3tVpVRykLgxgHg6yYIsvdDwvf1cldXxCx7pEjzBxWJpAhDFycAjCRJx8ZGZ4Lvit/aTfVSXaL
 VsTXWYmMm7yWfTJzz9u4c8fr0kU90q8Z/ucWZ+evvDdrgfvTgAOrgmccv9IhqL1uqa/1R4ak+wn
 RqWwA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index 22b8d73cfd3264735ddf91874e60a0c5fc7ade5b..dd4d53e8420a1d671e04a70d4af8b0ea1b75b2b2 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -12,6 +12,7 @@
 #define PULLTYPESEL_SHIFT	(17)
 #define RXACTIVE_SHIFT		(18)
 #define DEBOUNCE_SHIFT		(11)
+#define WKUP_EN_SHIFT		(29)
 
 #define PULL_DISABLE		(1 << PULLUDEN_SHIFT)
 #define PULL_ENABLE		(0 << PULLUDEN_SHIFT)
@@ -38,6 +39,8 @@
 #define PIN_DEBOUNCE_CONF5	(5 << DEBOUNCE_SHIFT)
 #define PIN_DEBOUNCE_CONF6	(6 << DEBOUNCE_SHIFT)
 
+#define WKUP_EN			(1 << WKUP_EN_SHIFT)
+
 /* Default mux configuration for gpio-ranges to use with pinctrl */
 #define PIN_GPIO_RANGE_IOPAD	(PIN_INPUT | 7)
 

-- 
2.45.2


