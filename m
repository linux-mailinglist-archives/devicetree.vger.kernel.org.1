Return-Path: <devicetree+bounces-88786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E66293EF4A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 10:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B900E1F2211E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 08:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C66137905;
	Mon, 29 Jul 2024 08:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RdOqW4Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFF9136E0E
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240077; cv=none; b=VXdEkyNYVcU77RnkNN5okJpV5EMDNmQN1xCznUkTYgPgI4K+o9aWSE7+nwieUyXq6P99uIBcPeKK7GRzo6FNZS+GpgiXFWhRvX7mJK0WAfgrUe9GSeVYvCogwK3HvLYCQ3s2FQwj2SJDcfMpfW86RgNvlJen0Hqn/xeqAR5RuVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240077; c=relaxed/simple;
	bh=gFUMqY8c7SLc/xlj0Il9dw1HgpJ+ErhpNp+DDoBd1a0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZrRL2TbEiRkJG+UzY6cOw4wTDXMuUtioyHheJDdrZ6f+RBe3PnGU0UlGfQoWZvL6j8u0Y8Cl1v685LAZ6gCdoA49SQ24biNyS0Yi/0f4wjrlcbKDUlKvypA0LPUVjq62yHZ+lLAJXvBl4RTqIJvKzGQJ9KdBlBXwAKOxYvA8Pt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RdOqW4Ok; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-368584f9e36so1091991f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 01:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722240073; x=1722844873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aOjLun6texcSlkqDtHFasKp/m6UQbRYZsxtm1Omsgik=;
        b=RdOqW4Ok/s4QANATwGHdXZdEv0LmYrwTxoIivv362D/LE7AljNixCo0rjxyYj+VFgs
         dvk5WLXGMtAXgp1LFgZ3r0gEaP8fYPxNDHHn5fzywm7vPFNDyXIuG0UD90I9/yO3HQLC
         pSk075FKJdzvdS9xA30iDJjNQRoJb6NeGFGKIcK93hGknv4wHlLQQJK3AOZqUNJIbZTl
         Euk5E+P9TTZ8oQZOO+xfy8yU75jPMhMu7SEvt7nO6C7RARF153kTwWeD3FwYhkpv5dcU
         90oKcgV4N5wbbWKDBZYoovPzsB/TKXxg518w8lQr0qcOZB/RrX2hnWGiYz3Nrsvb6x7t
         A7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722240073; x=1722844873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aOjLun6texcSlkqDtHFasKp/m6UQbRYZsxtm1Omsgik=;
        b=FM7eA9ZpGLPbNZDAH32W6+g7lVy2Ax77BGx9o4os//eE+WOFm62ZQI2Zp+DWds11NQ
         pYWLCgrk05RADigKFwv7k0nrm1YbJ0Za73guUppRvAN/0PfHjzuExhedQg/81n3d8yF3
         X0WAaCTh0OOM328gn2/j/quKkUYyAVW28yY26PtYnnAbR5KP2Tkj7U/VHsIBi4GqI2L1
         JT5NeMPmK07UxLrV4N/VtOkaoyhCdNrD/d+yzYBCHGdMIhOJfieeRtmfxPaAwqXnQGJg
         ybz5nGuakC6Ap8L3jrclSUajapEtyjxGYqQcOm7/vsdEC7x0CQdTO7S1pP/yg/rVA4k0
         cwbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHx2OwQ6YqzOdWeXEIh/JRbXH0/HM0eN+2jfzeBcgmO+CHpPnl9gYxKyh38YA00XBkr0pn9LTVX8WY7Xvf2ouZPr2uydjS4hvYGA==
X-Gm-Message-State: AOJu0YyN6qvG/1BSieIauX0tOd6eThRg8nWZd01mHyaooQ+OdFwTKRXa
	OzIVXOaHF6M4wk58UEGvV4bKcBc49fFY0qILQS2/rZuw+Pwkh7uVQQY+95JJwl4=
X-Google-Smtp-Source: AGHT+IFMgwC69DMoi/qdpS3geBrRwusfaLDyoAizRfL/peuUo/6VpfZyOT7ZJpMKpugEbj3UCV3eBQ==
X-Received: by 2002:a05:6000:1fac:b0:368:714e:5a59 with SMTP id ffacd0b85a97d-36b5cecf2a0mr6494090f8f.11.1722240073526;
        Mon, 29 Jul 2024 01:01:13 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42819d9a007sm45452635e9.1.2024.07.29.01.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 01:01:13 -0700 (PDT)
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
Subject: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for partial-io-wakeup-sources
Date: Mon, 29 Jul 2024 10:00:56 +0200
Message-ID: <20240729080101.3859701-2-msp@baylibre.com>
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

Partial-IO is a very low power mode in which nearly everything is
powered off. Only pins of a few hardware units are kept sensitive and
are capable to wakeup the SoC. The device nodes are marked as
'wakeup-source' but so are a lot of other device nodes as well that are
not able to do a wakeup from Partial-IO. This creates the need to
describe the device nodes that are capable of wakeup from Partial-IO.

This patch adds a property with a list of these nodes defining which
devices can be used as wakeup sources in Partial-IO.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 .../devicetree/bindings/arm/keystone/ti,sci.yaml    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
index 25a2b42105e5..7d6152710573 100644
--- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
+++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
@@ -61,6 +61,19 @@ properties:
   mboxes:
     minItems: 2
 
+  ti,partial-io-wakeup-sources:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      Partial-IO is a low power mode in which nearly everything is powered
+      off. Only pins associated with a few hardware units are capable to
+      wakeup the system from this mode. It is a very small subset of all
+      device nodes that have the 'wakeup-source' property.
+      ti,partial-io-wakeup-sources is the list of device nodes that can
+      wakeup the system from Partial-IO.
+
+      This low power mode depends on the capabilities of the SoC and
+      the firmware.
+
   ti,host-id:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
-- 
2.45.2


