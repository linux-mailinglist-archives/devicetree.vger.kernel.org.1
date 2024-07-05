Return-Path: <devicetree+bounces-83536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2DD928E1F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 22:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D83B02853F4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 20:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1096E176AAB;
	Fri,  5 Jul 2024 20:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="iPvbFzUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBAA16DC06
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 20:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211231; cv=none; b=sRcVAA3NT7pIxPVVeXYBuh8OCGS8szlIYV7E0FvO+x+MkzFOFiF1X9rYGNpT6W9w5Xi5L42M0MSYfXtrf8k2egFmFImciwa55pf22WO3pCfbdAWFngXJaWtCIXyw8ad+x+L+otts14sgcqrPJHJVSOb0/zTGnY8OzBgAgrSGNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211231; c=relaxed/simple;
	bh=lnpdHivpa0ZtGALVGMDdo0DO3IUBtoV7QZSuwbPAAcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sbMeJx054tGfp23HggZz598Z21pgXNh/eA7n00H48eWLUQHu7ulc4CJ/ZUpTigSTkszIol6eMMzB/UgfM8wzsCdry/TV/p1pI57l77qE0ttHrbL86zG5B3YOO2tdk2JQFdnb7b8KRpI/iolnulzzGQz+RE7yotav1LxHomWO/9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=iPvbFzUq; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-36798779d75so1646604f8f.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 13:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720211229; x=1720816029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ECapj6dpkD5GtOAKeD+vFFeZbzC5454tZ0kmlaK792w=;
        b=iPvbFzUqPFgIY6pI9vVzKNRsqcTkbyFqCPiEf3wXDEtOPi3iayG3jQgD7SP75uW61m
         iBUbsCIVKz5jb2O8JCpkNRe/TKlLhIGMLjkO3mJu5s/n2UBvNkAWB04V02omEicri1Ya
         XSR2+auZYAmoAWSZwR4MHpmxH4SMHkfMIkGFjNAneUpk4LjuJ29a1MFTSQ3RdctUM5rx
         77UiADP7Oa/X04HSiTlxuig91MjFEkKzrYRb0x/okQxRMo1QAJ+h3t6rHDi7kfFfNdgg
         NFzuSl0DYGrVlCpMK5jqTSVL6TQXZpWzGKSwUl46vqn46b6Ryj/TiwObmZXL8sFS5Ykm
         K+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720211229; x=1720816029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ECapj6dpkD5GtOAKeD+vFFeZbzC5454tZ0kmlaK792w=;
        b=X3w1LKJ7WPuXSjBis63Sc+XkzkdL/rCQPT3JkShZOsJnk9r6pAnmVQWGxclOpZq0cv
         btS2jmVOpAMtc1ZtRtyTdbF5JtJ7RKsfbWf/0aseZM2sJhTmtjN5adJszVVMRRkSm8vm
         ZUHhBLtDnslpkmciaJDXS5acTAFE85ENWuQokd+OKAKsryDJ2uA/rAyQSCYzFE3Envp7
         m4K4pcJZZuNMVClGMnJP5arcPz6ac0wb6IhcosGJHYrvC4/vobFud7IAOIV2GT8bJqGJ
         MtG34xtdz0rIO9TF6Y/jY6h/5rHRSC2s386SgoOZjWYuA6ppEJbatVCauyZsq7I5Gph0
         /5qg==
X-Forwarded-Encrypted: i=1; AJvYcCWR+AHOZQ6mUjTHvSTZSRD+Unc8XLWcwIKtKJRARj1RCRQl1UopeqDS81+va6KEQ5rCuvJHhDUK99nQkRcBqoUJoO7nBEkDvnII1Q==
X-Gm-Message-State: AOJu0YxZZdQJzXEZOkMExRjlkeeL3bS1wlvfsl7Nu11mL1BE8uEv+EKj
	8ZIVIjNvmPLKOJo/4Ho1EH8hWfHiOPzDPfLGF/5CnoIhuclqhAffB3WY4tjx1W0=
