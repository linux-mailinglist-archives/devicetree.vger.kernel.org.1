Return-Path: <devicetree+bounces-248912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FF2CD6A54
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 108063002FC0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9164311953;
	Mon, 22 Dec 2025 16:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e9hY362Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D66230BF6
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766420336; cv=none; b=ihZG3Pppu9JKOiGTbkVYNywOlMlZkf2GAAASyp2sKTnE5bKy+gWvNz4jncku+jvEAXXBBaPaG9PJ0Xw2zWCj/vfXM89l8Qs2T8Jt/kjplTwlI5NCywRkSbgfbpLb2YKb3XImMqJ1gzucD7fZXzEcQuEtcVtNCgRKOClPixWjDO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766420336; c=relaxed/simple;
	bh=T1RNwuLYyNmJ+j/mip3aJ5UxSQC/Uf5uzOBFEfaK2lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oLh68igntrG0QZnFJ9K4D/sVXCba1AQOLWwROwyiCLD+oINGnDcY4EMas9zdUCXn2y1PqN38DMVQeJu3uTDjDlGdtUDQ3zAw7uhmtOh370z+t8xDmVuYmAgtouOC1lWYP26AlPVdBHZM2otZVWhiUVwpQZS7UOX/8HZvpBxxTBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e9hY362Y; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so26115625e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766420333; x=1767025133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6Wn+1o5H5M2D3/1CjW1oNLSmHryy2WgYugla7KkAVPw=;
        b=e9hY362YWQoryx+dLZp2HPFm9LwSJ4iOD7PgZPEOqOrac+UIszEetjHpf0q1G99UK1
         p3wmN7wPWkviHirDi1U1AJFGJkbQnt6nNs9G2FhgfoUEILt2whyTvItvDJshtgKVtZ2l
         HKEq6n9uizaUPOvVHNKZEY7PPf556PCLG2akLD1JkLoKe5dleQxCtTRjyfYjGGwaT388
         VVCMu6WnKCSa4sZp71uFXYhvNfp2fvVOsgYciiQWUnBIcpVn5OLA6pWZwEk4SvAfXBa3
         zTnqlhZbzksOqxcBerptWmip4vKrLtEhLjnrnwtJyebg15S5rXBd6Kw+S4mL5vI95ZUc
         nTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766420333; x=1767025133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Wn+1o5H5M2D3/1CjW1oNLSmHryy2WgYugla7KkAVPw=;
        b=KTs/m55ph+TBxb/p2jjpNE1ojXRz5RYjF/jkhVCjZMrCuucsEb7zsWSpMZZFNTG4OE
         5+ueUhjp4mXqBheBXK2D/zHra7YrLmTVv1tUcCy5qr92vpYU96Zhx87HVU4WnDKpUTPN
         OT0Pq5muWU8LG13tIxjheYH+DXRiNhITPusv/TVHtO/Wn6G8F9ua8yWQrgCbWkrBNF9o
         w3s5//lALYwI/xqeKDT0PGeytyMMFpTEAha4dqwMxE/jbIW9xQehB7toCvI9UL/CjDHu
         RogL4TkzWAyC6zXIZ4PCM63O8BSeWgzKZ2d01VYLGqUHw4r77Y15u+9y+YeARg3q/nED
         nqVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY65OSDjQcsHMgV8LHCpekVq9wTacE+GhYJ8OHbvs4oDqxuDPsSUkvfVhefB83Lsa8JduC5glomQ0R@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt2udApxjpVgdpgEmEGE0dYuxECIEOUjFHCOwq1q3DkVxjn+aX
	08DUWADGFiDp+bMXfxhIcO7Wdyl3Af4x9D7MlGTqbDTZkjC7Rbcc4cvy
X-Gm-Gg: AY/fxX5jo14gGg+LOKNA2ca0ptkNpU3YuOkqNRmp2c9sTV4boi699dMJ2TOrYDs1zp5
	KGxWKQo2qMDsuO941AtK8KFkulFESMNJH/+iXzSke5K4tZCDuzAJYhVfEp7r0/wo/nCqBrQdhGH
	aB459F+SZTZHaWqKWTAG1sapJ47GDeR8rF6H1Nbul13ULSyLmMe79iHbmzmlDCMgbyK8FoTeJKd
	8/xGY2AgBww5YMcMN0Jjzd/x0iCA1LRfT3/YBdYJ7ywWaM9viCb1KGdwBd1z3MPOXzfQdZnko6Z
	p67yUiCfJGcJlH9H9+mf4NWwQLBzi5vQO8ofD4yUTFeN88zLBYM/kFVTkS7WUXvAKPpzxX0zvcP
	ON1EEndOz8B3+Gt1wsXiWVHhAykMg+LRLFXsj072nbnwrEpCJkNyUbqb+y7Unb6BVKPAU7ty0hJ
	TZJTxG5xloKJFcovRXc7LZ/P8+3ZRrT+XWSjK02c5UKqBffK8nz3MmHeyCn/PJBSQKkPY+g2Kx8
	YzeMii6heniL4Egwp8eC9BbDdUlqhmF9w==
X-Google-Smtp-Source: AGHT+IG3GUrdE4PQHrsdSst16Dgk6RAbxwgJpO7Qwn77alrqhBYIPCIPtLmfjtOzLdRdyTl/fZZyVA==
X-Received: by 2002:a05:600c:35c4:b0:475:dd9a:f791 with SMTP id 5b1f17b1804b1-47d195869e7mr135907925e9.28.1766420332821;
        Mon, 22 Dec 2025 08:18:52 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4dd:df38:7864:a996])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be279c637sm238662805e9.11.2025.12.22.08.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:18:52 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P) and RZ/V2N support
Date: Mon, 22 Dec 2025 16:18:46 +0000
Message-ID: <20251222161846.152952-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
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
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
v1->v2:
- Added Acked-by tag.

v1: https://lore.kernel.org/all/20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
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
2.52.0


