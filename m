Return-Path: <devicetree+bounces-5112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 412647B5466
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 77533B20A19
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E7919BAD;
	Mon,  2 Oct 2023 14:00:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEB019BA6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:00:19 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF1BB7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:00:16 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5363227cc80so6845217a12.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 07:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696255215; x=1696860015; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OHDvd7zBG9q3cQ18ekHgB5reLeuG+/B7KcSObggrkM4=;
        b=nufDdYmBcWVroR8Q1DIf+YtKnVhhivgaFyIXPqBmmbLkoDP8CGq5roitSrUYuM0OUQ
         XAGuCTmhjRPNE/1h4csUuMi6TRfgNxoGH/55wMFEezucepiDKNE00Kc89X4uX+qt4cnG
         hTlXZBAAfOIiJdkweZTKvoQlX8i7EqJibI9IzvnHjxyWZm0047SDBGtE5hp/iQhFPBxL
         MnPYJRvfdu+MQMLiZRrb3/IGxT0gEv9hDBuDjDBQLdCu+Qm04cMNbiE+1qV/iOs+30HQ
         LoqLNqDaGcgYfSSlEK4kTW5svnhBemJBpU7tDWKBwB4sEt2bpNH0QRxrdpQ8lHqqPuMT
         rqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255215; x=1696860015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OHDvd7zBG9q3cQ18ekHgB5reLeuG+/B7KcSObggrkM4=;
        b=Djxg96L0/Ywf40slL4RjdwEQbCcwoCgNN5kMk+S8o+YoJ9rkScf9RCRt4jyMzerN14
         f6esd3rWIiTDhyOU81+Jr5wE2+MwBZQoKgFuInJgQIfltt2gO3RIpYl70xFSBQFn7jlu
         T8sNOXCPsCBsdEN7wcbvaOClioMcblaEaKniVOzLIBYxtvbt86JbxnxQ7Mmb99vb6enM
         mYSdtcB69SLYk/ifGvb2GyQeTtPBuTTKLqjgSWqgo1f00eYbG7nKJmpWc71/E+bPOqhI
         fMWhqK9iAFizKhDuA0cryKsdyvvE85Fow7GjkJbt+onb+a9eRe6J1kruuXraWkoVU15I
         a42g==
X-Gm-Message-State: AOJu0YwwDfYovrSiRx9+S4J998fJJZEm83EqISRfTkEGYGbZu+Vz7783
	kNFk5TBVbUXa7zHLWAgwJFuZkg==
X-Google-Smtp-Source: AGHT+IEqousXbP5TTb7EJHs1BpXBUU8/Elaw2Sux5vGT5VflP/hLFD6ub63JjLQUdQbLqXFQKsz1/Q==
X-Received: by 2002:a05:6402:160b:b0:531:3e89:1bef with SMTP id f11-20020a056402160b00b005313e891befmr10451516edv.32.1696255215247;
        Mon, 02 Oct 2023 07:00:15 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q13-20020a056402518d00b005346925a474sm9350377edd.43.2023.10.02.07.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:00:14 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 16:00:11 +0200
Subject: [PATCH v2 1/2] ASoC: dt-bindings: awinic,aw88395: Remove
 reset-gpios from AW88261
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-aw88261-reset-v2-1-837cb1e7b95c@fairphone.com>
References: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
In-Reply-To: <20231002-aw88261-reset-v2-0-837cb1e7b95c@fairphone.com>
To: Weidong Wang <wangweidong.a@awinic.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The AW88261 chip doesn't have a reset GPIO, so disallow providing
reset-gpios.

At the same time also don't keep reset-gpios required for AW88395. This
is both because the Linux driver has it optional, and it also simplifies
the bindings by not introducing another conditional.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/sound/awinic,aw88395.yaml        | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
index b977d3de87cb..5d5ebc72b721 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
@@ -14,9 +14,6 @@ description:
   digital Smart K audio amplifier with an integrated 10.25V
   smart boost convert.
 
-allOf:
-  - $ref: dai-common.yaml#
-
 properties:
   compatible:
     enum:
@@ -49,9 +46,20 @@ required:
   - compatible
   - reg
   - '#sound-dai-cells'
-  - reset-gpios
   - awinic,audio-channel
 
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - awinic,aw88261
+    then:
+      properties:
+        reset-gpios: false
+
 unevaluatedProperties: false
 
 examples:

-- 
2.42.0