X-Google-Smtp-Source: AGHT+IFJ3z0LfuSofPTxLtIs/z2uSbJf7YDA+LoJh9YBeLMf7b7CW5PSUvb5I70Ar3/fSCgWLJQAow==
X-Received: by 2002:adf:f744:0:b0:367:94b8:1dfd with SMTP id ffacd0b85a97d-3679dd65886mr4729145f8f.46.1720211228580;
        Fri, 05 Jul 2024 13:27:08 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c688:2842:8675:211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d5116sm74397625e9.10.2024.07.05.13.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 13:27:08 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 05 Jul 2024 22:26:35 +0200
Subject: [PATCH 1/6] dt-bindings: bluetooth: qualcomm: describe the inputs
 from PMU for wcn7850
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-hci_qca_refactor-v1-1-e2442121c13e@linaro.org>
References: <20240705-hci_qca_refactor-v1-0-e2442121c13e@linaro.org>
In-Reply-To: <20240705-hci_qca_refactor-v1-0-e2442121c13e@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1853;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=MP5aeVc3EiqpKpqEdBQnkaD+MInTgWkpRAZc9/j+Em8=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmiFcYPicO2avBQqbsKBvcUzBp3IboimO9QKK4n
 PfdrPaQ1KaJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZohXGAAKCRARpy6gFHHX
 cgMXEACBb+mwnPffAiFMf1EDNWktjlMyh/let7+4PFla3S+RPhIzl/mRAgIwn+AoD8W5XcJ99R+
 IRsasX68VpmJN0/6b+o9rQzeIdWkz0UtGUOya5uz5vECxHGfexnGUtTeAqmG7F0FvGollePDeX4
 sOwWF/165hzVfupIwHY8ZP2kmQyxl4gtQ6o7Uz/3zRSL7KeOqsXuVKQ/r1dZ+LYr5/l+QC1Ezvq
 pa4A9QnweO6w6ryFRuG0bcQpCIrEL4So2qm8QdjJAh05aVuKI0bU7/uTI9s/csIw01wVhN8mFYb
 dVIwC4FJieuSO8UBvszYTXniVPPyKl7zebul4agHDWM200jQyCngqtbj/05YrrJ2RhMT8cCnGKZ
 TLxGsnwYhOXP6ZAstmHplcAYqJB3js9piRPqTO5izudP5Mk5+EIwgC5mti7GEfzRV1nPGPAgp8T
 5sn2CPTftAhJq1l2xQ35hX37yetxvvPP/cVJsk7p+9snmH1frXkXh6VxFkMme4Myw1MGSbsBski
 6qasn4zhnRX8M4u1Ul+CTFeZP9A5ExFw0hE1LnKX/nJr65GtEi6ygh+ZPfweMHO7+rxr1Q64FF4
 EoJCY6uCnUVGJO0qzlauLPpGC9FMKv6uEzw+XvYhZbwD2fkIlq/Z0iScehBja6WNhPdnkflil37
 qOXMzVciG2sqIag==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Drop the inputs from the host and instead expect the Bluetooth node to
consume the outputs of the internal PMU. This model is closer to reality
than how we represent it now.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml     | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 48ac9f10ef05..68c5ed111417 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -77,6 +77,9 @@ properties:
   vddrfa1p7-supply:
     description: VDD_RFA_1P7 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddrfa1p2-supply:
     description: VDD_RFA_1P2 supply regulator handle
 
@@ -89,6 +92,12 @@ properties:
   vddasd-supply:
     description: VDD_ASD supply regulator handle
 
+  vddwlcx-supply:
+    description: VDD_WLCX supply regulator handle
+
+  vddwlmx-supply:
+    description: VDD_WLMX supply regulator handle
+
   max-speed:
     description: see Documentation/devicetree/bindings/serial/serial.yaml
 
@@ -179,14 +188,13 @@ allOf:
               - qcom,wcn7850-bt
     then:
       required:
-        - enable-gpios
-        - swctrl-gpios
-        - vddio-supply
+        - vddrfacmn-supply
         - vddaon-supply
-        - vdddig-supply
+        - vddwlcx-supply
+        - vddwlmx-supply
         - vddrfa0p8-supply
         - vddrfa1p2-supply
-        - vddrfa1p9-supply
+        - vddrfa1p8-supply
   - if:
       properties:
         compatible:

-- 
2.43.0


