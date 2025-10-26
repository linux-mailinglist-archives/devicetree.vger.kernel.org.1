Return-Path: <devicetree+bounces-231133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA203C0ABCD
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 16:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44CE43B3B72
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 15:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C22BB219A8A;
	Sun, 26 Oct 2025 15:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KGFfNx+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425D91A5BB4
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 15:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761491066; cv=none; b=gbWanU+VLjrgNopFHaKRHJlf1vfmHaAdxxqDDujwokcf+2CgQKJXHojDxhSvrm+5iyLsoIUR6H1YdQIaQjN84PhMuDtDqdjaQ5pEp5mQpYMdqaDDUkqS1PyFc+nWpvNjRqiC0LVM2Oda5ZV6zm3B9lsn4zvfQGj+Q1cW4J6tIik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761491066; c=relaxed/simple;
	bh=A3bSV3u8AarAyp31lzoLWMXHtLeH04d3zGSkueTEkDM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=reecgP1E+hY7MolpTifPWE7KHD9o9WTLf4iW7F1LgCp1RJv3UI0kG00vxb8MCnIdmsxGFqDZaIlfAAN7AnM/V0nUhW3PRDTDLobfIn8XGyufnz19whyz+CRBAplhcxvZsinC5x53E2ZXKIGdzAmsuxLeqnLfP3oOMnvhzxPQgeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KGFfNx+t; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-290c2b6a6c2so40273965ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 08:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761491064; x=1762095864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=KGFfNx+t9dnPaKmJ+V8GqTuokIguft2n5kbPp6Yg3HnOrPfWxLcuuxuQNwuihlHnyE
         sOgNpBLRKZ2UnETM3LLBcJs75LRoiR3S9lvDG43wHVn9MLizyZZ7syEq7jBz/y97eWrS
         E/TsHG13ZU8TpoUerT36DWrWWjGdNJoSxtEulI938OjDftkN+mlOa4AHCxpDdjuUGvRJ
         X/7Uw/lonjCniNItC+rzVg+dwbK2vkm/1s2cfiGm28aEantVJKyABdI25x5J7/0XTcy4
         LTWIr1AeSP2mts1KSETsirbWAB0kLOSG1ddJ9O5Vpz1VqijP1VQ6xhNYh/c8qWx0vEcx
         XksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761491064; x=1762095864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px4DGTedr0t+HqBVc78Zx84UzxWlcHUehvdoHcOj/G4=;
        b=LZfIlvwQR6ci3kfQ36CmK+w5chi5u9Hw13o4rQVLlXFhS4zKayw9phO84aF8/PdY2a
         8HOCdIE3PMK1G9SLjadv42DAtUMCGOBjbJVoo5V/fe5EZXKENqn1GLQyZ1xcrAgrETN/
         9Kl4dUYp2t68LAjnYAu07fwW+5AUJl079Y8hT3T46O/XxJAnXtKhRbv4yXGan6d+B04R
         37sk0yCtANDqOGZq0Bfri9lDMgguMKau1eDZsW5p6gF+D1XVAZ0UsoABlJyRCbg09eim
         7IQRsoBGZgDTqRhvbpT+WY1txTgvZr4BlxXmc3wUP3z7LpQD/cX4oHZ2/N/JNAB6omWC
         CYGA==
X-Gm-Message-State: AOJu0YzX4cDZM171lgwlaJN/zv0SoGmzE+NNj6bgaFbn8bVByf4Hv+dI
	an4q94caGllZ8qXTu1anGjGwCOpU7yFaMk4P02G9THpRjH4odhOpTGIw
X-Gm-Gg: ASbGnctF9PWA44CCCbNt+DWIwGWBxCJkSePTq3XNkObK4R4JwhQvbgxb4k5SYIecRoj
	NI7To3ozwDqg7/LV6cBkAdBz8xqZeamPrvIZRU5LrDSCXg7p/VPrLVrCR98DVQs4wXNyr/TtBsX
	RieIYRsmH8fI+R4NLEpAAWJ1i9T78dUAYN05bQcGocSlWo+ciem/n7GEEgz0cwsdJuE9jreRp4P
	ZXka3i/Rat5lezu7VMlAAdhi8CQUaUVjVQMaZwQ1CJub/owNeofiPMtWnTId4CtnR7rzP47Mp1l
	vb10bDi30OTIuLcQJJEnbELGNsJ7+Hq7j9jJ2FFKeYZFmv6qZDhpaf6FTUje8ymvzvnc52CEh7W
	dQeLBN80lXUJbhJiPPAjRDpiMsZ4QHACbKjKpwr2Xglf/oEFgGMo++jGTgX2f7fz/WrZIkZKQU2
	nCvkDs/v7maw==
X-Google-Smtp-Source: AGHT+IGL4spg1O0mDgF7D8EgJ3Ni4wTgAIJZGQLvD5iwsaPiYkWPvkdowdH8iIGlLOxo0R0ZBTdCOQ==
X-Received: by 2002:a17:902:ce0e:b0:264:befb:829c with SMTP id d9443c01a7336-290c9c8a738mr391932175ad.9.1761491064394;
        Sun, 26 Oct 2025 08:04:24 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d09958sm52320375ad.24.2025.10.26.08.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 08:04:23 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Date: Sun, 26 Oct 2025 23:03:56 +0800
Message-ID: <20251026150358.1078453-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add NineTripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..37687737e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1124,6 +1124,8 @@ patternProperties:
     description: National Instruments
   "^nicera,.*":
     description: Nippon Ceramic Co., Ltd.
+  "^ninetripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^nintendo,.*":
     description: Nintendo
   "^nlt,.*":
-- 
2.47.3


