Return-Path: <devicetree+bounces-250307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B6CE83A4
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 22:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B0B9301C931
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2BFA2E8E07;
	Mon, 29 Dec 2025 21:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RVJPja0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22CD2E8DEA
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767044259; cv=none; b=e7r5m9ZuS5VOV8/Ysdzn1dkPYjPzuf0mPq3YBJfHkWrlm2EAuFEp3LkbmadKd+riTdYY5nkjdutmiROm0hXv0/BqJFh9nd6VbJIwg96oOX/7auiOxQ7/an8oDoTV7NVXuJA3BUOx9ZW8SEC89RyL+o0kifZav4A8G9LTKiIgmBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767044259; c=relaxed/simple;
	bh=9ZMhYWvGA48//ElPB1w7XwWDNmtPnQojjM7SQ+np5lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mLslNonIWQ6pnJURfTyf2H7fvQ0ifr7XndVxH8gImFsqj0gbBoPjgPGl5nMUOg/LGe7g7ydAQ0T6zrX1FnECG8Gpkljq9akmwBagwuJ/EHi1VOlq9Xwxr+MLxx/fOuVp/XxVjFaoM/RKDDAKiyven9DQ2ebgUzIHW6rXQpgU6nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RVJPja0c; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so45138685e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767044256; x=1767649056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uEMVDwEDv+HPhVXY2LXDlZKQau7yTOfmnEyR/lVD/RA=;
        b=RVJPja0cyGa3WjB4hup6J8W4xq9oxrEfKIG9lKVFhhYW1yxceNGN0OXRZ+Sg1lR/cK
         Zh1wqIg+v1/MIeBS8FsKWnX2Hgi+MnJy4rWJ/6Mi+deYcv28uq4HXOs335ELBfVxbSNh
         76Oi6hfrNu9aD3iPaQCl6p2VFzE9Y+funqkgbK+6kN9S/gWlZjToGkMaakxCJgngQ3Qk
         sfU3RDx0yDH/uMhC5wKSkHEJeSe112vuawnQ/37FPzCL60qHQjiALOQ/dWCWyeptXTdK
         0vxPVWeiP6D0dzgVgXsxJOPoucxwAq0+EX0YosQKDpWW/7H9yE7ZuuehPrzH9ktmYsDH
         baRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767044256; x=1767649056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uEMVDwEDv+HPhVXY2LXDlZKQau7yTOfmnEyR/lVD/RA=;
        b=LRU6lY+k4wYm/4S2ogQMYk+up0vkisrJtPqcXe7/fA7j/Rw1HbyHYa1HNkYw8+DooS
         8MWNhwPp0iYzJI+B/ukZLTl8N81/owIlb6/awgkmhx0kNS5Nbg8NV0v2sXt22xVUxMNn
         2LTQfMKYLdX1z8OTKEQN9Sw05M5LJ98lJJHSHCq8uf0dc9+m1cSSzJlppNvBRpRgiwVw
         wyPQRTdvQiYQPjDTdzdAE78HROVQyQA35G3XvmDoHNYYFOzd8hIpKafdxOa0dTkx6ZbL
         wWmntkJqXuzOcqXyp+tQPTBKTFMXMqfupwV4gx5Lz5HlU0G2mKcWBe7cQLL5FaJFhjgy
         vS/w==
X-Gm-Message-State: AOJu0Yy0b+e9HRxtdXJDhcaI2iR+iDtXygxzq+UMsv4QABtfGHRpHylY
	+mdnxXPcVsAdDc+a2BRU5oItMVhyv+pbkSgBVyAGCpGPSPcmqBgu+TdDtA6furAg
X-Gm-Gg: AY/fxX6VY4MaDnVljPZT8ZvZfuby9qAdeUFWDCiIP/lPDxUbC3jOxPZ3WUAusmyMdHz
	tpSCT4CFWgSemIfQsZqWaktOuXfIE9DllIGpDpWCR1nZBluHLhHfPuYIBUSbiBY0aDsQFNe2PR6
	J+preLfieEGKM4aqvNhoQEzRZ53BGmbY/mRmrdMQmlpXpnNJpqufzxXcjxzvmy/BbEKxC/Zb2DV
	TVXENkX5YL+FFapdRALk5E6YgqkMPmw0V2QlyrrQgsHW9M58EmMu1oaQCxprU0iU0UllnZOb9rz
	3jceKVUDq0yWOSv9m4yzXp0EHkDh3/qM0AY3TOJANY1s1bEwEoVe+sX0YNOQXxyOCVx7M62cbM9
	6cPTjIZK/3oJasWOcw+MDaG6J7HAZHBJGVqAfPeKYvKetvVI0LNDOXoM7MbZPdlU+L8MXZf2xRm
	lNpfHpjSNLJQb1nf7blrs8UOMyX//qUOvRVfWI11il5cqj+pD3Ek8qyAxap18dwku6WNP/hgTs3
	kE2eAVtBNhZ4YMc6xMM
X-Google-Smtp-Source: AGHT+IEM9dsLV55UGCsXY4JibCS2ViZO1P66ipFVvqFYhEkKmsY1uN4e6nM9TXduuaQlPfzsV4ViRw==
X-Received: by 2002:a05:6000:2c06:b0:430:fd0f:28ff with SMTP id ffacd0b85a97d-4324e4d3764mr42020757f8f.26.1767044256097;
        Mon, 29 Dec 2025 13:37:36 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-220.cust.vodafonedsl.it. [5.94.28.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b36fsm64046230f8f.5.2025.12.29.13.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 13:37:35 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Mon, 29 Dec 2025 22:37:15 +0100
Message-ID: <20251229213726.79374-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251229213726.79374-1-stefano.r@variscite.com>
References: <20251229213726.79374-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX95 SoM and Variscite
development carrier Board.

Link: https://variscite.com/system-on-module-som/i-mx-9/dart-mx95/
Link: https://variscite.com/carrier-boards/sonata-board/
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..2a957a593abe 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1449,6 +1449,12 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Variscite DART-MX95 based Boards
+        items:
+          - const: variscite,var-dart-mx95-sonata # Variscite DART-MX95 SOM on Sonata Development Board
+          - const: variscite,var-dart-mx95 # Variscite DART-MX95 SOM
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.47.3


