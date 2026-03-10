Return-Path: <devicetree+bounces-273181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMGqK71yr2lPZgIAu9opvQ
	(envelope-from <devicetree+bounces-273181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5EB2437EA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C02E33006B75
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B72D26B098;
	Tue, 10 Mar 2026 01:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AlKjsGly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D062C08AD
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105852; cv=none; b=CuHGYoX4Y3M6sp4xkxnyCgamS9s4a/aT0oNoLOuc2pLdL7qvaNANeL+utg00llTaATjPnQ8f5axDuefSHlab2vVKQg6dGiayf3Dj5+3Uad6PqIJxpDN1JV+044mrFZ7Ye2cwreLeT6AQScr69Xq9jaDNQrdXuzJGTNzqWnFI5BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105852; c=relaxed/simple;
	bh=eefoE2/jnfXAd5ZwciSBK5AkUaw4ydMJne1QeWmfh54=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lOS5JvaTm0JFzFovYVnnisfRXpv8asUMmJj9zOdXMmvYfGOCLtCBBfv9op6V8OBQIBsmq75j4m5aAvnMW+cNCVJmnKsJG4sxkNrhXGDdtsY9J8a4JckKtVBquxLc3rRdNcVbyGAWsjrLOKKg5H3yxOtx39skcoI4eH44YaTZ1tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AlKjsGly; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-5033387c80aso154042471cf.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 18:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773105850; x=1773710650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rpLyTYVFGXE2glJ5ECH5NLKz7sG78XOrtnMCJzmIFwE=;
        b=AlKjsGlyiFUfkncd1NsyOzMynHHUc/zCzs4FeyZ4djgHhzBPNZAznbZz6P9v266mKG
         AwdriKno19JfcCyR4hhuckY6kQ2L8JqfYrlxaXinbikQvnB9XrYu4YbzE6yguy3RmB2n
         e0fFwozctiOC8dDPS/OG4Wi+AXv9xc29BvC3Fwb3NrtEyyk7j8LXsDYJ1QLUzFlTXdnu
         ll95EIFZyB8b1F8ZesdnvsfmsOSZW1QBkJIUIVeVMk5Nnl43DHi3//Gd2AxZBah5Vlzh
         CNAudEWjLxfacehmr7SMmRT1Cty/oNM3AvzOmJG23m/pKYhFqqPW+y3zCabO57b7ggxc
         FgJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773105850; x=1773710650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rpLyTYVFGXE2glJ5ECH5NLKz7sG78XOrtnMCJzmIFwE=;
        b=k7Cn0dl51m7FSnmyjG81g0kKEtp6bCAszne87ekko+bHdEC8SmFINI5vmaGxmEglwZ
         MEu9qaoqXl29JQo6f3DQmcg1BnZPDtEW1NNEQ6DlPDkiLBpyMYoUga59B9+wnP4Oaavw
         A6TkXL4U2z9f7M0P0JQXFYcyuTHVRBwScP8Ded1/aQRNOyER1Y2h8NpPYobtqW5PGOk0
         QUmTfZxfXvCeyi13gV4aBD/ISjYFBh7VCsPgPFE5xYRjD7FMyuUC71twrRiZuP13NJuF
         OOFsmskxMoJa/YhJPCh4p00uSxKsyC13WdcoyzC0D3Pdf1KnA53QYYmSNLaHPDGCgj07
         1LfA==
X-Forwarded-Encrypted: i=1; AJvYcCXWMAwwd1pGfOAASVxJqaIT9WGkNWg7r1dwHXFrZOPgFh3H+G2z+MDlC4EfMllHInp8EoIuRzeIDX9t@vger.kernel.org
X-Gm-Message-State: AOJu0YwJOP4xWoW1NlpBXzzcAWsmxs6SEinTL7fJl7U73/XOAmWAYAS6
	DWGX1IFKFzsfYWypBoTDwBfzFf3rKFWNaXSX0icswbLGfvjfARn6h6Qm
X-Gm-Gg: ATEYQzzj9b4wW5qa4nksLlIzSp9IRG2f4jSy6or1l1hAq0/VxXKe2txhu1OA3GfQFwl
	E9Hr68GTvyKGgnWjrrmgVrZp7t1va2fHTsFFCFqAKuq5JgGXisQHQKgE/77ev/hvMpiDtnqCql/
	EhUILc23vBNItfN/UZOJPavotrDkPilUdgkaXfrawdsHtqr47QWFQgeK3kwe6NnyVdxoQ7Tw3He
	pmcffdUOBQJKX48sMRajQuL5f58wzjTxO1SVWUyJe9JYfTN0WBv1l98AVMAneHLF8AywK3Gcv/X
	9ha8mjpuAhYMMKIOSeK8jL18IMd++uLdsMrZeRYksZ89zmC+pP04+M/ztEIODmDVbpcaZkSMJu1
	Q2HoohWuk5GoSH+Ze0ormbMiskJ8EX0v+KcuXtyZaDa/12/w2+82U/9LPBNaJwTwt2IjuVrLwja
	ztPdtViau/ys8hMfX2+dSwWTzNqoeDvgDWZtJTZWB+hXzHTWk1jxHUpLMbK31PTFMpxnHhE6usv
	rY6rF2S90h7+bc=
X-Received: by 2002:a05:620a:191c:b0:8cd:8f66:c9e1 with SMTP id af79cd13be357-8cd93b4cefdmr209686785a.6.1773105850007;
        Mon, 09 Mar 2026 18:24:10 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd830a7f05sm391481285a.15.2026.03.09.18.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 18:24:09 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 2/5] dt-bindings: pinctrl: qcom: Add SDM670 LPASS LPI pinctrl
