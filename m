Return-Path: <devicetree+bounces-222081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD012BA5C41
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 11:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72B3C17CFC1
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 09:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537002D592C;
	Sat, 27 Sep 2025 09:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QcOazuQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D882D24B6
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 09:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758965007; cv=none; b=HG4dZNTDDgf04xBPNd7Ydk6FgNoJRlv7AgDaCImegBBqf8oS91pn90KunH3v/wlGLDSBjMV4rB9BkdbAepw5rFqTf3klnvfbvjHJ8wvu9iQC/KWctif7TDgqbUeP7DsGX4cEk+BCTDFcNm87CyUpwpcGLLjVr8p0LEvpTF24NkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758965007; c=relaxed/simple;
	bh=qfPC36RWeFkTRxSHCfQbvdtHmIQoElMVTPi7vaMRZH4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XO5OPik0exrAcGn7WIFWsgad6kT056PfsYXQ+SiPYUTfNaxuOueFFUKdqt5WB9O3f00G1bkehbKfrN4hzrLaJCMx4+JkOq55/xoG/oJn47I/iS2B5t1Oy1lIhrLhYW0SZvs/vt4Q2JjUtObFm5TuUMt341h+1KN/lAtps8R4puY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QcOazuQw; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2698e4795ebso30448485ad.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 02:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758965005; x=1759569805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E+B9+WNcUf/SiLJEas3IyGzNh/XuKBSyoIl4DxHdrSg=;
        b=QcOazuQw+CI07sTxIvdy0ZegH+VWwwzFpWg+i0ii6goCmt9PsG1iUcd2WkMM9r9q2L
         9rQg93B3CBsfEE9JPmWQ2epK2GDhvPyr1v6xY5yQrdWoyuORK7G2cb48fVkVnsQcJ9WI
         c4ZIXGM36wYeWvxe9Pb/69d+cEWEJA1FsDsyzcxkglUqr9xSLSJ++hNM8PPxXHMO0qGv
         /JjgV+CJ9clgovRx/yqUFQyrnCeWzBEQXv+f6hh68jaCLt6H37QCWobXliOF98V4gXmm
         xuCsEbJCrHDzfq8ats6rUA9Dt2UupO/uU2j3gGjXQ+NWmTjbP3tWtwfK6X0mHpPuntvf
         0glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758965005; x=1759569805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+B9+WNcUf/SiLJEas3IyGzNh/XuKBSyoIl4DxHdrSg=;
        b=S30wW6fkpLxJI827wF2HtEdqwmbqs/W8LaLsXaroIjzHqmukq0RlHzd1VAp7mGKaUR
         AGwgVnyteg+6Afqv+dx4dayiRc5XwYFTuV2LbUZ0/WhnxKTJmnEdRP/GkiOLkeizEkw9
         dvLOsF+ISWA9N4JDyE/uOskqBEu5SZo1AEelKmV59qW9FkwEs9Yo6tSjZ+I1PKR4M2bq
         jIRHoS+dQ6qowJJQie4KEl9EDKlui4SLRq+TidOxJiqTe65oplwLzOvcD4GHjvjkAwHC
         ieP36bXPEAoQyAseDGqrxQdunKpWaNMjJK0Yas1cTSIjtLsvTVegf/hcwYJ9VjmN2Kpx
         AnGg==
X-Gm-Message-State: AOJu0YzLCKok+GW3o6YFPHHmtSxkCoeIF2J5adqGCWGkOKxIDCv6zyq2
	QAusojT1lq1CCsL8Kqbxiqj6We1spzCuueYY4Atw+bDxzLm79WBIpaI+
X-Gm-Gg: ASbGncvHd1O0vcewyIiemo6c0kWkQGRmdJ89GDj+vDY8qHM85nVPLXiM3dgU4IHUxY2
	hIO90H3nIWpBoqWtB+O/mIEH63daJr+9wlC/hOnhcKEXVh/UwFErEB8iGtsQCu8C+bb6UBSYtQo
	1DSwB80lRW4kx84JdEkkca9JJp2aTJR39NE9eBVgYAIQmnlJCj4OhfnYz0le8GOnIJRMKdGL9pz
	muJhj0sDrltAwxFloMzbddpidL4k9TQ785xoJdiGE5M7cTIhdMYc5gL1h+K4cnurO7d60QDZ3OA
	emZmrT/Vf4kbau2mL7CshOpUcQ9q7ihoIDio/SfxQ7gWM9gQBJ9usIlLNoUxaLF+zTmX1xzFFsb
	Bx3FfdSg37A==
X-Google-Smtp-Source: AGHT+IHMb2zeZCzMkFx8yBXTWRgBTgF1yuwQDLgQlJbi5YnTqM1OZiKrbYwL/jrRqQ9LuO5X6Hd0pQ==
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr101655395ad.53.1758965004608;
        Sat, 27 Sep 2025 02:23:24 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882277sm74215125ad.78.2025.09.27.02.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 02:23:24 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R76S
Date: Sat, 27 Sep 2025 17:23:09 +0800
Message-ID: <20250927092311.789946-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NanoPi R76S (as "R76S") is an open-sourced mini IoT gateway
device with two 2.5G, designed and developed by FriendlyElec.

Add devicetree binding documentation for the FriendlyElec NanoPi R76S
board.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---

Changes in v2:
- Collected Acked-by tag.

---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..e8185344c6f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -330,6 +330,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
+      - description: FriendlyElec NanoPi R76S
+        items:
+          - const: friendlyarm,nanopi-r76s
+          - const: rockchip,rk3576
+
       - description: FriendlyElec NanoPi Zero2
         items:
           - const: friendlyarm,nanopi-zero2
-- 
2.51.0


