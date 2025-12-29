Return-Path: <devicetree+bounces-250273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32730CE7E44
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 19:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0813E302A12D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721BA33C1B3;
	Mon, 29 Dec 2025 18:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="zriXdG88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364533C508
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033641; cv=none; b=V03JrAdyXYw9WGKG+KHSA/Z4xWuIY/ZFQKTgEosnfajoGm/5TAIhUrsbbpva0/mwp3w7fpVTNAa6drogpo6kqjfvD06O2RcG5dXgrBvYIA8onCdP4xCdFL5syGDKvvOA8aiLopXEAd0QVisls2iJbRtG9pp8giNw+qBalF3B5w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033641; c=relaxed/simple;
	bh=Z8OJ5bdxrmCLAokdEoL8lVJhhIUEVgrT5u6lQIEOB74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uEHl74gTAMaNU/FwUiGMtFLjpqaHPuxAjazJ/QrDohixkoRPtRUsMRiPLCTvRZzhcsrfamW6igVDLYI1VW66mmnDUbkwNBIWd2GPSaYGDlb/P1hyXXSCJc2HXVG3OOuun+cKhfg8PAPB7IHb7cwDYvkq64DE1NMQKPZe22wHMcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=zriXdG88; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so56967305e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767033636; x=1767638436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2nPBwlmLC+wGQo+kGghgS2CarqCL9CUUT5DieeAoVE=;
        b=zriXdG88QoOcQsYbK/ainLz4uYpAXqPirBhe/Vii0V6qvwil0Wg9iMzV7JfKNMHnfY
         dOPQ5h0U9oqLLDhfnBPo76emrgl7VN5I7XiMirXA6WtFwqttaCA6IEXvOk/3+SrWHIir
         biWX58bGKQU8zUL+zDBVhPxJLVqCimzFdWc24GLdfOVOqPoVhRz77gvJT2+nEtRkwvRi
         NM7T4JaV/zNmzjfh8mIoWL9MDE1HOOdxcNXaraBE8+IxgI7dHfGszq1UEb+ewN/SwY15
         RS2g2496f/S6rgf9PdF2LVDU5DtEiJnA3MC93CkS8Q+JUn9j4Uxm6GAHKe3advLwW1zc
         bNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033636; x=1767638436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H2nPBwlmLC+wGQo+kGghgS2CarqCL9CUUT5DieeAoVE=;
        b=q/hdDC5twUi63KnfBeqJMHiF3zebyvxi/DmZcEO27WPAzeF5v9PCrPZcJjITBBWKIC
         kiKrYsR2S8B+ADv/lglwIPbMDQbAFiX6EgcZCipW0Ff69RNGe3dY5pzcOvLNZvq79+Mo
         oasWshXCSTnmPXY1f3jZs7enHDDChQNxjN8hZ3ZpIpDfizLnWNYwasUxM6zP+zLgmhkw
         U+iztiy5fT+Qs97tvAIhj9jiwLc0axr/VE9z1c81QnA50wQoyMBYUJz4saMwuGm1jWCY
         Wbfh407XyS5rwg983LWU1Xmkl9zQjKoHbPGE7tWxZ0V6XtBk9mZNz/1rg5rpF5J7QcJ9
         cyVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIjTfc9qKFZWWAsL6JRQQfmoFR/B6RjByXIKlOvMwvp87I49bjnfHIi/88ReGRdP9hwYu6Tij/WTJd@vger.kernel.org
X-Gm-Message-State: AOJu0YySzqwyfT9cJ1LsLfwYFLBNxSDgvdQA89K73CPQ3Kom0CDSMVTk
	xtsskMxCEkBCJq/FMyMRj3Sx4vrjPjwdqpuwJ0BEbYkdieVyAu/DwYKxMXK9KFQ+BgI=