Date: Mon,  9 Mar 2026 21:24:43 -0400
Message-ID: <20260310012446.32226-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310012446.32226-1-mailingradian@gmail.com>
References: <20260310012446.32226-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5C5EB2437EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273181-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,62b40000:email]
X-Rspamd-Action: no action

Add the pin controller for the audio Low-Power Island (LPI) on SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../qcom,sdm670-lpass-lpi-pinctrl.yaml        | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
new file mode 100644
index 000000000000..c76ad70e6b9f
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SDM670 SoC LPASS LPI TLMM
+
+maintainers:
+  - Richard Acayan <mailingradian@gmail.com>
+
+description:
+  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
+  (LPASS) Low Power Island (LPI) of Qualcomm SDM670 SoC.
+
+properties:
+  compatible:
+    const: qcom,sdm670-lpass-lpi-pinctrl
+
+  reg:
+    items:
+      - description: LPASS LPI TLMM Control and Status registers
+
+patternProperties:
+  "-state$":
+    oneOf:
+      - $ref: "#/$defs/qcom-sdm670-lpass-state"
+      - patternProperties:
+          "-pins$":
+            $ref: "#/$defs/qcom-sdm670-lpass-state"
+        additionalProperties: false
+
+$defs:
+  qcom-sdm670-lpass-state:
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: qcom,lpass-lpi-common.yaml#/$defs/qcom-tlmm-state
+    unevaluatedProperties: false
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          pattern: "^gpio([0-9]|1[0-9]|2[0-9]|3[0-1])$"
+
+      function:
+        enum: [ gpio, comp_rx, dmic1_clk, dmic1_data, dmic2_clk, dmic2_data,
+                i2s1_clk, i2s_data, i2s_ws, lpi_cdc_rst, mclk0, pdm_rx,
+                pdm_sync, pdm_tx, slimbus_clk ]
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+
+allOf:
+  - $ref: qcom,lpass-lpi-common.yaml#
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    lpi_tlmm: pinctrl@62b40000 {
+        compatible = "qcom,sdm670-lpass-lpi-pinctrl";
+        reg = <0x62b40000 0x20000>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&lpi_tlmm 0 0 32>;
+
+        cdc_comp_default: cdc-comp-default-state {
+            pins = "gpio22", "gpio24";
+            function = "comp_rx";
+            drive-strength = <4>;
+        };
+    };
-- 
2.53.0


