Return-Path: <devicetree+bounces-72915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C03D08FD615
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:53:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C3821C21598
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2678E22301;
	Wed,  5 Jun 2024 18:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S0id0e5p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F1622615
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 18:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717613627; cv=none; b=RenIa8kQt4Oz0KH2BEcw/v34ftvSuQ9ORlhN0miIqo8xcBIzuIKceHWI2zspYOLnz7bJXw6nYRB05p/2Dat+sVv69pWnoVRol3LXj8C7b6g2M3q1ixW8f6WH59kIbJhnJfQsHp1a7pvfTj3n/f8f4Ltbpo4cyVJu328EBwrBKwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717613627; c=relaxed/simple;
	bh=z4gazJABgaR31437s43C6iANSBoeq3o2q99mvbLyA7k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Tblk+G02l3RrKLObx2zp0N7o2HTK5xgbkOwVkEcWZn5aLld1hoPFOd+lhbP3u8ww828IdMrrV5sBPT1mBHayN0rT36axj6IN/XC6TI4TTVbwur31qjymTrMXU/xbGVKLKErOEQPM02b7LW3fCA80KvlfiifptapbWyVre4yPWCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S0id0e5p; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3d1ffaf6091so44811b6e.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 11:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717613625; x=1718218425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVVt4CvcEbqB4usx6GbIzvQhpK6chWGevKH5JeviVOg=;
        b=S0id0e5prJNUhSuZN3IkrVw58gvse3Rcgp7K4J/nVKMExnuBZLZCuTOeLrUR/rtVLs
         zcCsYU6VqsL3j+8pQxAPuNfp6xMz03YdED5/shQ3Bh/uDW1EigSfHK4NgD/R2Nct9SJn
         JMoCjgW/fD0yP9Z5O61mdi8k66eMApEveLXV4ADIZXSZT/FQ+S+m6qtR+Nud/qFgPCUi
         GMliEy2bIr/4srWVDyGV83Y3LPUoRiNqQCjQu5t8KDtW85zDdA6ub/NTepQj1c/vRZxa
         6NSW4mZNtVOvxCiy+uC0dYzV95ZprHAwKFqV7qs8TZpA4dQ1TPTCGQ1qLtWqxQaLCF/r
         Qbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717613625; x=1718218425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVVt4CvcEbqB4usx6GbIzvQhpK6chWGevKH5JeviVOg=;
        b=f2nrDfaDsjfpC9T/NGFGG8txSaCqVE3rkQtgiARyM3pdFj6u1EKedO+t6AnNxRNtXj
         yXwDOqGVmd+fy1eo8dXtbB9lWiUQ9zP0UXlABtFIT+RNcN4ZmrGyPvdX2WsqezJTbFXv
         VuW1STpoNRjD8o0loo+UOwjz4cO+WhLXE4LSEoKk8SFxP8/RUdKQzuapaHNRy6cvTPLH
         +oscuQNWUGVPEN1dx9bjpQEvDASmIs5zI1mYqCkVaksS/8SbHiqqmuQfRAls6AiMae/3
         z6AYnGjUs1uxn5O5fSPPJb1yjLuwl5KYxT2WBvB71ALq6Ys3dardZIWX5DOD4mQPuP73
         aSYA==
X-Gm-Message-State: AOJu0YzBybJi1ku/HYCUf8kjXoEOM1s+r9/j41o4j1bjQ3vfGZ2FdDOT
	sVu3NnByGKgXgkvFWFSRqSQ/RMOUfU5xnlu7vcDm2x6GgIu/YVJt
X-Google-Smtp-Source: AGHT+IEQ8ihk6NNxKmxMwNP9he8d5hD0KGq6l6cTUseO39XzzkeS/iG7hIwPtz5v/YBU09zzDbgXUA==
X-Received: by 2002:a05:6808:9b9:b0:3d2:2e1:a5a with SMTP id 5614622812f47-3d2043a5c25mr3712727b6e.24.1717613624679;
        Wed, 05 Jun 2024 11:53:44 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d20a7a37a1sm29684b6e.4.2024.06.05.11.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 11:53:44 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
Date: Wed,  5 Jun 2024 13:53:38 -0500
Message-Id: <20240605185339.266833-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605185339.266833-1-macroalpha82@gmail.com>
References: <20240605185339.266833-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the Anbernic RG35XXSP variant device and consolidate the Anbernic
H700 devices.

The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
clamshell form-factor.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index c2a158b75e49..1ae77e5edf9a 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -51,25 +51,19 @@ properties:
           - const: allwinner,parrot
           - const: allwinner,sun8i-a33
 
-      - description: Anbernic RG-Nano
-        items:
-          - const: anbernic,rg-nano
-          - const: allwinner,sun8i-v3s
-
-      - description: Anbernic RG35XX (2024)
-        items:
-          - const: anbernic,rg35xx-2024
-          - const: allwinner,sun50i-h700
-
-      - description: Anbernic RG35XX Plus
+      - description: Anbernic H700 Handheld Gaming Console
         items:
-          - const: anbernic,rg35xx-plus
+          - enum:
+              - anbernic,rg35xx-2024
+              - anbernic,rg35xx-h
+              - anbernic,rg35xx-plus
+              - anbernic,rg35xx-sp
           - const: allwinner,sun50i-h700
 
-      - description: Anbernic RG35XX H
+      - description: Anbernic RG-Nano
         items:
-          - const: anbernic,rg35xx-h
-          - const: allwinner,sun50i-h700
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
 
       - description: Amarula A64 Relic
         items:
-- 
2.34.1


