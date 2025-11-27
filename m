Return-Path: <devicetree+bounces-242813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC3C8F7FB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:25:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 28E213465A8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F8A334C19;
	Thu, 27 Nov 2025 16:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zvi7lwAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38CE2D3A6A
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764260695; cv=none; b=EucjfX8bxLgJHeVt6q9xUovIV7nLgbRJsN7n+KFc8wx9wW5Vi0gqET0tfCYp605Oef3ZEV0XLqRV0hnswKsEM/Zczp43dQ9FrtcrspEEIWkaM2dVL/nLZl7XDadhRcGmAKdAFnMlsoG9Z3N6PE/GSMRJ976Ti96KwejjjE+vm+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764260695; c=relaxed/simple;
	bh=KEbc3/wLZ3yEefdL/a1cNZY8vwLS/Lxd9eLnkid9nNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qw04WMZUfyLftoXNn0Uhw3jFb8e9S6IybJqrHCX/wYMzo8EQlD5lHGEAS6yKB3qUAyW1LsoFIVw8neprdHHGgXQ5yeaUz0Xcep57YUR+Zsojyjajk2ImqweD+rZF81/SrvSy+zAEK4XPjXro9guH6d9pg065iXJFVl5mkzrkkfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zvi7lwAw; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso8382675e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764260692; x=1764865492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gTcIqAVwbMuqqnuhs43S6Kmb3IEB/LqZTljfxPBsmsY=;
        b=Zvi7lwAwcd2HrdkNVCDaumV9JtI6WEo9shDE5tWNlQLnxWjwSKAAjbzTKBR38JZ/Zi
         JREmp0bCX9b+NfUv7a/jgC5PTaQXllFRYoEfJLFtgr8vMrVqEsz8bLVE23WzLBnroU1A
         GmbO2y9zfswBL/pH6LDj9tCtC9ZsoBopw2hS6zuvBN1+mW+G289C1tDvusUpIt+lewXz
         swiMdwyUuR01qfZKHUeVFKVglaEgI0fEFn3xCAh9qXjwPmjVJOWDwesafX3Wly4ldnSd
         mHCOxu+kOLYYaRwnnEj80A11aIj+gb1V4NLPF2TEB5N1PpFnbBpoiCglC8dcetOIRThG
         3gzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764260692; x=1764865492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gTcIqAVwbMuqqnuhs43S6Kmb3IEB/LqZTljfxPBsmsY=;
        b=hqgg3uH34rpnHDHznnz5FLZpxr5gQyNwaL4gJoAD+ztb1oPC0FMnHZLNCvwM03WZtP
         C1sVtgLPPmLJVAT5WFSnN5Bx2rf3yZjjIO+y5DFH91TUzwNtI4ufwlxQTvXTNV6/U4a4
         ay6IcphqEMkY8Jpu0L/mnvu+tfcr+ziIEobm4uE7n3fejYy4dm7jYLTZLh00TeJ0nluX
         8qConqQaIjDraFBOFwOiLk+m7dFe/zzuDU80A6v0oJM9PCM2/DEIRfxPh2mVeZrkJgNf
         Avj4pvU8cHcK1DyoaY/s3eNnT/sievESZ6g0RuTl4KL7W/uX/iSbXkWF/S/w7CPBC63f
         7uGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXzM7cxe+n/LH4rpvaDdAg2mlEN6hfMWHfvIg6H7XbcTaHtw7pPhtgJeeXyyTAx9R3EiECRG7iCD8/@vger.kernel.org
X-Gm-Message-State: AOJu0YwP0xEMll3kkNgylmXlqhaeemrfTJoCWyh+gRBucLgA5YOccNtU
	cZpXFOsAlFZo8XHSVY8wfjdlDaaVYA5OMk3uJKmkDw86gExIDKbL+GyY
X-Gm-Gg: ASbGncvwqjbe1TxVTEfA0YmqOHSjbAUyAHvCiGUx7qekLbPToUVeFDBOWfyK21jWUMx
	P6yZB4DvfU5NFZTMIJw5nfiB7gLpfAUl2DdislBy+O1KMg/154RYkbwAwKVrpMIk2X6/ISDmbcm
	TKLEJN8JqarSV+oZDJk4WPGIzR3/rvNXB1Qg2xgwbGyZ6I1mkQOmhax8pnJxP+FmGhrQRbgLxkY
	BSgY30NZ+4l0eqFLPu3384MSlT7XhmggM8RT6DCuk/kaXe2x2Vn9h5Dx+cDUVBsKEjLOFO36ItN
	szLa/zcjc03bGNBJZOq4IdE4ZoEZgC5jB0FgCAoA3XX1VJF6HIIpnb8HI32Sjxj8OdrlRHPHoTO
	Z0Rkk5aoYvCOUpzTJ7IzVPUBncIOug51kxgJHarFt1dHVekHeIusF+axeR+8WBs2huq9dEi4KeL
	qU+oDZORha/qzpSPxVDXkdPYEBu+J+b5GEBecpna1wxVxU
X-Google-Smtp-Source: AGHT+IF8N3ewnuyMX88+NXRH3kZ3Bujo+UW0AzRI4ObL0WXA2HX1MdjzHZTikAg14GThSQ8zCTgxFQ==
X-Received: by 2002:a05:600c:3b07:b0:471:c72:c7f8 with SMTP id 5b1f17b1804b1-477c01d4b3dmr197554325e9.21.1764260692113;
        Thu, 27 Nov 2025 08:24:52 -0800 (PST)
Received: from iku.example.org ([2a06:5906:61b:2d00:4f24:123b:7b7f:5ea9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479111565a1sm39163795e9.5.2025.11.27.08.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 08:24:51 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 1/2] dt-bindings: interrupt-controller: renesas,rzv2h-icu: Document RZ/V2N SoC
Date: Thu, 27 Nov 2025 16:24:46 +0000
Message-ID: <20251127162447.320971-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the Interrupt Control Unit (ICU) used on the Renesas RZ/V2N SoC.
Although the ICU closely matches the design found on the RZ/V2H(P) family,
it differs in its register layout, particularly in the reduced set of
ECCRAM related registers. These variations require a distinct compatible
string so that software can correctly match and handle the RZ/V2N
implementation.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v1->v2:
- Dropped using RZ/V2H compatible as a fallback.
---
 .../bindings/interrupt-controller/renesas,rzv2h-icu.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
index 3f99c8645767..cb244b8f5e1c 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
@@ -22,6 +22,7 @@ properties:
   compatible:
     enum:
       - renesas,r9a09g047-icu # RZ/G3E
+      - renesas,r9a09g056-icu # RZ/V2N
       - renesas,r9a09g057-icu # RZ/V2H(P)
 
   '#interrupt-cells':
-- 
2.52.0


