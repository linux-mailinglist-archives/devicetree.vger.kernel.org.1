Return-Path: <devicetree+bounces-134580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CC89FDF7F
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AD2C18824E3
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22BA19F41C;
	Sun, 29 Dec 2024 14:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="I40BOtED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A614719E998
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483861; cv=none; b=bvUj8RZVpLEl5FX6hICQymJrTFr86NpTKZoYX0vDPVEJQaXaO+fAuUT9W845ApDe+tHuxnBuKXoEzJIfk1jKORvHoUhenQtBMT6G3DNxI+CE6WKbaXB6k1tLDq84SIJHn+SLMymO7MjmET0MN8xGahccRsLjCPT7pXD+bknf3Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483861; c=relaxed/simple;
	bh=El72Xw99HLuBdH9KtR0LW7UzZsYG3PNdKxTAjv0VMF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BMndqCCbubde8SXPebIcJcm/yVTrP7PRieB5Tc5Y4ieRrEUEDXBozUuLBFEVGQ2r5J2lFsOOKawnngIAyaQpTvMMQg3o3NIIpPzd2FO7AMl7xajgBFqEy/eUbAqzMCnnzF04v9yjVYV0WxP3jmV95p7QA6Qv2SCf6ink3ruiZ44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=I40BOtED; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa689a37dd4so1278918666b.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483858; x=1736088658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aXOt2DStfgxzjFuE8T9ZB+qgm2XwGSAXjcE/H4FasAs=;
        b=I40BOtEDtH5hY+98pr6yMKrKtgu/XXpN5k3txPIcYgJqW1mjQcB4Msc1AF05fgMOqG
         ossIKeMP8pCmZMVog4v5/WqnPuPaYxS45YR0bf5Fxacnyebg+306t5g3dFJduluuY/pc
         FMqU/ntSrE2a+Lrv8Et6QQFb7xyPFw/gbJOt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483858; x=1736088658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aXOt2DStfgxzjFuE8T9ZB+qgm2XwGSAXjcE/H4FasAs=;
        b=SkuCqHavt+RKuN22g0XkdwXtFO9mf7y/W5YCafK/ulFzjf0J82FmnIY4gWDMorqSav
         Y4lJtnft1lxaSo8h0Bd7g8zMdc2XWVgV8+crAtNF/7a0cV/8qMvLA3hhviNUuKSgEyiQ
         4LcK8W7pTr2DLzTzCp0zMJ12ILWBc+awk0Qrb01mV3JcYC752juVGef0n0OoYtrjDhBt
         XNmvtRm0EsORUzrzmPAomdsBtzggDEfuYsgZz5JoncPIdXx6kCfRphwgcB2aBvP0L3BX
         ykXEeNAEIeAVb4rjWGucjNGKSKuem+vXYlfLgpdEOJebW0pn1v43WMuK1OW9gkzydIIh
         nJbA==
X-Forwarded-Encrypted: i=1; AJvYcCXS1YWbmKPNpEpE+IhCHNZx7U5wYxyVX0SWyOuoW/eqM2SToegd/9yoILHMtlhWYcORXS8lcH3s5Joy@vger.kernel.org
X-Gm-Message-State: AOJu0YwdmVd5dn6QABzX5x7S6NsZD0ACKdPSPnKnrns6tPr6t2LRar7A
	MNWnH2iWuxPlnws6VUiGCFvWj2Bl0IutJWUTeksgs5qTEZ13hztPdRpqmHykuL4=
X-Gm-Gg: ASbGncvY7+OzpTdZaL4OblP1wTGZ3yDGMwJEug1r2myW5mmIhFpVyk3A+hkUgkW/yIK
	eQsyu6ydQCVwZU9zPKTiCAf2EPk6d4KMDKRtG5iWIz6xa+a0qkyTQOSwEuaVaDTw1tNWYsX1usu
	AjCMWcYyot79xZKVokB1N1viQlOZI/jLxl7B5ku+COPkeTds56hm/3kcQqUCL9Q8LQLb+Y4uL8Z
	Ff3BP1AHM/8h1Yh6DJpi1x92Uyme/ZfcSYWQ6MweVsqta+S7FwB28EIU7IGzllmjeo5s2urgeAw
	SnWaP621f+FDNZTW3uqo5g==
X-Google-Smtp-Source: AGHT+IFUZKKdB0iUzGRoX60NeZj/L8H0CgHBD5QlmlsHW+jn/bxgVOxw8oTNEA264fbFGQVGlo990A==
X-Received: by 2002:a17:907:9621:b0:aa6:6f92:74b1 with SMTP id a640c23a62f3a-aac2ad7fa01mr3093170366b.13.1735483857971;
        Sun, 29 Dec 2024 06:50:57 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:57 -0800 (PST)
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
Subject: [PATCH v8 16/18] dt-bindings: clock: imx8m-clock: support spread spectrum clocking
Date: Sun, 29 Dec 2024 15:49:40 +0100
Message-ID: <20241229145027.3984542-17-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v7)

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
index d96570bf60dc..d347d630764a 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -43,6 +43,46 @@ properties:
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
       for the full list of i.MX8M clock IDs.
 
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
@@ -76,6 +116,10 @@ allOf:
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
@@ -124,6 +168,9 @@ examples:
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


