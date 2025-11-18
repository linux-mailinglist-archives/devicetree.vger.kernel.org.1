Return-Path: <devicetree+bounces-239951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E03B0C6B1C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 19:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2971D4E88D2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 18:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75C1339B20;
	Tue, 18 Nov 2025 18:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i/ayGtqK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9072877E9
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763489269; cv=none; b=JXxvNxUxX03u/d4CZ4XE6/nNXj/sV1oM6oDmgyfhOSoxtfNxNSSMycJSMIkyFTGnkJ04Y973atkd1eQWhMp+d+7JiLJD9NLPwX+cW2KdZObBWfDjpCcVegRK0Pbp4KAmlWARmMv+JlFHoEO7tsEK7lWyzqhqz2pI9jAVWfpTTiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763489269; c=relaxed/simple;
	bh=El2h874yprF5L8lfJm+Xu9NQI0aJHjJbVyMuzWMPmDs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m157KncYe0Itim5OS26E3SNYQp/O3M4gtiLe6QiVAT/rAffXJf1K6nZvNo/ORGBJ/35ZjqAQ4Tdk4GqPVuqX4NPdL0MKakYAdNMBiwnn0ANtdUfEFrGlxaMrSJ5tyW0oEXY288d1JerRgZ4uaB3oPl/I6bT1DMRUlGEUWXK0Kz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i/ayGtqK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso30818475e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763489265; x=1764094065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R/M1YJyRKnlzVlZ9Q7GR17zCRQfIeFWmJQjOozU2zL4=;
        b=i/ayGtqKvkchWgZo25VqSgwnW6LoMeZML8mlMHrmC0Noqt9jarWC6Wu77lmNQLdwzq
         A3Av5ugWOw3aZDVTxiFaCxbeuYYUK3l3efr6NubHfDDTTudkMPD813gB2g8EE0fSstpz
         Bch59p0uQeCo0R3ftD71mv3EMXp9MBdirtbCYzbdSGT1roK7HnqLyiNVuoHFCfh7orYB
         caZamByQ9zwQZp0smzbrNDFtViUJxnnL1CIDo5bu0/PTtcCiC0oVCNngXmh3hU+VOgzx
         LkAthYQl0KVddQvY5Z1MMM8YCGxi9s3ez+MVUs4YAfn3wvlrJruICUMJWv4eh+Z8W3Sr
         WRjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763489265; x=1764094065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/M1YJyRKnlzVlZ9Q7GR17zCRQfIeFWmJQjOozU2zL4=;
        b=sUUzyyw4/c19oVyJjbd2o1UTjSGDmRQ4aGxhaOOuT6njK2jTZ04sZXhEUYNKzDG6OH
         8SQOljgn//ZL3mH38rrmV2/b1rUKIYa+4xSpwCUazhqe4hZb5r9AMVtpTa8r7rDLKphU
         XAlppfq7tvt+cvY/KZUTInjUeBBAErDwQOGyGLT86wLGyp9T6bExGMWUTK6iZZo3V2DC
         D8aBgIqEM4G8hkPCl4Euqe4Wkf0R2BVgI/2E6IyeAdv44ySZXH776qHw2jeG9d+OkysF
         N+tY5NQlCCdJIGseu7eKoD12H/V8BZlDA+4/wZuN4sREL+g1/q7AL+gGq5fQuONasYDk
         +mrg==
X-Gm-Message-State: AOJu0Yz+M04tN5dKf9K0LVFSU8Gm/+G60PAUCXT4ViKB4puwWK8Lu9mg
	6UAZq/3HTFnAokGIwVGIkkA10bhXF07mXohq0E+tArZ5x/j9/2UHNz2i
X-Gm-Gg: ASbGncvqOMxtq6zWDD9RTy98FMncV+RfiV8K2AhG1e1/AVH7QHONWi10nPSf6Gr8qFN
	IvoOtiXx3mICchHg6pavdmymLri6RrfvNaBuhRf2T8u1lepy6ilirMqSoQ5yKIDfRq8mdCbNe9t
	/9054vE8Tw5sANgP1uoKQ7Mubo3CykOuU8bhlIvCsSzw8yTla8FBV8fLIqqkPnnyEZF3QfgUm4B
	YaRhQeuLXrnyFyJNe0/3XsdbRF8fgmByK9o+WX4kzAagkqWFvkQyw0xt9kal8Z+UHyWM3E/hbYc
	liKKdwqX7MpMOov96t8CZcGHqza4wxJJiKIbn7XKUJC3F1zQLVnO79ZrW1AD3wSUCE63RDwt4lw
	968qb/58Qb9mg+7i3pBFFsusDs3fGBLpslWFToOImXnNsuClo50S9eHybmRiwzi2dLBfJCFuGQ0
	LZFzmXK4nj73ipz6BCwZMSeCT57Wdyq5GeC9c=
X-Google-Smtp-Source: AGHT+IEh3sirWGP1AlsXkj1eQIWJOzKDxVDaDjqASMoIHo7Hap8krokdr+e8M1r5XqRdGdNKwyMiTQ==
X-Received: by 2002:a05:600c:a06:b0:477:7c7d:d9b7 with SMTP id 5b1f17b1804b1-4778fea6cebmr194830125e9.33.1763489265043;
        Tue, 18 Nov 2025 10:07:45 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:af61:3b49:841c:d9e5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm34832452f8f.26.2025.11.18.10.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 10:07:44 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P) and RZ/V2N support
Date: Tue, 18 Nov 2025 18:07:12 +0000
Message-ID: <20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add compatibles for the USB3.0 PHY used in the RZ/V2H(P) and RZ/V2N SoCs.
These SoCs integrate the same USB3 PHY IP block as the RZ/G3E, so the
RZ/G3E compatible is used as a fallback for both.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
index b86dc7a291a4..6d97e038a927 100644
--- a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -11,7 +11,14 @@ maintainers:
 
 properties:
   compatible:
-    const: renesas,r9a09g047-usb3-phy
+    oneOf:
+      - const: renesas,r9a09g047-usb3-phy # RZ/G3E
+
+      - items:
+          - enum:
+              - renesas,r9a09g056-usb3-phy # RZ/V2N
+              - renesas,r9a09g057-usb3-phy # RZ/V2H(P)
+          - const: renesas,r9a09g047-usb3-phy
 
   reg:
     maxItems: 1
-- 
2.51.2


