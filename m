Return-Path: <devicetree+bounces-4477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB247B2B83
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9E9F628285C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1724418;
	Fri, 29 Sep 2023 05:40:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F942119
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:28 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ACE6CD6
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9adb9fa7200so63907666b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695966005; x=1696570805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xXiyKyVdmulgskvngsG0f4x+X8ooUvk8Z7/M7XiExk=;
        b=Eh0BMORPMv6+dxmW4W4x7kbsmtI5Ug63fZ4Uc3ntgapa0nXoKp/FXcTWvgVJa8x2mM
         oG4hEdVXqoLSrrarBROBQUjwV9653V94/sw3Z6hJL5WZlA/ApJD0UhEqq0aPxa9Zyl5a
         Bopyn2jocnZuBMBSF68+noJPp8FTgkLxEJF72mPpDBlPJpWLH0bLoZaYoD7+5FOSt0sf
         vBqOY2f/DYhrtC9OELIehG4hUyJLfW38X0iMhoVMO61rgkm4093XZ3aUymiUQjvs9b5r
         1uo9y2MZLD2jF1mMaP/rJoyuckHjyM2p3NUoc6dvZqds7W4/4JB+I3v0YxEyRkqCiS8t
         WK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695966005; x=1696570805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xXiyKyVdmulgskvngsG0f4x+X8ooUvk8Z7/M7XiExk=;
        b=m2Wts4t9k7LPFrDNSCRfAuNi4iiFkruyfv/cYKPPX4j02+dH8WO4brFeW3olTw7bir
         Y/PL0krNUFyR8NBCaoTvgM+9kPzX3QP4CDkukecqrT4ElEs9Fgxeab+/HWXzfElivnGF
         nNoZ+ZXyw0xIXAsJ3TMZntw/FLuqSUJuMhhPH/4QjYUaQWOkAWGBI7yhjSu6l4HsEPZz
         TAFEsIa9MrEf4OirmPfDnTpvE9Z6/7j/9yLt2m0e9zAT44Fp8gt+VC5ZCNZd8bKBu5hr
         yOkznQ+zpPThmEZCqc0NUYu2YByhkFWNSgUUD7EZzLc4nZsCODYqcYlW5HK9KdKEwRH9
         tjuQ==
X-Gm-Message-State: AOJu0YyaHfjeDY91hPhCNB7T5OBJwkyClje3dryt4rgvsME9rkZxtn9M
	VAHeIGVgTbaWnO0VHhMSTioknA==
X-Google-Smtp-Source: AGHT+IHv5+jFxKBL09urolkWpi8BIIK1xJDAniaPk6CdWJwEYb4I49/rTk0G06L8rsb9HDHO7NWXPA==
X-Received: by 2002:a17:906:9e:b0:9a5:d710:dea5 with SMTP id 30-20020a170906009e00b009a5d710dea5mr2713502ejc.17.1695966005473;
        Thu, 28 Sep 2023 22:40:05 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:40:05 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 23/28] dt-bindings: arm: renesas: document RZ/G3S SMARC SoM
Date: Fri, 29 Sep 2023 08:39:10 +0300
Message-Id: <20230929053915.1530607-24-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document Renesas RZ/G3S SMARC SoM board which is based on RZ/G3S
(R9A08G045S33) SoC.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this patch is new in v2 and added as suggested by Geert

 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 822faf081e84..31d0539bb168 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -480,6 +480,12 @@ properties:
               - renesas,r9a08g045s33 # PCIe support
           - const: renesas,r9a08g045
 
+      - description: RZ/G3S SMARC Module (SoM)
+        items:
+          - const: renesas,rzg3s-smarcm # RZ/G3S SMARC Module (SoM)
+          - const: renesas,r9a08g045s33 # PCIe support
+          - const: renesas,r9a08g045
+
 additionalProperties: true
 
 ...
-- 
2.39.2


