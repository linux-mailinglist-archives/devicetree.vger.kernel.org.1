Return-Path: <devicetree+bounces-34573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2068F83A372
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6C621F225ED
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A06179AC;
	Wed, 24 Jan 2024 07:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RG9smOQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2E91755A
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706082346; cv=none; b=X5d1gVxhYxvyQr6EjgPsPN/4LHMePGUWTvcNaAKd/Am0l1/2pjiOmoppuDyFzD5XbKFWFt6gP7vYzJQ1HCpuClG/01Nm7cYMbtrPwtxo8QHUDRd+rGOYg3NRaOaC7tRMfVaoRglXkuYhzKbHhd+tohWze87O42MsLtBhldrDvic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706082346; c=relaxed/simple;
	bh=oMxlIYU8lOKLFt0TEL5h53mUDoaj/hO9QDpO+Y17nsg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=P2upqmq2YFtA1lFaa+zsN4LGe+kKqQiEOYWCvEvq3k6PONlYBgLHM8yYbc9fyJrOTvbL0xfE9XUBbh7J2LA/qlj8I4RV4amyXXIuhUBa9ZdaX5g57yRIyOMHfj36JpdZUGF5xwgeYQ9f/CphR/IS8E179Vlame6763vJ/kOdWlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RG9smOQd; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55cca88b6a5so133576a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706082343; x=1706687143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qG0lQDgeayG/ZAaWGjl028iUARha7B2YZJgs2y6qJ/U=;
        b=RG9smOQdM7OPnO+Gi/ba99FEng0dex79k6Z5uQqqOec/z1eMvh/QKdLkc2hG0gFXli
         JIoA+lNHrs6G8isF8m4YYvMc6IjNaUrUzwagOOQlMHIV16NjjAgz5gtkxgAGEiBcJSdW
         g+ahdJdZJzHX87AlLWt+SsPpgaFdoz3LUcQLrBbCs7RyKrywPRhuYxB+OSy9v84PiglK
         NDTNLtdyzsNyYEdT1+F1ze+0uB7arFSX5GXyKlGFz7TqksQd+G4i2monnIUzfFv0XhPL
         cs2E6t5qZN7h8ZP+A1bXaQS1r7882EKnqwkcGd43JnV68hBftK/g/6708Kf4zK1oDX2X
         AE3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706082343; x=1706687143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qG0lQDgeayG/ZAaWGjl028iUARha7B2YZJgs2y6qJ/U=;
        b=rX3mnvZj6/t1toVqRM8+sxzsEtBEmkJT3u+NbWMZkpvtep2SDc76dg1flgoOWsHOGh
         uTc7YIDAef01UCZF5Xm7If4RPKfUZ+UJxK3RSSjNLYGpe0v9Anzk4q/s9GahLZjWpU1z
         1McPluGLMAUdw7x5i4at5K0vvzx3VB8s4O4sZV61a/HSbbNpdGFAp4JFqKioxyLYMFg+
         VQ99uikVUGCK/mLFMNnpFfqLaMY3ZrwMBUWvh0h02CyPw5gcqAG0MceM7I5NXVhDlFpF
         R/EThlo1CIW9yDC0x0kdMXhTAUnTTMXyApFFEyMdjKO5zeNi3+0VM4VqmCdznaHFxkoo
         Ux0g==
X-Gm-Message-State: AOJu0YxlnZMKQSzvRluk6VaKyzouP4VlWsXYxOdYo8nW6sUgT0RovJnE
	D05bK/L0O/xem7sNnrgDp4SQTsCn3s+itaBZ+ZlAZ+w1HqYwIrqOosAgHfbk5H8=
X-Google-Smtp-Source: AGHT+IHjvR2GP5elLnS6zJWZVP9iOwh9lBECo8gB0qAFYYejK9jRMliygooQE5Cn4oU3IbvZ9gNFzw==
X-Received: by 2002:a50:8e44:0:b0:55a:7cbf:a801 with SMTP id 4-20020a508e44000000b0055a7cbfa801mr1929863edx.79.1706082342872;
        Tue, 23 Jan 2024 23:45:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id c4-20020a056402100400b0055c8a30152bsm1306951edu.83.2024.01.23.23.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:45:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Sean Anderson <sean.anderson@seco.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 5/6] ASoC: dt-bindings: qcom,wsa8840: Add reset-gpios for shared line
Date: Wed, 24 Jan 2024 08:45:26 +0100
Message-Id: <20240124074527.48869-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
References: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On newer Qualcomm platforms, like X1E80100-CRD, the WSA884x speakers
share SD_N GPIOs between two speakers, thus a coordinated assertion is
needed.  Linux supports handling shared GPIO lines through "reset-gpios"
property, thus allow specifying either powerdown or reset GPIOs (these
are the same).

Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Sean Anderson <sean.anderson@seco.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

If previous patches are fine, then this commit is independent and could
be taken via ASoC.
---
 .../devicetree/bindings/sound/qcom,wsa8840.yaml       | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
index d717017b0fdb..22798d22d981 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml
@@ -28,6 +28,10 @@ properties:
     description: Powerdown/Shutdown line to use (pin SD_N)
     maxItems: 1
 
+  reset-gpios:
+    description: Powerdown/Shutdown line to use (pin SD_N)
+    maxItems: 1
+
   '#sound-dai-cells':
     const: 0
 
@@ -37,11 +41,16 @@ properties:
 required:
   - compatible
   - reg
-  - powerdown-gpios
   - '#sound-dai-cells'
   - vdd-1p8-supply
   - vdd-io-supply
 
+oneOf:
+  - required:
+      - powerdown-gpios
+  - required:
+      - reset-gpios
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


