Return-Path: <devicetree+bounces-243516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCAEC98804
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 147ED3A396A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB7A33858E;
	Mon,  1 Dec 2025 17:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RCxTMZ8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB71337BBD
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609758; cv=none; b=FVpCPqYmWbKkUUGggC3Yj+93MK7U3o8D6rrpB+1IhYZuMBMF7nhdyj39pg4enKXLn/oXELDMikaJVZ76Lz7a43hJC7Gbz+Lq/QivfR97J2g9bhxXBVXqrPwOcwNNpM8DPLYgk7MvSgheuJGB7OtDzgF4bQCTuCPDjJ0PJVS4Bb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609758; c=relaxed/simple;
	bh=zfksRdzqKJhRlSNkDPTjQcTPNmX+bLOPlYzuDXVDI+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VlIM/uWdsUso3g/vGhpmbUuNv9j/efdkaAEtRjj4BfB7Mea/5h6l5dBtMPvuWC1fRFbGxmLCg6CSLxTgIfZ2Csv06HyCZ1Eq1+lUqQMYCniU4mBvJwTlPTYKEygDU8qhe5z0aY5kjpbI9uMM0iTLzWrvRn7tE9b2U58wQ+RS5Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RCxTMZ8O; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2984dfae043so38210405ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764609756; x=1765214556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=RCxTMZ8O20ssgTKE+0sI3c3NqN9uvo9j4QrLthJKyuRGCCq37+nfQeTr47yJrLrvRj
         EtHV17cxqOoazmmkS8M3YPYsCqLLnXg7ZLTqPrnZ8qL+Qq2wc5lbwmTZA8oa7ucBc02V
         qgeR3+VG1hHdEPSvAcMjsgaMZtF1LparWnt3Fz0x2QH0lP3VBdAQWA/CVOUQV1ZpHV01
         U6a9y5wU+qHSWOE2UtXO8WHEI8kzmp6uYh7gbs7HDj5yGihKiF9LyyuRqxMUI6mUxmKl
         PRwvov9cfmxvhD99Zlnn95K+IbugZ+h3AfV/RLjkR0TFWN4PbjMlji2W+ybcavTsA1Sz
         wHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609756; x=1765214556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=kklxQNIkwua0x6ei1gEtcov9uf/gj0IaccKd3GXhni9GXvdiIvkWVGGHlFvCzXVAl/
         /+dPO1KkNZDOucy/kRTLY/MWq/j0tnLIZ5Ldo0wYBwPxH89dRpdHHBNMhFWfKmqBs7Re
         iRTmPEW7NpwtLtHROAwoc9JBIZGawH3tuXo273CO0qWNW8pnY0c9U6LWLTLrJn1K5MzV
         rbVksGL5mqChFgktIYmFyQ6zb3w0TKNeCkTLimvd+GS8+neXYoEE0b8C9NnVpve2nC5k
         nN969aJJIAVnkgnb5lJVeocCAGVlqylzmix8p76ukbbo4S7RX9fSKl945WkJ+Vdfz2qv
         Xz7A==
X-Forwarded-Encrypted: i=1; AJvYcCXOHEddlRA6NWEN37cxbLaZVHg5mET35jWzvsllrxcp6TLL3hTjoDvoOp816irqFUdhfk69JAu+AXgx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3/HxePRbG1Ta9e577LUnh3jaXZFzTv65eC14WTN4EVRhn4/YU
	wj44WmF9HlL6olUnbxR/1KYVS+WjiIqCGOQjeGu8v37jOAnmFONLy7rr
X-Gm-Gg: ASbGncte9QEgPESlgbIjz9EebKMRVxLtXFNA653N7HKur60zSDIgdxndVgyYSEx0QD/
	zXo1D1KPHnP1zfLKNXhYhivmqg0jI/tyaDFoxUpPzjAXnQmDgAcDcJb+04YkuwA/wC9Ld/lWudW
	5KHNqepcYNKcjkWTGYGYNoRUU9brAPNoZZ/BW7Sd0DjStSM8TNbmVPVL13mpjnP+bxnEmdP1HAk
	PI1siizrC/CgXxVACf2JYdU8GdRcVt0NXscXK65vpbLVBWhkazsPAvS5PeB83oRFYLz37XQJNp4
	5MwLabYWEfEdre8FM96Z1Kdkk4FT9RhljNlwNzP+gj1PPGnn+0w0IdCS6SovD0APkbT24lxgt/l
	NpQSP+zg4eyh+qyWkx58QWZGO/YfGGd4BRta/vm730b4rRiPNRACfiClcCRenshvCCV9kQDpwIp
	cQbfydn/t3Dgb6qYP9aHnT1cgUKGzyGo2rM26I
X-Google-Smtp-Source: AGHT+IHajsBE9M5OfPzzEsueEtGU300FnJa+0lw+s+UauElhRmmhmgyjHyw31TaW7ZR7NzYoMwasRg==
X-Received: by 2002:a17:903:1a06:b0:297:db6a:a82f with SMTP id d9443c01a7336-29b6c5088ccmr450628295ad.24.1764609756453;
        Mon, 01 Dec 2025 09:22:36 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce44270dsm129876935ad.34.2025.12.01.09.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:22:36 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Mon,  1 Dec 2025 22:52:21 +0530
Message-Id: <20251201172222.3764933-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251201172222.3764933-1-tessolveupstream@gmail.com>
References: <20251201172222.3764933-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


