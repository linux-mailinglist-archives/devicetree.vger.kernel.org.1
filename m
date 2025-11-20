Return-Path: <devicetree+bounces-240717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 62884C74742
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B16E44F3142
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0B3311C19;
	Thu, 20 Nov 2025 13:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kzEwQeEr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745B7341ACC
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 13:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763646889; cv=none; b=CeDUQuxqxuKhTyckHMKiGs7dKA4d4W9GMwFRrhcWiC0v+TAWEP80nmtjio2VbGw4xjOUIPEQXmTFQZLQ+ciszPb71nSNN+Tp+82Zce0Fv6ns/BYIR7IDHyFeG8zJHbINmCgGnf0Jr+Iwmh1kd+puyxO8Xavvgm30HOUqemK9iBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763646889; c=relaxed/simple;
	bh=FyQwtlNC7u1DQKxO8khtUake8nXyBTwLkIG8Vwkn598=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E9QLZTHJwwliLHT4GRJtvQmw2CbH+d6rSXRj+KABr/My/ASdBLYmi2jNC98xINWcfxxlJ8/8bM/p8u9zuReY/8m7jwHQNH0dhdKDf5KzleQNE2d9FW1WaoDqF6oyFnfBezjKfSv48D5Ce+W7tvQ7x2UcRpUoVzRlx+pqCfbgmPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kzEwQeEr; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779a637712so6185515e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763646886; x=1764251686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rIHU9p5z8N+75WnfQpaCAm6p2JQ7k0H+LTu62bmByDg=;
        b=kzEwQeErOPNKJFIUvc1Yf+ErM5WTwemuK4PIs6bsBRISjH9VUwPEwGiEodi0M/MD3L
         /ZmuCHLDQH4Xe9wW/oVIFj9RWoPGNPKgi0/TPfVNgFarXXsjY/Fu+tvF9MfTV4k4XxkV
         itrOxYPlZDvKmm9i+YeQ+jW2vENQIMR3JjoWQXjWxIB5xOG4xe41WwlnXUj3JEzqTI6V
         /YJbI44xwAUI2q6GxGr2gawdfJCh4UHxO9g7kVVtV7aywq/1C4oswbKr/JbGuVOq4czc
         oK4NTYIxy5KgE2lZjZPzUqvrKZi9wlqIsVSJ793qm1ivj155tPS31131OjWqEwm4KeBE
         g1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763646886; x=1764251686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rIHU9p5z8N+75WnfQpaCAm6p2JQ7k0H+LTu62bmByDg=;
        b=BgIH2/hw5DYBRZciC9+yZN2SKIyUu/I/b8lq6t/J20V7n5Vx4/Bbl8Ob+5NLELm4ZI
         OlAOK9PbFNaCL2JOFWBd1PoVc3ZLtdrX3G+tOVDUL/NTSKGTnevnoAddb6r/6kmWHpD2
         sjl/03fSCYFgpMDahzW2NGUQGEzj+Wk8JQ8Ex0rt/brINgcZW63LYKmShdFFlEHGyck4
         y+bWzxzhR48OBXp3fPMVLd27zuaZpZm5DFPfm36dEuylwLulZa3KaHeLFdXQYOJ7ifRr
         rZH1bgIjrVpSvMj8fsbuyVJH+Qjd7Noq0vfK1o+lXrlCJkArehqaGkgB+nesKfRkgM/V
         lAIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwn2VwlC5phVjeyWZFTI8gS8OEImRItRtP5joq2KSHVmY6n831Lv/TQeqDm21l/qRuYB3xaoO9KdNT@vger.kernel.org
X-Gm-Message-State: AOJu0YwGGXDCl4eViHJF12nzE23ImGPUj1vPm+kUXTSstBqrkfqqyWJr
	E4ote6LhD9INuMnZVyv/Uvddf8pKD+VXCXtKz1TfEsg2OsYKox9GM9DG
X-Gm-Gg: ASbGncvAsH+dQSnRHzSV7IgFMDf3F7zIPEsaERN6bYnEzaOBrSKmmUHajicQzHlZ9aX
	sQGQItPnH5wHB4+8eSXOU3z/QrxczMZkkaMzoRhiox4m8OsgCaJS3X3ex0b+WIKHea4ak7FGWu0
	AOXToKLD558mIs81pzBZf0VWP+Dl72a81TxmxA88pC6KW78IYoCH1OJTWsBMrO25Ml3uwPjiWdk
	9334CTownebMXBo2jn3jAZWCsEI28o98ZPqsKYQ/UC2BiCPy0ZXGAoTMhhdEBEjmbjeR2fRHeZt
	waIvcSE/NBqP/Zdj9idLf0ZWDoRKvBkNBr8tnRye3pYlOa9UrOlsiqytLSn7oXMhHqfTLKjehgd
	pFd349LmG2nNLRqxwfZoZmEoVFHOw6ax0wpGQxptY5T/hZn6ny/i8VrpIjE3+brMY4XT0OuIJmA
	YknG5zwziFwDz1yzNfoskjimQCRZnseSBwOCkPJgNn
X-Google-Smtp-Source: AGHT+IFvfLlycM3x3L8VWWPzLacq07JlP2EdcX+xFjgzosVN0t/a2zaDf5V9YEcduMxdaXIKpx28PQ==
X-Received: by 2002:a05:600c:1e8c:b0:46d:a04:50c6 with SMTP id 5b1f17b1804b1-477b9e423d0mr31123195e9.30.1763646885721;
        Thu, 20 Nov 2025 05:54:45 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-477a96aed1esm67367295e9.0.2025.11.20.05.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 05:54:45 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH] dt-bindings: arm: qcom: add ipq8064 board variants
Date: Thu, 20 Nov 2025 14:54:32 +0100
Message-ID: <20251120135435.12824-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document QCOM ipq8064 board variants ipq8062, ipq8065, ipq8066,
ipq8068, ipq8069 now matched by the QCOM cpufreq nvmem driver if
socinfo can't derive the variant from SMEM.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/arm/qcom.yaml         | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9f..0eb1619fede8 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -299,12 +299,32 @@ properties:
               - qcom,ipq5424-rdp466
           - const: qcom,ipq5424
 
+      - items:
+          - const: qcom,ipq8062
+          - const: qcom,ipq8064
+
       - items:
           - enum:
               - mikrotik,rb3011
               - qcom,ipq8064-ap148
           - const: qcom,ipq8064
 
+      - items:
+          - const: qcom,ipq8065
+          - const: qcom,ipq8064
+
+      - items:
+          - const: qcom,ipq8066
+          - const: qcom,ipq8064
+
+      - items:
+          - const: qcom,ipq8068
+          - const: qcom,ipq8064
+
+      - items:
+          - const: qcom,ipq8069
+          - const: qcom,ipq8064
+
       - items:
           - enum:
               - qcom,ipq8074-hk01
-- 
2.51.0


