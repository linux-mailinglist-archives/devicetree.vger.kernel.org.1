Return-Path: <devicetree+bounces-158895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBECDA687BD
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21B6C188C191
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A4A25335F;
	Wed, 19 Mar 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AaW7Ojnh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E4C25291C
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 09:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375874; cv=none; b=BRFr54keinZr6G7S6SczmoLg1wsVGBN440r/TSVcTi5OIQYur0ybuJ460zhOAw1NUr05d68Qf/2r40EhY9KyDkC437aPoiLf4KPx4ev3ocUxkpEGcaau+NSJTcmQTE/RAJvM6MU3vOoXqKHyQPIX/H8mToasKTqmbXo6yasVwC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375874; c=relaxed/simple;
	bh=M6dCa9QbYlf7D6XIUvrH5DEVFVT265xiBP6CZshU2Xg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CMT+UHWMMCwkHrgTXjo796ZIbqyuNgXIpOIjzVnSzDIXz74lqwir8joaSxpMkTwJpD0uNMEd3zmFFcTRCtK38J20XLzwe7bf8SSnowGyH02M4NPN20JJBBCL53TjOGsW3K6BzgrTQdFKo8JrrczuRX2I83Sl1LeFbxK9R7L9jIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AaW7Ojnh; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3912baafc58so5569481f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 02:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742375871; x=1742980671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rfIpSAHZSkPf6dqXb1ymwuVLti0MmykrLRZH/yq3jag=;
        b=AaW7Ojnh8acQujWQcfpmN1uNS62gQSq8vhCZsgh6mPdlfTv1ueWr0h3aOhA5i/Ex4E
         jRJ0sfMScHjxbMDVjWt9vPU0c8QzGdOOR7fe+FtC5/ll2qSqT/YOCutViF1s34CvC58a
         p4RRDVG4610bA5xYj0tznu0ElAdtHWDDN2y63wS5TXhiQMItcdbkzAH2IvOpqpwOPoiO
         kumWd+9po5D+6Fb0ILcCB1dC3bj5wfIggAM1UjiycwGqz7a/H4+NG76UeBVnz/J34M12
         U4I/MyZ+Jf3XwS8Iz0gdPQsdNs1jK7SzIXhvkUtkcG6M48wml+lvzijyYseQGYnIELxM
         Ac2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742375871; x=1742980671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rfIpSAHZSkPf6dqXb1ymwuVLti0MmykrLRZH/yq3jag=;
        b=rDSefmQxwfY0DM6iow6gieuAC3h/arTYw2drc7eYnfyQsEDYjaYiZTTWBhiOgsjjQM
         geAIc5zogDid7pq4wJMTQsGA1ZOxz5r9cUa3DPaSYuUz0H2ASobfRToz67LHJjKb0oKD
         YRtyez74a3ifvXvYIBgLPJ7p9UtqxbvfIWYKHMU/uA8pk68F+xkakv+33DXBXOmaude+
         0gnbxGhG2P38cWQWddU4yRkd4qyyDHcB0sfgi33ejVFcPmhI7d0hz24rWmc69b3CEzbd
         hf58I5yNFQd/2eMqpzDDTMvCDuOhrfUXvNrqFrgVzyamjBNbgRKvq+3MO4xRL8jAcPfl
         1E6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU5vnbqcsFWJxVt8ld8Q9D6aGaAhFOsnJfNsUtOyb0zQLgT45Vsi5EaOmj6QeXpoX1Pc7PmIAZMdAJC@vger.kernel.org
X-Gm-Message-State: AOJu0YwbwYLZZCyZVje7GxONe+YFkPsJ9V0M4HqwnQJSwpUFIlqu4kH3
	7akkKMR0/ugKKNUjqNj+zxdbG0hUYCr4RlgWAIah/ef670m9nd2lfPSOaFg5XjQ=
X-Gm-Gg: ASbGnctOYRFuT93OjPsA9Mow0VhtSU5FSgoTpIUtYZMVg0I6SzxJf7vylx7BzytaPpS
	zgaVitwiOKweAH11TLUkSAUaL5khSb0TSCbJWutShsm6I6/BInWQ4oI8y3RLx2hDk++sC3CnDHy
	wQPHv2aVEfMtEZORy6QYZkjEu/NPg/2bIiTq3dYPr/z33VkrHJofMjwBKk1+5AxoOYqwibI4YSM
	oAXArhlF8/pUA3yZhTQXN4NiW4GtcGtScpIVjXKxBFGcMx6S8bmfQvnArvI6QIvY+PkqJveyXnw
	JHOWGwLFMJKhPHOnwK4eYb1KmvRC2INkOlRuR76BHbMwkAZuOgHHGo6QnIY3Qcn1sYcBYw==
X-Google-Smtp-Source: AGHT+IFJ2iLmk8pAPqBAWEp0LzO+Z/VRz7gyRhBPaVCohInnwXkQ6lhGBk/Zng0hIIeJtYAjoAn+AQ==
X-Received: by 2002:adf:a40d:0:b0:391:2dea:c9a5 with SMTP id ffacd0b85a97d-399739c6b29mr1425261f8f.20.1742375870820;
        Wed, 19 Mar 2025 02:17:50 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c82c255bsm20023810f8f.23.2025.03.19.02.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:17:50 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: broonie@kernel.org,
	andersson@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 1/3] ASoC: dt-bindings: wcd93xx: add bindings for audio switch controlling hp
Date: Wed, 19 Mar 2025 09:16:35 +0000
Message-Id: <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable.

This patch adds required bindings to add such regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/sound/qcom,wcd93xx-common.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
index f78ba148ad25..fa00570caf24 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
@@ -26,6 +26,10 @@ properties:
   vdd-mic-bias-supply:
     description: A reference to the 3.8V mic bias supply
 
+  vdd-hp-switch-supply:
+    description: A reference to the audio switch supply
+      for switching CTIA/OMTP Headset
+
   qcom,tx-device:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description: A reference to Soundwire tx device phandle
-- 
2.39.5


