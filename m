Return-Path: <devicetree+bounces-253285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA6ED09DA3
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 13:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 22649302D696
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1E635BDAB;
	Fri,  9 Jan 2026 12:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZuCfUVU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FF235BDA6
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767962318; cv=none; b=qp+arNFCKmvfZ19iukGPsB61lJdhf7v+8Y9T5s+Ro0MrUNMcgldhFzltjW3Hkw1p0ZykftyBPGMbt3C7/8q0RX0LyXKlQAEnkUvOwJeTosd+ziT24FRCVx22sQoLaJ7x/Fxf7JqayyiYDRZehzwcaL9+Jczmj7DOKdRZ+90ZVt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767962318; c=relaxed/simple;
	bh=JYApr68wtO1IgeeQX97XtB8VFiH0AGBcAiljSulIrUs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=exAoTPii6o39ABJA3U051qjEs0mNEVn53EHLefKCAWgP1H4y89+3oh195sosZnNaymM4r4qD1qejWKtL91Oy/WSiJ9sP3y5Xl416dd3s16PW2rI1QkP0x/oltTKRNEmZkTA8SXE/vgZgUi1XhGmiek+Nq/L930Im7IU5o2wiZHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZuCfUVU/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47d3ffa5f33so20049945e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767962315; x=1768567115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a1Ry5v+SWBJqmYXgepJPkse9qv8WRlai5KDVImpPed4=;
        b=ZuCfUVU/S6Txus+PfoLZ1PNd0zAA4l3ekzEERt3V2UIZdVvrUNbJxKZsuVBWzL4WFU
         CtWsLgoYSx3QcmDPXY/uD/ltk/zACiNtIoNsigjIot2+oNfaR8Y4ln+9FMXoJPkXq598
         NPobL4zIkCJr0hrllK4Bzp8EeK0erNg1M8l53cqzdOZMInJ5x0QHAS8znMyG8sgylkdJ
         Dx96DzLN38TZaC++6QD/h76qNH/wOjnQy6h9ZmmEGR5bH4Euqjzw92g8y/w1wcTJVvx5
         CiLx9Uyt7lPW+YFT8kRpzoJrhul1sd9UWXgbN2EJnc1ikg6WrBImJojd00qGhREBKv7V
         n7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767962315; x=1768567115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a1Ry5v+SWBJqmYXgepJPkse9qv8WRlai5KDVImpPed4=;
        b=EIaRlUIbB/S3a2pPLBORTD31LiVVYO5NTRhsUI4CbSHTRjZ1TQNZx5oWM6L8PtcPDA
         zp5lkk4kSsUQWAwbIGyY+kasrLzj/x4clcnO0AFg7oBDefg2et5jKLx9egqHuHeb0EHc
         /nWKZCgPhAGVb3SDaVA7jQJVxa8DvJnu8GFNOLxSZq3zBrBaNX+C1IwlBqTg13anEbo/
         kXmwY13AIIIXLCzmgzhEGH1k6GNiIjrJjGN7qayzzasHY2OVSCHc264/OfYO+eAM7d9X
         kjGfvMNZvG9yrCDATDhUgFBUD08bZzEZsHDbg0MKIjmu5aPNbR7STdHJT2emu6Y8hJPf
         cXWw==
X-Forwarded-Encrypted: i=1; AJvYcCXGyq3xRnETvU6Jl1xw8OTZ4QkeBDTq27EFjNrsP5J6Q6Vy8MwNi83XAgRyNIe8/sUez8faBNDsGnUp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/+hU44+NxO37KIjDCdsHFuaO0mYeuQ/oYR4BtwcgsS356LefZ
	/OFKb4M96IX6+tYBHerQxgyzi3nQ6RRmUnZCaWZx186jtMnrI3y8B2cu
X-Gm-Gg: AY/fxX5PxOqM8JHRePzNz8IT0xNIETZdoavHSD85+tBA300VW++77BpfD88sAwb8LOr
	LQtVNmo9YJTKkuAC6wTews1oBhq9Cyg8RJuO4j41sDVCidcrMrOvLu2DWfmSoJmdi8MysrUi9gx
	cXeNnBdoJc7htzz6BIH1s9HCTdMCkdHUwv0n4fLyDstcQOWju7OQxxSU12U5QRTzZAY31zyRzwu
	aSdHpaHrSTgWpoD7kfw7dUYk6NaVc28+GsicXCZYqZo/pTy7AZ1w26wl5FtO6c4JmOa+cHE4cig
	MwLpX8c9chbZuRqMTWu2WKpC6GetMJKx+LrLwLjFir/D4Pdswt/BPjuthQEb2vExDaN15xlJ3oT
	ORSYYYB2kTuoNzTK2Yr9uLfBpoNVVZ111H41DIxxo549JpF1RHJ9xw2Imbpp3HjW7h67IBEXTpu
	ZVlDu+Uwpb5Lbrku47FY93th/x+jiyL6WmvvH+rnKUpd6y4sqr0ArJi/mTyTOjxnoZrGsq3ZYM8
	i0uqnb+0UDi2QdeVcVENPA=
X-Google-Smtp-Source: AGHT+IEWZrzNl5AJ9ePzJLbVDi2fmNB6EfpTUXDyBQ4Q2PKHHDld6QqEWKcGJu91UaKZ0q2M5WpLng==
X-Received: by 2002:a05:600c:3b1f:b0:477:63dc:be00 with SMTP id 5b1f17b1804b1-47d84b5b3e6mr99580875e9.25.1767962315169;
        Fri, 09 Jan 2026 04:38:35 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8384646fsm174060935e9.15.2026.01.09.04.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:38:34 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: serial: sh-sci: Fold single-entry compatibles into enum
Date: Fri,  9 Jan 2026 12:38:28 +0000
Message-ID: <20260109123828.2470826-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Group single compatibles into enum.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/serial/renesas,scif.yaml          | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/renesas,scif.yaml b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
index 72483bc3274d..d4cdbbf4c1f1 100644
--- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
@@ -20,6 +20,8 @@ properties:
       - items:
           - enum:
               - renesas,scif-r7s9210      # RZ/A2
+              - renesas,scif-r9a07g044    # RZ/G2{L,LC}
+              - renesas,scif-r9a09g057    # RZ/V2H(P)
 
       - items:
           - enum:
@@ -76,10 +78,6 @@ properties:
           - const: renesas,rcar-gen5-scif # R-Car Gen5
           - const: renesas,scif           # generic SCIF compatible UART
 
-      - items:
-          - enum:
-              - renesas,scif-r9a07g044      # RZ/G2{L,LC}
-
       - items:
           - enum:
               - renesas,scif-r9a07g043      # RZ/G2UL and RZ/Five
@@ -87,8 +85,6 @@ properties:
               - renesas,scif-r9a08g045      # RZ/G3S
           - const: renesas,scif-r9a07g044   # RZ/G2{L,LC} fallback
 
-      - const: renesas,scif-r9a09g057       # RZ/V2H(P)
-
       - items:
           - enum:
               - renesas,scif-r9a09g047      # RZ/G3E
-- 
2.52.0


