Return-Path: <devicetree+bounces-253818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056AD11A83
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E8CF43018C87
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC77E27A122;
	Mon, 12 Jan 2026 09:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nHBh9bM8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3ED27C84E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768211851; cv=none; b=oJXyMxTAW+yYq7L2/RH1jznQQ5BgBSN5eRg4aY1/gjz6dcFnpdTluhcRB5b02VcOvdZGlkjI7hf4phWlVX2cBeLtxWq0jHcyJ8zXSNJK+juobbVxue4pJ7bLUdpbX6djWRs0Hr5avoMi3btARfSpVc5LqIojbuAXzz/wUT9KaBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768211851; c=relaxed/simple;
	bh=LugxlYbsy+Qfs3ph7wJKDXpwM4nYBdQrHLWsWqrkdFI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TFUKOFiQa5g9XN0RYfJAeNfMKjWeTVNkcIUSiwOkGbjn140GdjrZxi/xD1inn5pF91QdSX4C4WpA+OH39UhtZu5bHzuB2rHnX7mButqeDWuCgxThd7DJENC3UZUIkjZ7koP2MLoy4034cnvN5Ran2RR8UMBg0eCOY0cKHVoIzwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nHBh9bM8; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so3248037f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768211847; x=1768816647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mzvt2RNei64w7LNow6KpAr3At/3c7C1LxeBgW5hPbzQ=;
        b=nHBh9bM8L5Qcppt7wd4Dxx480Cv2Y/bZ5/pHahDuDTUGUkLzlnvNhqA3LWKoL6nxi9
         tlsveaPdifbXZ6l6cUyJcmolNXMnECnHGtmf25lIXwcjs4JyMD77Wn7MS3vcwvp37Fas
         uhXfdc2aSTKis08wZhWSgGc6XO9hBEF0RfnybweQ9Rd/jWPXWm83CAljOd7bGvLwvGRk
         btyIkaQLy/o1LdvDGH6gz0yqGwAWt/SeQge6y8DQ9WQ1MAiUJJ1+SduPCtcUwz5O+oEH
         ziNxFtGGyRvg2XglC1FQf2amkDSOfWQOnHRIrfT65EqMogFMMV3kaNVoiyrYZSyAYXx7
         5szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768211847; x=1768816647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mzvt2RNei64w7LNow6KpAr3At/3c7C1LxeBgW5hPbzQ=;
        b=VhftmFZW332/PxRWKkx2ny1Nc+tbMLYbg/Pc8XOIlpFw4YQ/Bxjb3QlA/v/s7/u9s8
         x/PlFNQEdetCVtoXnWoVTPCX161Kh5yPYx3wS9FPMdvIC4xI5Bva6Dv6nrYzzzUIFQLP
         Z1DXaQU3piMFlqcUAUF7j2FoEF92JwzX2MoaY+ANl+eeNaqyO6c0XmMnSdeFTqxxb0bB
         wi41LVhxlr17pkXjSCX+xO9JjpJMcOzXxUOUHaZu+UN49PtBHeL4BNGW3QEpXeTmTEK6
         OVdJfUwEegwHcgdEal1W+ZkgWPlO7g9TQrqxtObDGeB5kstnv8xJEd6I3mjnPyvgfIuK
         VfcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNMgmhP9hTcysIpD8iJgPb7Rqy+uSrgM3doSsnpi9sJG1ztbUlSQ1jMtCfy+x2bZcE6Mjld5+/X1Pn@vger.kernel.org
X-Gm-Message-State: AOJu0YygA3D4e9mpVCivq0OiwyzWjLNLMLK+3aLgmlKxyRAwk8QAbV3c
	aBUE3ozG0skZmXRl4HwfdRSCplzeGqxIUf9n45P34B3hmZ2uTbrQEIRY
X-Gm-Gg: AY/fxX4nLdmDz4811F2wjg/0zEoD+s6SsqRgPdX8J5RDcgxSQ9otU9L6D/6Ik/OrfPH
	DM/D6gMSk7C9xWHcRpgD9GYDk1+i5otHv0M9DxZAo9DfaWAbmx7BdK1knxUyPv27yVydP5GDNKS
	S8ezHQiXJjmo55ZktnLPoZbxBFpuOEE1a7/mbcRlyyPyNu23GNgtvMT0iCEGNXKORwo9qe5YiaV
	p/v6j6jzUtV4Ug51gUVzbU+juhc3HO8n7ouoF53BWKecbDNBfRZ5rotXlCTBorUvcVDiBL0LUg2
	syDxRyhK7te7dUHSQZGP9d3pchyVPzHD2qX2BqTjV69YE5p9Uzthfl94zAX93/KnDtbaACEWQxg
	QodAU1F5iflUXJYTsoBqoq+nKHO2ijEH2SuAw2+68UikmYnWFQ9tgFphukGFXdQfQBqNXxd4s87
	TK6xGVT4SrR+yTvExdsuwXLTKzYCHT6M32Nd2eYsJXnPCC9ryc5Z7Abbha8/CP4sStZvDTE62MG
	WJFLZU+zs0qZ+YsHDR5Y01Z
X-Google-Smtp-Source: AGHT+IHiMx0miHXV1Prj6ALTq018isqRXrCy6aZ7AnOL0DZCWJCV1GIa1Uskao4vqlEinSE11baR0w==
X-Received: by 2002:a05:6000:616:b0:431:9f1:e4c7 with SMTP id ffacd0b85a97d-432c363418dmr19272921f8f.21.1768211847238;
        Mon, 12 Jan 2026 01:57:27 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9336:b2a5:a8c1:722e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee5e3sm37359450f8f.35.2026.01.12.01.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 01:57:26 -0800 (PST)
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
Subject: [PATCH v2] dt-bindings: serial: sh-sci: Fold single-entry compatibles into enum
Date: Mon, 12 Jan 2026 09:57:22 +0000
Message-ID: <20260112095722.25556-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v1->v2:
- Dropped "- items:" to reduce indentation level.
- Added Reviewed-by tag. 
---
 .../devicetree/bindings/serial/renesas,scif.yaml  | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/renesas,scif.yaml b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
index 72483bc3274d..a6ef02327be8 100644
--- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
@@ -12,15 +12,16 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - enum:
+          - renesas,scif-r7s9210          # RZ/A2
+          - renesas,scif-r9a07g044        # RZ/G2{L,LC}
+          - renesas,scif-r9a09g057        # RZ/V2H(P)
+
       - items:
           - enum:
               - renesas,scif-r7s72100     # RZ/A1H
           - const: renesas,scif           # generic SCIF compatible UART
 
-      - items:
-          - enum:
-              - renesas,scif-r7s9210      # RZ/A2
-
       - items:
           - enum:
               - renesas,scif-r8a7778      # R-Car M1
@@ -76,10 +77,6 @@ properties:
           - const: renesas,rcar-gen5-scif # R-Car Gen5
           - const: renesas,scif           # generic SCIF compatible UART
 
-      - items:
-          - enum:
-              - renesas,scif-r9a07g044      # RZ/G2{L,LC}
-
       - items:
           - enum:
               - renesas,scif-r9a07g043      # RZ/G2UL and RZ/Five
@@ -87,8 +84,6 @@ properties:
               - renesas,scif-r9a08g045      # RZ/G3S
           - const: renesas,scif-r9a07g044   # RZ/G2{L,LC} fallback
 
-      - const: renesas,scif-r9a09g057       # RZ/V2H(P)
-
       - items:
           - enum:
               - renesas,scif-r9a09g047      # RZ/G3E
-- 
2.52.0


