Return-Path: <devicetree+bounces-93403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A23A950CAB
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF0DAB215DF
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B09F1A4F37;
	Tue, 13 Aug 2024 18:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="IGSMqVz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043B01A4F0D
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 18:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575521; cv=none; b=pjHubd4vqOEkG91o0g3Pyvqw14W6KlwllEZPvIacrXO1gAoilsPzFTHRYNrOEbkD1hmDOj2CGxkPuvRRtui0lkQNy+TTWXfxkan7v5vDJqNWKx5Rl16wR82nfI4Jrw+x7Z3kPQif/XKx6zz0Mn7tejzs5p6LLPApq2YamlUNb9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575521; c=relaxed/simple;
	bh=xb1X9sTHTknaC57AtSXTIM736W5+uYqdz9zT5MxOnyY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sLIpuDerAbsn0JuF0q4l2w2IXR4wJl7zuhLD8AFNsmMlj7HzMY2M+L1BYmoELqlYSuev+uv/HmTg3FriaezEF7EWBYF8JDU18YnDNoJoJS0m422bQtN8ro3iYdMdkuCaXXumSsd0PebC+xGSP6PrqwokhcFdyXjBxMgEelxEI8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=IGSMqVz3; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-36868fcb919so3453278f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 11:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723575516; x=1724180316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcl3zA4FgRUdr5ZygdjxphfXY88eP/BhUP2PF01mf3E=;
        b=IGSMqVz3j3o7Njp+C3V3Ye80h/DhvoNkUkb/ZcF/ntlbuackWFZ6dJh8lZIbUGBSd4
         gwRtfmdJi7qOP86kODA1lYDuK79ySjlB7lDrFJi5fbu5BvFj9tCU76xYof14SbkqKzRj
         WX7lJKkFm/NjnqtzuT4t5vb+hmGP3l5F/rvO61snmVbxixRpa+4eaN2GriMnjs7a1ESH
         b2YvEULEctPoRCiwZ0trEFOQp+PP8Tuudu5+5490Ry1L71wuN1nz7m7H7vpl+9HPojdF
         QM12XDppZC5i5pai6G5JMITL60LNksTvJQBJdWNyOewC1sIH6isFSAXRj6+WCDf3Vh+O
         3Pqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723575516; x=1724180316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qcl3zA4FgRUdr5ZygdjxphfXY88eP/BhUP2PF01mf3E=;
        b=KAuxmmWl2A3ro8p0tuvShtCDueuw3i7JnmzoYRDrMeP0uMdm05mD1AZMbh9QenpluQ
         2PvU75h6wtcfuWtoE8h5e6vNP/2HoD5tGDBUFCOY5yUsjrEca2+DpsOZahuiN9dnab8q
         potInEgeI+TAFnh2nt5KLWqxwqiBACDm44lKWv4HLQFmzmwfKuKO3vkbxnVw1Dz9lzb9
         DvXMvLZRMP0W93Idgx9Y9a/FMt/Yccx5jhV6wXxKYzJkz9G/xpeapXIEqBURspwpodpA
         cnl4uQXG6/RmnxhO/kJF8FRVTBoMCtvWgyTlfYtqTJ0bQ1AudMkpGIzAO9p4GdHivvll
         S6ag==
X-Forwarded-Encrypted: i=1; AJvYcCXNE6vV/erH9E0YxEMUk4aRATereWejKAdeLJ9UfA4L18uQbK+SN0/YIC8CofZOLH1dawxhS1/DLHrSo6d0Zn4mtMYxOAug7U7HNg==
X-Gm-Message-State: AOJu0YyS/Vd3MAdccSF1hgLDlLgbqxElTbe+pxD+NClFkc275/C9rejY
	CbRZiq1F1BqQpmaCFvFVOF/Z0iHpyf3AQnzcRbDzL15xmvKNATwhyKvy1Qu8zZk=
X-Google-Smtp-Source: AGHT+IEgq6CVGttTellTVTWy6Kc2fSeSu7jNW/zDzxvJpBlhy4KnmTkocYLGHxOASyuobuObba4jYg==
X-Received: by 2002:a5d:420c:0:b0:371:6fc7:d9d9 with SMTP id ffacd0b85a97d-371777714admr373145f8f.23.1723575516292;
        Tue, 13 Aug 2024 11:58:36 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c775c509sm151208145e9.44.2024.08.13.11.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 11:58:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 2/3] regulator: dt-bindings: qcom,qca6390-pmu: document WCN6855
Date: Tue, 13 Aug 2024 20:58:26 +0200
Message-ID: <20240813185827.154779-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240813185827.154779-1-brgl@bgdev.pl>
References: <20240813185827.154779-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add description of the PMU of the WCN6855 model.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../bindings/regulator/qcom,qca6390-pmu.yaml     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index ce7771f9fa36..6677939dd957 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,qca6390-pmu
+      - qcom,wcn6855-pmu
       - qcom,wcn7850-pmu
 
   vdd-supply:
@@ -104,6 +105,21 @@ allOf:
         - vddpcie1p3-supply
         - vddpcie1p9-supply
         - vddio-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,wcn6855-pmu
+    then:
+      required:
+        - vddio-supply
+        - vddaon-supply
+        - vddpmu-supply
+        - vddrfa0p95-supply
+        - vddrfa1p3-supply
+        - vddrfa1p9-supply
+        - vddpcie1p3-supply
+        - vddpcie1p9-supply
   - if:
       properties:
         compatible:
-- 
2.43.0


