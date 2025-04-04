Return-Path: <devicetree+bounces-163071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 33169A7B59A
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 03:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D2A21895ED8
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 01:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD9A1494A6;
	Fri,  4 Apr 2025 01:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZyNxalpR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95288137742
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 01:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743731124; cv=none; b=lzZOzF+qMOWrVx4lHUKg9QeTqdxVmmigqIPZVx7qUKPHjH0aq6A55z4t+SpDaiFZ/Q3iD8UArfXWT+5JtqqQ3wJXbilkSoicIJUPFfTbbzXYYZkd1vYZIDdzgIaI3LqrnMrEgNqomgPeLeFU+oP1HPufHxbSoZ/yNAvKGbXC3jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743731124; c=relaxed/simple;
	bh=JP6AKaV4c6RL9Raq85GTSsXxMQ0cqI+v85EdlRj9uMw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gZLKOFiEHvgPaxYFEvhdlvBqLOrRCW3nOQ1hyzqebGQoxUOBQuCgRY7LNRI3niSf7iuWRdyBiGorN0hg4zcxLaA+8Zel4bwU32wyOzIk1zA/C7lq+3gh/czfBiwYVM7RTWM8+V1Zql3un3QEU5DwqyXBasNKpLgu7ma0NwLhW6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZyNxalpR; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7398d65476eso1168144b3a.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 18:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743731122; x=1744335922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYIA0N87xhRP/FjDDfT4iz9SD40PFBY0c3zy23Ct7oI=;
        b=ZyNxalpR+zDKtKtPsc1OAcpW7vkfj4E+VwiqRo/GNF+Eoz1lAXIMe/8UhoxusrAl9P
         D1QEyA5pN3hRir6OEusicLk8vYp+Ax3BQBNP7vTWWE7n2W15d2t6R4rVOaBUgfIURgWt
         JuhIsbr02CQ4PPDuZW6UrOjs3fG1aNhsa/fWGQ5xhcUXnNgty8Ro1G67ApwLtLJaw+37
         BGN214gDS6bCLdlvNn/5u1ts1+Bw1uWkrdswcbLEVpYYG0K0li2GaVnsHsklX8XrxtNM
         6Z3eFCGBoPMAYvRc1jQptZlH46xtrEl4wdsTj6s612eitgPHjlLiPUGFlD+a0zzEyr5G
         P1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743731122; x=1744335922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYIA0N87xhRP/FjDDfT4iz9SD40PFBY0c3zy23Ct7oI=;
        b=NRRLY5jNX79n08VS0AOmfVsa3T+XrLZoT/qb51Qi/RQhNoE3FL08MFewcQgZXuqRgn
         bw7uT39I6nRAMrhY0pSGja2u4ONRgy6GqvaH1mFm43JQUJozf3aMnm/R8qA2Dn0uJOOB
         PODajMgwnJYdy5VW8e+ai/9uT+0cwm9DPBRMf2wyH3GduWWbm1Y2J2aVS5DgjVqsBiEH
         WNyqD1t097aC/0kQEwwRcv/pQAd6ASIc5nXQ8GaQ5R8oXSkBy3BFUyDYGL03nk8PU0vn
         lX9ZaE8vhLBY60ljxkhSYX926JzUmvKNeiCTVJCbhQXrMwTsOXa5hq2Q2W/NTf2vqiq0
         z7nw==
X-Forwarded-Encrypted: i=1; AJvYcCW5TiEG3LmiptYrDEKgTxEA95R21JTpdbijKQ5EsFCboV1kFbSpjI+v/YX0VKBm4RYU35ObbdMUY4QF@vger.kernel.org
X-Gm-Message-State: AOJu0YxmD+B/pD+RGuL04bQMnSfy8iGl5LaGAB1wEQWlJmPm+lDRCDuR
	BydTA+C+B4ZRrw1iINLOK2QY8h+IbCr4X7KLPMJNlhDPEHh2x+X31YaiptgcXiY=
X-Gm-Gg: ASbGnctBFHCK715AiY/SaNSUN3lW/H+AntNhROxkzr1eznEl1HgET8ip/GOuv+TM+Lc
	BRMSC//R9k1hnZwSwkAQ1MkozIsCaQqsys8mpiza3BQfLqbJTufmkLEkYpUsuelL0G60omHbLfV
	aiA48LfFfO+qlluEwHPvJ9I4d/gMpxXnrPoCTGOeJQAKkb6JH6qEXJHz2x1XYPbX2LTUlxvlHQ7
	2GtfKKNoXjU6/TWPstHcg+xO8UIbFbYMQmgBLmwTQw9hlhrpBmvc5e2y9r4C0DKHWtJR+OndAbZ
	rCEXcrrdN39AgRGnMp79GRDhY9jaApnQkL7JCAHgG6ws09Q2tXV/IxFgrxegyRCXu6Z1kcEB5AT
	n/Bctdk4=
X-Google-Smtp-Source: AGHT+IGUWvGCzCm24c563t3tszQcWD7Eqxr/TN4zH8xD6j46vgIvGdKnsQwIgKwAI0GN2sB6xtHpKg==
X-Received: by 2002:a05:6a00:2e0e:b0:736:491b:5370 with SMTP id d2e1a72fcca58-739e5a7772emr1705055b3a.10.1743731121712;
        Thu, 03 Apr 2025 18:45:21 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739da0e3184sm2195304b3a.160.2025.04.03.18.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 18:45:21 -0700 (PDT)
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
Subject: [PATCH 4/4] dt-bindings: clock: ti: add ti,autoidle.yaml reference
Date: Thu,  3 Apr 2025 18:45:00 -0700
Message-Id: <20250404014500.2789830-5-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250404014500.2789830-1-sbellary@baylibre.com>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ti,divider-clock uses properties from ti,autoidle.

As we are converting autoidle binding to ti,autoidle.yaml,
fix the reference here.

Add dual license.

Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
---
 .../bindings/clock/ti/ti,divider-clock.yaml   | 24 ++++---------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
index 3fbe236eb565..aba879ae302d 100644
--- a/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/clock/ti/ti,divider-clock.yaml#
@@ -55,9 +55,10 @@ description: |
   is missing it is the same as supplying a zero shift.
 
   This binding can also optionally provide support to the hardware autoidle
-  feature, see [1].
+  feature.
 
-  [1] Documentation/devicetree/bindings/clock/ti/autoidle.txt
+allOf:
+  - $ref: /schemas/clock/ti/ti,autoidle.yaml#
 
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


