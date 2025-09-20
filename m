Return-Path: <devicetree+bounces-219524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD9B8C448
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 11:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAB7D170B28
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 09:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0D627CB02;
	Sat, 20 Sep 2025 09:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y3VquYGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1218A276059
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 09:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758359565; cv=none; b=I5pj+5xjxfhfb7SrNffq4y12ZK6tzU/bibmlbbbpLqGGooU5J9c3YUacFWsIvyzDA8rV1TCsO6K+2Cg7gDhhaox96UXcWhOpGqc0ExElC7Gt1Pk796j3BC17gV11GMs8BTllbiZJ2Y9bHQ8bmV4zmPqS/9Pb2rYZhjVGsZ2Gg90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758359565; c=relaxed/simple;
	bh=t75zUsI42igRNRnY9BzosxkBDZi21FNYwOR8SS/a7xE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=YolNBQ+5NL+JkbDQeuG8LzdtWh2WZFw272ZpDqkdO4jQzi9ehZ3rGd0cLZcKKbjQAKlSQa/oTuE1SrsSvdGEW4BoWUb36SpiNSkN4J2kaLePnfEqXdXE1QPWHdxtWX4eehee10zS9/5L2y5YfoCwqyOqN3Tu90E/l+Jid8JcqVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y3VquYGA; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46130fc5326so20012965e9.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 02:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758359562; x=1758964362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Gusk5zt0HMd76bDL+pQKEW4NdN74ndDk79BJJ1+vw8=;
        b=Y3VquYGA8raulHz04Yh0JWqeAOHBMLJGgOq1h0yFUmfnSZ3PZSn003feoJEJe7xqEI
         U8DQo0lTcLP1FFQOFjxN2mkoWhHEMk3AfWEvbYzdv+5TQJ36oxzUHPOOta+wEiqnbU6s
         uOVU9OGFlQTv8jJDIKdGdd7+xmHMJjP7LNSHHmfLDCna44HdLmX7/CJzVF4jNWtL7F2j
         GBYnrdIqal0DScTmPlU36jhs130+ug1PkFQr7p9oR5SS+t41So/GGQWLoq5XJNd8rNOF
         sZe1y0CMBKEJ79CADUxdB+DmE8LbmJ2DNa3UlituaCLKF/hX4NId7Y8ScAyVS0Xc3jYY
         PoXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758359562; x=1758964362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Gusk5zt0HMd76bDL+pQKEW4NdN74ndDk79BJJ1+vw8=;
        b=m9CuGvmsvUyJpByr5/eRkMXfiW/+lHzBrJ0A+9CgDWZJvs4vxCD8mKD0GJNq7u7ezC
         1Xlo7RNQWWmJQVUSExH0e4cihO9FFENUtllCY9mVg+36QsqAfs+EikZMRajPLqrecygh
         G0s5qasZkgW+jX5fxtqNwR8sWkcuv3v8hSEebtIVMrLF58wp64faCBwkGc474dKd64cH
         Qm2dLBgTj0kNMez0cJgrFE1g3H7kJNf1T9AIga1S/UQf0KICylGT/nQlnv1jwjKkb7dX
         4yIejC8rF9ye6a/A09olUiBVLxn7c5PgR6+qye34/8WpspueJNPs/K071Q/x/LCFKK2s
         nPgg==
X-Forwarded-Encrypted: i=1; AJvYcCW7ahrs+GmSCiyzIJzWUtPkgTGR8DIW5I6dQasCvKWKDZCHOMlMKZKaiNJDlp6XCZs0yKa4/UtGFIN2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4WMLvCefkKh6JcQ5DB5RblBrABhaWR9pyzVKGeW81TsxGQdZk
	j/ZlVIe3HOhg5el7tmUiB50DX8jDFNhtqWSVSBieHggzeLyM7CkGw0JF
X-Gm-Gg: ASbGncuRQR6FexxjBQbISat48l9hKVgRAi9Rv4h9dSpnLZQIslFyWK1bdQ3HLQ8zm+v
	m/NfSiGtx1/n4+CsM5aw/0F4GwNblNgdzKbSH7OUbQe2qT2FLhnd0zzNeNYERH4ybkhHDUwvUXL
	mZ9Tt21Qre/pQSN7EfhqMN3JNPeW1KyLdQKqZ/++bufuVyzf097b3euajs8LAZX4EC03UfVf8ay
	W08LKk1y0AvvyeDW/Yo+98ttyCIqlnGvgxp11knloEqKtp53OClzQZflKm95r0FBpxI5J6alFiw
	AGUk9adbYqDGRVbGU91c0LwdLkq+E6XZNqVAow2DMS/ZlsMAk/DjqoYWjS2m4x8Tai4WGwYUbu3
	TR2Pwidt5yYFEpkHtH2TM2pRJonr1Gzs9t7XXoNIpvOM6oB64cDP+JbTXLJhxF7GVH1fIwEGpdR
	j8Mz1Tzg==
X-Google-Smtp-Source: AGHT+IGeCGycSjOjMk8oko1TsOrOMJVtki4nnFeQ3rx2NoALaXwxO2K0x5BUb16MSvGQYr/OhAVjnA==
X-Received: by 2002:a05:6000:310f:b0:3ec:dc87:26a8 with SMTP id ffacd0b85a97d-3ee7c5527damr6050719f8f.10.1758359562015;
        Sat, 20 Sep 2025 02:12:42 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ef166e62e5sm6375782f8f.40.2025.09.20.02.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 02:12:41 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm64: dts: airoha: Add AN7583 compatible
Date: Sat, 20 Sep 2025 11:12:28 +0200
Message-ID: <20250920091230.17702-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Airoha AN7583 compatible to the list of enum for Airoha Supported
SoCs.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 7c38c08dbf3f..6506c64af4f3 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -26,6 +26,10 @@ properties:
           - enum:
               - airoha,en7581-evb
           - const: airoha,en7581
+      - items:
+          - enum:
+              - airoha,an7583-evb
+          - const: airoha,an7583
 
 additionalProperties: true
 
-- 
2.51.0


