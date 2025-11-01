Return-Path: <devicetree+bounces-233974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2968CC27784
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CD931A26147
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A443C28541A;
	Sat,  1 Nov 2025 04:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AgsLooRp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F144D28504F
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971095; cv=none; b=TH0r+3W89jLbpOEfk4VjvRH7sIYssPbXw9QaP7bBFj3tVILCquLgINde2rdmBxvKMcL3q4jqN3Q+Qzt0hP9ERDDk9XE0z0NyWjYnYT7nC+Og2xe8iBb/NRetKu38ata9q5zkyL3IgXwHrwjFZ1s4ZvckNQOFJTYI8nx4OkIBJGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971095; c=relaxed/simple;
	bh=5WHfnnAEjEl7b65PNjGeo2Ba/xJE8CKHD2SN89cu3Ds=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oGg8vrQCjMhAxpdRedpotbKCBUnfwJPbBfzYA13oY2ZeYDiockGl+95QMBSd9ZjKmk9rrTKX2KGp4SJiRyxJ4OuBSRpR0WTq7HvFgBA+RDXw9nmGeardBQf2Wi/b7WAXl0Ipwu9SnRO3J5ej3uQkS6HDjmoXsY7LJr+7NGfU7nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AgsLooRp; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-78125ed4052so4080698b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 21:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761971093; x=1762575893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cpDoufdPjG28A/t0l3uGrRRBG6p6T+fKPiyqq6TZvRs=;
        b=AgsLooRpDTUkIS7wnKxThtMOGBE9alk1zizSUyt0orMuVHT3evGWwNLvdSulqS/gRP
         7is1N0BVgLy2agIVUqonQL83X9Jg0hFRZDrlsrTeQsDOA1pIw/3WBGI9DLoY+1+ZszsT
         QAVpLGrzN32Ec04oA3w5M0ur/k5SJ+/e/PcUKMlU9qPZhPLATzyvFNDGeurh8s3pCRm3
         9bWNwyBiHeLRK0wxNM+ZrUGBH9bP8+wiFhRlUnvZaFWHMWaJlDtH6tK758bqmXPwEi+Y
         +/kThZKUMdV67YUNLbDbyALO2GEIkiygoigHcQV82d+QABetEaz+FOeIEMTbTiaIciQA
         MzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761971093; x=1762575893;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpDoufdPjG28A/t0l3uGrRRBG6p6T+fKPiyqq6TZvRs=;
        b=tzD2j7fMAsdaFhlfyl/qmMMdSfzS6wA7ocJ0j6fB2Gk9y9XovJIu2JKWOpc+9MYitu
         k5o4DJL7HNad0dZeeldRUO64AlaYt9kpLkx0q9MQuGYNU6/a5vtqk2ek5W439PmoWThL
         LFpUHvjJrwk73eIN7aRtsayiXAKpPCcZln6IzzxevLUAUYu2JWZ4zIjid//ocDVMVv3A
         jVOdaokFjGVTNsyN4d50n9M6UBC5bth6e4ZuPjL4rjyJfFfW/SSXR3rPALWSrjWb9f6s
         Z3fh4Fb7mVwd2w04Q6zGa55zXCzEBQtKFrAUCggxVJ52SGmfdpWp3D3kGXrcraIHw1Ix
         7mZw==
X-Forwarded-Encrypted: i=1; AJvYcCV3N9zfZeEiNASHObf06Co+TNq8i6W1j4usYgSR/vauoidCBDlh/p/g04fLRoSKEBSy3l8U4vjkx7EY@vger.kernel.org
X-Gm-Message-State: AOJu0YzEULfu3Bf3GLOcVQVsYplsjwIXNtjXrX1oPoR6SWH0ntD+Cz58
	5+Q8TWaUOSwHxw5vcy4BMNNOGImt7TYQdK1uxI1x9ig84cU/T7imK5e/
X-Gm-Gg: ASbGncv1ir4yavzC+4Q+nJwaSVIex8Bz2H3akaYUdThgsuuxHRQzLsdiC9R9Ks/X9i4
	IilSoWsIRf2rOQpEtJy834h1FBPaZtSJyXp5IOuCb3BJnAoJOnQavJNYT0s5q3TnpsG7pv+3lYH
	cWxq3Njh1+8hQhxB14QXmydvGdp76Or7XrxJIkdQN+F67cD9Zpd6uX5xeL4EEQ2R8hMBErfk6OR
	SGGPn7h4sPIoLdSJgedNkY9JJZO2jYIXg6YYUSdcvRgTPCDTXOQm5Bl5w49uHsYMx9FSBY8IsSL
	1nVBwE0TVKHNv1UkQRcellMnOq9Y2BgbXMdzMFzVt3r+WS1VI+/TmAbjEj2qQJmvbiu6C8JDpFX
	sMf3EhhiOVH0w9H6evaDBq/Jo0kWD8YkWlD3pWvA4EeoEmfWBJcQwjp2a+v7jPAs16YgiWc5e7j
	r7PrL1mgkIpTpbea1MPJ2GLJqLKOpvy4Q0oywUoU+uVQ==
X-Google-Smtp-Source: AGHT+IFBtoVlonGhlHWnTjQtAUPLEqb/CZBWvidsGzOw9KrDiWj7lh+Ow3/Lpm6it8MHYuXUquZ47Q==
X-Received: by 2002:a05:6a00:1251:b0:781:2290:e7e7 with SMTP id d2e1a72fcca58-7a7788ff6acmr7585723b3a.18.1761971093225;
        Fri, 31 Oct 2025 21:24:53 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:600d:690:cbc4:d4d9:22c2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db678f67sm3795120b3a.57.2025.10.31.21.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 21:24:52 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: usb: renesas,rzg3e-xhci: Add RZ/V2H(P) and RZ/V2N support
Date: Sat,  1 Nov 2025 04:24:40 +0000
Message-ID: <20251101042440.648321-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add device tree binding support for the USB3.2 Gen2 controller on Renesas
RZ/V2H(P) and RZ/V2N SoCs. The USB3.2 IP on these SoCs is identical to
that found on the RZ/G3E SoC.

Add new compatible strings "renesas,r9a09g056-xhci" for RZ/V2N and
"renesas,r9a09g057-xhci" for RZ/V2H(P). Both variants use
"renesas,r9a09g047-xhci" as a fallback compatible to indicate hardware
compatibility with the RZ/G3E implementation.

Update the title to be more generic as it now covers multiple SoC
families beyond just RZ/G3E.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/usb/renesas,rzg3e-xhci.yaml  | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml b/Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml
index 98260f9fb442..3f4b09e48ce0 100644
--- a/Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml
@@ -4,14 +4,22 @@
 $id: http://devicetree.org/schemas/usb/renesas,rzg3e-xhci.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas RZ/G3E USB 3.2 Gen2 Host controller
+title: Renesas USB 3.2 Gen2 Host controller
 
 maintainers:
   - Biju Das <biju.das.jz@bp.renesas.com>
 
 properties:
   compatible:
-    const: renesas,r9a09g047-xhci
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a09g056-xhci # RZ/V2N
+              - renesas,r9a09g057-xhci # RZ/V2H(P)
+          - const: renesas,r9a09g047-xhci
+
+      - items:
+          - const: renesas,r9a09g047-xhci # RZ/G3E
 
   reg:
     maxItems: 1
-- 
2.43.0


