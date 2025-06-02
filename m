Return-Path: <devicetree+bounces-182102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBA3ACA889
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D7413BC422
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 04:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B4B129E6E;
	Mon,  2 Jun 2025 04:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="FqsuPl/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2E64C85
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 04:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748838755; cv=none; b=lk76OIvvzDT7YA/Ig4UuWb6xVVRYyzcA1ZJXkpRwI87G8Ait8hN0GN1ebsrt7T0QP/S5bW0ZDL9t2ysks8MLx2l7f9Hltk0yUDzrOSvKuCujQe+stnxS3dYkDYVZ8B+l0rDKlDGYpG1jnXlGa3wHz7q31ce7bc1C4xw6p/t04Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748838755; c=relaxed/simple;
	bh=yFUrBBSl9D7yxoSth936zMXfdxoF0Zzyhq+QKaWpWrI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GohBO5nMOKvRqiFgAb1UnzOiwl9PiODoqkNIJt+rXA1qCdkWgdGD+Qi1zOHQeTiA/K3hPW73d9cSOMYZpQwpDyBHPLNZc/g/NB0HM3Hwb+7xmM9HEwN/9ua1NBSKI/PAuxSmuArneBx+Wxy58O8JVsXJb+GJ7U8jINqib4+qN+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=FqsuPl/q; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7399838db7fso3382223b3a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 21:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1748838751; x=1749443551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJq78wY/crLkQo2Nn6KYgcryTBZ4RoIazEZoxMRMUE8=;
        b=FqsuPl/qmUuHRGhI1nBasZZmRz9pm76Mw28/+O3Yv15+t4GSNjw1MNPWFTJ+TBZEKl
         Rqjeb6bZ3NE/+l0gw7460RpjcwZR7ZQP15KNdPDbbDrPa/jjAiruR3QQG5Uu0QVILDYe
         x9zhREMM8IpKFgTQgKqZVsW47g84Jf2jdoj8W1c7yqnVUK/KQ/yYFEKkqo6hhKdL0XiS
         LUbjxktwr9Ve9x6BPG4NRT/3xb0/LFXXIptmAKYoK5opxWc4uUN6S3afURfOgv5N47t3
         gUATKH5SnL0HQg+jTc8Z3xnRwzrSMAozWLSnkjkipKJTa7lEzSIOI7K6qlPdIR7mwh08
         7R3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748838751; x=1749443551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJq78wY/crLkQo2Nn6KYgcryTBZ4RoIazEZoxMRMUE8=;
        b=rhn6zd3NQmt82TnhlEXr4ZDEW2G3h7y07FiP9+ahfIwr22+jN4sr3FRz3qoZeE9q1y
         ZDTOEluwtTq16ACE7e4+W0mjVp+c34LamKDb9e7pzkU381EcNGzAtR+PCgYLPyV71VYf
         VMhXCdJ9SLr5Vrij9WNI5NVBel/jMYtlVF3XyYoldfloDs7z4K5mWE3T5u1KqoO3Nxnf
         rhAQ1QC03skHrjfAmf9UMnnKe2ipkU0A+8FxTJ/r36sIKJJDX/6z9EL4FtFBS3MGHHVK
         ovqZZeeiV/YLQM4QkRzpaSaNomTh7lXHRsTdNV5fH0VGjQEgP+0A9JKxlq/S73TYSE3X
         fi9g==
X-Forwarded-Encrypted: i=1; AJvYcCVYJO2SdRj/1PbEs7xCy3Pp0vuGAPEj6Q+w2/jXvF4i34AbRpnzuaD7AU6W39uT+nDLFj0iLDHtjNG5@vger.kernel.org
X-Gm-Message-State: AOJu0YzTFDAByQ0D6K7vQhBtCIdrONEia4IehG6rVf7662b/4P1bGA8M
	c23nK1R0evFJTlZf8JzimeQJ+/KQ9QObvpziqQaNSbYE4sqiN8/51QjlBclZxEwXeow=
X-Gm-Gg: ASbGncuVUN42ke4S2yXXm0/+muZGFCyhZ8grw0n+4AOX8QxzReUC/uWl+232PYGR93b
	c9c5Qhp/yAB/rCNhL4yClmoRFQE66xYcN6urGpNAVt0bp6Mdc+C9luB9j3B0eZnK+gqD0WztBFy
	rYGN/Bm/UU7Sq6KisygQrnmoX4wrpwHAiptbzuSdMjb0DcoxP4L/bE42mcFny18dAEUlDClwVeP
	kS2B3xWRrgw9uBu8N0eeph0zoiX2mzjZ0hL8tfOMXRbtQsHRuhmBzPblLRs5tAR3KIymComhm4M
	ocJ/sPJqyVmJzoj++i8cFTLn8FiMHdHGAv9BL+7VvwvgfqK4GT3BHtM8KYhtiLFHijym+SDq
X-Google-Smtp-Source: AGHT+IFpbhiwxpJDD+phaJIWCFI5dOn68UTJQSMnHJdP1ZxwrJ5R91lg0I+EYR1aQexHnsVAbNnQLQ==
X-Received: by 2002:a05:6a00:a90:b0:742:aed4:3e1 with SMTP id d2e1a72fcca58-747ad443d05mr22354742b3a.2.1748838750635;
        Sun, 01 Jun 2025 21:32:30 -0700 (PDT)
Received: from localhost.localdomain ([123.51.235.216])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afeab743sm6887118b3a.54.2025.06.01.21.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 21:32:30 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chiang Brian <chiang.brian@inventec.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/2] dt-bindings: trivial: Add tps53685 support
Date: Mon,  2 Jun 2025 12:24:53 +0800
Message-Id: <20250602042454.184643-2-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250602042454.184643-1-chiang.brian@inventec.com>
References: <20250602042454.184643-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device type support for tps53685

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

v3 -> v8:
  1. No code changed, included Acked-by tag from v2 review
  2. Patch kept in sync with series version
  - Link to v3: https://lore.kernel.org/all/20250515081449.1433772-2-chiang.brian@inventec.com/

v2 -> v3:
	1. Fix the order of patches
	- Link to v2: https://lore.kernel.org/all/20250424132538.2004510-3-chiang.brian@inventec.corp-partner.google.com/

v1 -> v2:
	1. Correct the subject and commit message
	- Link to v1: https://lore.kernel.org/all/20250314032802.3187097-1-chiang.brian@inventec.com/


 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 8da408107e55..e0017ba594dd 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -392,6 +392,8 @@ properties:
           - ti,tps53679
             # TI Dual channel DCAP+ multiphase controller TPS53681
           - ti,tps53681
+            # TI Dual channel DCAP+ multiphase controller TPS53685 with AMD-SVI3
+          - ti,tps53685
             # TI Dual channel DCAP+ multiphase controller TPS53688
           - ti,tps53688
             # TI DC-DC converters on PMBus
-- 
2.43.0


