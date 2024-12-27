Return-Path: <devicetree+bounces-134422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A3D9FD64E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F918163BD0
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551FF1FA8CE;
	Fri, 27 Dec 2024 16:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GU/zjL0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FCC1FA828
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318681; cv=none; b=IJDqvQGWWni5eWz6grgKZoBvlJvpiXxkpn6iz0vyy4tN8m7MIsMZFqLonSmXoxlGe2TheYxF0KXA+DIsWZ9OIlP6FCptF3+YWPnLcKrQGDJ81oMNmS658wJcspwlsNc9mS+wb7XRylppt8XcviaZpzPVhjQ54PU0MyMwk3lsXTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318681; c=relaxed/simple;
	bh=bPw6sBKo42nWd35aKTqsGLLoGTjQzArJVhFrICMWSWU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VAf18EmZTodFoH2jl+d5DTl1i8H9XJ48i0TkK/yb+sNNtRLq8UQeJfWuHnPKxCABTaVkxvCwIVA0AlNVlb1I3JbtI/Fv/unFuBimi9IMTKvoysvrnOzIbrN4RRh3T965bKTdbP8HkDvzwy+IkYDFo638OmeZNLMCsv8b1+27QQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=GU/zjL0L; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3f57582a2so15014298a12.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318677; x=1735923477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqUbS4QFbQjY9acz5KfEUvUnduu2cjIu1TltoLZFYZg=;
        b=GU/zjL0LvuP5aIzubNe/y+WEZeClLzFlfNQPAwIRuuqsBH4szEE0zanQqoPLSW24SF
         WSeXCfY0Oba2DHTK0D761iNAKDndzWFof7dE5/wFzc7gtZ85ixDtl9PcZKoj3SE27ej+
         Ody5Ew8ImtwP1wQ1HQQSkZIomKU1dhPT+iF44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318677; x=1735923477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqUbS4QFbQjY9acz5KfEUvUnduu2cjIu1TltoLZFYZg=;
        b=mgKx9qb2Risly5cY/SLKxS+1H8WBIvdYeyMweZ7iq95UXEy5+nbd1nfFs7M81yuaN4
         10kOAKc8lrvR+5xWLGigkihQx1AVA/57eHvmIx6wp+cYtejS8t93ku/IWVkLhUeGqPdf
         LhtQkiLywjuFtN/nvs4kgJAXZhXSVEDizQWyLA2iQbckb7l8xp3P0TvPCwRSqCNoQpXd
         gqnmea8g6lBcaDVdQjNP/X630sO3nF0YcjyHrsMP1jfd4Ptd9VG+zYTbrf76rNJ8oo/q
         ssU0X5uOykyhBAAFS+j0JNq5VmiDUYAxmAvDCFh8LMKs8tOCUuT+JsFyLdS/2Y4T8T2C
         a3Bg==
X-Forwarded-Encrypted: i=1; AJvYcCUc8GD3bA716tO3CDK/Wl9WNCOvLnMlC/x+QZWhwxGoZPyhpzDT2467YL8+2OVcDRTeGCasLA6T3RwH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2xYhTpo5WqwsQI0xQUHuL7VGb8aI7bzSK4AJzs0A6HfgMBeK6
	4lQahxVWqPs9K9KLtURyAQeqA/qMYVZPYrsfdbThNOj68r+hy2u0k8mDvUpu3Tk=
X-Gm-Gg: ASbGnct0ITOPaQZGPAeO8lS+pzGZt0nxnG98B7rWGZnQFYyytqImbe+PFseTzpd4B6t
	7B9B4Iv6PQhqMqqHdfqW9XavkO+vXf2E4AuARxAGSqMmfBuZe2LEfz5B4zfJUaKa2ZIzrxuLQns
	1oVD/5unJxwtcAnD/MpVksD91TK998QdQ+q2vyNcJbnIZRsUjLA+4Mzt5OPWUo+aVO8iTGq1Zrx
	lLhefdFTfaQR9PRCh+g9HCXLf26wr6UHjhhulzpjHtlqJ9NNYB8o/PJpqAvrnzaxCgD1VCfcZbx
	aN6WhDywaZdmmbAnrO7vew==
X-Google-Smtp-Source: AGHT+IHElfZi3i1uNBnK2xJqGFXo7qQDmANxsj6O+9wLFu70VpPDFGks7oNgpbJku7AT+TTCB0jLHA==
X-Received: by 2002:a05:6402:2346:b0:5d8:17da:dcf0 with SMTP id 4fb4d7f45d1cf-5d81e523027mr20469463a12.4.1735318677486;
        Fri, 27 Dec 2024 08:57:57 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:57 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
Subject: [PATCH v7 21/23] dt-bindings: clock: imx8m-clock: support spread spectrum clocking
Date: Fri, 27 Dec 2024 17:56:24 +0100
Message-ID: <20241227165719.3902388-22-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v7:
- List the PLLs to strictly define the setup order for each of the
  added properties
- Drop maxItems from "fsl,ssc-modfreq-hz" and "fsl,ssc-modrate-percent"
  properties
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

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

 .../bindings/clock/imx8m-clock.yaml           | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index eb2e6e702de9..76040ee9cd5c 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -50,6 +50,46 @@ properties:
       along with the oscillators, are used to generate the clocks for
       the on-chip peripherals.
 
+  fsl,ssc-modfreq-hz:
+    description:
+      The values of modulation frequency (Hz unit) for each clock
+      supporting spread spectrum.
+    minItems: 1
+    items:
+      - description: audio_pll1
+      - description: audio_pll2
+      - description: dram_pll
+      - description: video_pll
+
+  fsl,ssc-modrate-percent:
+    description:
+      The percentage values of modulation rate for each clock
+      supporting spread spectrum.
+    minItems: 1
+    items:
+      - description: audio_pll1
+      - description: audio_pll2
+      - description: dram_pll
+      - description: video_pll
+
+  fsl,ssc-modmethod:
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    description: |
+      The modulation techniques for each clock supporting spread
+      spectrum in this order::
+      - audio_pll1
+      - audio_pll2
+      - dram_pll
+      - video_pll
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
@@ -84,6 +124,10 @@ allOf:
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
@@ -133,6 +177,9 @@ examples:
                       "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
                       "dram_pll", "video_pll";
         fsl,anatop = <&anatop>;
+        fsl,ssc-modfreq-hz = <6818>, <0>, <0>, <2419>;
+        fsl,ssc-modrate-percent = <3>, <0>, <0>, <7>;
+        fsl,ssc-modmethod = "down-spread", "", "", "center-spread";
     };
 
   - |
-- 
2.43.0


