Return-Path: <devicetree+bounces-36243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC504840445
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CA011F22B75
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C79460BB6;
	Mon, 29 Jan 2024 11:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="onsBLnSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71E60B8E
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706529155; cv=none; b=N/gGxjDUXSm/80cu8rkw5WT8Jj92frQ9TXjHLP7z43z2cDyN4HiD7UQwUSGnW69zMpG/n0WnNHiDp37vRA0VNfxMFUvMNyKs1RrrBxuOl8ltGlgJY9nRnXbELqRLVi12PJ/hVTkhE+Q3TQ4iooPuVO5yGOxDy5i6lnfUYfjbHXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706529155; c=relaxed/simple;
	bh=oMxlIYU8lOKLFt0TEL5h53mUDoaj/hO9QDpO+Y17nsg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DTOW48jtTWdFyQk4dN1V3WBg8pwfpBT5+WAS93L8scoYwW3OAdQn2AfAtUf/7M6ji84dxsOuVXm97V2ke18dMMsj8j/iqfyJs5vcNPlH3k8dO2A1F091Zgd6g0UMUiqnrGPbeaLKA5+y85iJ0iMzxAL94GrSdW57JJZRJT3Xq9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=onsBLnSO; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so2379687a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 03:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706529152; x=1707133952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qG0lQDgeayG/ZAaWGjl028iUARha7B2YZJgs2y6qJ/U=;
        b=onsBLnSOlbDh+dU0MK93ZLMDFHtfF+N6xtyDHOtKTDkSOl5a3Oh2oy/7VL8iVjtXIf
         ytk+1oJdeQbQkVEM9mXmvsGKWe75Ly9Hflc/VhV7S/5n+XzZF6z5zxlEvEaIXJmTl/vO
         MY9I/0BkxOp8TKOBQDOMkJ5cU5FGM9UvqzUQXoAN0SIIa1ppv/XDxWTnaO7XaOFIHu9y
         PxqQLpr1vsAhzW89erW+hjk3usObWQypvaqdQQ1I+w7JuK+pE+a8EtDpOqWgtjm+Amko
         /lVQfKI/kepryyi7VCZgawaWUfQME5AY8+L3ik6Qwtr+P+jQXfrAoPcET8yZZTLbPPpK
         Eziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706529152; x=1707133952;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qG0lQDgeayG/ZAaWGjl028iUARha7B2YZJgs2y6qJ/U=;
        b=KlRd3WUE8NmfWIPxbHyk8t6S6ij5tbTRGB8oadIMsL817gGhTmsvprVzIELNLy/6GN
         hkMoAfHrdngzJVkSZwGJLiluAcFXREWNFY67muMlNOPFMzS3xrj2CgMA0o2nqRJcBTDP
         PgYqtwyL2Ezkx9y2ir5GjpVO1rnGLCMEUUKqGI9M7BnUaxF+OO4mhf90KOQwmS1kKvMd
         3wCrnvUqDXwcAIEwgszB0gXzV6+5P/GuvEmhpDt4CkCPu0rT+OeXDl4n7BDWk46itT2c
         8ogZ7Z7945B9wh797S7LjsP0u6ahRecusSHqoNIZqsvK8a1ZIm2QM6K0xeYBGjXgO14j
         IXag==
X-Gm-Message-State: AOJu0YyL7n2wJWVamDwH5OG9PPoeWCk47tAzbnkypCgVvjWknLFYj6wr
	yhNbXn1ATyQvUwwxPjsUQ6GtPbRF1BTkTZz31Q7m9UPjgEgkHiWPBD/urwQLsjo=
X-Google-Smtp-Source: AGHT+IFDB1cwKRTLnQ9gFJhaKmMAvmpkWXV6hf7V+Jjgh/DxIPtnqqWmUvLckWsARwnj54wstPEtRA==
X-Received: by 2002:a05:6402:2709:b0:55d:3787:fa06 with SMTP id y9-20020a056402270900b0055d3787fa06mr4268042edd.26.1706529152297;
        Mon, 29 Jan 2024 03:52:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ec19-20020a0564020d5300b0055f29ececeasm19907edb.57.2024.01.29.03.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 03:52:31 -0800 (PST)
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
Subject: [PATCH v6 5/6] ASoC: dt-bindings: qcom,wsa8840: Add reset-gpios for shared line
Date: Mon, 29 Jan 2024 12:52:15 +0100
Message-Id: <20240129115216.96479-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240129115216.96479-1-krzysztof.kozlowski@linaro.org>
References: <20240129115216.96479-1-krzysztof.kozlowski@linaro.org>
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


