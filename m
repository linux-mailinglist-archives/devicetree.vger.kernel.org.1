Return-Path: <devicetree+bounces-159330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 721D0A6A58A
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 12:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E17C97AD327
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A55221F20;
	Thu, 20 Mar 2025 11:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ifyhp1oR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C937E1E5B8B
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 11:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471808; cv=none; b=HZUYvRMKbNfBjbMaT4BSfeip5A/8T94Byaso0G7JfQBPhqYuOyHDBM5iyk9PN8aGb1h7mOMYyS1Au7O3T4WAjhgPCYHfUVRKvJucovAxceScqXnxnJOEiDu8z81k6zQFUKzmcjN8wFHtRaz3ZoetJxUJBFX2N84e08ckdWEtRB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471808; c=relaxed/simple;
	bh=4AJV0s7mSzqRnod0IJbbhHfzS3X7gQWivXwTjoNldIA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=InQhCKZ4vYmZhMbShXxsJwlfOHAe3T8BJ0XqGmLnzuanLdTcl3MyD67O84MmOfzACqQF7ocHf4MvjH4yJv+am3FsiZHntOGS0DuNrmxzXDFQOwkNxj41KpEsCBIngmG6u+q3a+BXnnK5fhRMMpsqVzNotzVQYEV6bSbbhTwcKKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ifyhp1oR; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3912e96c8e8so386546f8f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 04:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742471804; x=1743076604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nBCmNhzniHSIN+wQEnk2+nLTiD4hT6KTCngq0hI3lqc=;
        b=Ifyhp1oRnnC4sN62R/WptYeQvZGEUBpVOp9IwgCL0J8Vbdffj5mff+BZtCOQ+lZzcx
         Ve40B7EKCfFRP5gtqLTHBYTOHjs8B2LGIUNgHgoLX3koqGe77jL6oZw1obd3U2cwKslz
         PIzq+RqYnlATD9rqzv8+n0jzuY9RLPe25dVoViMDxWhln+xMBtMxOO7GlJtxcK5FZMGS
         nt3iy+W7AWV2lAjt7EeoEAj4TqdaLx8TMuA3FUSA9MH10NDOblmLp7BnOcMjLXLUBJMF
         hmSjEcQdNG7BNO06qQfDGndDp2MDHNqoo7G3sns2l2JAYNko4km5Q+9+NJKbaW84GO/p
         hqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742471804; x=1743076604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nBCmNhzniHSIN+wQEnk2+nLTiD4hT6KTCngq0hI3lqc=;
        b=pNxIu0zEivgPxylydXQKxIGkSsQWgGSRa4uq040RliYkyix6DZ6wRQ8x+2M613tZjr
         uxaBexJXBTmhm2PlsIfXX9XnOvkiur2rHRZ6Ez7s2J/LvZAgxgVz4Df+YL3aJ+rhmBYI
         anyIzz24BEaBO6ykCZxBoWXYJbA/QHGpBbcSLS74BkqMRzolscK2vCvML6AhhdnwWRlw
         FFuc8/Z1ZvwZ1i9/iUrZ4KvyezrWO46zyAqvhLz9hngN4tC7xV1+9H3frqzD46JdPYmD
         2i0FnGIhjxkmoztbtjfWkm3TQ7XEdJbuAmskm7U/NDVoTEq4/Eh9QmPITf5oTa97xZmp
         F5Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWfV9cn2eHoYtgbSG6hOBv4WeHNccCknM7CBy85bM3uAu7snvaB7moAMrT/repDxBUFp5qEId4H788B@vger.kernel.org
X-Gm-Message-State: AOJu0Yz011vPUC3LCEbeulnnh9fw9PoCrhBUhKDkVDNwU7bJeTiIul4e
	JOYxisQko0NPpqdFSjE7zXZFjvRzde1kklYDd0bdAP1uKU3mUrGpLtzeV5LTHTg=
X-Gm-Gg: ASbGncuEfQhTy52Mlvb/YQh7ZsPVPK6nvCnWYx7eMA/wEjPICqBftZtbVJaqBGa2tCb
	X+rC1yhpNfXYzHFoAWRf+p5hihyeRIJo87eoftiPhuQwCcsEVbzcstzRQZScW6QgJ/M3a7bgdTu
	NaIQ1YfiRMdtTLT7yy3jSJkkbcL1kQ9BYntWsnaE+mC1Tiqh68gQhqCQHdTA4+QvMzDaSMxjQWK
	+bJ53mYqEnbfkJ343LT565ku2WzbGeBN50huDXLloA8x2fwHovDJp8Rd3NeXfnjNC4xy6ynI+0L
	4gplli92XHywQG28IFlu0j+ONQaoz45OWlf/2KLtuXyFqhhhQvvMyoxGI50Wdlhi0CdctA==
X-Google-Smtp-Source: AGHT+IEr/g/3zNNGsPb3MI+p5RQqCRdJkhbtB0m0pNpWH0rWHF6Zo3XyME4aG36BJnRg/WaBJjs9sw==
X-Received: by 2002:a5d:5f8c:0:b0:390:e7c1:59d3 with SMTP id ffacd0b85a97d-399739b63abmr4972255f8f.2.1742471804493;
        Thu, 20 Mar 2025 04:56:44 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c888117csm23257857f8f.44.2025.03.20.04.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 04:56:43 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 3/5] ASoC: dt-bindings: wcd93xx: add bindings for audio mux controlling hp
Date: Thu, 20 Mar 2025 11:56:31 +0000
Message-Id: <20250320115633.4248-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
References: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi mux is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable.

Move to using mux-controls so that both the gpio and regulators can be
driven correctly, rather than adding regulator handing in the codec.

This patch adds required bindings to add such mux controls.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
index 10531350c336..e7aa00a9c59a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
@@ -23,8 +23,13 @@ properties:
       - qcom,wcd9380-codec
       - qcom,wcd9385-codec
 
+  mux-controls:
+    description: A reference to the audio mux switch for
+      switching CTIA/OMTP Headset types
+
   us-euro-gpios:
-    description: GPIO spec for swapping gnd and mic segments
+    description: GPIO spec for swapping gnd and mic segments.
+      This property is considered obsolete, recommended to use mux-controls.
     maxItems: 1
 
 required:
-- 
2.39.5


