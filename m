Return-Path: <devicetree+bounces-88790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EC593EF53
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 10:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD81E2810E1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 08:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD8613BC04;
	Mon, 29 Jul 2024 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Qy9hhOBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DB21386A7
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240080; cv=none; b=QgXoCwyQ+cXgjWFtQl+v+rG8TwNE9YIMq+NAK0u6KuZ401rnh1LBLCyzDAiMPT/iOgwLu/3UbPuoGf9OcPgCtaGIwC4qCiuesv/usimteR5aa07bmAXWEf038/dPE8dRNTbmfSLqL09EbzmlkyGpJaLqlnaDnzFul5pDfVvThTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240080; c=relaxed/simple;
	bh=53f9JH01fR+1+uKpHwhb0lHI7XimsByJJ1fOG30/dPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=COrVVNb1JY0uj1k36RE1hu4PVjagc3QSdSpm+5H0fqrfdPZyHnxMWhvU/2Bh2aebFau+1FC+dyqH42KYmMTFKpOjNShXs61Lrxs2v0eWC3JNXoIhasR8AWwLopv/6KWGIjTgoa0yHq6u6XvkgUtSXIuW7QP0Avx1AmdkUhd5j8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Qy9hhOBt; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f0271b0ae9so40593211fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 01:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722240076; x=1722844876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qwj4fJ5PcTIVxTcnKoK6Sn5Sy7ClPbtzG5l0PUGLdrw=;
        b=Qy9hhOBtudUvBX79A3IfBjQ/H6JTU3EYToP+t70GXt5u+Ums7uG335Nukq/NvLiGya
         YRh9TmV005khxxdQBDe/cdIxPcP7DnvVNBNrys5ySnBkzmN15ryjKXFq8YQ3ECd9RwXA
         EZj9NKZyoLEZIUPAVmWL5g+Z/l4KCgEBgTx+RUEkK+1T3cUyK8052AbNn3S+Eh0FeCYq
         yQZyQPTxf36cFf3hR+vgN0Eij5n1eP0nluBC47AHaCb8UDTsEhpF6RRjcTax3mLjOBHa
         jiz1yUs+wy/99whDdvI3El2iqSckzHeQea30KkbNI5mLTZXz6gp0/0MRgtvXumXFxhU+
         UdZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722240076; x=1722844876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qwj4fJ5PcTIVxTcnKoK6Sn5Sy7ClPbtzG5l0PUGLdrw=;
        b=eSEAUGn+HQwdqhlr+/Zy/cNxSUbgGYM3XDwQlObV76GRRRCOcL6L+3F8XOQgkyPMYN
         l3xTlzmgIvDpt7WDEXPcFgrvmZFdm9j5cHfRBlm5sprZrPeq+e0XsgirfT9vTD0vlNvM
         l9ZOIh2DRWUaMBBjAp0581PE5HKrCB/Mo+QoaxMBq4GjQMLoAkb/lynmvE3Gexgy9TRA
         rCbH3To1/N0EDO6Hw/8MT2MjIt1M0uAKVL6CkrFGAIyUN7sTv93gPZD6KIH/x5lDiVaP
         vqFargkkWWr2ZrZjpRbNRDsqB5T8H3QwVywrbBTYVtypqtfu5fhwgOQQmgYjQq2wBIcO
         VGaw==
X-Forwarded-Encrypted: i=1; AJvYcCUEnCU0MMqIBbZeOCFnRrC/yoHr1K7JG7NuQdpB9Exq4l1pE3VgbotdVJFLQ2PEpEKrNw2+8bn7XQM+mK+tbInxVE9fMgxfmtTA6g==
X-Gm-Message-State: AOJu0YxTGKdD1UsPJbklkA2VnOZcX9ckA9Pz3+ZDGVV9UXRjXf2hRbB/
	UmDCpTUcTrg7TlH7p+OXN/LVDn8SAB1pfBSBYS+mZ4hpgEYdAFOwK3tn8xV9los=
X-Google-Smtp-Source: AGHT+IGk+Ma28FqZivTy+Lwf3ij5OpU/7rZpCibyXnynu0+yv9j7Y81EKKbkk1ve4///COt/muKc4Q==
X-Received: by 2002:a05:651c:102a:b0:2ef:2d58:2de5 with SMTP id 38308e7fff4ca-2f12ecd1b89mr39762381fa.11.1722240075632;
        Mon, 29 Jul 2024 01:01:15 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42819d9a007sm45452635e9.1.2024.07.29.01.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 01:01:15 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 3/6] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Date: Mon, 29 Jul 2024 10:00:58 +0200
Message-ID: <20240729080101.3859701-4-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729080101.3859701-1-msp@baylibre.com>
References: <20240729080101.3859701-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index 22b8d73cfd32..dd4d53e8420a 100644
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


