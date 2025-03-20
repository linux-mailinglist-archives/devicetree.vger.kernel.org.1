Return-Path: <devicetree+bounces-159328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D547A6A5A6
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4E3E19C28F9
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE002206B9;
	Thu, 20 Mar 2025 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJwQIkHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16F921CFE0
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 11:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471805; cv=none; b=NGvvrrUpVfTxHnnGdrCfBuXxauAahs2ayOk/J2FFYFT+FskiztmiTEp98vT5xUGX+4BlFZMSdo79LT7kL+CfrRruomvmYmovgtdgfC7KdavW+x1Kv/ez7Cgw5ON4stWgwTs7NAhXxzCMNMk+7ZapB0yOtqa0hDOkdQybTiTP+Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471805; c=relaxed/simple;
	bh=Aon4CSRLZAp00bOLv5cqnz1HdCAHQzSH1gGdjQ1+p2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YopogWRj7i5sBfCCMuUp3Y4zYqz3uuogvMqQ9rBHK3IOKgpVPLBfzbVKVKUEfR0AXrA0ePFtojP/JdX+QrSmluvi1ym6wkAW0nwPb79i2GxMbcBBg1SRJbkCwett+bi8yCvw6eY2WwTh+YUdtCGEibkLyx3urM+W+EJLwlikYR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJwQIkHg; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so7323855e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 04:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742471802; x=1743076602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTBcwD7zMY77Gd6SVP9wN85Z8q1nB61DYTk+PAfaKwU=;
        b=SJwQIkHgEM7R1WTrjxpobSyb1vdk6Rz0QmdMccVtxj/JyReA8AwE217gHf/RAxD0kf
         yeqNsFxw/EvLoQ8/QZdgJozzsPBFfQcs11YRe/bfbPnPhJVG/cjxX8iM3CRgkJDsDJro
         7GVfCMkvz/OwuH6r7LCyr7Hc6+3SbAbUIy3jvL/LgeTZzO3ANr9SOWQ75GXsdKzSUxi0
         kuxM4uzz4iZW+nWICN+EsyLdexxtOIqTFZttRfrR3p9lSNapHqk/EAiIXEZ8+M8EJFUv
         JfrQAV+ntcUyLWVW5c6m2avoCH46AeC1eE/RW6f0CB/ncTOJ+NPhinuobkizybiYVFo4
         iXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742471802; x=1743076602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eTBcwD7zMY77Gd6SVP9wN85Z8q1nB61DYTk+PAfaKwU=;
        b=Bf3PYnFMd1KzPHc2djoGhkjpKF+XTyDDKDBVZmA+JwnBCu2swANynXhM5p5edbFcUR
         dgxre34b1ribPDcOkHod0nSuqRrNr/XsyKQ4NHU1VmDexqZegEoVqCcrnuM+ts0N6BzN
         nqQ/+TciadQYe2fe9RH5skZyk+8+Kj7chu46w/iGdzWyMbrOTq5f6GYk2cQNYvCMkiho
         bqTzNx8l1U/wHccWu2qtOqRGPr6W9VR/c59DqX9O32xytePdQ++XJrUoELod6LNbunYI
         aQkydC1G2zcbDf4NOG0OQuhJfoJEGva80hpWtjLruBFee2G58JhDzNSL49MnfQ/0/ntn
         Esyw==
X-Forwarded-Encrypted: i=1; AJvYcCWm2ibpevDEGEqEDoPeh/ZtZh0lL00vAUeq4OtepWYeLAItw/0O/vqWeS1xWU/L/IXtrZ7HppqwTWfs@vger.kernel.org
X-Gm-Message-State: AOJu0YzkCqaudpOtaSW7j7hiwE3A4SlPZI0ybMoiEYUbIy04DAsmp5Da
	/nuw1WOdbMNC7zK9nOQ+Y0s6REUbECLdMWrOzhNWrfgqFH1srUP67iKn0NO9W5w=
X-Gm-Gg: ASbGncstK6HRBhyzH0A9XkHmQ08IuHxiynP8prEZYyppB425wQ0A551TXhWKyzkpPMe
	R1D+8guDAOOrFRXX8GJOLMmdj0fqXP83SjxuS/KTCrY+4/fLoM0lUfUNKvOh6nJLqzXj49bWts7
	QV3m84JvEivVuEgaWVAuv421Ws9uNIwwVxo9gjnS/Lubx5olVkrcy3ZdLUZHGwRvqbbDJHqjZAY
	07elxn+GMeFl0fKLqweFum+hKwdz3nAXfC2LjhIln7m39JqvKbmkWRJ89WyIZ4ThU2apM4l29kS
	aiTKa3VZ5YK49aCpZ1iJnAuJhq3FQs3C56KgYEaKqz+D3rW8DLgCJsgE8QiP2iw7MpNNMw==
X-Google-Smtp-Source: AGHT+IELSu1Fy0iTPGOQqguY/3CHrp5HN+wulAbklczgtP+/n5Gl76d1bxZyG2Z7RhRwAdDyddobKg==
X-Received: by 2002:a05:600c:1546:b0:43c:fb5b:84d8 with SMTP id 5b1f17b1804b1-43d49549405mr24419195e9.16.1742471801801;
        Thu, 20 Mar 2025 04:56:41 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c888117csm23257857f8f.44.2025.03.20.04.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 04:56:40 -0700 (PDT)
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
Subject: [PATCH v2 1/5] dt-bindings: mux: add optional regulator binding to gpio mux
Date: Thu, 20 Mar 2025 11:56:29 +0000
Message-Id: <20250320115633.4248-2-srinivas.kandagatla@linaro.org>
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
CTIA and OMTP headset an additional HiFi Mux Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable. One such platform is Lenovo
T14s.

This patch adds required bindings in gpio-mux to add such optional regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
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


