Return-Path: <devicetree+bounces-177875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F6FAB9751
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E4CF5028EA
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 08:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC0C22FF59;
	Fri, 16 May 2025 08:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ajQIsT/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6A022D7A5
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747383387; cv=none; b=YD8MRelMqoUhGYBxNXSOS1Ja1+BHgoQ0YBftPL1oVQBOocvG8yjpicHhOAe41bVFQzXb+PcIhH2uWf7AD8UOXVxh1bUOopIf8cEssywV7GxccCXYU0NUZJToQEvlaSbAV5hQ1v+OE0iWFFjQjWE61PgAQGjVXO7dEOU+9jlalBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747383387; c=relaxed/simple;
	bh=ne4PfWXtPTDke/5/uFZ5cI1NkNx1QheiiJRSL2tSd1o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M+z9zUDQOZn1NL14tAm/B+OELDx0OsxLdyfGThw2vCRx4e0SdmDqGTuZB8dlbebsB08nWlg1KcwhRjCKJYZ37bqRjehqOieou36Kfx3BQk10pdi6lYe89RiZfwFKUCZu7ncu+PPKK44U2sLknpcMdUVDJ7eQO+YMjyUXCI7aATc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ajQIsT/J; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b200178c011so1511514a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 01:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747383385; x=1747988185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/V2daD2rTNcNp3coCr/ToEF+NAYlBMkaOYzNetHBK5g=;
        b=ajQIsT/JNGABAJnRdU4L0P233li6jU3+9UAWxfrTa0rzIpVAIxlhcxAXvYQv7prP2r
         l2CZA/HUdhquexq/VK1cum58wmLFcueq7kCdh6zMlVWg8SSAvEJbnTLfC2X3bjVj/LSg
         Wg0ddOsfnQSkjQkl/K93UA5VPBBF1ly7iCpM44d31KvaHuGwJ5lX3NImgIG2t97nxVSQ
         cCgte/vEfuUICw/VG0M2yc3zY1FKRjIQTk0s+q7Re0xHDVf6vZAlISqwjqup4SmcoOKV
         GE3Gc1a890brdf7lvyKd70Pus7cS5n8DN2wrNv5H0phPVXWc2Ft6YZwbepYw76QkIME/
         bY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747383385; x=1747988185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/V2daD2rTNcNp3coCr/ToEF+NAYlBMkaOYzNetHBK5g=;
        b=OT1ThntooBhTnXZKfmGLup4xl1vvYRMT28zZ1dDcLslrkQy5zO5rz1sY3W9xONnFd6
         py5Va8VOs42j4BS3Fx4bryf7DVru9l/36OZ4VFo/FobF3KN7Sl2DP/5gacLKR3QgI26X
         47gSzonYBVFLdXV3voDnFpBQgRr5jUsq8gEylmYSkDcoS74ZcVXobuvdhWANheB7+YZ3
         /GdDMz1HFP3A+jrAwurW6eCaMyHZL9ki7skKokhmK3ttLvmGsDuuPXP1GKMvcVg3Bx1R
         fMB/dG64JuXK5lbLdbcypN+WWv7u1N5woTFWXXoOu29E3x0dlienaeh+tYMCes6Gj+AF
         IrUw==
X-Forwarded-Encrypted: i=1; AJvYcCX/GsM6BdsmF3qC/OaU4MnyucMNO+FvZWBZk6OInma1AAaEJM+BLy8MJ1+pybBau9BmxxuLfW0l58h3@vger.kernel.org
X-Gm-Message-State: AOJu0YyHm5mrRO0xAbEVauWaP83CfittR9FAfLsnhGreml1KeE8s83bY
	OJuvQIaCzfwp62UhhzhNC+0spsgAkqQSsKB090m+4euLMMm/fDNS1Zr8OZZTGaBH6Ig=
X-Gm-Gg: ASbGncsiHGxlRmSvDYW1rlk2FVlSDcVMkU2adKr8F89auMmql52wlQXzi35OVEjcPyG
	koH/3FjQC4I9RCy+ye761cU4MMoAlrRthrxZyZOipyaBp6YHK7vNwIrVjN/pm9VahrApwBWVrpQ
	d2+1tMQWWGGsUVz9ck/znTf9+myxLnAxfm/eLLE2CyDIISkeoZHXPsrBoMVqzVkbbw5ltxCCtkW
	mxfIwmdpRC3HCY7GHQk6HEf1xMFgCs8ALqnv9cnPLwXBzybNUFo4SN9aalfEfZSsi+9NBWDDsDV
	5gzU/G4kra9QaQwyv0M3gkdOf9hUbRgr70IU8vyHNUXbNxuP1naQbfq/C5bVf51PfdnBAsFf6A0
	riH6yUTOJWoKATQ==
X-Google-Smtp-Source: AGHT+IGNwOPd4/78bjds7wJXN85y4exK0t1zW51cDsS9UCcuz87FTXGSkJI8YZ6TyRB1xxjOHnrMRQ==
X-Received: by 2002:a17:902:ea0a:b0:22f:b040:9751 with SMTP id d9443c01a7336-231de3b9709mr18773765ad.45.1747383385431;
        Fri, 16 May 2025 01:16:25 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4e97801sm9397695ad.133.2025.05.16.01.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 01:16:24 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] dt-bindings: clock: ti: add ti,autoidle.yaml reference
Date: Fri, 16 May 2025 01:16:12 -0700
Message-Id: <20250516081612.767559-4-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250516081612.767559-1-sbellary@baylibre.com>
References: <20250516081612.767559-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ti,divider-clock uses properties from ti,autoidle.
As we are converting autoidle binding to ti,autoidle.yaml, fix the reference
here.

Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
---
 .../bindings/clock/ti/ti,divider-clock.yaml   | 22 ++++---------------
 1 file changed, 4 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
index 3fbe236eb565..6729fcb839d2 100644
--- a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
@@ -55,9 +55,10 @@ description: |
   is missing it is the same as supplying a zero shift.
 
   This binding can also optionally provide support to the hardware autoidle
-  feature, see [1].
+  feature.
 
-  [1] Documentation/devicetree/bindings/clock/ti/autoidle.txt
+allOf:
+  - $ref: ti,autoidle.yaml#
 
 properties:
   compatible:
@@ -97,7 +98,6 @@ properties:
     minimum: 1
     default: 1
 
-
   ti,max-div:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
@@ -116,20 +116,6 @@ properties:
       valid divisor programming must be a power of two,
       only valid if ti,dividers is not defined.
 
-  ti,autoidle-shift:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      bit shift of the autoidle enable bit for the clock,
-      see [1].
-    maximum: 31
-    default: 0
-
-  ti,invert-autoidle-bit:
-    type: boolean
-    description:
-      autoidle is enabled by setting the bit to 0,
-      see [1]
-
   ti,set-rate-parent:
     type: boolean
     description:
@@ -156,7 +142,7 @@ required:
   - clocks
   - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