X-Gm-Gg: AY/fxX4gvXZYxrYiAI5NErpX3NSErQzlmkHozDn6s63pqPuT3TMD+GBo2yqRI8+Aisp
	mDHJhByOB6lRBXIeHNjcLy58e6zleRvwX1U9UrdqSWmtPPiq8czcNhV2nYyXCaHdgBIFGQYrO40
	PmdzriKx3L79k5w+m4Cgk1Nk68yPbcNQKRVvw+1hm6+NKIgT73Pai9ojNem1y+fYiRfdcPig0cs
	Z33SjkVGBIvaTiPwojknFp1sgnmqpE0UEYOCWXPyyiTe8X9rQgFBHk8b8iMytDczCcnBEtvWOsQ
	267iTdfCK3o+DftKcNsFoUpo8eSVYvO6RmSZsmU37E6zaABGVNRPdxcR+aRQPJ3opZMOBqeABUt
	1CPXpgx64ciSaLuCEy+KWJefhmH/MV+xYZ9UlCViHTlMqkZr6m2bcnIGa7HvwkeAlkeQHeEkyQO
	hSZjDJ0tORTfTxJE3ZvstztHzeWuvxVQt0Wi65nj5nGSrKM6t6cWH4CLE8fPZ1BcPxsd923gXuK
	NLDiYN2aF2fXhycbTVS2LnGUqQy2jl/7gD2vpY=
X-Google-Smtp-Source: AGHT+IGJqflA/fWcbFGlt7I8QSG/W3Ym/AA8gFbH72KL6IAeQS+P/elQOb7uOHAEgNrEusVQwY5q5w==
X-Received: by 2002:a05:600c:3b87:b0:477:aed0:f3fd with SMTP id 5b1f17b1804b1-47d1953b7b0mr395881215e9.8.1767033636235;
        Mon, 29 Dec 2025 10:40:36 -0800 (PST)
Received: from fedora (cpezg-94-253-146-116-cbl.xnet.hr. [94.253.146.116])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47be27b28a7sm604907455e9.12.2025.12.29.10.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 10:40:35 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	vkoul@kernel.org,
	andi.shyti@kernel.org,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linusw@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	olivia@selenic.com,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	broonie@kernel.org,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v4 12/15] arm64: dts: microchip: add LAN969x clock header file
Date: Mon, 29 Dec 2025 19:37:53 +0100
Message-ID: <20251229184004.571837-13-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251229184004.571837-1-robert.marko@sartura.hr>
References: <20251229184004.571837-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x uses hardware clock indexes, so document theses in a header to make
them humanly readable.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v4:
* Move clock indexes from dt-bindings to a DTS header

Changes in v2:
* Rename file to microchip,lan9691.h

 arch/arm64/boot/dts/microchip/clk-lan9691.h | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/arm64/boot/dts/microchip/clk-lan9691.h

diff --git a/arch/arm64/boot/dts/microchip/clk-lan9691.h b/arch/arm64/boot/dts/microchip/clk-lan9691.h
new file mode 100644
index 000000000000..f0006a603747
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/clk-lan9691.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DTS_CLK_LAN9691_H
+#define _DTS_CLK_LAN9691_H
+
+#define GCK_ID_QSPI0		0
+#define GCK_ID_QSPI2		1
+#define GCK_ID_SDMMC0		2
+#define GCK_ID_SDMMC1		3
+#define GCK_ID_MCAN0		4
+#define GCK_ID_MCAN1		5
+#define GCK_ID_FLEXCOM0		6
+#define GCK_ID_FLEXCOM1		7
+#define GCK_ID_FLEXCOM2		8
+#define GCK_ID_FLEXCOM3		9
+#define GCK_ID_TIMER		10
+#define GCK_ID_USB_REFCLK	11
+
+/* Gate clocks */
+#define GCK_GATE_USB_DRD	12
+#define GCK_GATE_MCRAMC		13
+#define GCK_GATE_HMATRIX	14
+
+#endif
-- 
2.52.0


