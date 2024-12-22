Return-Path: <devicetree+bounces-133386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5F39FA722
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6E747A25A1
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15731B2522;
	Sun, 22 Dec 2024 17:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qiw8wQ2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E471AF0A4
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887169; cv=none; b=bM7iw1XBD9gO9+FKwtIhNlSZ+f1yJ1iOqgO6Ssw7UjwU774dpZNs/apIA8CgKEXl9o6YoxhUTZAJjs0/jACzTDaB67udK2o0e0z49HAGOEVIrj8VAyYv7i2t5EhCcn5jAr0hIi2A6/eVEL1C1Y9No/lF4re05eoqxCEY2NB7MzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887169; c=relaxed/simple;
	bh=s5iJgN4o+dP7Gm3bTpRMP//ThuhyNAU+qKwiQFlkd/I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=faoIL6PsRYavwZHDDSPKCMhKLZiJuuLMANCIwLs1y20sC35CwHuBkj8BB3+aJXzcoDJPkBKhkrsLuA4wY5morxXOvt8nLgzHQKmhsOqHGmG+whUcpnD4nacEgrpOqg8VwSOiD+HjWlKdl8hdmO1n4jlmrb7LXxR54+n5/orUh6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qiw8wQ2q; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a9a977d6cc7so487497866b.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887166; x=1735491966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D27zsP+xnLWGVrxLHgK+E6loU9nNNR60aUGojpIfAP0=;
        b=qiw8wQ2qDw6AOtleKaWotq3IslemjFIBVHyTmI1n/sN3MyUyAjeokzAWMue4kPeKIP
         XKa6hpifusOPetnjguEQAltdQxMnttwPBz9r9DkibxrFZVQ2noKmnQEwnmYq5J41sqvU
         x6MfWT5/QqEaRVpzmsaaSJJRwwTjP8SJVBmGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887166; x=1735491966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D27zsP+xnLWGVrxLHgK+E6loU9nNNR60aUGojpIfAP0=;
        b=NaH6EYyIJ84kwW68wbR058VSS+BGQIpPE0d7515g1ToVGqfM5JJkToie0O7D+lUEjJ
         MK2t/TW1R3EnAv5BWqEi6x0A97MF7O6kYbf/uN9TMBUb4ObmuJOjVvuWr4hTLWJf5wQI
         8yG354952E8DfgpLRK14tH404hyQE/AXsYgbu1LMmSCw2m631hnr0CeAGdjdHj/As/45
         Ad7v7SavKLe8uPEKWA87PgW2Z5kbzE9m+c3ccedyf9lnJrC6acG21bjYDyMCYeg5eaCu
         6n/9d3+T+kFtKnBxCSyu/kpRubRphcwC8RM5R8rn8N5QPBgqMwsm6EtOPIwQMz7pcbsv
         3KbA==
X-Forwarded-Encrypted: i=1; AJvYcCUnmeWNIFw6KUDx3ok00LR+TlX2FAna1Ty1tt3Ic/rWQMH1ImRGSav/KFCRN0dtRLTxtz0pxh0wEHhq@vger.kernel.org
X-Gm-Message-State: AOJu0YxeDazTL7OZlF6FId3lHIo5wqWijyXJTdsp/waeZmL3Iqdrc9/r
	Mrwa820tSP+8RjJWfnXtqI7nJheprW6NGyzYmHAnpGEKHFETNCEDmw9doz7OyCU=
X-Gm-Gg: ASbGncvukDTKMfIZ81BMZNLjE8hBlkW75fvZc3CYgLSITfaYo82cvt26DopNF9nC5hE
	URt5mtFDm8EW4iPWt/jF+ykjHHOQ9H1oWMlV/6srKN3RqoYrF+AFf5d4NqbjSPNJ6QPTgKIt9wd
	Je50eQ6OwJes4O9hQI04AKksJJQzkfJ+ima7wceSutT1Mr3kSNnle/Bs/HKx7xSh1kEt01HQKGn
	rceWPxI/2iFCusbw1JylElH8YWF1zSXzioTVdHz3bP3HFZOfoZaEE8qu0WnLys0kQ/CBwejspWh
	y0joa85u8LNEkzcHyzhA051C85r9cTscQU94LSruwG2K3g==
