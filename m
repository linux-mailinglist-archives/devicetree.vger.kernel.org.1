Return-Path: <devicetree+bounces-139059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37162A13CAE
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68D71169C3D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725F422CBEA;
	Thu, 16 Jan 2025 14:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="Wg7gl0zL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015BA22CBD8
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737038897; cv=none; b=m+G2OSJm72CsXP/76eNG/Yz/ShvFPhP8yIMIZbTob52XB37tJ0HWFTa9oxK1xh8PmOrp7DeeVZWf7zP72bv0PcH8o15weW9F+ptfHl70NraKegIYeRiwMBmczJOnqs9EkXRkLSG8UUG2qRAxHcHic8W6wBtI2Jidwtxoeoe7Pbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737038897; c=relaxed/simple;
	bh=lGFk7U5Onz6sNN5y/99LRrKkOQgLiX19I23GYTjkcUA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ab5QR6MCj+uTewJw8qzuxszkzV+Of11jY3Jjv87urTTo0OOP45FAQKeCaYNAlURaGt4lZ4CsLY3ib95MWJVReCkloMnylf/gM89U1CAgHBob3KtHye/uqzUzeT5HPEjnJXGdfJ4xYrP1o4YqyfaNkHkGDNmdAT9RRXlk0NuGPek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=Wg7gl0zL; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2161eb94cceso12698375ad.2
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1737038895; x=1737643695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3wwm6DpMoyeaZ3xyPasEm+MVRTmuQGP4Y2DQwnl42k=;
        b=Wg7gl0zL5gWO0VMOWkdaJHoHqrhjLe33RKpfqG6JEu6pw51uBMJOOdrobwq+HCQjtF
         zRrEEq1ekpfggZdXDz9gvSCwMZsIhiNEyV43kDhyUBzYU/VZfrCKRg5QrddHTUbN79lJ
         WbKmoLLGYrw/VlI/p1KM1UbMcF+/wW46LTnLgo4MgQlC4kRz5FRyKdfG+A/sveY/MzPR
         Ol/MHPG+QnYkutwtlk3IbWCfJFXA0cnnZY5j4/Ggo6hykSxzT4gc6CeruJl22Bs0L0eN
         B2HtkydXFLPkUE4j5d2LNp1kHDem+3HDc//Hmz67UrehgyCAeHaVoJ4NGSN6B2HVg+sB
         +06w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737038895; x=1737643695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3wwm6DpMoyeaZ3xyPasEm+MVRTmuQGP4Y2DQwnl42k=;
        b=Th97IUsEadPt7kyXCzZVTmRiKhsTUQCO0YcTSQLK++VQC/XBn872ZJukjs3A7WhBNn
         80OT0EPMIq9SHPHWbvGb2WSOnkpQZUi7noYy2bKWCiTFXkQUsT5337pcIBnSqcznK0m9
         kLlI+X0ARV3/InSMI0eYVpNrTUgalp6Fk91ODcAO3EnlYFX6Ss9b0uucOx2Z2MeLTGvQ
         h4ozd6ii9+eGyXhnBEkyYXCIyNR/rq0ccwZmmQriEMGF5GE7th4qwmUjSzyNF2FFntLQ
         zjrFD5fNHjUke2ay2Cx3GMbyV/Cd4Qi9bsv+39haCcoOpXhDN7kGn1JDTTdOZNTh7hyW
         bbsg==
X-Forwarded-Encrypted: i=1; AJvYcCXzLzwazyC5HgOXU0nq3tj2joMMaiOPQUgie+zvrE/2dmfrhPNVkocOlzxSOW6DJtocioRbYoQg/e2/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3v+8+lFdWPGylst8OKwKBF8o6qWYzEjg6PJguzGl62yBwQA2g
	qyrg8whBgpwrX1blFDC9oQ6aMMLcDoCxKn8ajXoO/G+LHcnMfOY6erCR0mNS
X-Gm-Gg: ASbGncuSRfG8qt8tLoy8j7iuTBLoFnnwn/66ie4zRb/nQD7Dbtfi9j0Szb6L/RCJZrH
	QfsUE6Sa64TX591XqJUF6Xy0W8CeTS7DNza60tXocdGB4gCZj9YP/68MUrTrny+WAk28dGBafal
	w32uhXWJWn0vRIlMdkqJrST+vpfrFGab2r7u56tTBuZQNvXiWvjlMVWZt74rt0UADi6zmhToVMh
	S/CMYM4AznsczyrY3OMaZX/wEDXJ5NeNbfv1zYSm7/D11pWJ7c4aa12Mg==
X-Google-Smtp-Source: AGHT+IFXKTQhzIDfuhegdMGAWS4p4O9ffD4TW2PQ2mR4SS1qCyoMHuPOsN0WjV86om0RCKlGkp6H1A==
X-Received: by 2002:a17:903:2452:b0:20c:5533:36da with SMTP id d9443c01a7336-21a83fc764cmr489625645ad.42.1737038895321;
        Thu, 16 Jan 2025 06:48:15 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:4323:933a:5975:d650])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3ad20bsm1221885ad.128.2025.01.16.06.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:48:14 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2 3/4] dt-bindings: soc: renesas: Document Yuridenki-Shokai Kakip board
Date: Thu, 16 Jan 2025 23:47:51 +0900
Message-ID: <20250116144752.1738574-4-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250116144752.1738574-1-iwamatsu@nigauri.org>
References: <20250116144752.1738574-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "yuridenki,kakip" which targets the Yuridenki-Shokai Kakip board.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

---
v2: Fix the rule of binding for boards.
    kakip board uses r9a09g057h48 only.

 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 4f2645e8140c5c..a8af4fce596127 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -557,6 +557,12 @@ properties:
               - renesas,r9a09g057h48 # RZ/V2HP with Mali-G31 + Mali-C55 + cryptographic extension support
           - const: renesas,r9a09g057
 
+      - description: Yuridenki-Shokai RZ/V2H Kakip
+        items:
+          - const: yuridenki,kakip
+          - const: renesas,r9a09g057h48
+          - const: renesas,r9a09g057
+
 additionalProperties: true
 
 ...
-- 
2.47.1


