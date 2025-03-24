Return-Path: <devicetree+bounces-160119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79264A6D8D7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6D233A31B5
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C2525DB0E;
	Mon, 24 Mar 2025 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jv+7hI+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8C61E5B95
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742814383; cv=none; b=MVceV3nzkweapTMK9R+/7+ue1P6Y3rEgXT4To6euOQma+HwruGb7B6z0KVFnGqzNvyyWNY/O/B2z40piA0Wr+MvGDhEZatMkRWEAoi6IqfPceecTqvyquDa83nGDixS4EImDyrYUCYITFLLYFTezugt9aLnvVdOfLV5yu3rcs6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742814383; c=relaxed/simple;
	bh=4KPz2dgcK6oAYA5wLTZGtAM7Mjdv3/Gv4z1Ch84MYAo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kdlbX0Cgn9QdA67Ofry2rF1/NinibX7Oi91AZm8vb2g0ndAzBsavwNL+FqKd3jTBi3GRFSNLK4vSfXja7UlQj7Ybt8LbUX4+bYhdSfwOrUBh2F2VsL5AYweGz4gqovuqUtBSgEQxoQcsPQlgR+bJRzjHwbeT2kGc3eYMcVyBSx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jv+7hI+k; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4394036c0efso25666875e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742814380; x=1743419180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1axor6d9w4plgEYoyUgTZRxyGQQY8c9NPyfBy5rid8=;
        b=jv+7hI+kXst8p//Dkh0gMhQG1IKQ05AV+0ETrGba9BUYDXV7ixCY+RsN92pNEmPGO8
         janOir1HlFMRVgQC0TrhJa8QLJ71VMHOov+4dMJaibjWdYhRCTcOsZZ1RfLxjayXFcS6
         oG+8jrsbX4APx6CrMwh2jq0Z9ez6R+l/s8lWELjHjmhRF+HaSUpyQr2v/kDqolT8V0nE
         +Sjw5b55I4wYYwh3rWySXhtLZukseBbTy+ZF2xzX7GLym7Ct5KjvOE36uB2JasJMqqMZ
         o4M4h6+QvJthlP7ZZJWa8huXkJkO/061+DC2xHW1t2knnagCLFZuzBOrdGZkA+m1qR4U
         mw/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742814380; x=1743419180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1axor6d9w4plgEYoyUgTZRxyGQQY8c9NPyfBy5rid8=;
        b=EuGV68S1+gbNz2jrFT6nBuyE3MnpCyTpowuEPCZSSoROc4P10WfiuDZvvAcyZILMHU
         4Lg2v2Jllq3fuaCZYcxinAdVnVTAKQj7gKLX4LcHF4Ymn8rPLl3SBzkipKILkHZN2I3W
         nno7l9lqoynP+wy0bzRr37th0lgruClLGtoB7PaLrNE6SZXRnIvTzeyxoRj0G47TR0zh
         2IJdw3nLIMA1syo38waQIAaZWegwj7yUu47ZwovYAhEJCb7UECs12geB0SvTxJP/nH2w
         1mu3+V0XadEJbFdkL00MUPzN9NOtC82/E3xSTm7FcskpTOwUhhqzJhjf3kLgx0W0tnzt
         6HLw==
X-Forwarded-Encrypted: i=1; AJvYcCVZyl1oApHlaSmDDwMFr2ngaegCacd8RcF/oL+d2oA2nQYLM01LgElVWxzob0oJd4BjHyxM82sSgQ1S@vger.kernel.org
X-Gm-Message-State: AOJu0YzkcEISZ+Yj0RUJRlvvynQKYTRZZ5DeKsRKwtRRqNz5VlzpOzJu
	fKi+tujzKOIKSNEG4EEhGw2jBq3ZZ5VPyBuy2BgaXfzVYiH3U0gbamqyvR/1Vv8=
X-Gm-Gg: ASbGncu+xmf91M9l1+xHRonBpY188ru6UmKdfSppapYMQzhHaOpomUh8ttQUmSL61ez
	E2sFrGA68B6Zz/PqBbCe9NC62Aq7rs+UQZcHibWE3kl9y6V4psn/giD9vhpcAf3rQy4TswilQeP
	iBPCQOOmumj88Qa29OdU2EXBd0CApSsd4qCLfaeQR5LYxxnx/H+lpa+i2z0SVUTy9hSyUp4uJ8E
	QPXi5YITM6KLMWT33BEeBZtZuqBNuLQuj/BwFxTJw/9nuubaGQLYv6LuEvf/p4wfxryoss1RCO1
	ka5Nlyjq4tFBRho4iRzpwrQXAexWVhabfoOZW4PeDzLZ9GVfBgUcTWtTiDIa8xvR9Wsh+A==
X-Google-Smtp-Source: AGHT+IH9z4p4Z2S7Blu9BzHzsu9aZDSMDB7Td19pvYAR19+X1jWwwiCjxXg3TZVIRk2/ejMVRMLm/Q==
X-Received: by 2002:a05:600c:3b9c:b0:439:86fb:7340 with SMTP id 5b1f17b1804b1-43d50a4ca6bmr105053195e9.30.1742814379624;
        Mon, 24 Mar 2025 04:06:19 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd28a46sm117236055e9.24.2025.03.24.04.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 04:06:18 -0700 (PDT)
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
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v3 1/6] dt-bindings: mux: add optional regulator binding to gpio mux
Date: Mon, 24 Mar 2025 11:06:01 +0000
Message-Id: <20250324110606.32001-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
References: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi Mux Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable. One such platform is Lenovo
T14s.

This patch adds required bindings in gpio-mux to add such optional regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 Documentation/devicetree/bindings/mux/gpio-mux.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index b597c1f2c577..ef7e33ec85d4 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -25,6 +25,10 @@ properties:
     description:
       List of gpios used to control the multiplexer, least significant bit first.
 
+  mux-supply:
+    description:
+      Regulator to power on the multiplexer.
+
   '#mux-control-cells':
     enum: [ 0, 1 ]
 
-- 
2.39.5