X-Google-Smtp-Source: AGHT+IGcYyO/2OQzc2CMhKzJEpw1eb8IeHSQcUz4cGsgJFNDVKrwWV2cnf1BfIdXqT/0W4OuaXsQKA==
X-Received: by 2002:a05:6402:348d:b0:5d4:55e:f99e with SMTP id 4fb4d7f45d1cf-5d81ddc09abmr22317161a12.18.1734887166231;
        Sun, 22 Dec 2024 09:06:06 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.06.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:06:05 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v6 16/18] dt-bindings: clock: imx8m-clock: support spread spectrum clocking
Date: Sun, 22 Dec 2024 18:04:31 +0100
Message-ID: <20241222170534.3621453-17-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The addition of DT bindings for enabling and tuning spread spectrum
clocking generation can be applied specifically to the PLLs.

The "" value for the fsl,ssc-method property is specifically intended to
specify a "no SSC" case, as in the example, when you don't want to
configure spread spectrum for one of the PLLs, thus avoiding the use of
a method that would only make sense if SSC were being set.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- Improve the commit message
- change minItems from 7 to 1 for all the ssc properties added
- change maxItems from 10 to 4 for alle the ssc properties added
- update the DTS example

Changes in v4:
- Drop "fsl,ssc-clocks" property. The other added properties now refer
  to the clock list.
- Updated minItems and maxItems of
  - clocks
  - clock-names
  - fsl,ssc-modfreq-hz
  - fsl,ssc-modrate-percent
  - fsl,ssc-modmethod
- Updated the dts examples

Changes in v3:
- Added in v3
- The dt-bindings have been moved from fsl,imx8m-anatop.yaml to
  imx8m-clock.yaml. The anatop device (fsl,imx8m-anatop.yaml) is
  indeed more or less a syscon, so it represents a memory area
  accessible by ccm (imx8m-clock.yaml) to setup the PLLs.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

 .../bindings/clock/imx8m-clock.yaml           | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index 05bc01960045..37cc6a6e89d4 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -43,6 +43,37 @@ properties:
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
       for the full list of i.MX8M clock IDs.
 
+  fsl,ssc-modfreq-hz:
+    description:
+      The values of modulation frequency (Hz unit) for each clock
+      supporting spread spectrum (i. e. audio_pll1, audio_pll2,
+      dram_pll and video_pll).
+    minItems: 1
+    maxItems: 4
+
+  fsl,ssc-modrate-percent:
+    description:
+      The percentage values of modulation rate for each clock
+      supporting spread spectrum (i. e. audio_pll1, audio_pll2,
+      dram_pll and video_pll).
+    minItems: 1
+    maxItems: 4
+
+  fsl,ssc-modmethod:
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    description:
+      The modulation techniques for each clock supporting spread
+      spectrum (i. e. audio_pll1, audio_pll2, dram_pll and
+      video_pll).
+    minItems: 1
+    maxItems: 4
+    items:
+      enum:
+        - ""
+        - down-spread
+        - up-spread
+        - center-spread
+
 required:
   - compatible
   - reg
@@ -76,6 +107,10 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+        fsl,ssc-modfreq-hz: false
+        fsl,ssc-modrate-percent: false
+        fsl,ssc-modmethod: false
+
     else:
       properties:
         clocks:
@@ -124,6 +159,9 @@ examples:
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
                       "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
                       "dram_pll", "video_pll";
+        fsl,ssc-modfreq-hz = <6818>, <0>, <0>, <2419>;
+        fsl,ssc-modrate-percent = <3>, <0>, <0>, <7>;
+        fsl,ssc-modmethod = "down-spread", "", "", "center-spread";
     };
 
   - |
-- 
2.43.0


