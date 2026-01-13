Return-Path: <devicetree+bounces-254442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E62D18479
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D0E95300385F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4A838B9B9;
	Tue, 13 Jan 2026 10:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/aMhIX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CA638A735
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301981; cv=none; b=gPlV8K3jhF4JKFMlY9vW4Oh7bsO2GBXWaXzcMEo3sm1Sc5o1q8WPF6zJGRcaBYdv/PwQ9ehy8ekEP54BBshzGLavaKuF3NgL7iMJ4UWN9ZIL2E6Pjf96y9v85YlhO0H9LV3e351Tkq+cFu0gC07jCKtBESuVdWJ4/7TDgxLdjrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301981; c=relaxed/simple;
	bh=zdOdJQNPdlZKaryJV0eSRMq15kBV8C8+9A0Oans/k8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TSegDMcWVX0/8eIoptTQ2LdLkk6GOEozp5V9pCPitfIclx8cOHErZSR/JJ2pCgf33//3fjx7vn1FB/KPLXYFeNmPPLlwk4RKYgNlGVlfJ1YWxJJA6iASOVkSCDRe20C7B/w95IZyN6gnTYotqoVjYIrWBUDcq4qDrkrhxPKmf4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/aMhIX8; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-430f57cd471so3673342f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768301973; x=1768906773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=74ELsg7vhoXLfA9GfHrjCg3jNxskfuERCguyJAcC0EQ=;
        b=Q/aMhIX8/3PdbO/DafUHBhhrXPLkZyDfos9Nyml2vMqUHqmWnpsPoavzNXiLLSDIfg
         NCeiLUWIMQw5TnORkFvf9Cl6+nezppebLyxJLNN4uYKc7wPbTQFqH2RNfBevvaT3vywI
         cunF5fS/AGX6ysSlRF7kFidmxjbT9vZiN865qPrgK56I6noHvMkKQlzWxPhexcbIEZgB
         9jXYe99eaI4+9dT47ohwUUfum0YlCGaljYSCH5dv8KEJTyRuIo8EwR3EyN5sA+4gRULa
         thdPGfQJ7jrEsm6+K8unCOw+hvLBxbkR/vYgdOCGC1bwZzXTuT6pfhgLIdasABYxvInU
         2L8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301973; x=1768906773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=74ELsg7vhoXLfA9GfHrjCg3jNxskfuERCguyJAcC0EQ=;
        b=sD3WFOQBW8prkq+RvCpeEgllDV6g1ZaQapfyaHctbyqPn5wqQ0qcgzr7Warzd7B/l4
         LtDQ7yzrnloL/mjvSWnSezAwZo/8XR5s2+R4hK/GhZ3ZfL0d26qLGES9ojvjb5LP0SD1
         ATCBeQ7p1wL/h5hxr0WZ92fzrUjq3AKnTjT6KvvAMofjzBQ8oKiCCQAOtc/wrEACqNDy
         JeOSc0EIe1Hfd4thRYVRVaoD3UPNH5yPWKaw4x21w09WN0MbT96mBKOSj8OPJpAW44gM
         5Ko4uDXf2uRRJWbaDPsunihhY4ErXGRBV3tAI/+j1Zy5mclyvhZ/CUv+vZ4wDMAQyr0T
         03Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWs5B6GXHbn7uu66CKvrY+HM90/Rua1eNounF1/jY6S8PyP3a7fZInJrHzJslpI1Gf2BSM1QGj1RSwD@vger.kernel.org
X-Gm-Message-State: AOJu0YzfJp9ldNv3V+EbSLxKhR2GBPMXNvdO74cXNNckN6vTTsdZpo/m
	PchAkHbdfMIID2vOE1R/VUB5hVGk03hJE1HZo6IruT2my0NBXgwBhtGCuy5VFRLnOQU=
