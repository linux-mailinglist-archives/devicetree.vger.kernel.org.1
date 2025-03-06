Return-Path: <devicetree+bounces-154792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9938EA548FC
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:18:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDB677A86C6
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 474F720C499;
	Thu,  6 Mar 2025 11:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="comUkMcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7739120B80E
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259769; cv=none; b=gbySUsS+eXCny/Qgb0n3pSObf2XnyNDh5VHxmxJxc+osygYvekgZNRum266eIZUdcJKrCJ123RCEwFMKMtjf9wgF7bqRqRw305ICcNSJwYe+/iHTU4XP1AIzrAhhOg3oQ98uvJy8w+MI8TTlmhVd3hPiAyidzSFh7TtjY6ejd3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259769; c=relaxed/simple;
	bh=SuWEbpCuQ4MLb4zR/ahkYmnYDXwRgcVXgN8O0qdv1Nw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z5mdeozNsC7l/R5yMzfWYMwdKEfn3ey3m9W62EXlV7Wg44WpGn8F7IBfZ0QyaZmLhKUwoP8Z1PdmAW7vL88jVIQ7e7H0Bizgpvzz3mphrK74D8xTCzoKMiop3Y6iJtXHB+bJOOEZNatOPzKmEzls19s8Mg7AGR/UnYqTpjrgGyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=comUkMcF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac1f5157c90so86795566b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259765; x=1741864565; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DFWairiFktoGc2odXSwmyM/8KlG/z88XFaQU/RvUTy0=;
        b=comUkMcFlVNnAI8XcRpS6+Exr/UYWQaKbsnA0PRY+xMn/arYIzblohOGuriEYi8WrR
         8Gyi/TEtbZl31OzAyt5cmOHU1EXBQfbCRpX8yvx8nPCkz9UOi3YC5urp2zSSXj76W0Mw
         xPXIvWYXj//514uFZqsF1TagcVRbZUYtHhyRQdn4RSQeDX12+6nDZ/YDk1x/rE8wCwax
         50kvSZzuKCFENjvbAk6YtMsZox+CBDq1nAEsCRiWlV/AUwKBcX+/mYhZt7sUDYWeuIqV
         +xRgXBnFJOuW/2x8oTA8arz/oKGaAM/yWUDwC7iMrZee2OzUVf2bgxKM+ACIhxiBAu8O
         vBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259765; x=1741864565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DFWairiFktoGc2odXSwmyM/8KlG/z88XFaQU/RvUTy0=;
        b=feRD+q94nfgYWzvjilGhBnbdU97SaMKG2Ne25T5kRylNF+tEt6nhY3oDfp6q5620CB
         LfHwEsFvrbMdM2AIkI0hlgKOnac5wGKWJ7jb49xLiiBI1+Fw0W7lIddaULe0tt4JDGH9
         qt39/mKyGKiFOgHQ8I3+2YuwYgD3a3D5FqyGF6fSMiYEjZPNhd+Pd0BxZzWpkIl7rmM3
         ZsSBFQF2UY7P5wPac/Pna81ta4h+byFOULRg29eTqEZLk662R2NgLfUOvXdroGozJRC+
         6y61AJWx7gZ4JVWnp6P1ZkdDN7hPjMO+tKGAEP0fAZQao8W0RSMsumC52G82mIcRX6Iu
         uuRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOjuVtPl9yCPDaVXMFoq1lt45TM8xUmOzKctFY8nxezVpRZbh5aC4m73mv8Iw7Nm9sKZnxkrc0tnNb@vger.kernel.org
X-Gm-Message-State: AOJu0YzfHH3c2uZy3oTJZuNxZ2ui/xsaipQBK/vghhE50BPf1xuZ0Ge9
	iRX9ZsgT9LVSdDPJWeo0+FvRpmDshsoXIUnfVSf7FquwcN4YlGNCIanblh63AC0=
X-Gm-Gg: ASbGncsBBXdmwK+fnQYWnoW14x31q0DMJnEIoUTw9YaWPeZYJ93HkHAl7JLb9WwtNgx
	rOdDE8iIJUyNkt5fJcrRgonD6FlDdCIwqnNWx4GdFaO2KAEsdYkDf90QiscmuFKDJhRoWXwC+hT
	h9uR4URCLafCl7lKu9wKe4mtJVB84B19Xm0bnBP/dRI6oE1/vAOIiOYGn2QAGUQP0tGExcae92C
	GWEiUXKHTc4TdedOtInUZgW+xrxQ8adoVbNN56BLLSNC5juBdm393LOjQgFt9OgkjQvB/g2Blz0
	m9Wl3sqg3pLU3c6AjqxclAD3ofeKVnv2Z3nD1VVG4Q==
X-Google-Smtp-Source: AGHT+IEOjp1rPMG7K9BeDF47/kaJ0MaWl8YKzHhaw5DH+VYb1REqVhPOfAx7ij8510KBR1jG4vUuww==
X-Received: by 2002:a17:907:7214:b0:abf:75d7:72a2 with SMTP id a640c23a62f3a-ac20dd077ecmr706422966b.38.1741259764790;
        Thu, 06 Mar 2025 03:16:04 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac2399d3dc4sm79424866b.170.2025.03.06.03.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:16:04 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:45 +0100
Subject: [PATCH v5 07/13] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-7-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1123; i=msp@baylibre.com;
 h=from:subject:message-id; bh=SuWEbpCuQ4MLb4zR/ahkYmnYDXwRgcVXgN8O0qdv1Nw=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNp/cNK079dTCQKN/34//lTh9rrrqtIWVgvHXFwujV
 uzw0VpU1lHKwiDGwSArpshy98PCd3Vy1xdErHvkCDOHlQlkCAMXpwBMZIMLI8Pum0vEYg8bZnfm
 f3a99ow1a2XyuuTegykXUo2LIjbvE1nB8Ju9NeKsx+4FdZqK7FMcd++wSLVsq/GY96LrY+aVd3u
 L7XkB
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index cac7cccc111212eba520454396c8cc5c9fcba9b1..79a9f54fa0095c4e3864872bc06ef3d033215b2b 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -18,6 +18,7 @@
 #define DS_OUT_VAL_SHIFT	(26)
 #define DS_PULLUD_EN_SHIFT	(27)
 #define DS_PULLTYPE_SEL_SHIFT	(28)
+#define WKUP_EN_SHIFT		(29)
 
 #define PULL_DISABLE		(1 << PULLUDEN_SHIFT)
 #define PULL_ENABLE		(0 << PULLUDEN_SHIFT)
@@ -56,6 +57,7 @@
 #define PIN_DS_PULLUD_DISABLE		(1 << DS_PULLUD_EN_SHIFT)
 #define PIN_DS_PULL_DOWN		(0 << DS_PULLTYPE_SEL_SHIFT)
 #define PIN_DS_PULL_UP			(1 << DS_PULLTYPE_SEL_SHIFT)
+#define WKUP_EN				(1 << WKUP_EN_SHIFT)
 
 /* Default mux configuration for gpio-ranges to use with pinctrl */
 #define PIN_GPIO_RANGE_IOPAD	(PIN_INPUT | 7)

-- 
2.47.2


