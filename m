Return-Path: <devicetree+bounces-8700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D29F77C9BC1
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CE8C1C208F5
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2586212B9D;
	Sun, 15 Oct 2023 21:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kPT+E0uf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F762125C1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:12:03 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47EA9DA
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:01 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4066692ad35so39843985e9.1
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697404319; x=1698009119; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UwtY6tuavqhephvZ/IgYYe/hWSZGS4BBH2edbm4GSnk=;
        b=kPT+E0uf4j2eX3RVpZZjo6cLMrT/BDyl/CZeqSqH1BuDCncNX6vscUEZ5jtEMIqSwX
         HEfAUzKOn/uGbbPFYJ6KDxDbIgdOwVBQ6MAktIe7hYF+c5fW9+KSO1AaZ9c6mFAsiIJ0
         vUHEtZ0G0on1mhJ+aF5JomF+F/2K0HJ4jx7jmygrMTxt3EPvoTo4Gxzt71B6DxmadroH
         qmVHboP2jAdpDAOmQhtlY/mzRIdy6wHJVWfQS06mvD6T3/osPOsHDYkUgA4Xt1NePzo7
         KAnGeoPuEbl8VzHaLTu3GwRfowXf2oL9oDF1WozicwL8YEZjwcUqzjk2Rr99xwcoV0M3
         bozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697404319; x=1698009119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwtY6tuavqhephvZ/IgYYe/hWSZGS4BBH2edbm4GSnk=;
        b=T0FFEZPkQUD1otA+/ytphhmv9cWxRE5TCl6+JEwafUVZAVmInDHReTscWukNvVIK4/
         XS4UisNgK86sxHTWJ8qVpqOBHsQgfUBxFfBSHgcYtESppsx6BI9pt+zvDbqOb2UDE0EG
         uPNIqgoWG/A7ogrbbENcC2l7O/OYCO/DsBFZFg3UiK2wqNHjZWPqgCA79Q+Nqk07X+rV
         fNIJ1pq6ghutnd6BCY3yMpJ6lIrMDMS4T7uXbQPJRSIeLI/U3ziI0qHKcHxoE8b/K+7z
         tfquaiA2p7taGZZmHREZ+d8oC1KURZPZ/ofuU6bBwHv/JUeCJmVA4DxHI3Qgnk21e4EJ
         7etQ==
X-Gm-Message-State: AOJu0YzPO+szlX7RLzpMyqGMgqxwOQ/ISKg6TRoSfduuY8p6QwSONk0f
	JFeb8aGliWryaSoLw0cPp2iRzQ==
X-Google-Smtp-Source: AGHT+IHh3iTommnVZ/SRv1MxHgl7Wi01StwsKU+8qBOPmKCjkBX7ffpF9JSflchte2W1ztXignszaA==
X-Received: by 2002:adf:a34b:0:b0:32d:857c:d546 with SMTP id d11-20020adfa34b000000b0032d857cd546mr10994414wrb.64.1697404319736;
        Sun, 15 Oct 2023 14:11:59 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d4d11000000b0032d9548240fsm8456734wrt.82.2023.10.15.14.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 14:11:59 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 15 Oct 2023 22:11:49 +0100
Subject: [PATCH v2 1/7] dt-bindings: input: syna,rmi4: document
 syna,pdt-fallback-desc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v2-1-b227ac498d88@linaro.org>
References: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1874;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=3p+nvUWlXAHPVkfrEPpEuMHDYaLsSCwDXEwLrUrxwrY=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSd0Lk/7wo/CTx0ouNRc/XMnnL1KRFJtp/qvZaw1d0xt
 /yhsP9LRykLgyAHg6yYIov4iWWWTWsv22tsX3ABZg4rE8gQBi5OAZjIpnSG/zH9PPP2lX2o+dv7
 hV3/5eO/sYfqNuyctk1KMTa0b6aiwjyGv4Ka9UlPpnuZ3PXvdPhx+3GNndND/ZsBZ4zW/nfi0g9
 /VwcA
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This new property allows devices to specify some register values which
are missing on units with third party replacement displays. These
displays use unofficial touch ICs which only implement a subset of the
RMI4 specification.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/input/syna,rmi4.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
index 4d4e1a8e36be..1f4a2179e4d3 100644
--- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
+++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
@@ -49,6 +49,21 @@ properties:
     description:
       Delay to wait after powering on the device.
 
+  syna,pdt-fallback-desc:
+    $ref: /schemas/types.yaml#/definitions/uint8-matrix
+    description:
+      An array of pairs of function number and version. These are used
+      on some devices with replacement displays that use unofficial touch
+      controllers. These controllers do report the properties of their Page
+      Descriptor Table (PDT) entries, but leave the function_number and
+      function_version registers blank. These values should match exactly
+      the 5th and 4th bytes of each PDT entry from the original display's
+      touch controller.
+    items:
+      items:
+        - description: The 5th byte of the PDT entry
+        - description: The 4th byte of the PDT entry
+
   vdd-supply: true
   vio-supply: true
 

-- 
2.42.0