X-Gm-Gg: AY/fxX6o2XzBGGWAocMIMYnQg7LJK/EJQyjDxoK+M2QeBN+bSdJX3hRfUKyTQLBfbyX
	qMJpbNVOy/t+tvZV7X3ElQON0IsKqD8nNQM9dFUV363ZOZllmoSUj5mzaKPADmoGc3ZUNvbG1ZN
	du/PnupnROJwXWE3Qobr6Ypdi9rgjQ9FHzj2uZRDznM2lqSszTIuWkv4HwPg66qj8CgqYsYTi/u
	F+DiAUzOQB0FD+dfA6jTS/hS+tUDXZ8MR3NGfyvldZtMfxHlMI0igwHRqiGgP+kUceDM8fBSXMU
	//6wjyGzrtQOHTpE07bwZ817+0toxLZGJZ+YIDML+xHuDCRyeU+BL6q0b+2hSAzEUC2Ka6R2ODD
	hhssEVeQtLL0kDoFNDOaiBiIPr/EmZ/Qw0H8HutxbaSrbfi9DWrzp2uISyrZfBTVtQCOk5GN3Dv
	3grXhlV/6ugyTW2YH6d3T1SSFw/IzuF4+MmKWZEynmZ8s=
X-Google-Smtp-Source: AGHT+IH2JbtL21jIgggvul12eFS//aGQrO5ZAtOVHTe2wEpJpvpWq9B0uugc4X9NenGB+bHx3VYl2w==
X-Received: by 2002:adf:f54f:0:b0:432:e00b:8669 with SMTP id ffacd0b85a97d-432e00b8adamr10557403f8f.18.1768301973374;
        Tue, 13 Jan 2026 02:59:33 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:3454:384:9eef:8e29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm43729881f8f.31.2026.01.13.02.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:59:32 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 10:59:00 +0000
Subject: [PATCH v3 3/5] dt-bindings: samsung: exynos-sysreg: add gs101 dpu
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260113-dpu-clocks-v3-3-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
In-Reply-To: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1317;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=zdOdJQNPdlZKaryJV0eSRMq15kBV8C8+9A0Oans/k8I=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZiWOP8X+oM5w43jD1skqX2op7mjV09xdPbxHj
 sBrRp1J/XOJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWYljgAKCRDO6LjWAjRy
 ujvRD/49YLewRuYcBVZ+8v+DqIvcqjsd4JOFG+gfylt/oY4oN+0q/Em+TL9AfmFLcGUEUmUiMn4
 P0JghNWmeaHU7gE5oc/9Mka3Ms3aCmP1UOpEnCJgYqt0kC1HA2VPXcIM279BSaNd7pyODhGASDG
 ipamtPTrN8R1zwxwN//IbCsFpEN8IQ6RHSrL7A7iNsASKLbal8C+kzQjTzBmL2m9NG0FaFBBpmU
 LTH6lsuZ6GQBQCkL3w9ciH1f6+EMLNHlJuQudL/wzr9JlPVhzoVs8z0hVj04TgGDEoj/nrQ6bkY
 k4PHlP2RWfBDuY731dV9OyKx6qoQyn7jmRpX8HsAaQEkbjZbQ1lU6CzLchREYdDh4Y6mtCAARxx
 1SRm0wSikmODQp7Cp++FjRVMdGOay2QxMeqRkMQ0mvqn6Z+ZMVR4OVTALnmuitA9XDN2ocd20DE
 1etByCbWGLjQiztV8wZUNaZZrAX4Sf95xu+dHJwKJL87N4uDkoxzyYISTxM2LBGvLU9UPfylgJl
 772El4IyxYtcWqwzf4GLz42DPWKRP6k8/pVmM7nmoug75TMay3KIcYqZDitgupn41IC/3Mj7yN0
 JlmlZM6CREMS60lB8Vf4UZRr2g5xiPeBPtHE/+QCJKD6jH2ioHA2VRVb+ZOWJTguIin2vU1EyB+
 WPgqVUsAISqoyKQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add dedicated compatibles for gs101 dpu sysreg controllers to the
documentation.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index 5e1e155510b3b1137d95b87a1bade36c814eec4f..9c63dbcd4d77f930b916087b8008c7f9888a56f5 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - google,gs101-apm-sysreg
+              - google,gs101-dpu-sysreg
               - google,gs101-hsi0-sysreg
               - google,gs101-hsi2-sysreg
               - google,gs101-misc-sysreg
@@ -92,6 +93,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-dpu-sysreg
               - google,gs101-hsi0-sysreg
               - google,gs101-hsi2-sysreg
               - google,gs101-misc-sysreg

-- 
2.52.0.457.g6b5491de43-goog


